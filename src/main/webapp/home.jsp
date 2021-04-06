<%@page import="java.util.List"%>
<%@page import="org.obrii.mit.dp2021.zimenokk.dp2021project.CRUD.Data"%>
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

    <div class="downPage">
        <div class="container">
            <div class="main">
                <div class="leftmain">
                    <p>Електронна черга на отримання ID-паспорта громадянина України.</p>
                    <p>Electronic queue for obtaining an ID-passport of a citizen of Ukraine.</p>
                </div>
                <div class="rightmain"><img src="<%=request.getContextPath()%>/img/depositphotos_42003375-stock-illustration-ukraine-coat-of-arms-removebg-preview.png" alt=""></div>
            </div>
            <a class="zap" href="<%=request.getContextPath()%>/form.jsp">
            Записатись в чергу
            </a>
            <div class="downmain">
                <%List<Data> dataList = (List<Data>) request.getAttribute("data");%>
                <div class="tabl">
                    <%for (Data data : dataList) {%>
                    <p>Номер в черзі: <%=data.getId()%></p>
                    <p><%=data.getName()%></p>
                    <p><%=data.getAge()%> y.o.</p>

                    <div class="editDel">
                        <form action="<%=request.getContextPath()%>/update?id=<%=data.getId()%>" method="get">
                            <input type="hidden" name="id" value="<%=data.getId()%>">
                            <input type="hidden" name="name" value="<%=data.getName()%>">
                            <input type="hidden" name="age" value="<%=data.getAge()%>">
                            <input type="submit" value="Update">
                        </form>
                        <form action="<%=request.getContextPath()%>/form" method="get">
                            <input type="hidden" name="id" value="<%=data.getId()%>">
                            <input type="submit" value="Delete">
                        </form>

                    </div>
                    <%}%>
                </div>


            </div>

        </div>
    </div>
</body>

</html>