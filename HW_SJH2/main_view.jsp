<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Project HomeWar</title>
<script src='<%=request.getContextPath() %>/HW_main/js/jquery.js'></script>
<link rel='stylesheet' href='<%=request.getContextPath() %>/HW_main/css/woocommerce-layout.css' type='text/css' media='all'/>
<link rel='stylesheet' href='<%=request.getContextPath() %>/HW_main/css/woocommerce-smallscreen.css' type='text/css' media='only screen and (max-width: 768px)'/>
<link rel='stylesheet' href='<%=request.getContextPath() %>/HW_main/css/woocommerce.css' type='text/css' media='all'/>
<link rel='stylesheet' href='<%=request.getContextPath() %>/HW_main/css/font-awesome.min.css' type='text/css' media='all'/>
<link rel='stylesheet' href='<%=request.getContextPath() %>/HW_main/style.css' type='text/css' media='all'/>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Oswald:400,500,700%7CRoboto:400,500,700%7CHerr+Von+Muellerhoff:400,500,700%7CQuattrocento+Sans:400,500,700' type='text/css' media='all'/>
<link rel='stylesheet' href='<%=request.getContextPath() %>/HW_main/css/easy-responsive-shortcodes.css' type='text/css' media='all'/>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="<%=request.getContextPath() %>/HW_main/css/reset.css"> <!-- CSS reset -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/HW_main/css/style.css"> <!-- Resource style -->
<script src="<%=request.getContextPath() %>/HW_main/js/modernizr.js"></script> 
<script type="text/javascript">
jQuery(document).ready( function($) {
   
   var roll = 1;
   
   setInterval(function(){
      roll++;
      if (roll > 3) {roll = 1;}
      $("#hom").attr("src", "<%=request.getContextPath() %>/HW_main/IMG/ban" + roll + ".jpg");
   }, 2000);
   
   
   $(window).resize(function(){
      change();
   });
     function change(){
        var windowWidth = $(window).width();
        if(windowWidth < 980) {
           $('#byun').hide();
         } else {
            $('#byun').show();
         }
     }
});

</script>
<style type="text/css">
.aa {
   font-size: x-large;
   padding: 40px;
}

.menu-menu-1-container ul li {
   line-height: 97px;
}

.container-fluid>.navbar-collapse, .container-fluid>.navbar-header, .container>.navbar-collapse, .container>.navbar-header {
   background-color: black;
}

.topImg {
   background-image: url("/HW_main/IMG/5.jpg");
   background-repeat: no-repeat;
}

.topImg img {
   border-radius: 10px;
}


</style>
</head>
<body class="home page page-template page-template-template-portfolio page-template-template-portfolio-php">
  
  <div class="container-fluid">
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      </ul>
      <ul class="nav navbar-nav navbar-right">
         <li>
         <a href="#"></a></li>
        <li><a href="<%=request.getContextPath() %>/HW/main/login.do" style="font-size:large; color: white;"><span class="glyphicon glyphicon-log-in" ></span> LogIn</a></li>
      </ul>
    </div>
  </div>
  
