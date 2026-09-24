<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Sardhar — Friendly Online Shopping</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
  /* ===== VARIABLES ===== */
  :root {
    --bg: #fbfaf7;
    --card: #ffffff;
    --primary: #1f2937;
    --accent: #ff6b6b;
    --accent-soft: #ffe9e9;
    --accent-dark: #e55555;
    --muted: #6b7280;
    --muted-light: #9ca3af;
    --surface: #f3f2ee;
    --success: #10b981;
    --warning: #f59e0b;
    --radius: 20px;
    --radius-sm: 12px;
    --shadow: 0 4px 20px rgba(0,0,0,0.04);
    --shadow-hover: 0 14px 40px rgba(0,0,0,0.08);
    --transition: 0.25s cubic-bezier(0.4, 0, 0.2, 1);
    --container: 1200px;
  }

  * { margin: 0; padding: 0; box-sizing: border-box; }

  html { scroll-behavior: smooth; }

  body {
    font-family: 'Inter', system-ui, sans-serif;
    background: var(--bg);
    color: var(--primary);
    line-height: 1.6;
    -webkit-font-smoothing: antialiased;
  }

  a { color: inherit; text-decoration: none; }
  img { display: block; max-width: 100%; }
  button { font-family: inherit; cursor: pointer; border: none; background: none; color: inherit; }
  input { font-family: inherit; }

  .container {
    width: 100%;
    max-width: var(--container);
    margin: 0 auto;
    padding: 0 24px;
  }

  /* ===== BUTTONS ===== */
  .btn {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    gap: 10px;
    padding: 14px 28px;
    border-radius: 50px;
    font-weight: 600;
    font-size: 15px;
    transition: var(--transition);
    border: 2px solid transparent;
    white-space: nowrap;
  }

  .btn-primary {
    background: var(--accent);
    color: #fff;
    box-shadow: 0 6px 20px rgba(255, 107, 107, 0.3);
  }
  .btn-primary:hover {
    background: var(--accent-dark);
    transform: translateY(-2px);
    box-shadow: 0 12px 28px rgba(255, 107, 107, 0.4);
  }

  .btn-outline {
    border-color: rgba(31, 41, 55, 0.15);
    color: var(--primary);
  }
  .btn-outline:hover {
    background: var(--primary);
    color: #fff;
    border-color: var(--primary);
  }

  .btn-soft {
    background: var(--accent-soft);
    color: var(--accent-dark);
  }
  .btn-soft:hover {
    background: var(--accent);
    color: #fff;
  }

  .btn-sm { padding: 10px 20px; font-size: 13px; }

  /* ===== HEADER ===== */
  header {
    position: sticky;
    top: 0;
    z-index: 100;
    background: rgba(255, 255, 255, 0.9);
    backdrop-filter: blur(20px);
    -webkit-backdrop-filter: blur(20px);
    border-bottom: 1px solid rgba(0, 0, 0, 0.04);
  }

  .header-inner {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 20px;
    padding: 14px 0;
    min-height: 76px;
  }

  .brand {
    display: flex;
    align-items: center;
    gap: 10px;
    font-weight: 800;
    font-size: 22px;
    letter-spacing: -0.5px;
  }
  .brand i { color: var(--accent); font-size: 26px; }
  .brand span.accent { color: var(--accent); }

  nav.main-nav ul {
    display: flex;
    gap: 4px;
    list-style: none;
    align-items: center;
  }
  nav.main-nav li a {
    display: flex;
    align-items: center;
    gap: 8px;
    padding: 10px 18px;
    border-radius: 50px;
    font-weight: 500;
    font-size: 15px;
    color: var(--muted);
    transition: var(--transition);
  }
  nav.main-nav li a:hover,
  nav.main-nav li a.active {
    background: var(--accent-soft);
    color: var(--accent-dark);
  }

  .header-actions {
    display: flex;
    align-items: center;
    gap: 6px;
  }

  .icon-btn {
    width: 44px;
    height: 44px;
    border-radius: 50%;
    display: grid;
    place-items: center;
    font-size: 18px;
    color: var(--muted);
    transition: var(--transition);
    position: relative;
  }
  .icon-btn:hover {
    background: var(--accent-soft);
    color: var(--accent);
  }

  .cart-badge {
    position: absolute;
    top: 2px;
    right: 2px;
    background: var(--accent);
    color: #fff;
    font-size: 11px;
    font-weight: 700;
    width: 20px;
    height: 20px;
    border-radius: 50%;
    display: grid;
    place-items: center;
    border: 2px solid #fff;
  }

  .search-box {
    display: flex;
    align-items: center;
    background: var(--surface);
    border-radius: 50px;
    padding: 0 8px 0 18px;
    border: 2px solid transparent;
    transition: var(--transition);
    min-width: 240px;
  }
  .search-box:focus-within {
    border-color: var(--accent);
    background: #fff;
    box-shadow: 0 0 0 5px rgba(255, 107, 107, 0.1);
  }
  .search-box input {
    border: none;
    background: transparent;
    outline: none;
    padding: 12px 0;
    width: 100%;
    font-size: 14px;
  }
  .search-box button {
    padding: 8px 12px;
    border-radius: 50%;
    color: var(--muted);
    transition: var(--transition);
  }
  .search-box button:hover { color: var(--accent); }

  .mobile-menu-btn {
    display: none;
    width: 44px;
    height: 44px;
    border-radius: 50%;
    background: var(--surface);
    font-size: 20px;
    place-items: center;
  }

  /* ===== HERO ===== */
  .hero {
    position: relative;
    margin: 24px 24px 0;
    border-radius: 32px;
    overflow: hidden;
    min-height: 480px;
    display: flex;
    align-items: center;
    background: linear-gradient(135deg, #1f2937 0%, #374151 100%);
  }
  .hero::before {
    content: '';
    position: absolute;
    inset: 0;
    background: url('https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=1400&q=80') center/cover;
    opacity: 0.35;
    mix-blend-mode: overlay;
  }
  .hero .container { position: relative; z-index: 1; }

  .hero-badge {
    display: inline-block;
    background: rgba(255, 107, 107, 0.25);
    color: #ffd6d6;
    padding: 8px 20px;
    border-radius: 50px;
    font-weight: 600;
    font-size: 13px;
    margin-bottom: 20px;
    backdrop-filter: blur(4px);
    border: 1px solid rgba(255, 255, 255, 0.15);
  }

  .hero h1 {
    font-family: 'Playfair Display', serif;
    font-size: 54px;
    font-weight: 700;
    color: #fff;
    line-height: 1.15;
    max-width: 620px;
    margin-bottom: 18px;
  }
  .hero h1 em {
    font-style: normal;
    color: var(--accent);
  }
  .hero p {
    color: rgba(255, 255, 255, 0.85);
    font-size: 17px;
    max-width: 520px;
    margin-bottom: 32px;
    line-height: 1.7;
  }
  .hero-actions { display: flex; gap: 14px; flex-wrap: wrap; }

  /* ===== SECTIONS ===== */
  .section { padding: 64px 0; }

  .section-head {
    display: flex;
    align-items: flex-end;
    justify-content: space-between;
    gap: 24px;
    margin-bottom: 40px;
    flex-wrap: wrap;
  }

  .section-head h2 {
    font-size: 30px;
    font-weight: 700;
    letter-spacing: -0.4px;
  }
  .section-head p {
    color: var(--muted);
    margin-top: 6px;
    font-size: 15px;
  }
  .section-head .view-all {
    color: var(--accent);
    font-weight: 600;
    font-size: 14px;
    display: flex;
    align-items: center;
    gap: 8px;
    padding: 10px 18px;
    border-radius: 50px;
    background: var(--accent-soft);
    transition: var(--transition);
  }
  .section-head .view-all:hover {
    background: var(--accent);
    color: #fff;
    gap: 14px;
  }

  /* ===== CATEGORIES ===== */
  .cat-grid {
    display: grid;
    grid-template-columns: repeat(6, 1fr);
    gap: 16px;
  }
  .cat-card {
    background: var(--card);
    border-radius: var(--radius);
    padding: 26px 14px;
    text-align: center;
    box-shadow: var(--shadow);
    transition: var(--transition);
    cursor: pointer;
    border: 2px solid transparent;
  }
  .cat-card:hover {
    transform: translateY(-6px);
    box-shadow: var(--shadow-hover);
    border-color: var(--accent-soft);
  }
  .cat-card .icon {
    width: 60px;
    height: 60px;
    border-radius: 50%;
    background: var(--accent-soft);
    color: var(--accent);
    display: grid;
    place-items: center;
    margin: 0 auto 14px;
    font-size: 24px;
    transition: var(--transition);
  }
  .cat-card:hover .icon {
    background: var(--accent);
    color: #fff;
    transform: scale(1.08);
  }
  .cat-card h4 { font-size: 15px; font-weight: 600; }
  .cat-card .count { font-size: 13px; color: var(--muted-light); margin-top: 4px; }

  /* ===== PRODUCTS ===== */
  .product-grid {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    gap: 22px;
  }

  .product-card {
    background: var(--card);
    border-radius: var(--radius);
    overflow: hidden;
    box-shadow: var(--shadow);
    transition: var(--transition);
    display: flex;
    flex-direction: column;
    border: 2px solid transparent;
  }
  .product-card:hover {
    transform: translateY(-6px);
    box-shadow: var(--shadow-hover);
    border-color: var(--accent-soft);
  }

  .product-img {
    position: relative;
    aspect-ratio: 1/1;
    overflow: hidden;
    background: var(--surface);
  }
  .product-img img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: var(--transition);
  }
  .product-card:hover .product-img img { transform: scale(1.05); }

  .product-tag {
    position: absolute;
    top: 14px;
    left: 14px;
    background: var(--accent);
    color: #fff;
    padding: 5px 14px;
    border-radius: 50px;
    font-size: 11px;
    font-weight: 700;
    letter-spacing: 0.4px;
    text-transform: uppercase;
  }
  .product-tag.sale { background: var(--warning); color: var(--primary); }

  .wish-btn {
    position: absolute;
    top: 14px;
    right: 14px;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background: rgba(255, 255, 255, 0.95);
    display: grid;
    place-items: center;
    font-size: 16px;
    color: var(--muted);
    transition: var(--transition);
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.06);
  }
  .wish-btn:hover {
    color: var(--accent);
    transform: scale(1.1);
  }
  .wish-btn.active { color: var(--accent); }

  .product-body {
    padding: 18px 20px 12px;
    flex: 1;
    display: flex;
    flex-direction: column;
    gap: 6px;
  }
  .product-cat {
    font-size: 11px;
    text-transform: uppercase;
    letter-spacing: 0.6px;
    color: var(--muted-light);
    font-weight: 600;
  }
  .product-title {
    font-size: 15px;
    font-weight: 600;
    line-height: 1.35;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
    min-height: 40px;
  }
  .price-row {
    display: flex;
    align-items: center;
    gap: 10px;
    margin-top: 4px;
  }
  .price { font-size: 19px; font-weight: 700; }
  .old-price { font-size: 14px; color: var(--muted-light); text-decoration: line-through; }

  .rating {
    display: flex;
    align-items: center;
    gap: 4px;
    font-size: 13px;
    color: #f5a623;
  }
  .rating .count { color: var(--muted); font-weight: 400; }

  .product-footer {
    padding: 0 20px 20px;
  }
  .add-cart-btn {
    width: 100%;
    padding: 12px;
    border-radius: 50px;
    background: var(--primary);
    color: #fff;
    font-weight: 600;
    font-size: 14px;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 8px;
    transition: var(--transition);
  }
  .add-cart-btn:hover {
    background: var(--accent);
    transform: scale(1.02);
    box-shadow: 0 8px 20px rgba(255, 107, 107, 0.3);
  }
  .add-cart-btn.added { background: var(--success); }

  /* ===== DEAL BANNER ===== */
  .deal-banner {
    display: flex;
    background: var(--card);
    border-radius: var(--radius);
    overflow: hidden;
    box-shadow: var(--shadow);
  }
  .deal-banner .deal-img {
    flex: 0 0 45%;
    min-height: 340px;
    background: var(--surface);
  }
  .deal-banner .deal-img img {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }
  .deal-content {
    flex: 1;
    padding: 44px 48px;
    display: flex;
    flex-direction: column;
    justify-content: center;
  }
  .deal-tag {
    display: inline-block;
    background: var(--warning);
    color: var(--primary);
    padding: 6px 16px;
    border-radius: 50px;
    font-size: 12px;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 0.5px;
    align-self: flex-start;
    margin-bottom: 14px;
  }
  .deal-content h3 {
    font-size: 30px;
    font-weight: 700;
    margin-bottom: 8px;
  }
  .deal-content .deal-desc {
    color: var(--muted);
    font-size: 15px;
    margin-bottom: 20px;
    line-height: 1.6;
  }
  .deal-price { font-size: 34px; font-weight: 800; margin-bottom: 6px; }
  .deal-price .old {
    font-size: 20px;
    font-weight: 400;
    color: var(--muted-light);
    text-decoration: line-through;
    margin-left: 10px;
  }
  .deal-stock {
    font-size: 14px;
    color: var(--muted);
    margin-bottom: 20px;
  }
  .deal-stock strong { color: var(--accent); }

  .timer-row {
    display: flex;
    gap: 12px;
    margin-bottom: 24px;
  }
  .timer-box {
    background: var(--surface);
    border-radius: var(--radius-sm);
    padding: 12px 16px;
    min-width: 72px;
    text-align: center;
  }
  .timer-num { font-size: 24px; font-weight: 700; line-height: 1.1; }
  .timer-label {
    font-size: 10px;
    text-transform: uppercase;
    letter-spacing: 0.6px;
    color: var(--muted);
    font-weight: 600;
    margin-top: 2px;
  }

  /* ===== TESTIMONIALS ===== */
  .testimonial-scroll {
    display: flex;
    gap: 20px;
    overflow-x: auto;
    padding: 8px 4px 20px;
    scroll-snap-type: x mandatory;
  }
  .testimonial-scroll::-webkit-scrollbar { height: 6px; }
  .testimonial-scroll::-webkit-scrollbar-thumb {
    background: var(--accent-soft);
    border-radius: 50px;
  }

  .testimonial-card {
    flex: 0 0 340px;
    background: var(--card);
    padding: 28px;
    border-radius: var(--radius);
    box-shadow: var(--shadow);
    scroll-snap-align: start;
    transition: var(--transition);
    border: 1px solid rgba(0, 0, 0, 0.02);
  }
  .testimonial-card:hover {
    box-shadow: var(--shadow-hover);
    border-color: var(--accent-soft);
  }
  .testimonial-stars {
    color: #f5a623;
    letter-spacing: 3px;
    font-size: 16px;
    margin-bottom: 12px;
  }
  .testimonial-text {
    font-size: 15px;
    line-height: 1.7;
    font-style: italic;
    color: var(--primary);
    margin-bottom: 18px;
  }
  .testimonial-author {
    display: flex;
    align-items: center;
    gap: 12px;
  }
  .testimonial-author img {
    width: 48px;
    height: 48px;
    border-radius: 50%;
    object-fit: cover;
  }
  .testimonial-author .name { font-weight: 600; font-size: 14px; }
  .testimonial-author .role { font-size: 13px; color: var(--muted); }

  /* ===== NEWSLETTER ===== */
  .newsletter {
    background: linear-gradient(135deg, var(--primary) 0%, #374151 100%);
    border-radius: 32px;
    padding: 48px 56px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 32px;
    flex-wrap: wrap;
    color: #fff;
  }
  .newsletter h3 { font-size: 26px; font-weight: 700; margin-bottom: 6px; }
  .newsletter p { opacity: 0.8; font-size: 15px; }
  .newsletter form {
    display: flex;
    gap: 10px;
    flex: 1;
    max-width: 480px;
    flex-wrap: wrap;
  }
  .newsletter input {
    flex: 1;
    min-width: 200px;
    padding: 14px 22px;
    border-radius: 50px;
    border: none;
    background: rgba(255, 255, 255, 0.12);
    color: #fff;
    font-size: 15px;
    outline: 2px solid transparent;
    transition: var(--transition);
  }
  .newsletter input::placeholder { color: rgba(255, 255, 255, 0.55); }
  .newsletter input:focus { outline-color: var(--accent); background: rgba(255, 255, 255, 0.18); }

  .form-msg { margin-top: 10px; font-size: 14px; width: 100%; }

  /* ===== FOOTER ===== */
  footer {
    background: #fff;
    margin-top: 40px;
    padding: 52px 0 32px;
    border-top: 1px solid rgba(0, 0, 0, 0.04);
  }
  .footer-grid {
    display: grid;
    grid-template-columns: 2fr 1fr 1fr 1fr;
    gap: 40px;
    margin-bottom: 32px;
  }
  .footer-grid .brand { font-size: 20px; margin-bottom: 12px; }
  .footer-grid p {
    color: var(--muted);
    font-size: 14px;
    max-width: 300px;
    line-height: 1.7;
  }
  .socials { display: flex; gap: 10px; margin-top: 16px; }
  .socials a {
    width: 42px;
    height: 42px;
    border-radius: 50%;
    background: var(--surface);
    display: grid;
    place-items: center;
    color: var(--muted);
    transition: var(--transition);
  }
  .socials a:hover {
    background: var(--accent);
    color: #fff;
    transform: translateY(-3px);
  }

  .footer-grid h5 {
    font-size: 14px;
    font-weight: 700;
    margin-bottom: 14px;
  }
  .footer-grid ul { list-style: none; display: flex; flex-direction: column; gap: 8px; }
  .footer-grid ul a {
    color: var(--muted);
    font-size: 14px;
    transition: var(--transition);
  }
  .footer-grid ul a:hover { color: var(--accent); padding-left: 4px; }

  .footer-bottom {
    text-align: center;
    padding-top: 24px;
    border-top: 1px solid rgba(0, 0, 0, 0.04);
    color: var(--muted-light);
    font-size: 13px;
  }

  /* ===== RESPONSIVE ===== */
  @media (max-width: 1100px) {
    .product-grid { grid-template-columns: repeat(3, 1fr); }
    .cat-grid { grid-template-columns: repeat(3, 1fr); }
    .footer-grid { grid-template-columns: 1fr 1fr; gap: 32px; }
  }

  @media (max-width: 900px) {
    nav.main-nav { display: none; }
    .mobile-menu-btn { display: grid; }
    .hero { margin: 16px 16px 0; min-height: 400px; padding: 40px 0; border-radius: 24px; }
    .hero h1 { font-size: 38px; }
    .deal-banner { flex-direction: column; }
    .deal-banner .deal-img { flex: 0 0 240px; }
    .deal-content { padding: 30px 28px; }
    .newsletter { padding: 36px 28px; flex-direction: column; text-align: center; }
    .search-box { min-width: 160px; }
  }

  @media (max-width: 640px) {
    .product-grid { grid-template-columns: repeat(2, 1fr); gap: 14px; }
    .cat-grid { grid-template-columns: repeat(2, 1fr); gap: 12px; }
    .hero h1 { font-size: 30px; }
    .hero p { font-size: 15px; }
    .section { padding: 44px 0; }
    .section-head h2 { font-size: 24px; }
    .footer-grid { grid-template-columns: 1fr; gap: 24px; }
    .search-box { display: none; }
    .container { padding: 0 16px; }
    .timer-box { min-width: 58px; padding: 8px 10px; }
    .timer-num { font-size: 18px; }
  }

  @media (max-width: 400px) {
    .product-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
    .product-body { padding: 14px 12px 8px; }
    .product-title { font-size: 13px; }
    .price { font-size: 16px; }
    .product-footer { padding: 0 12px 14px; }
    .add-cart-btn { font-size: 13px; padding: 10px; }
  }

  /* ===== FOCUS STATES (accessibility) ===== */
  .btn:focus-visible,
  .icon-btn:focus-visible,
  .cat-card:focus-visible,
  .wish-btn:focus-visible,
  .add-cart-btn:focus-visible {
    outline: 3px solid var(--accent);
    outline-offset: 2px;
  }
</style>
</head>

<body>

<!-- ===== HEADER ===== -->
<header>
  <div class="container header-inner">
    <div style="display:flex; align-items:center; gap:12px;">
      <button class="mobile-menu-btn" id="menuToggle" aria-label="Open menu">
        <i class="fas fa-bars"></i>
      </button>
      <a href="#" class="brand">
        <i class="fas fa-shopping-bag"></i>
        <span>Sardhar<span class="accent">.</span></span>
      </a>
    </div>

    <nav class="main-nav" aria-label="Main navigation">
      <ul>
        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Shop</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#reviews"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </nav>

    <div style="display:flex; align-items:center; gap:12px;">
      <div class="search-box">
        <input type="search" id="searchInput" placeholder="Search products..." aria-label="Search products">
        <button id="searchBtn" aria-label="Search"><i class="fas fa-search"></i></button>
      </div>

      <div class="header-actions">
        <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <button class="icon-btn" id="cartBtn" aria-label="Cart">
          <i class="fas fa-shopping-bag"></i>
          <span class="cart-badge" id="cartCount">0</span>
        </button>
      </div>
    </div>
  </div>
</header>

<!-- ===== HERO ===== -->
<section class="hero">
  <div class="container">
    <span class="hero-badge">✨ New Collection 2026</span>
    <h1>Everyday Essentials, <em>Beautifully</em> Curated</h1>
    <p>Discover quality products at fair prices. Free shipping on orders over $50, easy returns, and friendly support from Sardhar.</p>
    <div class="hero-actions">
      <button class="btn btn-primary" id="shopNowBtn">
        <i class="fas fa-shopping-cart"></i> Start Shopping
      </button>
      <button class="btn btn-soft" id="dealBtn">
        <i class="fas fa-clock"></i> View Today's Deals
      </button>
    </div>
  </div>
</section>

<!-- ===== CATEGORIES ===== -->
<section class="section" id="categories">
  <div class="container">
    <div class="section-head">
      <div>
        <h2>Shop by Category</h2>
        <p>Browse our most popular collections</p>
      </div>
      <a href="#" class="view-all">See All <i class="fas fa-arrow-right"></i></a>
    </div>
    <div class="cat-grid" id="catGrid"></div>
  </div>
</section>

<!-- ===== PRODUCTS ===== -->
<section class="section" id="products">
  <div class="container">
    <div class="section-head">
      <div>
        <h2>Popular Products</h2>
        <p>Handpicked favorites our customers love</p>
      </div>
      <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
    </div>
    <div class="product-grid" id="productGrid"></div>
  </div>
</section>

<!-- ===== DEAL ===== -->
<section class="section" id="deals">
  <div class="container">
    <div class="section-head">
      <div>
        <h2>⚡ Flash Deal of the Day</h2>
        <p>Limited stock — don't miss out</p>
      </div>
    </div>

    <div class="deal-banner">
      <div class="deal-img">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=80" alt="MacBook Air M2">
      </div>
      <div class="deal-content">
        <span class="deal-tag"><i class="fas fa-bolt"></i> Save $200 Today</span>
        <h3>MacBook Air M2</h3>
        <p class="deal-desc">Ultra-thin, powerful, and beautifully designed. Perfect for work, study, and creativity.</p>

        <div class="deal-price">$999 <span class="old">$1,199</span></div>
        <p class="deal-stock">Only <strong>12 left</strong> in stock</p>

        <div class="timer-row">
          <div class="timer-box"><div class="timer-num" id="tDays">0</div><div class="timer-label">Days</div></div>
          <div class="timer-box"><div class="timer-num" id="tHours">00</div><div class="timer-label">Hours</div></div>
          <div class="timer-box"><div class="timer-num" id="tMins">00</div><div class="timer-label">Mins</div></div>
          <div class="timer-box"><div class="timer-num" id="tSecs">00</div><div class="timer-label">Secs</div></div>
        </div>

        <button class="btn btn-primary" id="dealAddBtn">
          <i class="fas fa-cart-plus"></i> Add to Cart
        </button>
      </div>
    </div>
  </div>
</section>

<!-- ===== TESTIMONIALS ===== -->
<section class="section" id="reviews">
  <div class="container">
    <div class="section-head">
      <div>
        <h2>Loved by Thousands</h2>
        <p>Real feedback from real Sardhar customers</p>
      </div>
    </div>
    <div class="testimonial-scroll" id="testimonialList"></div>
  </div>
</section>

<!-- ===== NEWSLETTER ===== -->
<section class="section">
  <div class="container">
    <div class="newsletter">
      <div>
        <h3>Get 10% Off Your First Order</h3>
        <p>Subscribe for exclusive Sardhar deals, tips, and new arrivals</p>
      </div>
      <form id="newsletterForm">
        <input type="email" id="newsletterEmail" placeholder="you@example.com" required>
        <button class="btn btn-primary" type="submit">
          <i class="fas fa-paper-plane"></i> Subscribe
        </button>
        <div class="form-msg" id="formMsg"></div>
      </form>
    </div>
  </div>
</section>

<!-- ===== FOOTER ===== -->
<footer>
  <div class="container">
    <div class="footer-grid">
      <div>
        <div class="brand">
          <i class="fas fa-shopping-bag"></i>
          <span>Sardhar<span class="accent">.</span></span>
        </div>
        <p>Friendly, modern shopping for everyday essentials. Quality products, fair prices, and a smooth experience.</p>
        <div class="socials">
          <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
          <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
          <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
          <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
      <div>
        <h5>Shop</h5>
        <ul>
          <li><a href="#">New Arrivals</a></li>
          <li><a href="#">Best Sellers</a></li>
          <li><a href="#">Sale</a></li>
          <li><a href="#">Gift Cards</a></li>
        </ul>
      </div>
      <div>
        <h5>Support</h5>
        <ul>
          <li><a href="#">Help Center</a></li>
          <li><a href="#">Shipping Info</a></li>
          <li><a href="#">Returns</a></li>
          <li><a href="#">Contact Us</a></li>
        </ul>
      </div>
      <div>
        <h5>Company</h5>
        <ul>
          <li><a href="#">About Us</a></li>
          <li><a href="#">Careers</a></li>
          <li><a href="#">Privacy</a></li>
          <li><a href="#">Terms</a></li>
        </ul>
      </div>
    </div>
    <div class="footer-bottom">
      &copy; <span id="year"></span> Sardhar. Made with care for happy shoppers.
    </div>
  </div>
</footer>

<script>
/* ========== DATA ========== */
const CATEGORIES = [
  { name: 'Electronics', icon: 'fa-laptop', count: 48 },
  { name: 'Fashion', icon: 'fa-tshirt', count: 120 },
  { name: 'Home', icon: 'fa-couch', count: 86 },
  { name: 'Beauty', icon: 'fa-spa', count: 62 },
  { name: 'Sports', icon: 'fa-dumbbell', count: 34 },
  { name: 'Accessories', icon: 'fa-watch', count: 57 }
];

const PRODUCTS = [
  { id: 1, title: 'Wireless Noise-Cancelling Headphones', price: 249, oldPrice: 299, rating: 5, reviews: 214, tag: 'Sale', cat: 'Electronics',
    img: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80' },
  { id: 2, title: 'Minimalist Leather Watch', price: 149, rating: 4, reviews: 87, tag: 'New', cat: 'Accessories',
    img: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80' },
  { id: 3, title: 'Organic Cotton T-Shirt', price: 29, oldPrice: 39, rating: 5, reviews: 156, tag: 'Sale', cat: 'Fashion',
    img: 'https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=600&q=80' },
  { id: 4, title: 'Running Sneakers Lightweight', price: 89, rating: 4, reviews: 132, tag: '', cat: 'Sports',
    img: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80' },
  { id: 5, title: 'Smart Home Speaker', price: 79, rating: 5, reviews: 98, tag: 'New', cat: 'Electronics',
    img: 'https://images.unsplash.com/photo-1543512214-318c7553f230?auto=format&fit=crop&w=600&q=80' },
  { id: 6, title: 'Natural Skincare Set', price: 59, oldPrice: 79, rating: 5, reviews: 201, tag: 'Sale', cat: 'Beauty',
    img: 'https://images.unsplash.com/photo-1556228578-8c89e6adf883?auto=format&fit=crop&w=600&q=80' },
  { id: 7, title: 'Canvas Everyday Backpack', price: 69, rating: 4, reviews: 74, tag: '', cat: 'Accessories',
    img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80' },
  { id: 8, title: 'Ceramic Coffee Mug Set', price: 34, rating: 5, reviews: 63, tag: '', cat: 'Home',
    img: 'https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?auto=format&fit=crop&w=600&q=80' }
];

const TESTIMONIALS = [
  { name: 'Sarah K.', role: 'Verified Buyer', stars: 5, avatar: 'https://i.pravatar.cc/100?img=47',
    text: 'Amazing quality and fast delivery. The packaging was eco-friendly too — I love shopping at Sardhar!' },
  { name: 'Daniel M.', role: 'Regular Customer', stars: 5, avatar: 'https://i.pravatar.cc/100?img=12',
    text: 'Best prices I found online. Sardhar customer support was super helpful when I had a question.' },
  { name: 'Priya S.', role: 'Designer', stars: 4, avatar: 'https://i.pravatar.cc/100?img=32',
    text: 'Beautifully curated products. I keep coming back to Sardhar for more — highly recommended!' },
  { name: 'Tom W.', role: 'First-time Buyer', stars: 5, avatar: 'https://i.pravatar.cc/100?img=68',
    text: 'Smooth checkout, no hidden fees, and my Sardhar order arrived two days early. Impressed!' }
];

/* ========== STATE ========== */
let cartCount = 0;

/* ========== RENDER CATEGORIES ========== */
function renderCategories() {
  const grid = document.getElementById('catGrid');
  grid.innerHTML = CATEGORIES.map(c => `
    <div class="cat-card" tabindex="0" role="button" data-cat="${c.name}">
      <div class="icon"><i class="fas ${c.icon}"></i></div>
      <h4>${c.name}</h4>
      <div class="count">${c.count} items</div>
    </div>
  `).join('');

  grid.querySelectorAll('.cat-card').forEach(card => {
    card.addEventListener('click', () => {
      document.getElementById('searchInput').value = card.dataset.cat;
      filterProducts(card.dataset.cat);
      document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
    });
  });
}

/* ========== RENDER PRODUCTS ========== */
function renderProducts(list) {
  const grid = document.getElementById('productGrid');
  if (!list.length) {
    grid.innerHTML = `<p style="grid-column:1/-1;text-align:center;padding:60px 20px;color:var(--muted);font-size:17px;">🔍 No products found. Try another search.</p>`;
    return;
  }

  grid.innerHTML = list.map(p => {
    const tagHtml = p.tag ? `<span class="product-tag ${p.tag === 'Sale' ? 'sale' : ''}">${p.tag}</span>` : '';
    const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : '';
    const stars = '★'.repeat(p.rating) + '☆'.repeat(5 - p.rating);
    return `
      <article class="product-card">
        <div class="product-img">
          <img src="${p.img}" alt="${p.title}" loading="lazy">
          ${tagHtml}
          <button class="wish-btn" aria-label="Add to wishlist"><i class="far fa-heart"></i></button>
        </div>
        <div class="product-body">
          <div class="product-cat">${p.cat}</div>
          <h3 class="product-title">${p.title}</h3>
          <div class="price-row">
            <span class="price">$${p.price}</span>
            ${oldPriceHtml}
          </div>
          <div class="rating">
            ${stars} <span class="count">(${p.reviews})</span>
          </div>
        </div>
        <div class="product-footer">
          <button class="add-cart-btn" data-id="${p.id}">
            <i class="fas fa-cart-plus"></i> Add to Cart
          </button>
        </div>
      </article>
    `;
  }).join('');

  // Add to cart + wishlist handlers
  grid.querySelectorAll('.add-cart-btn').forEach(btn => {
    btn.addEventListener('click', () => addToCart(Number(btn.dataset.id), btn));
  });
  grid.querySelectorAll('.wish-btn').forEach(btn => {
    btn.addEventListener('click', (e) => {
      e.currentTarget.classList.toggle('active');
      const icon = e.currentTarget.querySelector('i');
      icon.classList.toggle('far');
      icon.classList.toggle('fas');
    });
  });
}

/* ========== RENDER TESTIMONIALS ========== */
function renderTestimonials() {
  const list = document.getElementById('testimonialList');
  list.innerHTML = TESTIMONIALS.map(t => `
    <div class="testimonial-card">
      <div class="testimonial-stars">${'★'.repeat(t.stars)}${'☆'.repeat(5 - t.stars)}</div>
      <p class="testimonial-text">"${t.text}"</p>
      <div class="testimonial-author">
        <img src="${t.avatar}" alt="${t.name}">
        <div>
          <div class="name">${t.name}</div>
          <div class="role">${t.role}</div>
        </div>
      </div>
    </div>
  `).join('');
}

/* ========== CART ========== */
function addToCart(id, btn) {
  cartCount++;
  document.getElementById('cartCount').textContent = cartCount;

  if (btn) {
    const original = btn.innerHTML;
    btn.innerHTML = '<i class="fas fa-check"></i> Added!';
    btn.classList.add('added');
    setTimeout(() => {
      btn.innerHTML = original;
      btn.classList.remove('added');
    }, 1400);
  }
}

/* ========== SEARCH / FILTER ========== */
function filterProducts(query) {
  const q = (query || '').trim().toLowerCase();
  if (!q) return renderProducts(PRODUCTS);
  const filtered = PRODUCTS.filter(p =>
    p.title.toLowerCase().includes(q) || p.cat.toLowerCase().includes(q)
  );
  renderProducts(filtered);
}

/* ========== DEAL COUNTDOWN ========== */
function startCountdown() {
  const target = new Date().getTime() + (24 * 60 + 42) * 60 * 1000; // ~24h from now
  setInterval(() => {
    const diff = target - new Date().getTime();
    if (diff <= 0) return;
    const d = Math.floor(diff / 86400000);
    const h = Math.floor((diff % 86400000) / 3600000);
    const m = Math.floor((diff % 3600000) / 60000);
    const s = Math.floor((diff % 60000) / 1000);
    document.getElementById('tDays').textContent = d;
    document.getElementById('tHours').textContent = String(h).padStart(2, '0');
    document.getElementById('tMins').textContent = String(m).padStart(2, '0');
    document.getElementById('tSecs').textContent = String(s).padStart(2, '0');
  }, 1000);
}

/* ========== EVENT LISTENERS ========== */
document.getElementById('searchBtn').addEventListener('click', () => {
  filterProducts(document.getElementById('searchInput').value);
});
document.getElementById('searchInput').addEventListener('keydown', (e) => {
  if (e.key === 'Enter') filterProducts(e.target.value);
});

document.getElementById('shopNowBtn').addEventListener('click', () => {
  document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
});
document.getElementById('dealBtn').addEventListener('click', () => {
  document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
});

document.getElementById('dealAddBtn').addEventListener('click', (e) => {
  addToCart(999, e.currentTarget);
});

document.getElementById('cartBtn').addEventListener('click', () => {
  alert(`🛒 You have ${cartCount} item${cartCount !== 1 ? 's' : ''} in your Sardhar cart.`);
});

document.getElementById('newsletterForm').addEventListener('submit', (e) => {
  e.preventDefault();
  const email = document.getElementById('newsletterEmail').value.trim();
  const msg = document.getElementById('formMsg');
  if (!email.includes('@')) {
    msg.textContent = 'Please enter a valid email.';
    msg.style.color = '#ffb3b3';
    return;
  }
  msg.textContent = '🎉 Thanks! Check your inbox for 10% off from Sardhar.';
  msg.style.color = '#a8e6cf';
  document.getElementById('newsletterEmail').value = '';
  setTimeout(() => msg.textContent = '', 4000);
});

/* ========== INIT ========== */
document.getElementById('year').textContent = new Date().getFullYear();
renderCategories();
renderProducts(PRODUCTS);
renderTestimonials();
startCountdown();
</script>

</body>
</html>
