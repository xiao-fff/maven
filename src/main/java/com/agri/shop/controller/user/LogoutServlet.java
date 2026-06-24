package com.agri.shop.controller.user;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/user/logout")
public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        HttpSession session = request.getSession();
        // 清除登录用户
        session.removeAttribute("loginUser");
        // 销毁Session
        session.invalidate();

        // 退出成功，跳回首页并带提示
        response.sendRedirect(request.getContextPath() + "/jsp/user/index.jsp?successMsg=已安全退出登录");
    }
}