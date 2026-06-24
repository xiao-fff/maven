<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>鲜农优选 - 产地直供新鲜农产品</title>
    
    <!-- 引入第三方库 -->
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- 引入通用公共CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/common.css">

    <!-- Tailwind主题配置 -->
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
<body>
    <!-- ========== 顶部导航栏 ========== -->
    <header id="navbar">
        <div class="nav-container">
            <a href="${pageContext.request.contextPath}/jsp/user/index.jsp" class="nav-logo">
                <i class="fa-solid fa-leaf"></i>
                <span>鲜农优选</span>
            </a>
            
            <nav class="nav-menu hidden md:flex">
                <a href="${pageContext.request.contextPath}/jsp/user/index.jsp" class="active">首页</a>
                <a href="${pageContext.request.contextPath}/jsp/user/product_list.jsp">商品分类</a>
                <a href="${pageContext.request.contextPath}/jsp/user/product_list.jsp">产地溯源</a>
                <a href="#">农友社区</a>
                <a href="#">时令科普</a>
            </nav>
            
            <div class="nav-right">
                <div class="relative hidden sm:block">
                    <input type="text" placeholder="搜索新鲜果蔬..." 
                           class="w-48 lg:w-64 pl-10 pr-4 py-2 rounded-full border border-gray-200 focus:outline-none focus:border-primary focus:ring-1 focus:ring-primary text-sm bg-gray-50">
                    <i class="fa-solid fa-magnifying-glass absolute left-3.5 top-1/2 -translate-y-1/2 text-gray-400"></i>
                </div>
                
                <a href="${pageContext.request.contextPath}/jsp/user/cart.jsp" class="nav-cart">
                    <i class="fa-solid fa-cart-shopping text-lg"></i>
                    <span class="badge">3</span>
                </a>
                
                <div class="nav-login hidden sm:flex">
                    <a href="${pageContext.request.contextPath}/jsp/user/login.jsp">登录</a>
                    <span>|</span>
                    <a href="${pageContext.request.contextPath}/jsp/user/register.jsp">注册</a>
                </div>
            </div>
        </div>
    </header>
    <div class="nav-placeholder"></div>

    <!-- ========== 轮播图区域 ========== -->
    <section class="carousel-wrapper">
        <div id="carousel" class="carousel-track">
            <!-- 轮播1：鲜果 -->
            <div class="carousel-slide bg-gradient-to-r from-primary/90 to-green-600">
                <div class="absolute inset-0 max-w-6xl mx-auto px-4 flex items-center">
                    <div class="max-w-xl text-white">
                        <h2 class="text-[clamp(1.5rem,3vw,2.5rem)] font-bold mb-3 text-shadow">应季鲜果 产地直采</h2>
                        <p class="text-[clamp(0.9rem,1.5vw,1.1rem)] mb-6 text-white/90">精选全国优质产区新鲜水果，当日采摘当日发货，锁住原生好味道</p>
                        <a href="${pageContext.request.contextPath}/jsp/user/product_list.jsp">
                            <button class="px-8 py-2.5 bg-white text-primary font-medium rounded-full hover:bg-gray-100 transition-colors shadow-lg">
                                立即选购
                            </button>
                        </a>
                    </div>
                </div>
                <div class="absolute right-10 bottom-10 opacity-20 text-white text-[200px] hidden lg:block">
                    <i class="fa-solid fa-apple-whole"></i>
                </div>
            </div>

            <!-- 轮播2：蔬菜 -->
            <div class="carousel-slide bg-gradient-to-r from-secondary/90 to-amber-700">
                <div class="absolute inset-0 max-w-6xl mx-auto px-4 flex items-center">
                    <div class="max-w-xl text-white">
                        <h2 class="text-[clamp(1.5rem,3vw,2.5rem)] font-bold mb-3 text-shadow">绿色有机 健康蔬菜</h2>
                        <p class="text-[clamp(0.9rem,1.5vw,1.1rem)] mb-6 text-white/90">无公害种植基地直供，无农药无残留，每一口都是自然的鲜味</p>
                        <a href="${pageContext.request.contextPath}/jsp/user/product_list.jsp">
                            <button class="px-8 py-2.5 bg-white text-secondary font-medium rounded-full hover:bg-gray-100 transition-colors shadow-lg">
                                查看详情
                            </button>
                        </a>
                    </div>
                </div>
                <div class="absolute right-10 bottom-10 opacity-20 text-white text-[200px] hidden lg:block">
                    <i class="fa-solid fa-carrot"></i>
                </div>
            </div>

            <!-- 轮播3：产地溯源 -->
            <div class="carousel-slide bg-gradient-to-r from-teal-600/90 to-cyan-700">
                <div class="absolute inset-0 max-w-6xl mx-auto px-4 flex items-center">
                    <div class="max-w-xl text-white">
                        <h2 class="text-[clamp(1.5rem,3vw,2.5rem)] font-bold mb-3 text-shadow">溯源地图 看得见的安心</h2>
                        <p class="text-[clamp(0.9rem,1.5vw,1.1rem)] mb-6 text-white/90">一键查看农产品产地信息，从田间到餐桌全程可追溯，品质有保障</p>
                        <a href="${pageContext.request.contextPath}/jsp/user/product_list.jsp">
                            <button class="px-8 py-2.5 bg-white text-teal-700 font-medium rounded-full hover:bg-gray-100 transition-colors shadow-lg">
                                探索产地
                            </button>
                        </a>
                    </div>
                </div>
                <div class="absolute right-10 bottom-10 opacity-20 text-white text-[200px] hidden lg:block">
                    <i class="fa-solid fa-map-location-dot"></i>
                </div>
            </div>
        </div>

        <!-- 指示器 -->
        <div class="carousel-dots">
            <button class="carousel-dot active" data-index="0"></button>
            <button class="carousel-dot" data-index="1"></button>
            <button class="carousel-dot" data-index="2"></button>
        </div>

        <!-- 左右按钮 -->
        <button class="carousel-btn prev hidden md:flex" id="prevBtn">
            <i class="fa-solid fa-chevron-left"></i>
        </button>
        <button class="carousel-btn next hidden md:flex" id="nextBtn">
            <i class="fa-solid fa-chevron-right"></i>
        </button>
    </section>

    <!-- ========== 快捷分类入口 ========== -->
    <section class="section-container bg-white">
        <div class="container">
            <div class="category-grid">
                <a href="${pageContext.request.contextPath}/jsp/user/product_list.jsp" class="category-item">
                    <div class="icon-box"><i class="fa-solid fa-lemon"></i></div>
                    <span>新鲜水果</span>
                </a>
                <a href="${pageContext.request.contextPath}/jsp/user/product_list.jsp" class="category-item">
                    <div class="icon-box"><i class="fa-solid fa-carrot"></i></div>
                    <span>时令蔬菜</span>
                </a>
                <a href="${pageContext.request.contextPath}/jsp/user/product_list.jsp" class="category-item">
                    <div class="icon-box"><i class="fa-solid fa-wheat-awn"></i></div>
                    <span>粮油米面</span>
                </a>
                <a href="${pageContext.request.contextPath}/jsp/user/product_list.jsp" class="category-item">
                    <div class="icon-box"><i class="fa-solid fa-drumstick-bite"></i></div>
                    <span>肉禽蛋类</span>
                </a>
                <a href="${pageContext.request.contextPath}/jsp/user/product_list.jsp" class="category-item">
                    <div class="icon-box"><i class="fa-solid fa-fish"></i></div>
                    <span>水产海鲜</span>
                </a>
                <a href="${pageContext.request.contextPath}/jsp/user/product_list.jsp" class="category-item">
                    <div class="icon-box"><i class="fa-solid fa-seedling"></i></div>
                    <span>干货特产</span>
                </a>
                <a href="${pageContext.request.contextPath}/jsp/user/product_list.jsp" class="category-item">
                    <div class="icon-box"><i class="fa-solid fa-mug-hot"></i></div>
                    <span>茶饮茗品</span>
                </a>
                <a href="${pageContext.request.contextPath}/jsp/user/product_list.jsp" class="category-item">
                    <div class="icon-box"><i class="fa-solid fa-ellipsis"></i></div>
                    <span>全部分类</span>
                </a>
            </div>
        </div>
    </section>

    <!-- ========== 当季时令推荐 ========== -->
    <section class="section-container">
        <div class="container">
            <div class="flex items-end justify-between mb-8">
                <div>
                    <h2 class="text-2xl font-bold text-gray-800 flex items-center">
                        <i class="fa-solid fa-sun text-amber-500 mr-2"></i>
                        当季时令
                    </h2>
                    <p class="text-gray-500 text-sm mt-1">应季而食，新鲜采摘，锁住自然原味</p>
                </div>
                <a href="${pageContext.request.contextPath}/jsp/user/product_list.jsp" class="text-primary text-sm hover:underline flex items-center">
                    查看更多 <i class="fa-solid fa-chevron-right ml-1 text-xs"></i>
                </a>
            </div>

            <div class="product-grid">
                <!-- 商品1：草莓 -->
                <div class="product-card card-hover">
                    <div class="img-box">
                        <img src="https://picsum.photos/id/1080/400/400" alt="丹东99奶油草莓" class="w-full h-full object-cover">
                        <span class="tag hot">热销</span>
                    </div>
                    <div class="info">
                        <h3 class="name">丹东99奶油草莓 3斤装</h3>
                        <div class="meta">
                            <span>辽宁丹东产地</span>
                            <span>月销 2.3k+</span>
                        </div>
                        <div class="price-row">
                            <div>
                                <span class="price">¥59.9</span>
                                <span class="old-price">¥89.9</span>
                            </div>
                            <button class="add-cart-btn"><i class="fa-solid fa-cart-plus"></i></button>
                        </div>
                    </div>
                </div>

                <!-- 商品2：沃柑 -->
                <div class="product-card card-hover">
                    <div class="img-box">
                        <img src="https://picsum.photos/id/292/400/400" alt="广西武鸣沃柑" class="w-full h-full object-cover">
                        <span class="tag new">新品</span>
                    </div>
                    <div class="info">
                        <h3 class="name">广西武鸣沃柑 5斤装</h3>
                        <div class="meta">
                            <span>广西武鸣产地</span>
                            <span>月销 1.8k+</span>
                        </div>
                        <div class="price-row">
                            <div>
                                <span class="price">¥39.9</span>
                                <span class="old-price">¥59.9</span>
                            </div>
                            <button class="add-cart-btn"><i class="fa-solid fa-cart-plus"></i></button>
                        </div>
                    </div>
                </div>

                <!-- 商品3：西兰花 -->
                <div class="product-card card-hover">
                    <div class="img-box">
                        <img src="https://picsum.photos/id/139/400/400" alt="有机西兰花" class="w-full h-full object-cover">
                    </div>
                    <div class="info">
                        <h3 class="name">有机西兰花 新鲜现摘 2斤</h3>
                        <div class="meta">
                            <span>山东寿光基地</span>
                            <span>月销 960+</span>
                        </div>
                        <div class="price-row">
                            <div>
                                <span class="price">¥19.9</span>
                                <span class="old-price">¥29.9</span>
                            </div>
                            <button class="add-cart-btn"><i class="fa-solid fa-cart-plus"></i></button>
                        </div>
                    </div>
                </div>

                <!-- 商品4：土鸡蛋 -->
                <div class="product-card card-hover">
                    <div class="img-box">
                        <img src="https://picsum.photos/id/312/400/400" alt="农家散养土鸡蛋" class="w-full h-full object-cover">
                        <span class="tag best">爆款</span>
                    </div>
                    <div class="info">
                        <h3 class="name">农家散养土鸡蛋 30枚装</h3>
                        <div class="meta">
                            <span>大别山养殖基地</span>
                            <span>月销 3.5k+</span>
                        </div>
                        <div class="price-row">
                            <div>
                                <span class="price">¥45.9</span>
                                <span class="old-price">¥65.9</span>
                            </div>
                            <button class="add-cart-btn"><i class="fa-solid fa-cart-plus"></i></button>
                        </div>
                    </div>
                </div>

                <!-- 商品5：圣女果 -->
                <div class="product-card card-hover">
                    <div class="img-box">
                        <img src="https://picsum.photos/id/102/400/400" alt="千禧圣女果" class="w-full h-full object-cover">
                    </div>
                    <div class="info">
                        <h3 class="name">千禧圣女果 小番茄 3斤</h3>
                        <div class="meta">
                            <span>海南陵水产地</span>
                            <span>月销 1.2k+</span>
                        </div>
                        <div class="price-row">
                            <div>
                                <span class="price">¥29.9</span>
                                <span class="old-price">¥45.9</span>
                            </div>
                            <button class="add-cart-btn"><i class="fa-solid fa-cart-plus"></i></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ========== 产地风光展示（纯观赏）【已修复】 ========== -->
    <section class="section-container bg-white">
        <div class="container">
            <div class="section-title">
                <h2>产地风光 · 源自自然好环境</h2>
                <p>精选全国优质产区，好山好水孕育好食材</p>
            </div>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                <!-- 左侧大图 -->
                <div class="rounded-xl overflow-hidden shadow-sm h-80">
                    <img src="https://picsum.photos/id/106/800/600" alt="田野产地风光" class="w-full h-full object-cover">
                </div>
                <!-- 右侧2x2小图网格 -->
                <div class="grid grid-cols-2 grid-rows-2 gap-4 h-80">
                    <div class="rounded-xl overflow-hidden shadow-sm w-full h-full">
                        <img src="https://picsum.photos/id/154/400/300" alt="蔬菜种植基地" class="w-full h-full object-cover">
                    </div>
                    <div class="rounded-xl overflow-hidden shadow-sm w-full h-full">
                        <img src="https://picsum.photos/id/239/400/300" alt="果园种植基地" class="w-full h-full object-cover">
                    </div>
                    <div class="rounded-xl overflow-hidden shadow-sm w-full h-full">
                        <img src="https://picsum.photos/id/107/400/300" alt="稻田种植基地" class="w-full h-full object-cover">
                    </div>
                    <div class="rounded-xl overflow-hidden shadow-sm w-full h-full">
                        <img src="https://picsum.photos/id/292/400/300" alt="柑橘种植基地" class="w-full h-full object-cover">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ========== 特色banner ========== -->
    <section class="section-container">
        <div class="container">
            <div class="rounded-2xl overflow-hidden bg-gradient-to-r from-primary to-green-600 p-8 md:p-12 relative">
                <div class="relative z-10 max-w-xl text-white">
                    <h2 class="text-2xl md:text-3xl font-bold mb-3">产地溯源 · 看得见的安心</h2>
                    <p class="text-white/85 mb-6">精选全国200+优质农产品基地，从种植到采摘全程可追溯，每一件商品都能找到它的原产地</p>
                    <a href="${pageContext.request.contextPath}/jsp/user/product_list.jsp" 
                       class="inline-flex items-center px-6 py-2.5 bg-white text-primary font-medium rounded-full hover:bg-gray-100 transition-colors shadow-lg">
                        <i class="fa-solid fa-map-location-dot mr-2"></i>
                        探索产地地图
                    </a>
                </div>
                <div class="absolute right-0 top-0 bottom-0 w-1/3 opacity-20 hidden md:block">
                    <i class="fa-solid fa-map text-white text-[300px]"></i>
                </div>
            </div>
        </div>
    </section>

    <!-- ========== 新鲜实拍图鉴（纯观赏） ========== -->
    <section class="section-container bg-white">
        <div class="container">
            <div class="section-title">
                <h2>新鲜实拍 · 看得见的原生品质</h2>
                <p>原相机无滤镜实拍，每一口都是自然本味</p>
            </div>
            <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-4">
                <div class="rounded-xl overflow-hidden shadow-sm aspect-square">
                    <img src="https://picsum.photos/id/1080/400/400" alt="新鲜草莓" class="w-full h-full object-cover">
                </div>
                <div class="rounded-xl overflow-hidden shadow-sm aspect-square">
                    <img src="https://picsum.photos/id/139/400/400" alt="新鲜西兰花" class="w-full h-full object-cover">
                </div>
                <div class="rounded-xl overflow-hidden shadow-sm aspect-square">
                    <img src="https://picsum.photos/id/306/400/400" alt="新鲜蓝莓" class="w-full h-full object-cover">
                </div>
                <div class="rounded-xl overflow-hidden shadow-sm aspect-square">
                    <img src="https://picsum.photos/id/102/400/400" alt="圣女果" class="w-full h-full object-cover">
                </div>
                <div class="rounded-xl overflow-hidden shadow-sm aspect-square">
                    <img src="https://picsum.photos/id/219/400/400" alt="甜玉米" class="w-full h-full object-cover">
                </div>
                <div class="rounded-xl overflow-hidden shadow-sm aspect-square">
                    <img src="https://picsum.photos/id/312/400/400" alt="土鸡蛋" class="w-full h-full object-cover">
                </div>
            </div>
        </div>
    </section>

    <!-- ========== 配送流程展示（纯观赏） ========== -->
    <section class="section-container">
        <div class="container">
            <div class="section-title">
                <h2>从田间到餐桌 · 全程锁鲜配送</h2>
                <p>48小时直达，锁住刚采摘的新鲜</p>
            </div>
            <div class="grid grid-cols-2 md:grid-cols-4 gap-6">
                <div class="flex flex-col items-center text-center">
                    <div class="w-24 h-24 rounded-full overflow-hidden shadow-sm mb-4">
                        <img src="https://picsum.photos/id/106/200/200" alt="新鲜采摘" class="w-full h-full object-cover">
                    </div>
                    <h3 class="font-medium text-gray-800 mb-1">新鲜采摘</h3>
                    <p class="text-xs text-gray-500">清晨人工采摘，甄选优质果实</p>
                </div>
                <div class="flex flex-col items-center text-center">
                    <div class="w-24 h-24 rounded-full overflow-hidden shadow-sm mb-4">
                        <img src="https://picsum.photos/id/239/200/200" alt="分拣筛选" class="w-full h-full object-cover">
                    </div>
                    <h3 class="font-medium text-gray-800 mb-1">分拣筛选</h3>
                    <p class="text-xs text-gray-500">人工分级筛选，剔除次果坏果</p>
                </div>
                <div class="flex flex-col items-center text-center">
                    <div class="w-24 h-24 rounded-full overflow-hidden shadow-sm mb-4">
                        <img src="https://picsum.photos/id/107/200/200" alt="冷链锁鲜" class="w-full h-full object-cover">
                    </div>
                    <h3 class="font-medium text-gray-800 mb-1">冷链锁鲜</h3>
                    <p class="text-xs text-gray-500">全程冷链储运，锁住原生新鲜</p>
                </div>
                <div class="flex flex-col items-center text-center">
                    <div class="w-24 h-24 rounded-full overflow-hidden shadow-sm mb-4">
                        <img src="https://picsum.photos/id/154/200/200" alt="配送上门" class="w-full h-full object-cover">
                    </div>
                    <h3 class="font-medium text-gray-800 mb-1">配送上门</h3>
                    <p class="text-xs text-gray-500">极速配送上门，新鲜直达餐桌</p>
                </div>
            </div>
        </div>
    </section>

    <!-- ========== 页脚 ========== -->
    <footer>
        <div class="footer-grid">
            <div class="footer-col">
                <div class="footer-logo">
                    <i class="fa-solid fa-leaf text-primary"></i>
                    <span>鲜农优选</span>
                </div>
                <p class="footer-desc">专注优质农产品直供，连接田间与餐桌，让每一份新鲜都能直达你家。产地直采，品质保障，新鲜到家。</p>
                <div class="footer-social">
                    <a href="#"><i class="fa-brands fa-weixin"></i></a>
                    <a href="#"><i class="fa-brands fa-weibo"></i></a>
                </div>
            </div>
            
            <div class="footer-col">
                <h4>购物指南</h4>
                <ul>
                    <li><a href="#">购物流程</a></li>
                    <li><a href="#">支付方式</a></li>
                    <li><a href="#">配送说明</a></li>
                    <li><a href="#">售后服务</a></li>
                    <li><a href="#">常见问题</a></li>
                </ul>
            </div>
            
            <div class="footer-col">
                <h4>关于我们</h4>
                <ul>
                    <li><a href="#">平台介绍</a></li>
                    <li><a href="#">入驻合作</a></li>
                    <li><a href="#">联系我们</a></li>
                    <li><a href="#">招贤纳士</a></li>
                    <li><a href="#">隐私政策</a></li>
                </ul>
            </div>
            
            <div class="footer-col">
                <h4>联系方式</h4>
                <ul>
                    <li class="flex items-start gap-3">
                        <i class="fa-solid fa-phone text-primary mt-1"></i>
                        <div>
                            <p>客服热线：400-123-4567</p>
                            <p class="text-xs text-gray-500">服务时间：9:00-21:00</p>
                        </div>
                    </li>
                    <li class="flex items-start gap-3">
                        <i class="fa-solid fa-envelope text-primary mt-1"></i>
                        <p>商务合作：business@xiannong.com</p>
                    </li>
                    <li class="flex items-start gap-3">
                        <i class="fa-solid fa-location-dot text-primary mt-1"></i>
                        <p>公司地址：北京市海淀区中关村软件园</p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="footer-copyright">
            <p>© 2025 鲜农优选 版权所有 | 京ICP备12345678号-1</p>
        </div>
    </footer>

    <!-- ========== 页面交互JS ========== -->
    <script>
        // 1. 导航栏滚动阴影
        const navbar = document.getElementById('navbar');
        window.addEventListener('scroll', () => {
            navbar.classList.toggle('nav-shadow', window.scrollY > 50);
        });

        // 2. 轮播图功能
        const carousel = document.getElementById('carousel');
        const dots = document.querySelectorAll('.carousel-dot');
        const prevBtn = document.getElementById('prevBtn');
        const nextBtn = document.getElementById('nextBtn');
        let currentIndex = 0;
        const totalSlides = 3;
        let autoTimer;

        // 切换轮播
        function goToSlide(index) {
            currentIndex = index;
            if (currentIndex >= totalSlides) currentIndex = 0;
            if (currentIndex < 0) currentIndex = totalSlides - 1;
            
            carousel.style.transform = `translateX(-${currentIndex * 100}%)`;
            dots.forEach((dot, i) => {
                dot.classList.toggle('active', i === currentIndex);
            });
        }

        // 自动播放
        function startAuto() {
            autoTimer = setInterval(() => goToSlide(currentIndex + 1), 4000);
        }
        function stopAuto() {
            clearInterval(autoTimer);
        }

        // 绑定事件
        nextBtn.addEventListener('click', () => { stopAuto(); goToSlide(currentIndex + 1); startAuto(); });
        prevBtn.addEventListener('click', () => { stopAuto(); goToSlide(currentIndex - 1); startAuto(); });
        dots.forEach((dot, i) => {
            dot.addEventListener('click', () => { stopAuto(); goToSlide(i); startAuto(); });
        });
        carousel.parentElement.addEventListener('mouseenter', stopAuto);
        carousel.parentElement.addEventListener('mouseleave', startAuto);

        // 初始化
        goToSlide(0);
        startAuto();
    </script>
</body>
</html>