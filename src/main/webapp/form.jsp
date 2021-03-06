
        <%@page contentType="text/html" pageEncoding="UTF-8"%>

            <!DOCTYPE html>
            <html lang="ru">

            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Паспорт</title>
                <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
                <link rel="preconnect" href="https://fonts.gstatic.com">
                <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
            </head>

            <body>
                <style>
                    .downPage {
                        background: url("<%=request.getContextPath()%>/img/фон.jpg");
                        height: 93vh;
                    }
                </style>
                <div class="header"><img src="<%=request.getContextPath()%>/img/image 1.png" alt=""></div>

                <div class="downPage">
                    <div class="container">
                        <div class="main">
                            <div class="leftmain">
                                <p>Електронна черга на отримання ID-паспорта громадянина України.</p>
                                <p>Electronic queue for obtaining an ID-passport of a citizen of Ukraine.</p>
                            </div>
                            <div class="rightmain"><img src="<%=request.getContextPath()%>/img/depositphotos_42003375-stock-illustration-ukraine-coat-of-arms-removebg-preview.png" alt=""></div>
                        </div>
                        <a class="zap" href="<%=request.getContextPath()%>/">Повернутись на головну</a>
                        <div class="newMain">
                            <form class="formEdit" action="<%=request.getContextPath()%>/" method="post">
                                <input type="hidden" name="id" value="0">
                                <input placeholder="Ім'я" name="name" type="text">
                                <input placeholder="Вік" name="age" type="text">
                                <div class="sex">
                                    <p>Ваша стать</p>Чоловік
                                    <input value="Чоловік" name="gender" type="radio"> Жінка
                                    <input value="Жінка" name="gender" type="radio">
                                </div>
                                <input placeholder="Ваша пошта" name="email" type="email">

                                <p>
                                    <input type="submit" value="Відправити">
                                </p>
                            </form>
                        </div>


                    </div>

                </div>
            </body>

            </html>