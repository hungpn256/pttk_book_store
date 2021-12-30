<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Website Mua Sách Online Được Yêu Thích Nhất</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="Copyright" content="Design A web.">
    <link rel="shortcut icon" href="https://nobita.vn/layouts/fontpage/images/favicon.ico" />
    <link type="text/css" href="https://nobita.vn/layouts/fontpage/css/font-awesome.min.css" rel="stylesheet" />
    <link type="text/css" href="https://nobita.vn/layouts/fontpage/css/styles.resolution.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://nobita.vn/layouts/system/css/boxy.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="https://nobita.vn/layouts/fontpage/css/responsive.css"
        rel="stylesheet" />
    <script type="text/javascript" src="https://nobita.vn/layouts/system/js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="https://nobita.vn/layouts/system/js/common.js"></script>
    <script type='text/javascript' src='https://nobita.vn/layouts/system/js/jquery.boxy.js'></script>
    <script type="text/javascript">var app = '';</script>
    <style><%@include file="./style.css"%></style>
</head>
<body>
<%@include file="../header_footer/header.jsp"%>
	<div id="header">
        <div id="mainmenu">
            <div id="container">
                <div class="mainmenu_contener">
                    <div class="mainmenu">
                        <span class="while"></span>
                        <span>
                            <h2>Danh mục sản phẩm</h2>
                        </span>
                        <ul class="submenu0" id="submenu0">
                        <c:forEach var="category" items="${categories}">
                        	<li><a href="<%= request.getContextPath() %>/filter-book?id=<c:out value="${category.id }" />" class="havechild" 8 target="_self"><c:out value="${category.name }" /></a></li>
                        </c:forEach>
                        </ul>
                    </div>
                    <div class="hotline">
                        <strong><span style="color:#000000;"><span
                                    style="font-size:14px;">Hotline:&nbsp;</span></span></strong>
                        <span style="color:#ff0000;"><b
                                style="box-sizing: border-box; color: rgb(0, 204, 102); font-family: Verdana, Arial, Helvetica, sans-serif;">0938
                                424 289</b></span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>$(document).ready(function () { $('.mainmenu-mb #submenu0 li').on('click', function () { $('.mainmenu-mb #submenu0 li').removeClass('active'); $(this).addClass('active'); }); $('.search-mb i').on('click', function () { $("#header .top_header .rightheader .search").removeClass('show'); $("#header .top_header .rightheader .search").addClass('show'); }); });</script>
    <link rel="stylesheet" href="https://nobita.vn/layouts/fontpage/css/jquery.bxslider.css" type="text/css" />
    <script type="text/javascript" src="https://nobita.vn/layouts/fontpage/js/jquery.bxslider.js"></script>
    <script
        type="text/javascript">$(window).load(function () { $('.bxslider').bxSlider({ auto: true, infiniteLoop: true }); });</script>
    <!-- slider -->
    <div id="container">
        <div id="mainbanner">
            <div class="mainbaner">
                <div id="slider-wrapper">
                    <ul class="bxslider">
                        <li><a href="#" target="_self"><img height="397" src="https://salt.tikicdn.com/cache/w1080/ts/banner/bd/2e/02/104e3d47aeb3adccd2bcef0a1abe9056.png.webp" title="SCI FULL"></a>
                        </li>
                        <li><a href="#" target="_self"><img height="397" src="https://salt.tikicdn.com/cache/w1080/ts/banner/36/7a/a7/f91940ba4ff1eda8ed00c3576f3930b2.jpg.webp"
                                    title="The Vi Thuong"></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Product -->
        <div class="sortable" id="layoutGroup1">
            <div class="block" id="module_newbook">
                <h2>
                	<a class="title" href="#" title="Sách mới">Sách mới<span class="b-main__category-arrow"></span></a>
                   	<a class="more" href="#" title="Xem tất cả">Xem tất cả</a> 	
                </h2>
                <div class="blockcontent">
                    <div class="newproducts" style="position:relative; padding:0 20px; overflow:hidden; height:340px;">
                        <div id="ajaxncontainer">
                        	<c:forEach var="bookItem" items="${bis}">
                        		<div class="product_contener" style="width:19%">
                                <div class="products">
                                    <div class="image"><a href="<%= request.getContextPath() %>/book-detail?id=<c:out value="${bookItem.id }" />"
                                            title="Thiên Quan Tứ Phúc - Tập 4  ( kèm bookmak)"><img style="object-fit: cover" src="<c:out value="${ bookItem.image}"/>"
                                                alt="#" title="Thiên Quan Tứ Phúc - Tập 4  ( kèm bookmak)" /></a></div>
                                    <div class="productname">
                                        <a href="<%= request.getContextPath() %>/book-detail?id=<c:out value="${bookItem.id }" />" title="Thiên Quan Tứ Phúc - Tập 4  ( kèm bookmak)">
                                        <c:out value="${bookItem.book.title }" />
                                        </a>
                                    </div>
                                    <div class="prices"><c:out value="${Math.round(bookItem.priceCurrent * (1 - bookItem.discount)) }" /> đ</div>
                                    <c:if test="${bookItem.discount > 0 }">
                                    	<div class="rootprice"><c:out value="${Math.round(bookItem.priceCurrent) }" />đ</div>
                                    </c:if>
                                </div>
                            </div>
                        	</c:forEach>
                           </div>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="block" id="module_cheap">
                    <h2>
                        <a class="title" href="#" title="Giá thấp">Giá thấp<span class="b-main__category-arrow"></span></a>
                        <a class="more" href="#" title="Xem tất cả">Xem tất cả</a>
                    </h2>
                    <div class="blockcontent">
                        <div class="publishing"
                            style="position:relative; padding:0 20px; overflow:hidden; height:340px;">
                            <div id="ajaxncontainer">
                              <c:forEach var="bookItem" items="${bookCheaps}">
                        		<div class="product_contener" style="width:19%">
                                <div class="products">
                                    <div class="image"><a href="<%= request.getContextPath() %>/book-detail?id=<c:out value="${bookItem.id }" />"
                                            title="Thiên Quan Tứ Phúc - Tập 4  ( kèm bookmak)"><img style="object-fit: cover" src="<c:out value="${ bookItem.image}"/>"
                                                alt="#" title="Thiên Quan Tứ Phúc - Tập 4  ( kèm bookmak)" /></a></div>
                                    <div class="productname">
                                        <a href="<%= request.getContextPath() %>/book-detail?id=<c:out value="${bookItem.id }" />" title="Thiên Quan Tứ Phúc - Tập 4  ( kèm bookmak)"><c:out value="${bookItem.book.title }" /></a>
                                    </div>
                                    <div class="prices"><c:out value="${Math.round(bookItem.priceCurrent * (1 - bookItem.discount)) }" /> đ</div>
                                    <c:if test="${bookItem.discount > 0 }">
                                    	<div class="rootprice"><c:out value="${Math.round(bookItem.priceCurrent) }" />đ</div>
                                    </c:if>
                                </div>
                            </div>
                        	</c:forEach>
                        </div>
                    </div>
                    <div class="block" id="module_expensive">
                        <h2>
                            <a class="title" href="#" title="Giá cao">Giá cao<span class="b-main__category-arrow"></span></a>
                            <a class="more" href="#" title="Xem tất cả">Xem tất cả</a>
                        </h2>
                        <div class="blockcontent">
                            <div class="bestseller"
                                style="position:relative; padding:0 20px; overflow:hidden; height:340px;">
                                <div id="bajaxcontainer">
                                	<c:forEach var="bookItem" items="${bookExpensives}">
                        				<div class="product_contener" style="width:19%">
                                			<div class="products">
                                    			<div class="image"><a href="<%= request.getContextPath() %>/book-detail?id=<c:out value="${bookItem.id }" />"
                                            		title="Thiên Quan Tứ Phúc - Tập 4  ( kèm bookmak)"><img style="object-fit: cover" src="<c:out value="${ bookItem.image}"/>"
                                                	alt="#" title="Thiên Quan Tứ Phúc - Tập 4  ( kèm bookmak)" /></a></div>
                                    		<div class="productname">
                                        			<a href="<%= request.getContextPath() %>/book-detail?id=<c:out value="${bookItem.id }" />" title="Thiên Quan Tứ Phúc - Tập 4  ( kèm bookmak)"><c:out value="${bookItem.book.title }" /></a>
                                    		</div>
                                    		<div class="prices"><c:out value="${Math.round(bookItem.priceCurrent * (1 - bookItem.discount)) }" /> đ</div>
                                    		<c:if test="${bookItem.discount > 0 }">
                                    			<div class="rootprice"><c:out value="${Math.round(bookItem.priceCurrent) }" />đ</div>
                                    		</c:if>
                                			</div>
                            			</div>
                        			</c:forEach>
                                </div>
                            </div>
                        </div>
                        <div class="block" id="module_topcategories">
                            <h2>
                                <a class="title" href="<%= request.getContextPath() %>/filter-book" title="Danh mục">Danh mục<span class="b-main__category-arrow"></span></a>
                                <a class="more" href="<%= request.getContextPath() %>/filter-book" title="Xem tất cả">Xem tất cả</a>
                            </h2>
                            <div class="blockcontent">
                                <div style="position:relative; padding:0; overflow:hidden; margin-left:-4%">
                                <c:forEach var="category" items="${categories}">
                                	<div class="category_contener">
                                        <div class="categories">
                                            <div class="image"><a href="<%= request.getContextPath() %>/filter-book?id=<c:out value="${category.id }" />" title=""><img style="object-fit: cover"
                                                        src="<c:out value="${ category.image}"/>" alt="" title="" /></a>
                                            </div>
                                            <div class="catname">
                                                <a href="/danh-muc/1/sach-kinh-te.html" title=""><c:out value="${ category.name}"></c:out></a>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                                <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                        <%@include file="../header_footer/footer.jsp"%>
</body>
</html>