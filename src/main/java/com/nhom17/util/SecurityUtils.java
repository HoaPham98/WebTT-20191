package com.nhom17.util;

import com.nhom17.config.SecurityConfig;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Set;

public class SecurityUtils {
    //Kiem tra request co can phai dang nhap khong
    public static boolean isSecurityPage(HttpServletRequest request) {
        String urlPattern = UrlPatternUtils.getUrlPattern(request);

        Set<String> roles = SecurityConfig.getAllAppRoles();

        for (String role : roles) {
            List<String> urlPatterns = SecurityConfig.getUrlPatternsForRole(role);
            if (urlPatterns != null && urlPatterns.contains(urlPattern)) {
                return true;
            }
        }
        return false;
    }

    // Kiểm tra 'request' này có vai trò phù hợp hay không?
//    public static boolean hasPermission(HttpServletRequest request) {
//        String urlPattern = UrlPatternUtils.getUrlPattern(request);
//
//        Set<String> allRoles = SecurityConfig.getAllAppRoles();
//
//        for (String role : allRoles) {
//            if (!request.isUserInRole(role)) {
//                continue;
//            }
//            List<String> urlPatterns = SecurityConfig.getUrlPatternsForRole(role);
//            if (urlPatterns != null && urlPatterns.contains(urlPattern)) {
//                return true;
//            }
//        }
//        return false;
//    }
}
