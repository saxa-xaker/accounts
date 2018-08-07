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
    <title>Страхование арбитражных управляющих</title>


    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


    <link rel="stylesheet" href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.10.3/themes/sunny/jquery-ui.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


    <script>
        ( function( factory ) {
            if ( typeof define === "function" && define.amd ) {

// AMD. Register as an anonymous module.
                define( [ "../widgets/datepicker" ], factory );
            } else {

// Browser globals
                factory( jQuery.datepicker );
            }
        }( function( datepicker ) {

            datepicker.regional.ru = {
                closeText: "Закрыть",
                prevText: "&#x3C;Пред",
                nextText: "След&#x3E;",
                currentText: "Сегодня",
                monthNames: [ "Январь","Февраль","Март","Апрель","Май","Июнь",
                    "Июль","Август","Сентябрь","Октябрь","Ноябрь","Декабрь" ],
                monthNamesShort: [ "Янв","Фев","Мар","Апр","Май","Июн",
                    "Июл","Авг","Сен","Окт","Ноя","Дек" ],
                dayNames: [ "воскресенье","понедельник","вторник","среда","четверг","пятница","суббота" ],
                dayNamesShort: [ "вск","пнд","втр","срд","чтв","птн","сбт" ],
                dayNamesMin: [ "Вс","Пн","Вт","Ср","Чт","Пт","Сб" ],
                weekHeader: "Нед",
                dateFormat: "dd.mm.yy",
                firstDay: 1,
                isRTL: false,
                showMonthAfterYear: false,
                yearSuffix: "" };
            datepicker.setDefaults( datepicker.regional.ru );

            return datepicker.regional.ru;

        } ) );
    </script>
    <script>
        $( function() {
            $( "#datepicker" ).datepicker({
                changeMonth: true,
                changeYear: true
            });
        } );
    </script>
    <script>
        $( function() {
            $( "#datepicker1" ).datepicker({
                changeMonth: true,
                changeYear: true
            });
        } );
    </script>
    <script>
        $( function() {
            $( "#datepicker2" ).datepicker({
                changeMonth: true,
                changeYear: true
            });
        } );
    </script>
    <script>
        $( function() {
            $( "#datepicker3" ).datepicker({
                changeMonth: true,
                changeYear: true
            });
        } );
    </script>
    <script>
        $( function() {
            $( "#datepicker4" ).datepicker({
                changeMonth: true,
                changeYear: true
            });
        } );
    </script>
    <script>
        $( function() {
            $( "#datepicker5" ).datepicker({
                changeMonth: true,
                changeYear: true
            });
        } );
    </script>
    <script>
        $( function() {
            $( "#datepicker6" ).datepicker({
                changeMonth: true,
                changeYear: true
            });
        } );
    </script>
    <script>
        $( function() {
            $( "#datepicker7" ).datepicker({
                changeMonth: true,
                changeYear: true
            });
        } );
    </script>
    <script>
        $( function() {
            $( "#datepicker8" ).datepicker({
                changeMonth: true,
                changeYear: true
            });
        } );
    </script>
    <script>
        $( function() {
            $( "#datepicker9" ).datepicker({
                changeMonth: true,
                changeYear: true
            });
        } );
    </script>
    <script>
        $( function() {
            $( "#datepicker10" ).datepicker({
                changeMonth: true,
                changeYear: true
            });
        } );
    </script>
    <script>
        $( function() {
            $( "#datepicker11" ).datepicker({
                changeMonth: true,
                changeYear: true
            });
        } );
    </script>

    <script>
        $.datepicker.setDefaults( $.datepicker.regional[ "ru" ] );
    </script>

</head>
<body>

<div class="container" style="height: 1080px">

    <%--@elvariable id="userForm" type="javax"--%>
    <form:form method="POST" modelAttribute="userForm" class="form-arbitr">
        <h2 class="form-signin-heading">Заполнение полей анкеты арбитражного управляющего</h2>


<div style="width: 1080px;position: absolute; top:120px">

        <spring:bind path="arbitr_uprav_id">
        <div class="form-arbitr1 ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="arbitr_uprav_id" class="form-control" placeholder="ФИО арбитражного управляющего"
                            autofocus="true"></form:input>
                <form:errors path="arbitr_uprav_id"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="citizenship">
        <div class="form-arbitr2 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="citizenship" class="form-control" placeholder="Гражданство"></form:input>
            <form:errors path="citizenship"></form:errors>
        </div>
        </spring:bind>
