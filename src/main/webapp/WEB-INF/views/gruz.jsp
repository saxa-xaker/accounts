<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Страхование грузоперевозок</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


   <link rel="stylesheet" href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.10.3/themes/sunny/jquery-ui.css">

</head>

<body>

<div class="container" style="height: 1080px">

    <%--@elvariable id="userForm" type="javax"--%>
    <form:form method="POST" modelAttribute="userForm" class="form-signin">
        <h2 class="form-signin-heading">Заполнение полей договора</h2>


<div style="width: 1080px;position: absolute; top:120px">

        <spring:bind path="insurant">
        <div class="form-gruz1 ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="insurant" class="form-control" placeholder="Страхователь"
                            autofocus="true"></form:input>
                <form:errors path="insurant"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="shipper">
        <div class="form-gruz2 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="shipper" class="form-control" placeholder="Грузоотправитель"></form:input>
            <form:errors path="shipper"></form:errors>
        </div>
        </spring:bind>

        <spring:bind path="departure_point">
            <div class="form-gruz3 ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="departure_point" class="form-control"
                            placeholder="Пункт отправления"></form:input>
                <form:errors path="departure_point"></form:errors>
            </div>
        </spring:bind>
</div>


<div style="width: 1080px; position: absolute; top: 240px">
        <spring:bind path="consignee">
            <div class="form-gruz4 ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="consignee" class="form-control"
                            placeholder="Грузополучатель"></form:input>
                <form:errors path="consignee"></form:errors>
            </div>
        </spring:bind>


        <spring:bind path="destination_point">
            <div class="form-gruz5 ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="destination_point" class="form-control" placeholder="Пункт назначения"></form:input>
                <form:errors path="destination_point"></form:errors>
            </div>
        </spring:bind>
</div>


<div style="width: 1080px; position: absolute; top: 260px">

        <spring:bind path="transporter">
            <div class="form-gruz6 ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="transporter" class="form-control" placeholder="Перевозчик"></form:input>
                <form:errors path="transporter"></form:errors>
            </div>
        </spring:bind>

    <spring:bind path="car_number">
        <div class="form-gruz7 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="car_number" class="form-control" placeholder="Номер автомобиля"></form:input>
            <form:errors path="car_number"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="trailer_number">
        <div class="form-gruz8 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="trailer_number" class="form-control"
                        placeholder="Номер прицепа"></form:input>
            <form:errors path="trailer_number"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="vehicle_type">
            <div class="form-gruz9 ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="vehicle_type" class="form-control"
                            placeholder="Тип транспортного средства"></form:input>
                <form:errors path="vehicle_type"></form:errors>
            </div>
        </spring:bind>

</div>


<div style="width: 1080px; position: absolute; top: 380px">

    <spring:bind path="driver_id">
    <div class="form-gruz10 ${status.error ? 'has-error' : ''}">
        <form:input type="text" path="driver_id" class="form-control"
                    placeholder="Водитель ФИО"></form:input>
        <form:errors path="driver_id"></form:errors>
    </div>
    </spring:bind>

    <spring:bind path="driver_id_type">
            <div class="form-gruz11 ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="driver_id_type" class="form-control"
                            placeholder="Водитель тип документа"></form:input>
                <form:errors path="driver_id_type"></form:errors>
            </div>
    </spring:bind>

    <spring:bind path="driver_id_number">
    <div class="form-gruz12 ${status.error ? 'has-error' : ''}">
        <form:input type="text" path="driver_id_number" class="form-control"
                    placeholder="Водитель серия-номер документа"></form:input>
        <form:errors path="driver_id_number"></form:errors>
    </div>
    </spring:bind>

    <spring:bind path="driver_id_date">
        <div class="form-gruz13 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="driver_id_date" class="form-control"
                        placeholder="Водитель дата документа"></form:input>
            <form:errors path="driver_id_date"></form:errors>
        </div>
    </spring:bind>
</div>


