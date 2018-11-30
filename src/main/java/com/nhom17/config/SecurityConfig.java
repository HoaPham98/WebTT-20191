package com.nhom17.config;

import java.util.*;

public class SecurityConfig {
    public static final String ROLE_ADMIN = "ADMIN";
    public static final String ROLE_GUEST = "GUEST";
    public static final String ROLE_MANAGER = "MANAGER";
    public static final String ROLE_STAFF = "STAFF";
    public static final String ROLE_USER = "USER";

    private static final Map<String, List<String>> mapConfig = new HashMap<String, List<String>>();

    static {
        init();
    }

    private static void init() {
        //Cau hinh cho vai tro user
        List<String> urlPattern1 = new ArrayList<String>();
//        case "/movielist":
////        case "/movie-trailer":
////        case "/home":
////        case "/":
        urlPattern1.add("/booking_step2");
        urlPattern1.add("/booking_step3");
        // co the them sau
        mapConfig.put(ROLE_USER, urlPattern1);

        List<String> urlPattern2 = new ArrayList<>();
//        urlPattern2.add("/movie-trailer");
//        mapConfig.put(ROLE_ADMIN, urlPattern2);
    }

    public static Set<String> getAllAppRoles() {
        return mapConfig.keySet();
    }

    public static List<String> getUrlPatternsForRole(String role) {
        return mapConfig.get(role);
    }


}
