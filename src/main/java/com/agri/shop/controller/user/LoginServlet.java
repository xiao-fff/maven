package com.agri.shop.controller.user;

import com.agri.shop.entity.Member;
import com.agri.shop.mapper.MemberMapper;
import com.agri.shop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/user/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        // 接收前端参数，统一变量名membername，全程规范统一
        String membername = request.getParameter("username");
        String password = request.getParameter("password");

        SqlSession session = null;
        Member loginMember = null;
        try {
            session = MyBatisUtil.getSqlSession();
            MemberMapper memberMapper = session.getMapper(MemberMapper.class);
            // 统一参数membername查询
            loginMember = memberMapper.selectByMembername(membername);
        } finally {
            if(session != null){
                session.close();
            }
        }

        // 双重校验：用户存在 + 密码匹配（修复原逻辑漏洞）
        if (loginMember != null && loginMember.getPassword().equals(password)) {
            HttpSession sessionObj = request.getSession();
            sessionObj.setAttribute("loginUser", loginMember);
            // 拼接上下文，不会404
            response.sendRedirect(request.getContextPath() + "/jsp/user/index.jsp");
        } else {
            request.setAttribute("errMsg", "用户名或密码错误！");
            request.getRequestDispatcher("/jsp/user/login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/jsp/user/login.jsp").forward(request, response);
    }
}