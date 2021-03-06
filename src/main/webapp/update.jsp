<%@ page import="org.obrii.mit.dp2021.zimenokk.dp2021project.CRUD.Data" %>
<%@ page contentType="text/html;charset=utf-8" %>

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
        <%Data data = (Data) request.getAttribute("data"); %>
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
                    <form class="formEdit" action="<%=request.getContextPath()%>/form" method="post">
                        <input type="hidden" name="id" value="<%=data.getId()%>">
                        <input placeholder="Ім'я" name="name" type="text" value="<%=data.getName()%>">
                        <input placeholder="Вік" name="age" type="text" value="<%=data.getAge()%>">
                        <div class="sex">
                            <p>Ваша стать</p>

                            <%if (data.getGender()==("Чоловік")) {%>
                            <input type="radio" name="gender" value="male" checked>Чоловік
                            <input type="radio" name="gender" value="female">Жінка<br/>
                            <%}%>

                            <%if (data.getGender()==("female")) {%>
                            <input type="radio" name="gender" value="male">Чоловік
                            <input type="radio" name="gender" value="female" checked>Жінка<br/>
                            <%}%>

                        </div>

                        <input placeholder="Ваша пошта" name="email" type="email" value="<%=data.getEmail()%>">

                        <p>
                            <input type="submit" value="Відправити">
                        </p>
                    </form>
                </div>


            </div>

        </div>
    </body>

    </html>