<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Welcome</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

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

        <h2>Привет ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a></h2>

    </c:if>

</div>
<div id="wrapper">

    <div id="header">

        <h1 class="head_title">КАЛЬКУЛЯТОР ПО СТРАХОВАНИЮ ГРУЗОВ</h1>

        <ul class="menu_box"><li class="menu_item active"><span>Грузы</span></li><li class="menu_item"><a href="/container/"">Контейнеры</a></li><li class="menu_item"><a href="/river/"">Речные суда</a></li><li class="menu_item"><a href="/yachts/" target="blank" ">Яхты и катера</a></li></ul>		<div style="clear: both;"></div>
    </div> <!-- #header -->


    <form id="conteiner" method="POST" action="send.php">
        <div class="content content_left blk">
            <script type="text/javascript">
                var _gaq = _gaq || [];
                _gaq.push(['_setAccount', 'UA-41256600-1']);
                _gaq.push(['_setAllowLinker', true]);
                _gaq.push(['_trackPageview']);
                (function() {
                    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';
                    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
                })();
            </script>

            <h4 style="display: none;">Расчет калькулятора</h4>
            <div class="item_cargo inline clear_input_box" style="width: 60%;">
                <label for="CargoMoney">Стоимость груза:</label>
                <input id="CargoMoney" alt='p0s3p2' class="numeric" type="text" value="0" />
            </div>

            <div class="item_cargo inline" style="width: 38%;">
                <label for="Currency">Валюта:</label>
                <select id="Currency">
                    <option>РУБ</option>
                    <option>USD</option>
                    <option>EUR</option>
                </select>
            </div>

            <div id="money_error"></div>

            <div class="item_cargo">
                <label for="CargoType">Категория груза:</label>
                <select id="CargoType" multiple="multiple" class="fancy">
                    <option value='1.30'>Алкогольные напитки</option><option value='1.20'>Аудио-, видео- техника</option><option value='1.05'>Безалкогольные напитки</option><option value='1.05'>Бумага и картон</option><option value='1.20'>Бытовая техника и электроника</option><option value='1.05'>Бытовая химия</option><option value='1.30'>Запчасти и аксессуары к автомобилям (бьющиеся)</option><option value='1.05'>Запчасти и аксессуары к автомобилям (небьющиеся)</option><option value='1.10'>Зерно, семена и солод</option><option value='1.10'>Игрушки, игры и спортивный инвентарь</option><option value='1.30'>Изделия из стекла и фарфора</option><option value='1.10'>Канцелярские товары</option><option value='1.05'>Каучук, резина и изделия из них</option><option value='1.05'>Ковры и ковровые изделия</option><option value='1.05'>Кожа и изделия из кожи</option><option value='1.00'>Комбикорма, корма для животных</option><option value='1.20'>Компьютеры и комплектующие</option><option value='1.20'>Кондитерские изделия</option><option value='1.10'>Лакокрасочные материалы</option><option value='1.00'>Летательные аппараты и их части</option><option value='1.10'>Мебель</option><option value='1.05'>Медикаменты, БАДы</option><option value='1.10'>Медицинское оборудование и инструменты</option><option value='1.00'>Минеральные удобрения</option><option value='1.30'>Молочная продукция (молоко, сыр и т.п.)</option><option value='1.20'>Мотоциклы, велосипеды (только партии)</option><option value='1.10'>Музыкальные инструменты</option><option value='1.10'>Мука</option><option value='1.40'>Мясо и мясопродукты</option><option value='1.20'>Натуральный камень и изделия из него</option><option value='1.10'>Нефть и нефтепродукты</option><option value='1.00'>Оборудование и комплектующие</option><option value='1.40'>Овощи, фрукты и ягоды</option><option value='1.05'>Одежда и обувь</option><option value='1.10'>Орехи</option><option value='1.20'>Парфюмерия и косметика</option><option value='1.05'>Печатные издания и полиграфия</option><option value='1.05'>Пиломатериалы (фанера, топливные гранулы и т.п.)</option><option value='1.20'>Пищевые добавки и пряности</option><option value='1.05'>Пластмассы и изделия из них</option><option value='1.20'>Продукты питания прочие</option><option value='1.05'>Промышленная химия (неопасная)</option><option value='1.10'>Промышленная химия (опасная)</option><option value='1.40'>Рыба и морепродукты</option><option value='1.30'>Сантехника</option><option value='1.10'>Сахар</option><option value='1.10'>Смазочные материалы</option><option value='1.10'>Соль</option><option value='1.10'>Строительные и отделочные материалы</option><option value='1.00'>Суда, лодки и плавучие конструкции</option><option value='1.00'>Текстильные материалы (хлопок, пух, шерсть и т.п.)</option><option value='1.05'>Ткани, трикотаж и швейные изделия</option><option value='1.05'>Товары народного потребления</option><option value='1.30'>Точные приборы и аппаратура, оптика</option><option value='1.00'>Уголь</option><option value='1.20'>Фото- и кинотовары</option><option value='1.20'>Чай, кофе, какао</option><option value='1.00'>Черные и цветные металлы (прокат, изделия, лом)</option>
                </select>
            </div>

            <div class="item_cargo">
                <label for="CargoPacking">Упаковка груза:</label>
                <select id="CargoPacking">
                    <option value='1'>картонные коробки</option><option value='0.95'>деревянные ящики</option><option value='0.97'>мешки, биг-бэги</option><option value='0.95'>металлические бочки</option><option value='0.97'>пластиковые канистры</option><option value='1.05'>без упаковки</option><option value='1.00'>иное</option>
                </select>
            </div>

            <div class="item_cargo">
                <label for="TransportType">Вид транспорта:</label>
                <select id="TransportType">
                    <option value="auto">автомобильный</option>
                    <option value="air">авиационный</option>
                    <option value="rail">железнодорожный</option>
                    <option value="sea">морской</option>
                    <option value="multimodal">несколько видов транспорта</option>
                </select>
            </div>

            <div class="item_cargo">
                <label for="TransportMeans">Способ перевозки:</label>
                <select id="TransportMeans">
                    <option value='1'>тент</option><option value='0.98'>фургон, жд вагон</option><option value='0.85'>контейнер</option><option value='1.02'>контейнер FlatRack, мафи-трейлер</option><option value='1.05'>открытый кузов, жд платформа</option><option value='0.95'>рефрижератор</option><option value='0.9'>судовая партия</option><option value='1'>грузовой самолет</option><option value='1'>другое</option>
                </select>
            </div>

            <div class="item_cargo">
                <label for="Regim">Режим перевозки:</label>
                <select id="Regim">
                    <option>по России</option>
                    <option>экспорт</option>
                    <option>импорт</option>
                </select>
            </div>

            <div class="item_cargo clear_input_box">
                <label for="PointOut">Пункт отправления:</label>
                <input type="text" placeholder="Страна или регион РФ" autocomplete="off" id="PointOut" class="no_calc"/>
            </div>

            <div id="point_error"></div>

            <div class="item_cargo clear_input_box">
                <label for="PointIn">Пункт назначения:</label>
                <input type="text" placeholder="Страна или регион РФ" autocomplete="off" id="PointIn" class="no_calc" />
            </div>

            <div class="item_cargo">
                <label for="Risks">Cтраховые риски:</label>
                <select id="Risks">
                    <option value='1'>Все риски (п. 4.4. Правил страхования)</option><option value='0.75'>Риски частной аварии (п. 4.5. Правил страхования)</option><option value='0.5'>Риски крушения (п. 4.6. Правил страхования)</option>
                </select>
            </div>

            <div class="item_cargo">
                <label for="Franchise">Размер франшизы, %:</label>
                <select id="Franchise">
                    <option value='1.05'>0.5% от страховой суммы</option><option value='1.08'>0.25% от страховой суммы</option><option value='1.12'>без франшизы</option><option value='1'>1% от страховой суммы</option><option value='0.91'>2% от страховой суммы</option><option value='0.87'>3% от страховой суммы</option><option value='0.65'>5% от страховой суммы</option>
                </select>
            </div>		</div> <!-- .content -->

        <div class="content content_center blk">
            <h4 style="display: none;">Данные</h4>

            <div class="checkBoxContainerCargo">
                <input type="checkbox" y="1" n="1" id="isUsed" value='Бывший в употреблении'/>
                <label for="isUsed" class="inline">Бывший в употреблении</label>
            </div>

            <div class="checkBoxContainerCargo">
                <input type="checkbox" y="0.9" n="1" id="isProject" value='Негабаритный груз'/>
                <label for="isProject" class="inline">Негабаритный груз</label>
            </div>

            <div class="checkBoxContainerCargo">
                <input type="checkbox" y="0.7" n="1" id="isGuard" value='Наличие охраны и (таможенного конвоя)'/>
                <label for="isGuard" class="inline">Наличие охраны (таможенного конвоя)</label>
            </div>

            <div class="checkBoxContainerCargo">
                <input type="checkbox" y="1.05" n="1" id="isPlaces" value='Дополнительные пункты перевалки (перегрузки)' />
                <label for="isPlaces" class="inline">Дополнительные пункты перевалки (перегрузки)</label>
            </div>

            <div class="checkBoxContainerCargo">
                <input type="checkbox" y="1.15" n="1" id="isLoadWorks" value='Страхование погрузо-разгрузочных работ'/>
                <label for="isLoadWorks" class="inline">Страхование погрузо-разгрузочных работ</label>
            </div>

            <div class="checkBoxContainerCargo">
                <input type="checkbox" y="1.2" n="1" id="isRefrigerator" value='Страхование «рефрижераторных» рисков' disabled="disabled" />
                <label for="isRefrigerator" class="inline">Страхование «рефрижераторных» рисков (п. 4.11)</label>
            </div>

            <div class="checkBoxContainerCargo">
                <input type="checkbox" y="1.4" n="1" id="isTheft" value='Страхование «военных» рисков' disabled="disabled" />
                <label for="isTheft" class="inline">Страхование «военных» рисков (п. 4.12)</label>
            </div>

            <div class="checkBoxContainerCargo">
                <input type="checkbox" y="1" n="1" id="isCif" value='Страхование на 110% от инвойса (CIF/CIP)' disabled="disabled" />
                <label for="isCif" class="inline">Страхование на 110% от инвойса (CIF/CIP)</label>
            </div>

        </div> <!-- .content -->

        <div class="content content_right blk">


            <div id="aboute" style='display:none;'>
                <div>
                    <p><b>КАЛЬКУЛЯТОР ПО СТРАХОВАНИЮ ГРУЗОВ</b> - специальный проект страхового агентства.
                        При помощи калькулятора Вы можете в режиме онлайн произвести расчет стоимости страхования грузов и заказать оформление полиса.
                    </p>
                    <p><b>Шаги для получения полиса страхования:</b></p>

                    <p>1. Рассчитайте условия страхования груза (страховой тариф, страховую премию, франшизу),
                        указав в калькуляторе параметры конкретной перевозки, требующей страхования;</p>

                    <p>2. Закажите страховой полис, отправив расчет через соответствующую форму;</p>

                    <p>3. Специалист по страхованию свяжется с Вами для согласования деталей страховки;</p>

                    <p>4. Получите на электронную почту скан-копию страхового полиса и счет на оплату страховых услуг;</p>

                    <p>5. После оплаты страховой премии ориганал страхового полиса будет отправлен в Ваш адрес курьером (почтой).</p>
                </div>
            </div>

            <div class="result">
                <h4>Условия страхования груза</h4>

                <div class="item_cargo">
                    <label>Тариф (%):</label>
                    <input class="TarifPercent" id="TarifPercent" type="text" style="width: 220px; font-weight: bold" value="0" />
                </div>

                <div class="item_cargo">
                    <label>Страховая премия, <span class="Currency" style="color: inherit; font-size: inherit;">руб.</span>:</label>
                    <input class="TarifMoney numeric" id="TarifMoney" alt='p0s3p2' style="width: 220px; font-weight: bold;" type="text" value="0" />
                    <div style='font-size:10px;'>Не менее 1 тыс. руб.  (либо эквивалента в валюте)<br /><br /></div>
                </div>

                <div class="item_cargo">
                    <label style='margin-top:-24px;'>Франшиза (безусловная), <span class="Currency" style="color: inherit; font-size: inherit;">руб.</span>:</label>
                    <input class="FranchiseMoney numeric" id="FranchiseMoney" alt='p0s3p2' style="width: 220px; font-weight: bold" type="text" value="0" />
                </div>

                <button class="large red openoverlay" style='margin:30px 0 20px;' onclick="_gaq.push(['_trackEvent', 'Заказ полиса'])"/>Заказать полис</button>
            </div> <!-- .result -->		</div> <!-- .content -->

    </form> <!-- #conteiner -->

    <div id="footer">
        Для получения более подробной информации или разъяснения по расчету просьба обращаться в страховое агентство по телефону или на электронный адрес. После предоставления полной информации о перевозке, условия <i>страхования груза</i> могут измениться.
    </div> <!-- #footer -->

</div> <!-- #wrapper -->
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
