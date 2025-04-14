package com.employee.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AuthInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String employeeName = (String) request.getSession().getAttribute("name");
        if (employeeName == null){
            response.sendRedirect("/login");
            return false;
        }
        return true;
    }
}
