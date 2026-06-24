<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.agri.shop.entity.Member" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人中心 - 鲜农优选666</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/common.css">
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
    <% 
        // 登录校验：未登录则跳转到登录页
        Member loginUser = (Member) session.getAttribute("loginUser");
        if (loginUser == null) {
            response.sendRedirect(request.getContextPath() + "/jsp/user/login.jsp?errMsg=请先登录后再访问个人中心！");
            return;
        }
    %>

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
                <!-- 已登录状态 -->
                <a href="${pageContext.request.contextPath}/jsp/user/user_center.jsp" class="flex items-center gap-2">
                    <div class="w-8 h-8 rounded-full bg-primary text-white flex items-center justify-center">
                        <i class="fa-solid fa-user text-sm"></i>
                    </div>
                    <span class="hidden sm:inline text-sm text-primary font-medium">
                        <%= loginUser.getMembername() %>
                    </span>
                </a>
            </div>
        </div>
    </header>
    <div class="nav-placeholder"></div>

    <!-- 主体内容 -->
    <main class="flex-1 py-8">
        <div class="container mx-auto px-4">
            <div class="flex gap-6">
                <!-- 左侧侧边栏 -->
                <aside class="w-60 shrink-0 hidden md:block">
                    <div class="bg-white rounded-xl shadow-sm overflow-hidden sticky top-24">
                        <!-- 用户信息卡片 -->
                        <div class="p-6 bg-gradient-to-r from-primary to-green-600 text-white text-center">
                            <div class="w-16 h-16 rounded-full bg-white/20 mx-auto mb-3 flex items-center justify-center">
                                <i class="fa-solid fa-user text-2xl"></i>
                            </div>
                            <h3 class="font-bold text-lg"><%= loginUser.getMembername() %></h3>
                            <p class="text-xs text-white/80 mt-1"><%= loginUser.getMemberLevel() %></p>
                        </div>
                        <!-- 功能菜单 -->
                        <ul class="p-2">
                            <li><a href="#" class="flex items-center gap-3 px-4 py-3 rounded-lg bg-primary/10 text-primary font-medium text-sm">
                                <i class="fa-solid fa-user w-4"></i>个人信息
                            </a></li>
                            <li><a href="#" class="flex items-center gap-3 px-4 py-3 rounded-lg text-gray-600 hover:bg-gray-50 hover:text-primary transition-colors text-sm">
                                <i class="fa-solid fa-receipt w-4"></i>我的订单
                            </a></li>
                            <li><a href="#" class="flex items-center gap-3 px-4 py-3 rounded-lg text-gray-600 hover:bg-gray-50 hover:text-primary transition-colors text-sm">
                                <i class="fa-solid fa-truck w-4"></i>物流查询
                            </a></li>
                            <li><a href="#" class="flex items-center gap-3 px-4 py-3 rounded-lg text-gray-600 hover:bg-gray-50 hover:text-primary transition-colors text-sm">
                                <i class="fa-solid fa-star w-4"></i>我的评价
                            </a></li>
                            <li><a href="${pageContext.request.contextPath}/jsp/user/cart.jsp" class="flex items-center gap-3 px-4 py-3 rounded-lg text-gray-600 hover:bg-gray-50 hover:text-primary transition-colors text-sm">
                                <i class="fa-solid fa-cart-shopping w-4"></i>我的购物车
                            </a></li>
                            <li><a href="#" class="flex items-center gap-3 px-4 py-3 rounded-lg text-gray-600 hover:bg-gray-50 hover:text-primary transition-colors text-sm">
                                <i class="fa-solid fa-location-dot w-4"></i>收货地址
                            </a></li>
                            <li><a href="#" class="flex items-center gap-3 px-4 py-3 rounded-lg text-gray-600 hover:bg-gray-50 hover:text-primary transition-colors text-sm">
                                <i class="fa-solid fa-heart w-4"></i>我的收藏
                            </a></li>
                            <li><a href="${pageContext.request.contextPath}/user/logout" class="flex items-center gap-3 px-4 py-3 rounded-lg text-red-500 hover:bg-red-50 transition-colors text-sm mt-2 border-t border-gray-100">
                                <i class="fa-solid fa-right-from-bracket w-4"></i>退出登录
                            </a></li>
                        </ul>
                    </div>
                </aside>

                <!-- 右侧内容区 -->
                <div class="flex-1">
                    <!-- 快捷功能卡片 -->
                    <div class="bg-white rounded-xl shadow-sm p-6 mb-6">
                        <h3 class="font-bold text-gray-800 mb-4">我的常用功能</h3>
                        <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
                            <a href="#" class="flex flex-col items-center p-4 rounded-xl hover:bg-gray-50 transition-colors group">
                                <div class="w-12 h-12 rounded-full bg-blue-50 flex items-center justify-center text-blue-500 mb-2 group-hover:bg-blue-100 transition-colors">
                                    <i class="fa-solid fa-receipt text-xl"></i>
                                </div>
                                <span class="text-sm text-gray-700">全部订单</span>
                            </a>
                            <a href="#" class="flex flex-col items-center p-4 rounded-xl hover:bg-gray-50 transition-colors group">
                                <div class="w-12 h-12 rounded-full bg-orange-50 flex items-center justify-center text-orange-500 mb-2 group-hover:bg-orange-100 transition-colors">
                                    <i class="fa-solid fa-box text-xl"></i>
                                </div>
                                <span class="text-sm text-gray-700">待收货</span>
                            </a>
                            <a href="#" class="flex flex-col items-center p-4 rounded-xl hover:bg-gray-50 transition-colors group">
                                <div class="w-12 h-12 rounded-full bg-green-50 flex items-center justify-center text-green-500 mb-2 group-hover:bg-green-100 transition-colors">
                                    <i class="fa-solid fa-comment-dots text-xl"></i>
                                </div>
                                <span class="text-sm text-gray-700">待评价</span>
                            </a>
                            <a href="#" class="flex flex-col items-center p-4 rounded-xl hover:bg-gray-50 transition-colors group">
                                <div class="w-12 h-12 rounded-full bg-purple-50 flex items-center justify-center text-purple-500 mb-2 group-hover:bg-purple-100 transition-colors">
                                    <i class="fa-solid fa-truck text-xl"></i>
                                </div>
                                <span class="text-sm text-gray-700">物流查询</span>
                            </a>
                        </div>
                    </div>

                    <!-- 个人信息预览 -->
                    <div class="bg-white rounded-xl shadow-sm p-6">
                        <h3 class="font-bold text-gray-800 mb-4">基本信息</h3>
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div>
                                <label class="text-sm text-gray-500 block mb-1">用户名</label>
                                <div class="p-3 bg-gray-50 rounded-lg text-gray-700"><%= loginUser.getMembername() %></div>
                            </div>
                            <div>
                                <label class="text-sm text-gray-500 block mb-1">手机号</label>
                                <div class="p-3 bg-gray-50 rounded-lg text-gray-700"><%= loginUser.getPhone() != null ? loginUser.getPhone() : "未设置" %></div>
                            </div>
                            <div>
                                <label class="text-sm text-gray-500 block mb-1">会员等级</label>
                                <div class="p-3 bg-gray-50 rounded-lg text-gray-700"><%= loginUser.getMemberLevel() %></div>
                            </div>
                            <div>
                                <label class="text-sm text-gray-500 block mb-1">注册时间</label>
                                <div class="p-3 bg-gray-50 rounded-lg text-gray-700"><%= loginUser.getCreateTime() %></div>
                            </div>
                        </div>
                        <button class="mt-6 px-6 py-2 bg-primary text-white rounded-lg hover:bg-primary/90 transition-colors text-sm">
                            修改个人信息
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <!-- 页脚 -->
    <footer>
        <div class="footer-copyright">
            <p>© 2025 鲜农优选 版权所有 | 京ICP备12345678号-1</p>
        </div>
    </footer>

    <script>
        const navbar = document.getElementById('navbar');
        window.addEventListener('scroll', () => {
            navbar.classList.toggle('nav-shadow', window.scrollY > 50);
        });
    </script>
</body>
</html>