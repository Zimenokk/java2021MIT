<%@ page import="org.obrii.mit.dp2021.zimenokk.dp2021project.classes.Estate" %>
<%@ page import="org.obrii.mit.dp2021.zimenokk.dp2021project.interfaces.IHouse" %>
<%--
  User: User
  Date: 10.02.2021
  Time: 18:15
  To change this template use File | Settings | File Templates.
--%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <!DOCTYPE html>

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
            <link rel="stylesheet" href="${pageContext.request.contextPath}/sources/HTML/css/my.css">
            <!-- Favicon -->
        </head>
        <!-- END HEAD -->

        <!-- BODY -->

        <body>
        <% Estate service = (Estate) request.getAttribute("estate");%>

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
                                    <li class="nav-item"><a class="nav-item-child nav-item-hover" href="${pageContext.request.contextPath}/index.jsp">Домашня сторінка</a></li>
                                    <li class="nav-item"><a class="nav-item-child nav-item-hover active" href="${pageContext.request.contextPath}/pages/form.jsp">Заповнити форму</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- End Navbar Collapse -->
                    </div>
                </nav>
                <!-- Navbar -->
            </header>
            <!--========== END HEADER ==========-->

            <!--========== PARALLAX ==========-->
            <div class="parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/sources/HTML/img/1920x1080/01.jpg">
                <div class="parallax-content container">
                    <h1 class="carousel-title">Будь ласка, заповніть форму нижче</h1>
                    <p>Зименок Данііл МІТ-21</p>
                </div>
            </div>
            <!--========== PARALLAX ==========-->

            >

            <!--========== FOOTER ==========-->
            <footer class="footer">
                <!-- Links -->
                <div class="footer-seperator">
                    <div class="content-lg container">
                        <div class="row">
                            <div class="col-sm-2 sm-margin-b-50">
                                <!-- List -->
                                <ul class="list-unstyled footer-list">
                                    <li class="footer-list-item"><a class="footer-list-link" href="#">Home</a></li>
                                    <li class="footer-list-item"><a class="footer-list-link" href="#">About</a></li>
                                </ul>
                                <!-- End List -->
                            </div>
                            <div class="col-sm-4 sm-margin-b-30">
                                <!-- List -->
                                <ul class="list-unstyled footer-list">
                                    <li class="footer-list-item"><a class="footer-list-link" href="#">Facebook</a></li>
                                    <li class="footer-list-item"><a class="footer-list-link" href="#">YouTube</a></li>
                                </ul>
                                <!-- End List -->
                            </div>
                            <div class="col-sm-5 sm-margin-b-30">
                                <h2 class="color-white">Заповніть, будь ласка, форму англійською мовою</h2>
                                <form action="<%=request.getContextPath()%>/form" method="post">
                                    <input id="name" name="name" type="text" class="form-control footer-input margin-b-20" placeholder="Ваше ім'я" required>
                                    <label for="name"></label>

                                    <input id="email" name="email" type="email" class="form-control footer-input margin-b-20" placeholder="E-mail" required>
                                    <label for="email"></label>

                                    <p style="margin: 0 0 0 4%">Виберіть тип будинку: </p>

                                    <div style="margin: 5% 0 9% 36%">
                                        <select name="houseType"
                                                required="required">
                                            <% for (IHouse house: service.getHouses()) {%>
                                            <option value="<%= house.getType()%>">
                                                <%=house.getType()%>
                                            </option>
                                            <%}%>

                                        </select>
                                    </div>

                                    <textarea class="form-control footer-input margin-b-30" rows="6" placeholder="Ваші побажання" required></textarea>
                                    <div class="summ">
                                        <p>Сума вашого проєкту:</p>
                                        <p><input id="number" name="number">
                                            <label for="number"></label></p>
                                    </div>
                                    <button type="submit" class="btn-theme btn-theme-sm btn-base-bg text-uppercase">Відправити</button>
                                </form>
                            </div>
                        </div>
                        <!--// end row -->
                    </div>
                </div>
                <!-- End Links -->

                <!-- Copyright -->

            </footer>
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
            <script src="${pageContext.request.contextPath}/sources/HTML/vendor/jquery.parallax.min.js" type="text/javascript"></script>
            <script src="${pageContext.request.contextPath}/sources/HTML/vendor/swiper/js/swiper.jquery.min.js" type="text/javascript"></script>

            <!-- PAGE LEVEL SCRIPTS -->
            <script src="${pageContext.request.contextPath}/sources/HTML/js/layout.min.js" type="text/javascript"></script>
            <script src="${pageContext.request.contextPath}/sources/HTML/js/components/swiper.min.js" type="text/javascript"></script>
            <script src="${pageContext.request.contextPath}/sources/HTML/js/components/wow.min.js" type="text/javascript"></script>

        </body>
        <!-- END BODY -->

        </html>