</div>


        <div style="width: 1080px; position: absolute; top: 290px">

        <spring:bind path="birthplace">
            <div class="form-arbitr3 ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="birthplace" class="form-control" placeholder="Место рождения"></form:input>
                <form:errors path="birthplace"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="birthdate">
            <div class="form-arbitr4 ${status.error ? 'has-error' : ''}">
                <form:input id="datepicker" type="text" path="birthdate" class="form-control" placeholder="Дата рождения"></form:input>
                <form:errors path="birthdate"></form:errors>
            </div>
        </spring:bind>
</div>


        <div style="width: 1080px; position: absolute; top: 260px">

        <spring:bind path="document_type">
            <div class="form-arbitr5 ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="document_type" class="form-control" placeholder="Документ, удостоверяющий личность"></form:input>
                <form:errors path="document_type"></form:errors>
            </div>
        </spring:bind>


        <spring:bind path="document_id_number">
            <div class="form-arbitr6 ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="document_id_number" class="form-control" placeholder="Серия и номер документа"></form:input>
                <form:errors path="document_id_number"></form:errors>
            </div>
        </spring:bind>

    <spring:bind path="document_id_date">
        <div class="form-arbitr7 ${status.error ? 'has-error' : ''}">
            <form:input id="datepicker1" type="text" path="document_id_date" class="form-control" placeholder="Дата выдачи документа"></form:input>
            <form:errors path="document_id_date"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="document_id_by">
        <div class="form-arbitr8 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="document_id_by" class="form-control" placeholder="Кем выдан"></form:input>
            <form:errors path="document_id_by"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="document_id_code">
            <div class="form-arbitr9 ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="document_id_code" class="form-control" placeholder="Код подразделения"></form:input>
                <form:errors path="document_id_code"></form:errors>
            </div>
        </spring:bind>

</div>


<div style="width: 1080px; position: absolute; top: 380px">

    <spring:bind path="registration_address">

        <div class="form-arbitr10 ${status.error ? 'has-error' : ''}">
        <form:input type="text" path="registration_address" class="form-control" placeholder="Адрес регистрации"></form:input>
        <form:errors path="registration_address"></form:errors>
    </div>
    </spring:bind>


    <spring:bind path="registration_address_fact">
            <div class="form-arbitr11 ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="registration_address_fact" class="form-control" placeholder="Адрес проживания"></form:input>
                <form:errors path="registration_address_fact"></form:errors>
            </div>
    </spring:bind>


    <spring:bind path="address_for_documents">
    <div class="form-arbitr12 ${status.error ? 'has-error' : ''}">
        <form:input type="text" path="address_for_documents" class="form-control" placeholder="Адрес с индексом для документов на подпись"></form:input>
        <form:errors path="address_for_documents"></form:errors>
    </div>
    </spring:bind>


    <spring:bind path="inn">

        <div class="form-arbitr13 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="inn" class="form-control" placeholder="ИНН, если есть"></form:input>
            <form:errors path="inn"></form:errors>
        </div>
    </spring:bind>


    <spring:bind path="tel_number">

        <div class="form-arbitr14 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="tel_number" class="form-control" placeholder="Телефон"></form:input>
            <form:errors path="tel_number"></form:errors>
        </div>
    </spring:bind>


    <spring:bind path="email_address">

        <div class="form-arbitr15 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="email_address" class="form-control" placeholder="Электронная почта"></form:input>
            <form:errors path="email_address"></form:errors>
        </div>
    </spring:bind>
</div>


        <div style="width: 1080px; position: absolute; top: 390px">
    <spring:bind path="education_base">
        <div class="form-arbitr16 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="education_base" class="form-control" placeholder="Сведения об образовании"></form:input>
            <form:errors path="education_base"></form:errors>
        </div>
    </spring:bind>

        <spring:bind path="education_higher">
        <div class="form-arbitr17 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="education_higher" class="form-control" placeholder="Свидетельство о повышении квалификации"></form:input>
            <form:errors path="education_higher"></form:errors>
        </div>
     </spring:bind>
