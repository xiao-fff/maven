<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
<form action="register" method="post">
    账号：<input type="text" name="username"><br>
    密码：<input type="password" name="password"><br>
    <button type="submit">注册</button>
</form>

    <%-- 展示注册失败提示 --%>
<%
    String err = (String) request.getAttribute("errMsg");
    if(err != null){
%>
    <p style="color:red"><%=err%></p>
<%
    }
%>
    <title>用户注册 - 鲜农优选</title>
    <!-- 引入第三方库 -->
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- 引入公共样式 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/common.css">
    <!-- 主题配置 -->
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        primary: '#2E7D32',
                        secondary: '#8D6E63',
                        light: '#F1F8E9',
                    }
                }
            }
        }
    </script>
</head>
<body class="bg-gray-50 min-h-screen flex flex-col">
    <!-- 顶部导航栏 -->
    <header id="navbar">
        <div class="nav-container">
            <a href="${pageContext.request.contextPath}/jsp/user/index.jsp" class="nav-logo">
                <i class="fa-solid fa-leaf"></i>
                <span>鲜农优选</span>
            </a>
            <nav class="nav-menu hidden md:flex">
                <a href="${pageContext.request.contextPath}/jsp/user/index.jsp">首页</a>
                <a href="${pageContext.request.contextPath}/jsp/user/product_list.jsp">商品分类</a>
                <a href="${pageContext.request.contextPath}/jsp/user/product_list.jsp">产地溯源</a>
                <a href="#">农友社区</a>
                <a href="#">时令科普</a>
            </nav>
            <div class="nav-right">
                <a href="${pageContext.request.contextPath}/jsp/user/cart.jsp" class="nav-cart">
                    <i class="fa-solid fa-cart-shopping text-lg"></i>
                    <span class="badge">3</span>
                </a>
            </div>
        </div>
    </header>
    <div class="nav-placeholder"></div>

    <!-- 注册表单主体 -->
    <main class="flex-1 flex items-center justify-center py-10 px-4">
        <div class="w-full max-w-md bg-white rounded-2xl shadow-md p-8">
            <!-- 标题区域 -->
            <div class="text-center mb-6">
                <div class="inline-flex items-center space-x-2 mb-3">
                    <i class="fa-solid fa-leaf text-primary text-3xl"></i>
                    <span class="text-2xl font-bold text-gray-800">鲜农优选</span>
                </div>
                <h2 class="text-xl font-bold text-gray-800">创建新账号</h2>
                <p class="text-gray-500 text-sm mt-1">注册账号，享更多产地直供好物</p>
            </div>

            <!-- 表单区域 -->
            <form action="${pageContext.request.contextPath}/user/register" method="post" class="space-y-4">
                <!-- 用户名 -->
                <div>
                    <label class="block text-sm text-gray-700 mb-1.5">用户名</label>
                    <div class="relative">
                        <i class="fa-solid fa-user absolute left-3 top-1/2 -translate-y-1/2 text-gray-400"></i>
                        <input type="text" name="username" placeholder="请设置用户名" required
                               class="w-full pl-10 pr-4 py-2.5 border border-gray-200 rounded-lg focus:outline-none focus:border-primary focus:ring-1 focus:ring-primary text-sm">
                    </div>
                </div>

                <!-- 手机号 -->
                <div>
                    <label class="block text-sm text-gray-700 mb-1.5">手机号</label>
                    <div class="relative">
                        <i class="fa-solid fa-phone absolute left-3 top-1/2 -translate-y-1/2 text-gray-400"></i>
                        <input type="tel" name="phone" placeholder="请输入手机号" required
                               class="w-full pl-10 pr-4 py-2.5 border border-gray-200 rounded-lg focus:outline-none focus:border-primary focus:ring-1 focus:ring-primary text-sm">
                    </div>
                </div>

                <!-- 密码 -->
                <div>
                    <label class="block text-sm text-gray-700 mb-1.5">设置密码</label>
                    <div class="relative">
                        <i class="fa-solid fa-lock absolute left-3 top-1/2 -translate-y-1/2 text-gray-400"></i>
                        <input type="password" name="password" placeholder="请设置6-16位密码" required
                               class="w-full pl-10 pr-4 py-2.5 border border-gray-200 rounded-lg focus:outline-none focus:border-primary focus:ring-1 focus:ring-primary text-sm">
                    </div>
                </div>

                <!-- 确认密码 -->
                <div>
                    <label class="block text-sm text-gray-700 mb-1.5">确认密码</label>
                    <div class="relative">
                        <i class="fa-solid fa-lock absolute left-3 top-1/2 -translate-y-1/2 text-gray-400"></i>
                        <input type="password" name="repassword" placeholder="请再次输入密码" required
                               class="w-full pl-10 pr-4 py-2.5 border border-gray-200 rounded-lg focus:outline-none focus:border-primary focus:ring-1 focus:ring-primary text-sm">
                    </div>
                </div>

                <!-- 用户协议 -->
                <div class="text-xs text-gray-600">
                    <label class="flex items-start cursor-pointer">
                        <input type="checkbox" required class="mr-1.5 mt-0.5 accent-primary">
                        <span>我已阅读并同意 <a href="#" class="text-primary">《用户协议》</a> 和 <a href="#" class="text-primary">《隐私政策》</a></span>
                    </label>
                </div>

                <!-- 注册按钮 -->
                <button type="submit" 
                        class="w-full py-3 bg-primary text-white font-medium rounded-lg hover:bg-primary/90 transition-colors shadow-sm">
                    立即注册
                </button>
            </form>

            <!-- 底部跳转链接 -->
            <div class="mt-5 text-center text-sm text-gray-600">
                已有账号？
                <a href="${pageContext.request.contextPath}/jsp/user/login.jsp" class="text-primary font-medium hover:underline">立即登录</a>
            </div>
            <div class="mt-3 text-center">
                <a href="${pageContext.request.contextPath}/jsp/user/index.jsp" class="text-sm text-gray-500 hover:text-primary transition-colors">
                    <i class="fa-solid fa-arrow-left mr-1"></i>返回首页
                </a>
            </div>
        </div>
    </main>

    <!-- 页脚 -->
    <footer>
        <div class="footer-copyright">
            <p>© 2025 鲜农优选 版权所有 | 京ICP备12345678号-1</p>
        </div>
    </footer>

    <!-- 导航栏滚动效果JS -->
    <script>
        const navbar = document.getElementById('navbar');
        window.addEventListener('scroll', () => {
            navbar.classList.toggle('nav-shadow', window.scrollY > 50);
        });
    </script>
</body>
</html>