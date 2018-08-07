<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="saxa-xaker">

    <title>Welcome</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">

    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h2>Привет, ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a></h2>

    </c:if>
    <div class="mt-50 mb-50">

    <a href="gruz">GRUZ</a><br /><br />
    <a href="arbitr">Arbitr</a>

    </div>

    <sql:query var="document_id" dataSource="jdbc:mysql://root:321321321@127.0.0.1:3306/accounts?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=UTC&characterEncoding=UTF-8&zeroDateTimeBehavior=CONVERT_TO_NULL">
        SELECT id, insurant, shipper, driver_id, driver_id_date FROM accounts.document_id
    </sql:query>
    <div class="mt-50 mb-50">
    <table border="1" class="ml-50 mr-50">
        <!-- column headers -->
        <tr>
            <c:forEach var="columnName" items="${document_id.columnNames}">
                <th class="pl-5 pr-5 pb-5"><c:out value="${columnName}"/></th>
            </c:forEach>
        </tr>
        <!-- column data -->
        <c:forEach var="row" items="${document_id.rowsByIndex}">
            <tr>
                <c:forEach var="column" items="${row}">
                    <td class="pl-5 pr-5 pb-5"><c:out value="${column}"/></td>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>

    </div>
    <sql:query var="arbitr_uprav" dataSource="jdbc:mysql://root:321321321@127.0.0.1:3306/accounts?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=UTC&characterEncoding=UTF-8&zeroDateTimeBehavior=CONVERT_TO_NULL">
        SELECT id, arbitr_uprav_id, is_russian_agent FROM accounts.arbitr_uprav
    </sql:query>
    <div class="mt-50 mb-50">
        <table border="1" class="ml-50 mr-50">
            <!-- column headers -->
            <tr>
                <c:forEach var="columnName" items="${arbitr_uprav.columnNames}">
                    <th class="pl-5 pr-5 pb-5"><c:out value="${columnName}"/></th>
                </c:forEach>
            </tr>
            <!-- column data -->
            <c:forEach var="row" items="${arbitr_uprav.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td class="pl-5 pr-5 pb-5"><c:out value="${column}"/></td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>

    </div>
    <sql:query var="user" dataSource="jdbc:mysql://root:321321321@127.0.0.1:3306/accounts?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=UTC&characterEncoding=UTF-8&zeroDateTimeBehavior=CONVERT_TO_NULL">
        SELECT * FROM accounts.user
    </sql:query>
    <div class="mt-50">
        <table border="1" class="ml-50 mr-50">
            <!-- column headers -->
            <tr class="pb-5">
                <c:forEach var="columnName" items="${user.columnNames}">
                    <th class="pl-5 pr-5 pb-5"><c:out value="${columnName}"/></th>
                </c:forEach>
            </tr>
            <!-- column data -->
            <c:forEach var="row" items="${user.rowsByIndex}">
                <tr>
                    <c:forEach var="column" items="${row}">
                        <td class="pl-5 pr-5 pb-5"><c:out value="${column}"/></td>
                    </c:forEach>
                </tr>
            </c:forEach>
        </table>

    </div>

</div>

<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
