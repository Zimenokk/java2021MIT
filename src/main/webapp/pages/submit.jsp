<%@ page import="org.obrii.mit.dp2021.zimenokk.dp2021project.Data" %>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <!DOCTYPE html>
        <html lang="uk">
        <!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
        <!--[if !IE]><!-->
        <html lang="en">
        <!--<![endif]-->

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Submit | Zimenokk</title>
            <link rel="stylesheet" href="${pageContext.request.contextPath}/sources/HTML/css/my.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/sources/HTML/css/reset.css">

        </head>

        <body>

            <% Data data = (Data) request.getAttribute("data");%>
                <div class="all">
                    <div class="mainKv">
                        <h1>Дякуємо за замовлення!</h1>
                        <div class="firstT">
                            <p>Ми надішлемо запрошення на вашу пошту:
                            </p>
                            <p>
                                <%=data.getEmail()%>
                            </p>
                        </div>
                        <div class="secondT">
                            <div class="leftSecondT">
                                <p>Ваш тип проєкту</p>
                                <p>
                                    <%=data.getHouseType()%>
                                </p>
                            </div>
                            <div class="rightSecondT">

                            </div>
                        </div>
                        <div class="thirdT">
                            <p>Сума проєкту не перевищить </p>
                            <p>
                                <%=data.getSum()%>$</p>
                        </div>
                        <h2>Ваші побажання будуть враховані, до зустрічі!</h2>
                        <a href="<%=request.getContextPath()%>/index.jsp">Повернутись на сайт</a>
                    </div>
                </div>
        </body>

        </html>