</div>


<div style="width: 1080px;position: absolute;top:510px">

    <spring:bind path="sro_name">

        <div class="form-arbitr15 ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="sro_name" class="form-control" placeholder="Наименование СРО"></form:input>
                <form:errors path="sro_name"></form:errors>
            </div>
        </spring:bind>


    <spring:bind path="sro_document_name">

        <div class="form-arbitr16 ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="sro_document_name" class="form-control" placeholder="Наименование документа о членстве в СРО"></form:input>
                <form:errors path="sro_document_name"></form:errors>
            </div>
        </spring:bind>


    <spring:bind path="sro_document_number">

        <div class="form-arbitr17 ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="sro_document_number" class="form-control" placeholder="Номер документа"></form:input>
                <form:errors path="sro_document_number"></form:errors>
            </div>
        </spring:bind>


    <spring:bind path="sro_document_date">

        <div class="form-arbitr18 ${status.error ? 'has-error' : ''}">
            <form:input id="datepicker2"  type="text" path="sro_document_date" class="form-control" placeholder="Дата выдачи документа"></form:input>
            <form:errors path="sro_document_date"></form:errors>
        </div>
    </spring:bind>


    <spring:bind path="sro_last_workplace">

        <div class="form-arbitr19 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="sro_last_workplace" class="form-control" placeholder="Членом каких СРО вы состояли в течение последних 3-х лет"></form:input>
            <form:errors path="sro_last_workplace"></form:errors>
        </div>
    </spring:bind>

</div>

        <div style="width: 1080px;position: absolute;top:522px">


            <spring:bind path="arbitr_start_work_date">

                <div class="form-arbitr20 ${status.error ? 'has-error' : ''}">
            <form:input id="datepicker3"  type="text" path="arbitr_start_work_date" class="form-control" placeholder="Начало работы в качестве арбитражного управляющего"></form:input>
            <form:errors path="arbitr_start_work_date"></form:errors>
        </div>
    </spring:bind>

</div>


<div style="width: 1080px;position: absolute;top:590px">

    <spring:bind path="count_of_works">

        <div class="form-arbitr21 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="count_of_works" class="form-control" placeholder="Общее число назначений по процедурам банкротства за последние 3 года"></form:input>
            <form:errors path="count_of_works"></form:errors>
        </div>
    </spring:bind>


    <spring:bind path="temp_manager_count">

        <div class="form-arbitr22 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="temp_manager_count" class="form-control" placeholder="Количество назначений в качестве временного управляющего"></form:input>
            <form:errors path="temp_manager_count"></form:errors>
        </div>
    </spring:bind>


    <spring:bind path="admin_manager_count">

        <div class="form-arbitr23 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="admin_manager_count" class="form-control" placeholder="Количество назначений в качестве административного управляющего"></form:input>
            <form:errors path="admin_manager_count"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="outdoor_manager_count">

        <div class="form-arbitr24 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="outdoor_manager_count" class="form-control" placeholder="Количество назначений в качестве внешнего управляющего"></form:input>
            <form:errors path="outdoor_manager_count"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="tender_manager_count">

        <div class="form-arbitr25 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="tender_manager_count" class="form-control" placeholder="Количество назначений в качестве конкурсного управляющего"></form:input>
            <form:errors path="tender_manager_count"></form:errors>
        </div>
    </spring:bind>

</div>