<div id="page">
   <div class="container">
      <header id="masthead" class="site-header">
      <div class="site-branding">
         <h1 class="site-title"><a href="index.html" rel="home"></a></h1>
         <h2 class="site-description"></h2>
      </div>
      <nav id="site-navigation" class="main-navigation">
      <button class="menu-toggle"><img alt="안나와.." src="<%=request.getContextPath() %>/HW_main/IMG/logo.jpg"></button>
      <a class="skip-link screen-reader-text" href="#content">Skip to content</a>
      <div class="menu-menu-1-container" onchange="dis()">
         <ul id="menu-menu-1" class="menu">
            <li>
            <a href="index.html" class="aa">PT</a>
            <ul class="sub-menu">
               <li><a href="portfolio-item.html">BMI 계산기</a></li>
               <li><a href="blog-single.html">운동 게시판</a></li>
               <li><a href="shop-single.html">운동 동영상</a></li>
               <li><a href="portfolio-category.html">운동/식단</a></li>
            </ul>
            </li>
            <li>
            <a href="about.html" class="aa">쇼핑몰</a>
            <ul class="sub-menu">
               <li><a href="portfolio-item.html">운동 기구</a></li>
               <li><a href="blog-single.html">보조 식품</a></li>
               <li><a href="shop-single.html">배송 문의</a></li>
               <li><a href="portfolio-category.html">상품 문의</a></li>
            </ul>
            </li>
            <li id="byun"><a href="#"><img alt="안나와.." src="<%=request.getContextPath() %>/HW_main/IMG/logo.jpg" width="150" height="150" style="height: 60px;"></a></li>
            <li>
            <a href="blog.html" class="aa">게시판</a>
            <ul class="sub-menu">
               <li><a href="portfolio-item.html">공지 사항</a></li>
               <li><a href="blog-single.html">Q & A</a></li>
            </ul>
            </li>
            <li>
            <a href="#" class="aa">멤버쉽</a>
            <ul class="sub-menu">
               <li><a href="portfolio-item.html">멤버쉽 소개</a></li>
               <li><a href="blog-single.html">멤버쉽 결제</a></li>
            </ul>
            </li>
         </ul>
      </div>
      </nav>
      </header>
      <div class="topImg">
         <img id="hom" style="width: 1140px; height: 400px;" alt="" src="<%=request.getContextPath() %>/HW_main/IMG/ban11.jpg">
      </div>
      <!-- #masthead -->
      <div id="content" class="site-content">
         <div id="primary" class="content-area column full">
            <main id="main" class="site-main">
            <div class="grid portfoliogrid">
            
               <!-- <article class="hentry">
               <header class="entry-header">
               <div class="entry-thumbnail">
                  <a href="portfolio-item.html"><img src="http://s3.amazonaws.com/caymandemo/wp-content/uploads/sites/15/2015/09/30162427/p1.jpg" class="attachment-post-thumbnail size-post-thumbnail wp-post-image" alt="p1"/></a>
               </div>
               <h2 class="entry-title"><a href="portfolio-item.html" rel="bookmark">Sunset Beach</a></h2>
               <a class='portfoliotype' href='portfolio-category.html'>summer</a>
               <a class='portfoliotype' href='portfolio-category.html'>woman</a>
               <a class='portfoliotype' href='portfolio-category.html'>yellow</a>
               </header>
               </article> -->
               
            
            <div>
               <article class="hentry" style="float: left; left: 0px; top: 0px;">
               <header class="entry-header">
               <img alt="" src="<%=request.getContextPath() %>/HW_main/IMG/1.jpg">
               </header>
               </article>

               <article class="hentry" style="float: left; left: 0px; top: 93px;">
               <header class="entry-header">
               <img alt="" src="<%=request.getContextPath() %>/HW_main/IMG/2.JPG">
               </header>
               </article>
               
               <article class="hentry" style="float: right; left: 0px; top: 188px;">
               <header class="entry-header">
               <img alt="" src="<%=request.getContextPath() %>/HW_main/IMG/3.JPG">
               </header>
               </article>
            </div>
			<div style="clear: both; text-align: center;">
               <article class="hentry" style="width: 100%; left: 0px; top: 283px;">
               <header class="entry-header">
               <div>
               <img alt="" src="<%=request.getContextPath() %>/HW_main/IMG/mainBan1.jpg">
               </div>
               </header>
               </article>
			</div>
			<div>
               <article class="hentry" >
               <header class="entry-header">
               <img alt="" src="<%=request.getContextPath() %>/HW_main/IMG/4.JPG">
               </header>
               </article>

               <article class="hentry" style="float: left; left: 0px; top: 629px;">
               <header class="entry-header">
               <img alt="" src="<%=request.getContextPath() %>/HW_main/IMG/5.JPG">
               </header>
               </article>
               
               <article class="hentry" style="left: 0px; top: 876px; float: right;">
               <header class="entry-header">
               <img alt="" src="<%=request.getContextPath() %>/HW_main/IMG/6.JPG">
               </header>
               </article>
            </div>
               
               
            </div>
            <div class="cd-pricing-container cd-has-margins" style=" clear: both;">
      <div class="cd-pricing-switcher">
         <p class="fieldset">
            <input type="radio" name="duration-2" value="monthly" id="monthly-2" checked>
            <label for="monthly-2">Monthly</label>
            <input type="radio" name="duration-2" value="yearly" id="yearly-2">
            <label for="yearly-2">Yearly</label>
            <span class="cd-switch"></span>
         </p>
      </div> <!-- .cd-pricing-switcher -->

      <ul class="cd-pricing-list cd-bounce-invert">
         <li>
            <ul class="cd-pricing-wrapper">
               <li data-type="monthly" class="is-visible">
                  <header class="cd-pricing-header">
                     <h2>1개월 </h2>

                     <div class="cd-price">
                        <span class="cd-currency">₩</span>
                        <span class="cd-value">10,000</span>
                        <span class="cd-duration">총</span>
                     </div>

                  </header> <!-- .cd-pricing-header -->

                  <div class="cd-pricing-body">
                     <ul class="cd-pricing-features">
                        <ul class="cd-pricing-features">
                        <li>쇼핑몰<em>10%</em>할인</li>
                        <li><em>1개월</em> 트레이너 배정</li>
                        <li><em>1개월</em> 프리미엄 영상 시청</li>
                        <li><em>1개월</em> 개인 식단 ,운동 관리</li>
                        <li><em>1일 마다</em>미션 관리</li>
                        <li>지속적인 동기 부여 서비스 </li>
                     </ul>
                     </ul>
                  </div> <!-- .cd-pricing-body -->

                  <footer class="cd-pricing-footer">
                     <a class="cd-select" href="#">결제</a>
                  </footer>  <!-- .cd-pricing-footer -->
               </li>

               <li data-type="yearly" class="is-hidden">
                  <header class="cd-pricing-header">
                        <h2>1 년</h2>

                     <div class="cd-price">
                        <span class="cd-currency">₩</span>
                        <span class="cd-value">100,000</span>
                        <span class="cd-duration">총</span>
                     </div>
                  </header> <!-- .cd-pricing-header -->

                  <div class="cd-pricing-body">
                     <ul class="cd-pricing-features">
                        <li>쇼핑몰<em>10%</em>할인</li>
                        <li><em>1년</em> 트레이너 배정</li>
                        <li><em>1년</em> 프리미엄 영상 시청</li>
                        <li><em>3개월</em> 개인 식단 ,운동 관리</li>
                        <li><em>1일 마다</em>미션 관리</li>
                        <li>지속적인 동기 부여 서비스 </li>
                     </ul>
                  </div> <!-- .cd-pricing-body -->

                  <footer class="cd-pricing-footer">
                     <a class="cd-select" href="#">결제</a>
                  </footer>  <!-- .cd-pricing-footer -->
               </li>
            </ul> <!-- .cd-pricing-wrapper -->
         </li>

         <li class="cd-popular">
            <ul class="cd-pricing-wrapper">
               <li data-type="monthly" class="is-visible">
                  <header class="cd-pricing-header">
                     <h2>3 개월</h2>

                     <div class="cd-price">
                        <span class="cd-currency">₩</span>
                        <span class="cd-value">20,000</span>
                        <span class="cd-duration">총</span>
                     </div>
                  </header> <!-- .cd-pricing-header -->

                  <div class="cd-pricing-body">
                     <ul class="cd-pricing-features">
                        <li>쇼핑몰<em>10%</em>할인</li>
                        <li><em>3개월</em> 트레이너 배정</li>
                        <li><em>3개월</em> 프리미엄 영상 시청</li>
                        <li><em>3개월</em> 개인 식단 ,운동 관리</li>
                        <li><em>1일 마다</em>미션 관리</li>
                        <li>지속적인 동기 부여 서비스 </li>
                     </ul>
                  </div> <!-- .cd-pricing-body -->

                  <footer class="cd-pricing-footer">
                     <a class="cd-select" href="#">결제</a>
                  </footer>  <!-- .cd-pricing-footer -->
               </li>

               <li data-type="yearly" class="is-hidden">
                  <header class="cd-pricing-header">
                     <h2>1년 6개월</h2>

                     <div class="cd-price">
                        <span class="cd-currency">₩</span>
                        <span class="cd-value">130,000</span>
                        <span class="cd-duration">총</span>
                     </div>
                  </header> <!-- .cd-pricing-header -->

                  <div class="cd-pricing-body">
                     <ul class="cd-pricing-features">
                        <li>쇼핑몰<em>10%</em>할인</li>
                        <li><em>1년 6개월</em> 트레이너 배정</li>
                        <li><em>1년 6개월</em> 프리미엄 영상 시청</li>
                        <li><em>1년 6개월</em> 개인 식단 ,운동 관리</li>
                        <li><em>1일 마다</em>미션 관리</li>
                        <li>지속적인 동기 부여 서비스 </li>
                     </ul>
                  </div> <!-- .cd-pricing-body -->

                  <footer class="cd-pricing-footer">
                     <a class="cd-select" href="#">결제</a>
                  </footer>  <!-- .cd-pricing-footer -->
               </li>
            </ul> <!-- .cd-pricing-wrapper -->
         </li>

         <li>
            <ul class="cd-pricing-wrapper">
               <li data-type="monthly" class="is-visible">
                  <header class="cd-pricing-header">
                     <h2>6개월</h2>

                     <div class="cd-price">
                        <span class="cd-currency">₩</span>
                        <span class="cd-value">40,000</span>
                        <span class="cd-duration">총</span>
                     </div>
                  </header> <!-- .cd-pricing-header -->

                  <div class="cd-pricing-body">
                     <ul class="cd-pricing-features">
                        <li>쇼핑몰<em>10%</em>할인</li>
                        <li><em>6개월</em> 트레이너 배정</li>
                        <li><em>6개월</em> 프리미엄 영상 시청</li>
                        <li><em>6개월</em> 개인 식단 ,운동 관리</li>
                        <li><em>1일 마다</em>미션 관리</li>
                        <li>지속적인 동기 부여 서비스 </li>
                     </ul>
                  </div> <!-- .cd-pricing-body -->

                  <footer class="cd-pricing-footer">
                     <a class="cd-select" href="#">결제</a>
                  </footer>  <!-- .cd-pricing-footer -->
               </li>

               <li data-type="yearly" class="is-hidden">
                  <header class="cd-pricing-header">
                     <h2>2년</h2>

                     <div class="cd-price">
                        <span class="cd-currency">₩</span>
                        <span class="cd-value">200,000</span>
                        <span class="cd-duration">총</span>
                     </div>
                  </header> <!-- .cd-pricing-header -->

                  <div class="cd-pricing-body">
                     <ul class="cd-pricing-features">
                        <li>쇼핑몰<em>10%</em>할인</li>
                        <li><em>2년</em> 트레이너 배정</li>
                        <li><em>2년</em> 프리미엄 영상 시청</li>
                        <li><em>2년</em> 개인 식단 ,운동 관리</li>
                        <li><em>1일 마다</em>미션 관리</li>
                        <li>지속적인 동기 부여 서비스 </li>
                     </ul>
                  </div> <!-- .cd-pricing-body -->

                  <footer class="cd-pricing-footer">
                     <a class="cd-select" href="#">결제</a>
                  </footer>  <!-- .cd-pricing-footer -->
               </li>
            </ul> <!-- .cd-pricing-wrapper -->
         </li>
      </ul> <!-- .cd-pricing-list -->
   </div> <!-- .cd-pricing-container -->
   <script src="js/jquery-2.1.1.js"></script>
