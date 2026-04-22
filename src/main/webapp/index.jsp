<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Elite E‑Commerce</title>

    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;600;800&family=Plus+Jakarta+Sans:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --bg: #050505;
            --primary: #ffffff;
            --accent: #00f2ff; /* Neon Cyan */
            --secondary: #7000ff; /* Electric Purple */
            --muted: #a1a1aa;
            --card: #121214;
            --surface: #1c1c1f;
            --success: #00ff88;
            --border: rgba(255, 255, 255, 0.08);
            --radius: 16px;
            --container: 1200px;
        }

        * { box-sizing: border-box; }

        body {
            margin: 0;
            font-family: 'Plus Jakarta Sans', system-ui, sans-serif;
            color: var(--primary);
            background: var(--bg);
            -webkit-font-smoothing: antialiased;
            line-height: 1.6;
        }

        a { color: inherit; text-decoration: none; transition: 0.2s; }

        .container {
            width: 100%;
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* --- Header Refinement --- */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(5, 5, 5, 0.8);
            border-bottom: 1px solid var(--border);
            backdrop-filter: blur(12px);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 16px 0;
        }

        .brand {
            font-family: 'Outfit', sans-serif;
            font-weight: 800;
            font-size: 24px;
            letter-spacing: -1px;
        }

        .brand .accent { color: var(--accent); }

        nav.main-nav ul {
            display: flex;
            gap: 12px;
            list-style: none;
            padding: 0;
        }

        nav.main-nav li a {
            padding: 8px 16px;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 500;
            color: var(--muted);
        }

        nav.main-nav li a:hover {
            color: var(--accent);
            background: rgba(0, 242, 255, 0.05);
        }

        .search {
            display: flex;
            align-items: center;
            background: var(--surface);
            padding: 8px 16px;
            border-radius: 12px;
            border: 1px solid var(--border);
            width: 300px;
        }

        .search input {
            border: 0;
            background: transparent;
            outline: none;
            color: white;
            width: 100%;
            font-size: 14px;
        }

        /* --- Hero Section --- */
        .hero {
            position: relative;
            padding: 100px 0;
            text-align: center;
            background: radial-gradient(circle at top right, rgba(112, 0, 255, 0.15), transparent),
                        radial-gradient(circle at bottom left, rgba(0, 242, 255, 0.1), transparent);
            border-bottom: 1px solid var(--border);
            overflow: hidden;
        }

        .hero h1 {
            font-family: 'Outfit', sans-serif;
            font-size: clamp(32px, 5vw, 64px);
            font-weight: 800;
            margin: 0 0 20px;
            line-height: 1.1;
            background: linear-gradient(to bottom, #fff 30%, #a1a1aa);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .btn {
            padding: 14px 28px;
            border-radius: 12px;
            font-weight: 700;
            cursor: pointer;
            border: 0;
            transition: 0.3s;
        }

        .btn-primary {
            background: var(--accent);
            color: #000;
            box-shadow: 0 0 20px rgba(0, 242, 255, 0.3);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 0 30px rgba(0, 242, 255, 0.5);
        }

        /* --- Grid & Cards --- */
        .section { padding: 80px 0; }
        .grid { display: grid; gap: 24px; }

        .cat-card {
            background: var(--card);
            border: 1px solid var(--border);
            padding: 32px 20px;
            border-radius: var(--radius);
            text-align: center;
            cursor: pointer;
        }

        .cat-card:hover {
            border-color: var(--accent);
            background: linear-gradient(145deg, #121214, #1c1c1f);
        }

        .product {
            background: var(--card);
            border: 1px solid var(--border);
            border-radius: var(--radius);
            overflow: hidden;
            transition: 0.3s;
        }

        .product:hover {
            transform: translateY(-8px);
            border-color: rgba(255,255,255,0.2);
        }

        .product img {
            width: 100%;
            height: 240px;
            object-fit: cover;
            filter: grayscale(20%);
        }

        .product-body { padding: 20px; }

        .price { font-size: 20px; font-weight: 700; color: var(--accent); }

        .add-btn {
            width: 100%;
            background: var(--primary);
            color: #000;
            border: 0;
            padding: 12px;
            border-radius: 10px;
            font-weight: 700;
            cursor: pointer;
        }

        /* --- Deal Section --- */
        .deal {
            background: var(--surface);
            border-radius: 24px;
            border: 1px solid var(--accent);
            display: flex;
            overflow: hidden;
        }

        .time-box {
            background: rgba(255,255,255,0.05);
            border: 1px solid var(--border);
            padding: 16px;
            border-radius: 12px;
            min-width: 80px;
        }

        /* Responsive */
        @media (max-width: 900px) {
            .deal { flex-direction: column; }
            .deal img { width: 100% !important; height: 300px !important; }
            .search { display: none; }
        }
    </style>
</head>

<body>
    <header>
        <div class="container header-inner">
            <div style="display:flex;align-items:center;gap:20px;">
                <a class="brand" href="#">NEXUS<span class="accent">SHOP</span></a>
            </div>

            <nav class="main-nav">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#prod-title">Shop</a></li>
                    <li><a href="#deals">Deals</a></li>
                </ul>
            </nav>

            <div style="display:flex;align-items:center;gap:20px;">
                <div class="search">
                    <input type="text" id="searchInput" placeholder="Search the future...">
                    <i class="fas fa-search" style="color:var(--muted)"></i>
                </div>
                <a class="cart" href="#" style="font-size: 1.2rem; position: relative;">
                    <i class="fas fa-shopping-bag"></i>
                    <span id="cartCount" style="position:absolute; top:-8px; right:-10px; background:var(--accent); color:#000; font-size:10px; padding:2px 6px; border-radius:10px; font-weight:800">0</span>
                </a>
            </div>
        </div>
    </header>

    <main>
        <section class="hero">
            <div class="container">
                <h1>UPGRADE YOUR<br>DIGITAL LIFESTYLE</h1>
                <p style="color:var(--muted); max-width:600px; margin: 0 auto 30px;">Premium tech and lifestyle essentials. Curated for those who live in the tomorrow, today.</p>
                <div style="display:flex; gap:16px; justify-content:center;">
                    <button class="btn btn-primary" id="shopNow">BROWSE COLLECTION</button>
                    <button class="btn" style="background:transparent; border:1px solid var(--border); color:white;">LEARN MORE</button>
                </div>
            </div>
        </section>

        <section class="section container">
            <div style="margin-bottom:40px;">
                <h2 style="font-family:'Outfit'; font-size:32px;">Categories</h2>
            </div>
            <div class="grid" id="categoriesGrid" style="grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));"></div>
        </section>

        <section class="section container">
            <div id="prod-title" style="margin-bottom:40px;">
                <h2 style="font-family:'Outfit'; font-size:32px;">Trending Gear</h2>
            </div>
            <div class="grid" id="productsGrid" style="grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));"></div>
        </section>

        <section id="deals" class="section container">
            <div class="deal">
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80" style="width:50%; object-fit:cover;" alt="Deal">
                <div style="padding:60px; flex:1;">
                    <span style="color:var(--accent); font-weight:800; letter-spacing:2px; font-size:12px;">FLASH SALE</span>
                    <h2 style="font-size:42px; margin: 10px 0;">MacBook Air M2</h2>
                    <div class="timer" style="display:flex; gap:15px; margin: 30px 0;">
                        <div class="time-box"><div id="dealHours" style="font-size:24px; font-weight:800;">00</div><div style="font-size:10px; color:var(--muted)">HRS</div></div>
                        <div class="time-box"><div id="dealMinutes" style="font-size:24px; font-weight:800;">00</div><div style="font-size:10px; color:var(--muted)">MIN</div></div>
                        <div class="time-box"><div id="dealSeconds" style="font-size:24px; font-weight:800;">00</div><div style="font-size:10px; color:var(--muted)">SEC</div></div>
                    </div>
                    <div class="price" style="font-size:32px; margin-bottom:20px;">$999 <span style="text-decoration:line-through; color:var(--muted); font-size:18px; margin-left:10px;">$1,199</span></div>
                    <button class="btn btn-primary" id="buyDeal">SECURE DEAL</button>
                </div>
            </div>
        </section>
    </main>

    <footer style="padding:60px 0; border-top:1px solid var(--border); margin-top:80px;">
        <div class="container" style="text-align:center;">
            <div class="brand" style="margin-bottom:20px;">NEXUS<span class="accent">SHOP</span></div>
            <p style="color:var(--muted); font-size:14px;">© <span id="year"></span> NexusShop. Engineered for the modern age.</p>
        </div>
    </footer>

    <script>
        const CATEGORIES = [
            { id: 'phones', name: 'Phones', icon: 'fa-mobile-screen-button' },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop-code' },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-microchip' },
            { id: 'accessories', name: 'Wearables', icon: 'fa-watch-smart' }
        ];

        const PRODUCTS = [
            { id: 1, title: 'iPhone 15 Pro', price: 1099, rating: 5, reviews: 128, img: 'https://images.unsplash.com/photo-1696446701796-da61225697cc?auto=format&fit=crop&w=600&q=80' },
            { id: 2, title: 'MacBook Pro 14', price: 1999, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80' },
            { id: 3, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1613040809024-b4ef7ba99bc3?auto=format&fit=crop&w=600&q=80' }
        ];

        function renderCategories() {
            const grid = document.getElementById('categoriesGrid');
            if(!grid) return;
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `<i class="fas ${cat.icon}" style="font-size:24px; color:var(--accent); margin-bottom:15px; display:block;"></i>
                                <span style="font-weight:700;">${cat.name}</span>`;
                grid.appendChild(el);
            });
        }

        function renderProducts() {
            const grid = document.getElementById('productsGrid');
            if(!grid) return;
            PRODUCTS.forEach(p => {
                const el = document.createElement('article');
                el.className = 'product';
                el.innerHTML = `
                    <img src="${p.img}" alt="${p.title}">
                    <div class="product-body">
                        <h3 style="font-size:18px; margin:0 0 10px;">${p.title}</h3>
                        <div class="price">$${p.price.toLocaleString()}</div>
                        <div style="margin-top:15px;">
                            <button class="add-btn" onclick="addToCart()">ADD TO CART</button>
                        </div>
                    </div>`;
                grid.appendChild(el);
            });
        }

        let cartCount = 0;
        function addToCart() {
            cartCount++;
            document.getElementById('cartCount').innerText = cartCount;
        }

        function setupTimer() {
            const target = new Date().getTime() + 3600000 * 5;
            setInterval(() => {
                const now = new Date().getTime();
                const diff = target - now;
                const hours = Math.floor(diff / (1000 * 60 * 60));
                const mins = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60));
                const secs = Math.floor((diff % (1000 * 60)) / 1000);
                if(document.getElementById('dealHours')) document.getElementById('dealHours').innerText = hours;
                if(document.getElementById('dealMinutes')) document.getElementById('dealMinutes').innerText = mins;
                if(document.getElementById('dealSeconds')) document.getElementById('dealSeconds').innerText = secs;
            }, 1000);
        }

        document.getElementById('year').innerText = new Date().getFullYear();
        renderCategories();
        renderProducts();
        setupTimer();

        const shopBtn = document.getElementById('shopNow');
        if(shopBtn) {
            shopBtn.addEventListener('click', () => {
                document.getElementById('prod-title').scrollIntoView({ behavior: 'smooth' });
            });
        }
    </script>
</body>
</html>