<div style="width: 1080px;position: absolute;top: 391px">
    <spring:bind path="documents_in_package">
        <div class="form-gruz14 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="documents_in_package" class="form-control"
                        placeholder="Количество документов в пакете"></form:input>
            <form:errors path="documents_in_package"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="documents_type">
        <div class="form-gruz15 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="documents_type" class="form-control"
                        placeholder="Тип документа"></form:input>
            <form:errors path="documents_type"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="documents_number">
        <div class="form-gruz16 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="documents_number" class="form-control"
                        placeholder="Номер документа"></form:input>
            <form:errors path="documents_number"></form:errors>
        </div>
    </spring:bind>

        <spring:bind path="document_create_date">
        <div class="form-gruz17 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="document_create_date" class="form-control"
                        placeholder="Дата документа"></form:input>
            <form:errors path="document_create_date"></form:errors>
        </div>
     </spring:bind>
</div>

<!--
<div style="width: 1080px;position: absolute;top:510px">
        <spring:bind path="documents_type">
            <div class="form-gruz15 ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="documents_type" class="form-control"
                            placeholder="Тип документа"></form:input>
                <form:errors path="documents_type"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="documents_number">
            <div class="form-gruz16 ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="documents_number" class="form-control"
                            placeholder="Номер документа"></form:input>
                <form:errors path="documents_number"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="document_create_date">
            <div class="form-gruz17 ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="document_create_date" class="form-control"
                            placeholder="Дата документа"></form:input>
                <form:errors path="document_create_date"></form:errors>
            </div>
        </spring:bind>
</div>
-->
<div style="width: 1080px;position: absolute;top:522px">

    <spring:bind path="number_of_products">
        <div class="form-gruz18 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="number_of_products" class="form-control"
                        placeholder="Количество товаров в накладной"></form:input>
            <form:errors path="number_of_products"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="number_of_seats">
        <div class="form-gruz19 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="number_of_seats" class="form-control"
                        placeholder="Количество мест"></form:input>
            <form:errors path="number_of_seats"></form:errors>
        </div>
    </spring:bind>
    <spring:bind path="cargo_gross_weight">
        <div class="form-gruz20 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="cargo_gross_weight" class="form-control"
                        placeholder="Вес брутто"></form:input>
            <form:errors path="cargo_gross_weight"></form:errors>
        </div>
    </spring:bind>

</div>


<div style="width: 1080px;position: absolute;top:590px">
    <spring:bind path="hs_code">
        <div class="form-gruz21 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="hs_code" class="form-control"
                        placeholder="ТНВЭД коды"></form:input>
            <form:errors path="hs_code"></form:errors>
        </div>
    </spring:bind>
    <spring:bind path="goods_description">
        <div class="form-gruz22 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="goods_description" class="form-control"
                        placeholder="Описание товара"></form:input>
            <form:errors path="goods_description"></form:errors>
        </div>
    </spring:bind>
    <spring:bind path="item_weight">
        <div class="form-gruz23 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="item_weight" class="form-control"
                        placeholder="Вес товара"></form:input>
            <form:errors path="item_weight"></form:errors>
        </div>
    </spring:bind>
    <spring:bind path="goods_cost">
        <div class="form-gruz24 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="goods_cost" class="form-control"
                        placeholder="Стоимость товаров, сумма"></form:input>
            <form:errors path="goods_cost"></form:errors>
        </div>
    </spring:bind>
    <spring:bind path="currency">
        <div class="form-gruz25 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="currency" class="form-control"
                        placeholder="Валюта(rub, usd, eur)"></form:input>
            <form:errors path="currency"></form:errors>
        </div>
    </spring:bind>

</div>


<div style="width: 1080px;position: absolute;top:660px">

    <spring:bind path="start_contract_date">
        <div class="form-gruz26 ${status.error ? 'has-error' : ''}">
            <form:input type="date" path="start_contract_date" class="form-control"
                        placeholder="Срок действия договора с..."></form:input>
            <form:errors path="start_contract_date"></form:errors>
        </div>
    </spring:bind>

   <spring:bind path="end_contract_date">
        <div class="form-gruz27 ${status.error ? 'has-error' : ''}">
            <form:input type="date" path="end_contract_date" class="form-control"
                        placeholder=""></form:input>
            <form:errors path="end_contract_date"></form:errors>
        </div>
    </spring:bind>

</div>
        <span><button class="btn-gruz-place btn btn-lg btn-primary btn-block" type="submit">Рассчитать</button></span>

        <span><button class="btn-gruz-place2 btn btn-lg btn-primary btn-block" type="submit">Оформить договор</button></span>
    </form:form>

</div>


<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
