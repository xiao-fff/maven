<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户登录 - 鲜农优选</title>
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
    <!-- 顶部导航栏（和首页统一） -->
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

    <!-- 登录表单主体 -->
    <main class="flex-1 flex items-center justify-center py-10 px-4">
        <div class="w-full max-w-md bg-white rounded-2xl shadow-md p-8">
            <!-- 标题区域 -->
            <div class="text-center mb-8">
                <div class="inline-flex items-center space-x-2 mb-3">
                    <i class="fa-solid fa-leaf text-primary text-3xl"></i>
                    <span class="text-2xl font-bold text-gray-800">鲜农优选</span>
                </div>
                <h2 class="text-xl font-bold text-gray-800">欢迎回来</h2>
                <p class="text-gray-500 text-sm mt-1">登录账号，开启新鲜购物之旅</p>
            </div>

            <!-- 表单区域 -->
            <form action="${pageContext.request.contextPath}/user/login" method="post" class="space-y-5">
                <!-- 用户名/手机号 -->
                <div>
                    <label class="block text-sm text-gray-700 mb-1.5">用户名 / 手机号</label>
                    <div class="relative">
                        <i class="fa-solid fa-user absolute left-3 top-1/2 -translate-y-1/2 text-gray-400"></i>
                        <input type="text" name="username" placeholder="请输入用户名或手机号" required
                               class="w-full pl-10 pr-4 py-2.5 border border-gray-200 rounded-lg focus:outline-none focus:border-primary focus:ring-1 focus:ring-primary text-sm">
                    </div>
                </div>

                <!-- 密码 -->
                <div>
                    <label class="block text-sm text-gray-700 mb-1.5">密码</label>
                    <div class="relative">
                        <i class="fa-solid fa-lock absolute left-3 top-1/2 -translate-y-1/2 text-gray-400"></i>
                        <input type="password" name="password" placeholder="请输入密码" required
                               class="w-full pl-10 pr-4 py-2.5 border border-gray-200 rounded-lg focus:outline-none focus:border-primary focus:ring-1 focus:ring-primary text-sm">
                    </div>
                </div>

                <!-- 记住我 + 忘记密码 -->
                <div class="flex items-center justify-between text-sm">
                    <label class="flex items-center text-gray-600 cursor-pointer">
                        <input type="checkbox" name="remember" class="mr-1.5 accent-primary">
                        记住我
                    </label>
                    <a href="#" class="text-primary hover:underline">忘记密码？</a>
                </div>

                <!-- 登录按钮 -->
                <button type="submit" 
                        class="w-full py-3 bg-primary text-white font-medium rounded-lg hover:bg-primary/90 transition-colors shadow-sm">
                    立即登录
                </button>
            </form>

            <!-- 底部跳转链接 -->
            <div class="mt-6 text-center text-sm text-gray-600">
                还没有账号？
                <a href="${pageContext.request.contextPath}/jsp/user/register.jsp" class="text-primary font-medium hover:underline">立即注册</a>
            </div>
            <div class="mt-3 text-center">
                <a href="${pageContext.request.contextPath}/jsp/user/index.jsp" class="text-sm text-gray-500 hover:text-primary transition-colors">
                    <i class="fa-solid fa-arrow-left mr-1"></i>返回首页
                </a>
            </div>
        </div>
    </main>

    <!-- 页脚（和首页统一） -->
    <footer>
        <div class="footer-copyright">
            <p>© 2025 鲜农优选 版权所有 | 京ICP备12345678号-1</p>
        </div>
    </footer>

    <!-- 导航栏滚动效果JS（和首页统一） -->
    <script>
        const navbar = document.getElementById('navbar');
        window.addEventListener('scroll', () => {
            navbar.classList.toggle('nav-shadow', window.scrollY > 50);
        });
    </script>
</body>
</html>