<div style="width: 1080px;position: absolute;top:660px">


   <spring:bind path="bankrot_company_name">

       <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
            <form:input type="date" path="bankrot_company_name" class="form-control" placeholder="Банкрот наименование предприятия"></form:input>
            <form:errors path="bankrot_company_name"></form:errors>
        </div>
    </spring:bind>


    <spring:bind path="bankrot_company_address">

        <div class="form-arbitr26 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="bankrot_company_address" class="form-control" placeholder="Банкрот адрес предприятия"></form:input>
            <form:errors path="bankrot_company_address"></form:errors>
        </div>
    </spring:bind>


    <spring:bind path="bankrot_company_case_number">

        <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="bankrot_company_case_number" class="form-control" placeholder="Банкрот номер дела"></form:input>
            <form:errors path="bankrot_company_case_number"></form:errors>
        </div>
    </spring:bind>


    <spring:bind path="bankrot_procedure_type">

        <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="bankrot_procedure_type" class="form-control" placeholder="Банкрот вид процедуры банкротства"></form:input>
            <form:errors path="bankrot_procedure_type"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="bankrot_start_date_manage">

        <div class="form-arbitr26 ${status.error ? 'has-error' : ''}">
            <form:input id="datepicker4"  type="text" path="bankrot_start_date_manage" class="form-control" placeholder="Банкрот срок управления банкротством с..."></form:input>
            <form:errors path="bankrot_start_date_manage"></form:errors>
        </div>
    </spring:bind>

    <spring:bind path="bankrot_end_date_manage">

        <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
            <form:input id="datepicker5"  type="text" path="bankrot_end_date_manage" class="form-control" placeholder="Банкрот срок управления банкротством по..."></form:input>
            <form:errors path="bankrot_end_date_manage"></form:errors>
        </div>
    </spring:bind>
</div>


        <div style="width: 1080px;position: absolute;top:660px">

            <spring:bind path="complete_procedure_temp_manager">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="complete_procedure_temp_manager" class="form-control"
                                placeholder="Количество завершённых процедур в качестве временного управляющего"></form:input>
                    <form:errors path="complete_procedure_temp_manager"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="complete_procedure_admin_manager">
                <div class="form-arbitr26 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="complete_procedure_admin_manager" class="form-control"
                                placeholder="Количество завершённых процедур в качестве административного управляющего"></form:input>
                    <form:errors path="complete_procedure_admin_manager"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="complete_procedure_outdoor_manager">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="complete_procedure_outdoor_manager" class="form-control"
                                placeholder="Количество завершённых процедур в качестве внешнего управляющего"></form:input>
                    <form:errors path="complete_procedure_outdoor_manager"></form:errors>
                </div>
            </spring:bind>


            <spring:bind path="complete_procedure_tender_manager">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="complete_procedure_tender_manager" class="form-control"
                                placeholder="Количество завершённых процедур в качестве конкурсного управляющего"></form:input>
                    <form:errors path="complete_procedure_tender_manager"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="count_of_amicable_agreement_temp_manager">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="count_of_amicable_agreement_temp_manager" class="form-control"
                                placeholder="Общее количество заключенных мировых соглашений в качестве временного управляющего"></form:input>
                    <form:errors path="count_of_amicable_agreement_temp_manager"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="count_of_amicable_agreement_admin_manager">
                <div class="form-arbitr26 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="count_of_amicable_agreement_admin_manager" class="form-control"
                                placeholder="Общее количество заключенных мировых соглашений в качестве административного управляющего"></form:input>
                    <form:errors path="count_of_amicable_agreement_admin_manager"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="count_of_amicable_agreement_outdoor_manager">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="count_of_amicable_agreement_outdoor_manager" class="form-control"
                                placeholder="Общее количество заключенных мировых соглашений в качестве внешнего управляющего"></form:input>
                    <form:errors path="count_of_amicable_agreement_outdoor_manager"></form:errors>
                </div>
            </spring:bind>


            <spring:bind path="count_of_amicable_agreement_tender_manager">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="complete_procedure_tender_manager" class="form-control"
                                placeholder="Общее количество заключенных мировых соглашений в качестве конкурсного управляющего"></form:input>
                    <form:errors path="complete_procedure_tender_manager"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="is_violation_discharge_of_manager">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="is_violation_discharge_of_manager" class="form-control"
                                placeholder="Отстранение от исполнения
обязанностей в деле о банкротстве да\нет"></form:input>
                    <form:errors path="is_violation_discharge_of_manager"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="violation_discharge_of_manager_detailed">
                <div class="form-arbitr26 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="violation_discharge_of_manager_detailed" class="form-control"
                                placeholder="Отстранение от исполнения
