<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>商品列表 - 鲜农优选</title>
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
    <!-- 顶部导航栏（高亮商品分类） -->
    <header id="navbar">
        <div class="nav-container">
            <a href="${pageContext.request.contextPath}/jsp/user/index.jsp" class="nav-logo">
                <i class="fa-solid fa-leaf"></i>
                <span>鲜农优选</span>
            </a>
            <nav class="nav-menu hidden md:flex">
                <a href="${pageContext.request.contextPath}/jsp/user/index.jsp">首页</a>
                <a href="${pageContext.request.contextPath}/jsp/user/product_list.jsp" class="active">商品分类</a>
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

    <!-- 主体内容 -->
    <main class="flex-1 py-6">
        <div class="container mx-auto px-4">
            <div class="flex gap-6">
                <!-- 左侧筛选栏（PC端显示，移动端隐藏） -->
                <aside class="w-56 shrink-0 hidden md:block">
                    <div class="bg-white rounded-xl shadow-sm p-4 sticky top-24">
                        <!-- 商品分类 -->
                        <h3 class="font-bold text-gray-800 mb-3 pb-2 border-b border-gray-100">商品分类</h3>
                        <ul class="space-y-1 mb-6">
                            <li><a href="#" class="block px-3 py-2 rounded-lg bg-primary/10 text-primary font-medium text-sm">全部商品</a></li>
                            <li><a href="#" class="block px-3 py-2 rounded-lg text-gray-600 hover:bg-gray-50 hover:text-primary transition-colors text-sm">新鲜水果</a></li>
                            <li><a href="#" class="block px-3 py-2 rounded-lg text-gray-600 hover:bg-gray-50 hover:text-primary transition-colors text-sm">时令蔬菜</a></li>
                            <li><a href="#" class="block px-3 py-2 rounded-lg text-gray-600 hover:bg-gray-50 hover:text-primary transition-colors text-sm">粮油米面</a></li>
                            <li><a href="#" class="block px-3 py-2 rounded-lg text-gray-600 hover:bg-gray-50 hover:text-primary transition-colors text-sm">肉禽蛋类</a></li>
                            <li><a href="#" class="block px-3 py-2 rounded-lg text-gray-600 hover:bg-gray-50 hover:text-primary transition-colors text-sm">水产海鲜</a></li>
                            <li><a href="#" class="block px-3 py-2 rounded-lg text-gray-600 hover:bg-gray-50 hover:text-primary transition-colors text-sm">干货特产</a></li>
                        </ul>

                        <!-- 产地筛选 -->
                        <h3 class="font-bold text-gray-800 mb-3 pb-2 border-b border-gray-100">产地筛选</h3>
                        <ul class="space-y-1 text-sm">
                            <li><a href="#" class="block px-3 py-1.5 text-gray-600 hover:text-primary transition-colors">全部产地</a></li>
                            <li><a href="#" class="block px-3 py-1.5 text-gray-600 hover:text-primary transition-colors">山东</a></li>
                            <li><a href="#" class="block px-3 py-1.5 text-gray-600 hover:text-primary transition-colors">广西</a></li>
                            <li><a href="#" class="block px-3 py-1.5 text-gray-600 hover:text-primary transition-colors">云南</a></li>
                            <li><a href="#" class="block px-3 py-1.5 text-gray-600 hover:text-primary transition-colors">辽宁</a></li>
                            <li><a href="#" class="block px-3 py-1.5 text-gray-600 hover:text-primary transition-colors">海南</a></li>
                            <li><a href="#" class="block px-3 py-1.5 text-gray-600 hover:text-primary transition-colors">黑龙江</a></li>
                        </ul>
                    </div>
                </aside>

                <!-- 右侧商品区域 -->
                <div class="flex-1">
                    <!-- 排序栏 -->
                    <div class="bg-white rounded-xl shadow-sm p-3 mb-4 flex items-center justify-between">
                        <div class="flex items-center space-x-1 text-sm">
                            <button class="px-3 py-1.5 rounded bg-primary text-white">综合排序</button>
                            <button class="px-3 py-1.5 rounded text-gray-600 hover:bg-gray-50">销量优先</button>
                            <button class="px-3 py-1.5 rounded text-gray-600 hover:bg-gray-50">价格从低到高</button>
                            <button class="px-3 py-1.5 rounded text-gray-600 hover:bg-gray-50">最新上架</button>
                        </div>
                        <div class="text-sm text-gray-500">共 24 件商品</div>
                    </div>

                    <!-- 商品网格（复用首页商品卡片样式） -->
                    <div class="product-grid">
                        <!-- 商品1 -->
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

                        <!-- 商品2 -->
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

                        <!-- 商品3 -->
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

                        <!-- 商品4 -->
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

                        <!-- 商品5 -->
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

                        <!-- 商品6 -->
                        <div class="product-card card-hover">
                            <div class="img-box">
                                <img src="https://picsum.photos/id/175/400/400" alt="五常稻花香大米" class="w-full h-full object-cover">
                            </div>
                            <div class="info">
                                <h3 class="name">五常稻花香大米 10斤装</h3>
                                <div class="meta">
                                    <span>黑龙江五常</span>
                                    <span>月销 2.1k+</span>
                                </div>
                                <div class="price-row">
                                    <div>
                                        <span class="price">¥79.9</span>
                                        <span class="old-price">¥99.9</span>
                                    </div>
                                    <button class="add-cart-btn"><i class="fa-solid fa-cart-plus"></i></button>
                                </div>
                            </div>
                        </div>

                        <!-- 商品7 -->
                        <div class="product-card card-hover">
                            <div class="img-box">
                                <img src="https://picsum.photos/id/306/400/400" alt="云南高山蓝莓" class="w-full h-full object-cover">
                            </div>
                            <div class="info">
                                <h3 class="name">云南高山蓝莓 鲜果 4盒</h3>
                                <div class="meta">
                                    <span>云南抚仙湖</span>
                                    <span>月销 890+</span>
                                </div>
                                <div class="price-row">
                                    <div>
                                        <span class="price">¥69.9</span>
                                        <span class="old-price">¥89.9</span>
                                    </div>
                                    <button class="add-cart-btn"><i class="fa-solid fa-cart-plus"></i></button>
                                </div>
                            </div>
                        </div>

                        <!-- 商品8 -->
                        <div class="product-card card-hover">
                            <div class="img-box">
                                <img src="https://picsum.photos/id/219/400/400" alt="东北甜糯玉米" class="w-full h-full object-cover">
                            </div>
                            <div class="info">
                                <h3 class="name">东北甜糯玉米 真空装10根</h3>
                                <div class="meta">
                                    <span>黑龙江绥化</span>
                                    <span>月销 1.5k+</span>
                                </div>
                                <div class="price-row">
                                    <div>
                                        <span class="price">¥29.9</span>
                                        <span class="old-price">¥39.9</span>
                                    </div>
                                    <button class="add-cart-btn"><i class="fa-solid fa-cart-plus"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 分页 -->
                    <div class="mt-8 flex justify-center">
                        <div class="flex items-center space-x-1">
                            <button class="px-3 py-1.5 border border-gray-200 rounded text-gray-400 cursor-not-allowed">上一页</button>
                            <button class="px-3 py-1.5 bg-primary text-white rounded">1</button>
                            <button class="px-3 py-1.5 border border-gray-200 rounded text-gray-600 hover:border-primary hover:text-primary">2</button>
                            <button class="px-3 py-1.5 border border-gray-200 rounded text-gray-600 hover:border-primary hover:text-primary">3</button>
                            <button class="px-3 py-1.5 border border-gray-200 rounded text-gray-600 hover:border-primary hover:text-primary">下一页</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <!-- 页脚（和首页统一） -->
    <footer>
        <div class="footer-grid">
            <div class="footer-col">
                <div class="footer-logo">
                    <i class="fa-solid fa-leaf text-primary"></i>
                    <span>鲜农优选</span>
                </div>
                <p class="footer-desc">专注优质农产品直供，连接田间与餐桌，让每一份新鲜都能直达你家。</p>
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

    <!-- 导航栏滚动效果JS -->
    <script>
        const navbar = document.getElementById('navbar');
        window.addEventListener('scroll', () => {
            navbar.classList.toggle('nav-shadow', window.scrollY > 50);
        });
    </script>
</body>
</html>