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
import java.io.IOException;
import java.util.Date;

@WebServlet("/user/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    request.setCharacterEncoding("utf-8");
	    response.setContentType("text/html;charset=utf-8");

	    // 前端表单name="username"，接收后统一命名membername，全程统一
	    String membername = request.getParameter("username");
	    String password = request.getParameter("password");
	    String phone = request.getParameter("phone");
	    String repPwd = request.getParameter("repassword");

	    // 密码校验
	    if(!password.equals(repPwd)){
	        request.setAttribute("errMsg", "两次输入的密码不一致！");
	        request.getRequestDispatcher("/jsp/user/register.jsp").forward(request, response);
	        return;
	    }

	    SqlSession session = null;
	    try {
	        session = MyBatisUtil.getSqlSession();
	        MemberMapper memberMapper = session.getMapper(MemberMapper.class);
	        // 统一变量membername查询
	        Member existMember = memberMapper.selectByMembername(membername);

	        if (existMember != null) {
	            request.setAttribute("errMsg", "该账号已被注册，请更换用户名！");
	            request.getRequestDispatcher("/jsp/user/register.jsp").forward(request, response);
	        } else {
	            Member newMember = new Member();
	            // 统一setMembername，和数据库、实体对齐
	            newMember.setMembername(membername);
	            newMember.setPassword(password);
	            newMember.setPhone(phone);
	            newMember.setRealName("");
	            newMember.setEmail("");
	            newMember.setAddress("");
	            newMember.setCreateTime(new Date());
	            newMember.setMemberLevel("普通会员");

	            memberMapper.insertMember(newMember);
	            session.commit();
	            // 标准上下文路径，杜绝404
	            response.sendRedirect(request.getContextPath() + "/jsp/user/login.jsp");
	        }
	    } finally {
	        if(session != null){
	            session.close();
	        }
	    }
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/jsp/user/register.jsp").forward(request, response);
    }
}