<script src="js/main.js"></script> <!-- Resource jQuery -->
            <!-- .grid -->
            <!-- <nav class="pagination">
            <span class="page-numbers current">1</span>
            <a class="page-numbers" href="#">2</a>
            <a class="next page-numbers" href="#">Next »</a>
            </nav> -->
            <br/>
            </main>
            <!-- #main -->
         </div>
         <!-- #primary -->
      </div>
      <!-- #content -->
   </div>
   <!-- .container -->
   <footer id="colophon" class="site-footer">
   <div class="container">
      <div class="site-info">
         <h1 style="font-family: 'Herr Von Muellerhoff';color: #ccc;font-weight:300;text-align: center;margin-bottom:0;margin-top:0;line-height:1.4;font-size: 46px;">Hw</h1>
         copyright Homewar 2021-04-21<i class="fa fa-love"></i>
      </div>
   </div>   
   </footer>
   <a href="#top" class="smoothup" title="Back to top"><span class="genericon genericon-collapse"></span></a>
</div>

</body>
<!-- #page -->
<script src='<%=request.getContextPath() %>/HW_main/js/plugins.js'></script>
<script src='<%=request.getContextPath() %>/HW_main/js/scripts.js'></script>
<script src='<%=request.getContextPath() %>/HW_main/js/masonry.pkgd.min.js'></script>

 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</html>