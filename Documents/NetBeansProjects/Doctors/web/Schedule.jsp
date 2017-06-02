<%-- 
    Document   : Schedule
    Created on : Jun 2, 2017, 8:23:45 PM
    Author     : Maks
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Расписание врачей</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <link href="<c:url value="/newcss.css" />" rel="stylesheet">
        <!-- Latest compiled and minified JavaScript -->
        
    <body>
        <div class="container">
            <form method="get" action="<%= request.getContextPath()%>/ScheduleServlet">
        </div>
        <h1>Расписание врачей</h1>
        <div class="form-group">
            <label for="groupId">
                Выберите отделение:<br>
                &nbsp;1-отделение семейной медицины<br>
                &nbsp;2-отделение женской консультации<br>
                &nbsp;3-отделение спец врачей<br>
                &nbsp;пусто-весь список врачей
            </label>
            <input id="groupId" name="groupId" class="form-control" type="text" placeholder="Выберите отделение">
        </div>
        <div>
            <input type="submit" value="Показать" class="btn btn-primary">
        </div>
        <br>

        <table class="table table-striped" border="2">
            <tr>
                <td class="gtext"><p>Специальность</p></td>
                <td class="gtext"><p>ФИО</p></td>
                <td class="gtext"><p>пн</p></td>
                <td class="gtext"><p>вт</p></td>
                <td class="gtext"><p>ср</p></td>
                <td class="gtext"><p>чт</p></td>
                <td class="gtext"><p>пт</p></td>

            </tr>
            <c:forEach var="res" items="${result}" >
                <tr><td><c:out value="${res.speciality}"></c:out></td>
                    <td><c:out value="${res.name}"></c:out></td>
                    <td><c:out value="${res.monday}"></c:out></td>
                    <td><c:out value="${res.tuesday}"></c:out></td>
                    <td><c:out value="${res.wednesday}"></c:out></td>
                    <td><c:out value="${res.thursday}"></c:out></td>
                    <td><c:out value="${res.friday}"></c:out></td>
                    </tr> 
            </c:forEach>
        </table>
    </body>
</html>