обязанностей в деле о банкротстве в связи с: подробно"></form:input>
                    <form:errors path="violation_discharge_of_manager_detailed"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="is_violation_law_manager">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="is_violation_law_manager" class="form-control"
                                placeholder="Укажите, применялись ли к Вам за истекший год меры ответственности, да\нет"></form:input>
                    <form:errors path="is_violation_law_manager"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="violation_law_manager_detailed">
                <div class="form-arbitr26 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="violation_law_manager_detailed" class="form-control"
                                placeholder="Укажите, применялись ли к Вам за истекший год меры ответственности, подробно"></form:input>
                    <form:errors path="violation_law_manager_detailed"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="is_violation_requirement_compensation_harm_manager">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="is_violation_requirement_compensation_harm_manager" class="form-control"
                                placeholder="Предъявлялись ли требования о возмещении вреда"></form:input>
                    <form:errors path="is_violation_requirement_compensation_harm_manager"></form:errors>
                </div>
            </spring:bind>


            <spring:bind path="violation_requirement_compensation_harm_manager_detailed">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="violation_requirement_compensation_harm_manager_detailed" class="form-control"
                                placeholder="Предъявлялись ли требования о возмещении вреда подробно"></form:input>
                    <form:errors path="violation_requirement_compensation_harm_manager_detailed"></form:errors>
                </div>
            </spring:bind>





            <spring:bind path="is_violation_pending_complaints">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="is_violation_pending_complaints" class="form-control"
                                placeholder="Имеются ли нерассмотренные жалобы на ненадлежащее исполнение Вами своих обязанностей да\нет"></form:input>
                    <form:errors path="is_violation_pending_complaints"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="violation_pending_complaints_detailed">
                <div class="form-arbitr26 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="violation_pending_complaints_detailed" class="form-control"
                                placeholder="Имеются ли нерассмотренные жалобы на ненадлежащее исполнение Вами своих обязанностей подробно"></form:input>
                    <form:errors path="violation_pending_complaints_detailed"></form:errors>
                </div>
            </spring:bind>



            <spring:bind path="is_violation_complaints_considered">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="is_violation_complaints_considered" class="form-control"
                                placeholder="Имеются ли рассмотренные жалобы на ненадлежащее исполнение Вами своих обязанностей, да\нет"></form:input>
                    <form:errors path="is_violation_complaints_considered"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="violation_complaints_considered_detailed">
                <div class="form-arbitr26 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="violation_complaints_considered_detailed" class="form-control"
                                placeholder="Имеются ли рассмотренные жалобы на ненадлежащее исполнение Вами своих обязанностей, подробно"></form:input>
                    <form:errors path="violation_complaints_considered_detailed"></form:errors>
                </div>
            </spring:bind>



            <spring:bind path="is_violation_intresting_information">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="is_violation_intresting_information" class="form-control"
                                placeholder="Имеется ли у Вас информация любого рода о каких-либо обстоятельствах, которые привели или могут
привести к предъявлению иска, претензии, требования о возмещении вреда к арбитражному управляющему в связи
со страхуемой деятельностью?"></form:input>
                    <form:errors path="is_violation_intresting_information"></form:errors>
                </div>
            </spring:bind>


            <spring:bind path="violation_intresting_information_detailed">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="violation_intresting_information_detailed" class="form-control"
                                placeholder="Имеется ли у Вас информация любого рода о каких-либо обстоятельствах, которые привели или могут
привести к предъявлению иска, претензии, требования о возмещении вреда к арбитражному управляющему в связи
со страхуемой деятельностью подробно"></form:input>
                    <form:errors path="violation_intresting_information_detailed"></form:errors>
                </div>
            </spring:bind>

        </div>


        <div style="width: 1080px;position: absolute;top:660px">

            <spring:bind path="is_insurance_before">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="is_insurance_before" class="form-control"
                                placeholder="Страховали ли Вы ранее гражданскую ответственность арбитражного управляющего?"></form:input>
                    <form:errors path="is_insurance_before"></form:errors>
                </div>
            </spring:bind>


            <spring:bind path="insurance_before_company_name">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="insurance_before_company_name" class="form-control"
                                placeholder="Страховщик"></form:input>
                    <form:errors path="insurance_before_company_name"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="insurance_before_summa">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="insurance_before_summa" class="form-control"
                                placeholder="Страховая сумма"></form:input>
                    <form:errors path="insurance_before_summa"></form:errors>
                </div>
            </spring:bind>
            <spring:bind path="insurance_before_start_date">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input id="datepicker6"  type="text" path="insurance_before_start_date" class="form-control"
                                placeholder="Период действия договора
