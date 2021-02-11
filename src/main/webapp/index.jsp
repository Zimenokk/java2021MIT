<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="uk" class="no-js">
<!-- BEGIN HEAD -->

<head>
    <meta charset="utf-8" />
    <title>Zimenok Daniil</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />

    <!-- GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/sources/HTML/vendor/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/sources/HTML/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

    <!-- PAGE LEVEL PLUGIN STYLES -->
    <link href="${pageContext.request.contextPath}/sources/HTML/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/sources/HTML/vendor/swiper/css/swiper.min.css" rel="stylesheet" type="text/css" />

    <!-- THEME STYLES -->
    <link href="${pageContext.request.contextPath}/sources/HTML/css/layout.min.css" rel="stylesheet" type="text/css" />

    <!-- Favicon -->
</head>
<!-- END HEAD -->

<!-- BODY -->

<body>

<!--========== HEADER ==========-->
<header class="header navbar-fixed-top">
    <!-- Navbar -->
    <nav class="navbar" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="menu-container">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="toggle-icon"></span>
                </button>

                <!-- Logo -->
                <div class="logo">
                    <a class="logo-wrap" href="${pageContext.request.contextPath}/index.jsp">
                        <img class="logo-img logo-img-main" src="${pageContext.request.contextPath}/sources/HTML/img/logo.png" alt="Asentus Logo">
                        <img class="logo-img logo-img-active" src="${pageContext.request.contextPath}/sources/HTML/img/logo-dark.png" alt="Asentus Logo">
                    </a>
                </div>
                <!-- End Logo -->
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse nav-collapse">
                <div class="menu-container">
                    <ul class="navbar-nav navbar-nav-right">
                        <li class="nav-item"><a class="nav-item-child nav-item-hover active" href="${pageContext.request.contextPath}/index.jsp">Домашня сторінка</a></li>
                        <li class="nav-item"><a class="nav-item-child nav-item-hover" href="${pageContext.request.contextPath}/pages/form.jsp">Заповнити форму</a></li>
                    </ul>
                </div>
            </div>
            <!-- End Navbar Collapse -->
        </div>
    </nav>
    <!-- Navbar -->
</header>
<!--========== END HEADER ==========-->

<!--========== SLIDER ==========-->
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <div class="container">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        </ol>
    </div>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="img-responsive" src="${pageContext.request.contextPath}/sources/HTML/img/1920x1080/01.jpg" alt="Slider Image">
            <div class="container">
                <div class="carousel-centered">
                    <div class="margin-b-40">
                        <h1 class="carousel-title">сучасний дизайн фасадів</h1>
                        <p>Зименок Данііл МІТ-21 </p>
                    </div>
                    <!-- <a href="#" class="btn-theme btn-theme-sm btn-white-brd text-uppercase">Explore</a> -->
                </div>
            </div>
        </div>
        <div class="item">
            <img class="img-responsive" src="${pageContext.request.contextPath}/sources/HTML/img/1920x1080/02.jpg" alt="Slider Image">
            <div class="container">
                <div class="carousel-centered">
                    <div class="margin-b-40">
                        <h2 class="carousel-title">Швидко та надійно</h2>
                        <p>Зименок Данііл МІТ-21 </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--========== SLIDER ==========-->

<!--========== PAGE LAYOUT ==========-->
<!-- Service -->
<div class="bg-color-sky-light" data-auto-height="true">
    <div class="content-lg container">
        <div class="row row-space-1 margin-b-2">
            <div class="col-sm-4 sm-margin-b-2">
                <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".3s">
                    <div class="service" data-height="height">
                        <div class="service-element">
                            <i class="service-icon icon-chemistry"></i>
                        </div>
                        <div class="service-info">
                            <h3>Ми - це надійність.</h3>
                        </div>
                        <a href="#" class="content-wrapper-link"></a>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 sm-margin-b-2">
                <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".2s">
                    <div class="service" data-height="height">
                        <div class="service-element">
                            <i class="service-icon icon-screen-tablet"></i>
                        </div>
                        <div class="service-info">
                            <h3>Дизайн - це доступно!</h3>
                        </div>
                        <a href="#" class="content-wrapper-link"></a>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".1s">
                    <div class="service" data-height="height">
                        <div class="service-element">
                            <i class="service-icon icon-badge"></i>
                        </div>
                        <div class="service-info">
                            <h3>Маємо сертифікати! </h3>
                        </div>
                        <a href="#" class="content-wrapper-link"></a>
                    </div>
                </div>
            </div>
        </div>
        <!--// end row -->

        <div class="row row-space-1">
            <div class="col-sm-4 sm-margin-b-2">
                <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".4s">
                    <div class="service" data-height="height">
                        <div class="service-element">
                            <i class="service-icon icon-notebook"></i>
                        </div>
                        <div class="service-info">
                            <h3>Готові до перевірок.</h3>
                        </div>
                        <a href="#" class="content-wrapper-link"></a>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 sm-margin-b-2">
                <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".5s">
                    <div class="service" data-height="height">
                        <div class="service-element">
                            <i class="service-icon icon-speedometer"></i>
                        </div>
                        <div class="service-info">
                            <h3>Зробимо за 7 днів.</h3>
                        </div>
                        <a href="#" class="content-wrapper-link"></a>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".6s">
                    <div class="service" data-height="height">
                        <div class="service-element">
                            <i class="service-icon icon-badge"></i>
                        </div>
                        <div class="service-info">
                            <h3>Надамо всі документи.</h3>
                        </div>
                        <a href="#" class="content-wrapper-link"></a>
                    </div>
                </div>
            </div>
        </div>
        <!--// end row -->
    </div>
