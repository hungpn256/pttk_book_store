<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Website Mua Sách Online</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="Content-Script-Type" content="text/javascript" />
    <meta http-equiv="Content-Style-Type" content="text/css" />
    <meta name="Copyright" content="Design A web.">
    <link rel="shortcut icon" href="https://nobita.vn/layouts/fontpage/images/favicon.ico" />
    <link type="text/css" href="https://nobita.vn/layouts/fontpage/css/font-awesome.min.css" rel="stylesheet" />
    <link type="text/css" href="https://nobita.vn/layouts/fontpage/css/styles.resolution.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://nobita.vn/layouts/system/css/boxy.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="https://nobita.vn/layouts/fontpage/css/responsive.css"
        rel="stylesheet" />
    <script src='https://www.google.com/recaptcha/api.js'></script>
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
    <!-- Sidebar -->
    <div id="container">
        <div class="sortable" id="layoutGroup3">
            <div class="block" id="module_categories">
                <h2>Danh mục</h2>
                <div class="blockcontent">
                    <ul>
                    	<c:forEach var="category" items="${categories}">
                        	<li class="active"><a href="<%= request.getContextPath() %>/filter-book?id=<c:out value="${category.id }" />" title="Tiểu thuyết"><c:out value="${category.name }" /></a></li>
                        </c:forEach>
                    </ul>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="block" id="module_listfields">
                <div class="fields_contener">
                    <h2>Tác giả</h2>
                    <div class="blockcontent">
                        <div class="showboxfield">
                            <ul>
                            	<c:forEach var="author" items="${authors}">
                                	<a href="<%= request.getContextPath() %>/filter-book?authorid=<c:out value="${author.id }" />" title="Nguyễn Nhật Ánh">
                        				<li class="checkbox">
                                        	<c:out value="${author.name }" />
                                        	<span class="delete"></span>
                                    	</li>
                                	</a>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="fields_contener">
                    <h2>Nhà Xuất Bản</h2>
                    <div class="blockcontent">
                        <div class="showboxfield">
                            <ul>
                            	<c:forEach var="publisher" items="${publishers}">
                        			<a href="<%= request.getContextPath() %>/filter-book?publisherid=<c:out value="${publisher.id }" />" title="Bách Việt">
                                    	<li class="checkbox">
                                        	<c:out value="${publisher.name }" />
                                        	<span class="delete"></span>
                                    	</li>
                                	</a>
                        		</c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="sortable" id="layoutGroup4">
            <div class="block" id="module_listproducts">
                <h1><c:out value="${category.name }" /></h1>
                <div class="intro"></div>
                <div class="clear"></div>
                <div class="blockcontent">
                	<c:forEach var="bookItem" items="${bookItems}">
                        		<div class="product_contener" style="width:19%">
                                <div class="products">
                                    <div class="image"><a href="<%= request.getContextPath() %>/book-detail?id=<c:out value="${bookItem.id }" />"
                                            title=""><img style="object-fit: cover" src="<c:out value="${ bookItem.image}"/>"
                                                alt="#" title="" /></a></div>
                                    <div class="productname">
                                        <a href="<%= request.getContextPath() %>/book-detail?id=<c:out value="${bookItem.id }" />" title="">
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
                <div class="clear">&nbsp;</div>

                <div class="clear"></div>
                <script
                    type="text/javascript">function setOrder(ojb) { url = '/danh-muc/26/tieu-thuyet.html'; order = ojb.value; url = addQuery(url, 'ordering=' + order); document.location.href = url; }</script>
                <div class="clear"></div>
            </div>

        </div>
    </div>
    <div class="clear"></div>
    </div>
    <%@include file="../header_footer/footer.jsp"%>
</body>
</html>