страхования с..."></form:input>
                    <form:errors path="insurance_before_start_date"></form:errors>
                </div>
            </spring:bind>
            <spring:bind path="insurance_before_end_date">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input id="datepicker7"  type="text" path="insurance_before_end_date" class="form-control"
                                placeholder="Период действия договора
страхования по..."></form:input>
                    <form:errors path="insurance_before_end_date"></form:errors>
                </div>
            </spring:bind>
            <spring:bind path="insurance_before_compensation">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="insurance_before_compensation" class="form-control"
                                placeholder="Размер выплаченного страхового возмещения по договору страхования"></form:input>
                    <form:errors path="insurance_before_compensation"></form:errors>
                </div>
            </spring:bind>

        </div>

        <div style="width: 1080px;position: absolute;top:660px">

            <spring:bind path="is_insurance_current">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="is_insurance_current" class="form-control"
                                placeholder="Страховали ли Вы ранее гражданскую ответственность арбитражного управляющего?"></form:input>
                    <form:errors path="is_insurance_current"></form:errors>
                </div>
            </spring:bind>


            <spring:bind path="insurance_current_company_name">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="insurance_current_company_name" class="form-control"
                                placeholder="Страховщик"></form:input>
                    <form:errors path="insurance_current_company_name"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="insurance_current_summa">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="insurance_current_summa" class="form-control"
                                placeholder="Страховая сумма"></form:input>
                    <form:errors path="insurance_current_summa"></form:errors>
                </div>
            </spring:bind>
            <spring:bind path="insurance_current_start_date">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input id="datepicker8"  type="text" path="insurance_current_start_date" class="form-control"
                                placeholder="Период действия договора страхования с..."></form:input>
                    <form:errors path="insurance_current_start_date"></form:errors>
                </div>
            </spring:bind>
            <spring:bind path="insurance_current_end_date">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input id="datepicker9" type="text" path="insurance_current_end_date" class="form-control"
                                placeholder="Период действия договора страхования по..."></form:input>
                    <form:errors path="insurance_current_end_date"></form:errors>
                </div>
            </spring:bind>


        </div>

        <div style="width: 1080px;position: absolute;top:660px">

            <spring:bind path="insurance_conditions_summa">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="insurance_conditions_summa" class="form-control"
                                placeholder="Страховая сумма"></form:input>
                    <form:errors path="insurance_conditions_summa"></form:errors>
                </div>
            </spring:bind>


            <spring:bind path="insurance_conditions_start_date">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input id="datepicker10" type="text" path="insurance_conditions_start_date" class="form-control"
                                placeholder="Период действия договора страхования с..."></form:input>
                    <form:errors path="insurance_conditions_start_date"></form:errors>
                </div>
            </spring:bind>


            <spring:bind path="insurance_conditions_end_date">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input id="datepicker11" type="text" path="insurance_conditions_end_date" class="form-control"
                                placeholder="Период действия договора страхования по..."></form:input>
                    <form:errors path="insurance_conditions_end_date"></form:errors>
                </div>
            </spring:bind>


        </div>

        <div style="width: 1080px;position: absolute;top:660px">


            <spring:bind path="is_foreign_agent">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="is_foreign_agent" class="form-control"
                                placeholder="Являетесь ли вы иностранным публичным должностным лицом или его близким"></form:input>
                    <form:errors path="is_foreign_agent"></form:errors>
                </div>
            </spring:bind>
            <spring:bind path="is_international_agent">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="is_international_agent" class="form-control"
                                placeholder="Являетесь ли вы международным публичным должностным лицом или его близким"></form:input>
                    <form:errors path="is_international_agent"></form:errors>
                </div>
            </spring:bind>
            <spring:bind path="is_russian_agent">
                <div class="form-arbitr27 ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="is_russian_agent" class="form-control"
                                placeholder="Являетесь ли вы российским публичным должностным лицом или его близким"></form:input>
                    <form:errors path="is_russian_agent"></form:errors>
                </div>
            </spring:bind>






            <span><button class="btn-place btn btn-lg btn-primary btn-block" type="submit">Рассчитать</button></span>

        <span><button class="btn-place2 btn btn-lg btn-primary btn-block" type="submit">Оформить договор</button></span>
    </form:form>

</div>


<!-- /container -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
-->
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
