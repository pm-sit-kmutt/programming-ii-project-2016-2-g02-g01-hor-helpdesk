<%-- 
    Document   : Menu
    Created on : Mar 27, 2017, 12:31:26 PM
    Author     : User
--%>

<%@page import="Model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    </head>
    <body>
        <% User user = (User)session.getAttribute("user");
        String userStatus = user.getStatus();
        String userName = user.getName(); %>
        <%@include file="Navbar.jsp" %>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Menu</h1>
                </div>
            </div>
            <div class="row list-group menu-list">
                <% if( userStatus.equals("student")) { %>
                    <a href="/HelpDesk/ReportProblem" target="_self">
                        <button type="button" class="list-group-item col-md-12">
                            รายงานปัญหา
                            <img src="assets/img/arrow.png" alt="icon">
                        </button>
                    </a>
                <% } %>
                <a href="/HelpDesk/ShowListProblem" target="_self">
                    <button type="button" class="list-group-item col-md-12">
                        แสดงรายการแจ้งปัญหา
                        <img src="assets/img/arrow.png" alt="icon">
                    </button>
                </a>
                <a href="/HelpDesk/ShowListStatus" target="_self">
                    <button type="button" class="list-group-item col-md-12">
                        แสดงสถานะปัญหา
                        <img src="assets/img/arrow.png" alt="icon">
                    </button>
                </a>
                <% if( userStatus.equals("admin")) { %>
                    <a href="/HelpDesk/UpdateStatus1" target="_self">
                        <button type="button" class="list-group-item col-md-12">
                            เปลี่ยนแปลงสถานะปัญหา
                            <img src="assets/img/arrow.png" alt="icon">
                        </button>
                    </a>
                <% }
                if( userStatus.equals("admin")) { %>
                    <a href="/HelpDesk/Summary" target="_self">
                        <button type="button" class="list-group-item col-md-12">
                            สรุปปัญหา
                            <img src="assets/img/arrow.png" alt="icon">
                        </button>
                    </a>
                <% } %>
                <a href="/HelpDesk/ListAnnounce" target="_self">
                    <button type="button" class="list-group-item col-md-12">
                        ประกาศ
                        <img src="assets/img/arrow.png" alt="icon">
                    </button>
                </a>
            </div>
        </div>
    </body>
</html>
