package com.nhom17.controllers.filters;

import com.nhom17.config.SecurityConfig;
import com.nhom17.model.dto.ThanhVien;
import com.nhom17.util.AppUtils;
import com.nhom17.util.SecurityUtils;
import com.nhom17.util.UserRoleRequestWrapper;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebFilter("/*")
public class SecurityFilter implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        String servletPath = request.getServletPath();

        //Thong tin nguoi dung duoc luu trong session sau khi dang nhap thanh cong
        ThanhVien loginedUser = AppUtils.getLoginedUser(request.getSession());
        if (servletPath.equals("/login")) {
            filterChain.doFilter(request, response);
            return;
        }
        HttpServletRequest wrapRequest = request;

        if (loginedUser != null) {
            // User Name
            String userName = loginedUser.getTenDangNhap();

            // Các vai trò (Role).
            String role = loginedUser.getLoaiTV();

            // Gói request cũ bởi một Request mới với các thông tin userName và Roles.
            wrapRequest = new UserRoleRequestWrapper(userName, role, request);
        }

        // Các trang bắt buộc phải đăng nhập.
        if (SecurityUtils.isSecurityPage(request)) {

            // Nếu người dùng chưa đăng nhập,
            // Redirect (chuyển hướng) tới trang đăng nhập.
            if (loginedUser == null) {

                String requestUri = request.getRequestURI();

                // Lưu trữ trang hiện tại để redirect đến sau khi đăng nhập thành công.
                int redirectId = AppUtils.storeRedirectAfterLoginUrl(request.getSession(), requestUri);

                response.sendRedirect(wrapRequest.getContextPath() + "/login?redirectId=" + redirectId);
                return;
            }

            // Kiểm tra người dùng có vai trò hợp lệ hay không?
//            boolean hasPermission = SecurityUtils.hasPermission(wrapRequest);
//            if (!hasPermission) {
//
//                RequestDispatcher dispatcher //
//                        = request.getServletContext().getRequestDispatcher("/WEB-INF/views/accessDeniedView.jsp");
//
//                dispatcher.forward(request, response);
//                return;
//            }
        }

        filterChain.doFilter(wrapRequest, response);
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void destroy() {

    }
}