</div>
<!-- End Service -->

<!-- Latest Products -->
<div class="content-lg container">
    <div class="row margin-b-40">
        <div class="col-sm-6">
            <h2>Останні проєкти</h2>
            <p>Кожен наш проєкт не схожий на інший, ми дуже відповідально підходимо до індивідуальності клієнта.</p>
        </div>
    </div>
    <!--// end row -->

    <div class="row">
        <!-- Latest Products -->
        <div class="col-sm-4 sm-margin-b-50">
            <div class="margin-b-20">
                <div class="wow zoomIn" data-wow-duration=".3" data-wow-delay=".1s">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/sources/HTML/img/970x647/01.jpg" alt="Latest Products Image">
                </div>
            </div>
            <h4><a href="#">Офісне приміщення</a> <span class="text-uppercase margin-l-20">Management</span></h4>
            <a class="link" href="#">Read More</a>
        </div>
        <!-- End Latest Products -->

        <!-- Latest Products -->
        <div class="col-sm-4 sm-margin-b-50">
            <div class="margin-b-20">
                <div class="wow zoomIn" data-wow-duration=".3" data-wow-delay=".1s">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/sources/HTML/img/970x647/02.jpg" alt="Latest Products Image">
                </div>
            </div>
            <h4><a href="#">Бізнес - центр</a> <span class="text-uppercase margin-l-20">Developmeny</span></h4>
            <a class="link" href="#">Read More</a>
        </div>
        <!-- End Latest Products -->

        <!-- Latest Products -->
        <div class="col-sm-4 sm-margin-b-50">
            <div class="margin-b-20">
                <div class="wow zoomIn" data-wow-duration=".3" data-wow-delay=".1s">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/sources/HTML/img/970x647/03.jpg" alt="Latest Products Image">
                </div>
            </div>
            <h4><a href="#">Хатинка в лісі</a> <span class="text-uppercase margin-l-20">Design</span></h4>
            <a class="link" href="#">Read More</a>
        </div>
        <!-- End Latest Products -->
    </div>
    <!--// end row -->
</div>
<!-- End Latest Products -->


<!-- End Clients -->

<!-- Testimonials -->




<!-- Promo Section -->
<div class="promo-section overflow-h">
    <div class="container">
        <div class="clearfix">
            <div class="ver-center">
                <div class="ver-center-aligned">
                    <div class="promo-section-col">
                        <h2>Наші клієнти - кращі в своїй справі.</h2>
                        <p>Кожен, хто звертається до нас залишається задоволеним від співпраці. Після наших послуг візуальна привабливість вашого бренду зростає на 30% </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="promo-section-img-right">
        <img class="img-responsive" src="${pageContext.request.contextPath}/sources/HTML/img/970x970/01.jpg" alt="Content Image">
    </div>
</div>
<!-- End Promo Section -->


<!--========== END PAGE LAYOUT ==========-->

<!--========== END FOOTER ==========-->

<!-- Back To Top -->
<a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

<!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- CORE PLUGINS -->
<script src="${pageContext.request.contextPath}/sources/HTML/vendor/jquery.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/sources/HTML/vendor/jquery-migrate.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/sources/HTML/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<!-- PAGE LEVEL PLUGINS -->
<script src="${pageContext.request.contextPath}/sources/HTML/vendor/jquery.easing.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/sources/HTML/vendor/jquery.back-to-top.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/sources/HTML/vendor/jquery.smooth-scroll.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/sources/HTML/vendor/jquery.wow.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/sources/HTML/vendor/swiper/js/swiper.jquery.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/sources/HTML/vendor/masonry/jquery.masonry.pkgd.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/sources/HTML/vendor/masonry/imagesloaded.pkgd.min.js" type="text/javascript"></script>

<!-- PAGE LEVEL SCRIPTS -->
<script src="${pageContext.request.contextPath}/sources/HTML/js/layout.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/sources/HTML/js/components/wow.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/sources/HTML/js/components/swiper.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/sources/HTML/js/components/masonry.min.js" type="text/javascript"></script>

</body>
<!-- END BODY -->

</html>