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
    <div id="container">
        <div class="sortable" id="layoutGroup1">
            <div class="product_view_contener">
                <div class="showleft">
                    <div class="product_info">
                        	<h1><c:out value="${bookItem.book.title }" /></h1>                                             
                        	<div class="groups">
                            	<div class="viewfields">
                                	<span>Tác giả: <a href="/thuong-hieu/1585/mac-huong-dong-khuu.html"
                                        title="Mặc Hương Đồng Khứu"><c:out value="${bookItem.book.author.name }" /></a></span> <span>Nhà xuất bản: <a
                                        href="/thuong-hieu/36/cam-phong.html" title="Cẩm Phong"><c:out value="${bookItem.book.publisher.name }" /></a></span>
                            	</div>
                        		<div class="clear"></div>
                        	</div>
                        	<div class="prices_contener">
                            	<div class="prices">
                                	<div class="saleprice">
                                    	<span id="saleprice"><c:out value="${Math.round(bookItem.priceCurrent * (1 - bookItem.discount)) }" /> đ</span>
                                	</div>
                                	<div class="vrootprice" id="rootprice"></span></div>
                            	</div>
                            <div class="goshop">
                                <a href="<%= request.getContextPath() %>/cart?bookId=<c:out value="${bookItem.id }" />" style = "color: #fff;">Mua ngay</a>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="intro">
                            <div class="block " id="content_ViewProducts">
                                <div class="blockcontent">
                                    <p><span style="font-size:14px;">Bọc Plastic miễn phí </span></p>
                                    <p><span style="font-size:14px;">Giao hàng miễn phí trong nội thành TP. HCM với đơn hàng</p>
                                    <p><span style="font-size:14px;">Giao hàng miễn phí toàn quốc với đơn hàng</p>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="image_contenner">
                    <div class="mainimage">
                        <img src="<c:out value="${ bookItem.image}"/>" alt="Thiên Quan Tứ Phúc - Tập 4  ( kèm bookmak)" id="mainimage"
                            width="250" data-pagespeed-url-hash="2834330872"
                            onload="pagespeed.CriticalImages.checkImageForCriticality(this);" />
                    </div>
                    <div class="subthums" id="gallery_01"></div>
                </div>
                <div class="clear"></div>
                <input type="hidden" name="formatid" id="formatid" value="" />
                <input type="hidden" name="sizeid" id="sizeid" value="" />
                <input type="hidden" name="colorid" id="colorid" value="" />
            </div>
            <!-- Giới thiệu sách -->
            <div class="block" id="module_ProductDetail">
                <h3>Giới thiệu sách và tác giả</h3>
                <div class="intro" id="contentid">
                    	<p><span style="color:#ff0000;"><span style="font-size:16px;"><c:out value="${bookItem.book.title }" /></span></span></p>
                    	<p><c:out value="${bookItem.book.description }" /></p>
                    	<p><span style="color:#ff0000;"><span style="font-size:16px;"><c:out value="${bookItem.book.author.name }" /></span></span></p>
                    	<p><c:out value="${bookItem.book.author.bio }" /></p>
                </div>
            </div>
            <script>var contentid = $('#contentid'); var hieght = contentid.height(); $('#viewmore').hide(); if (hieght > 400) { contentid.addClass('collapse'); $('#viewmore').show(); } $('.viewmore').click(function () { if (contentid.hasClass('collapse')) { contentid.removeClass('collapse'); $('#viewmore span').empty(); $('#viewmore span').append('Thu gọn <i class="fa fa-sort-asc"></i>'); } else { contentid.addClass('collapse'); $('#viewmore span').empty(); $('#viewmore span').append('Xem thêm nội dung <i class="fa fa-sort-desc"></i>'); } });</script>
            <div class="block" id="module_ProductFieds">
                <a name="fieldlist"></a>
                <h3>Thông tin chi tiết</h3>
                <table class="fields" cellpadding="0" cellspacing="0" width="100%">
                    <tr class="field_view_contenner row0">
                        <td class="title">
                            <a href="/products/groupfield/1/tac-gia.html" title="Tác giả"><c:out value="${bookItem.book.title }" /></a>
                        </td>
                        <td class="values">
                            <a href="/thuong-hieu/1585/mac-huong-dong-khuu.html" title="Mặc Hương Đồng Khứu"><c:out value="${bookItem.book.author.name }" /></a>
                        </td>
                    </tr>
                    <tr class="field_view_contenner row1">
                        <td class="title">
                            <a href="/products/groupfield/4/nxb.html" title="NXB">NXB</a>
                        </td>
                        <td class="values">
                            <c:out value="${bookItem.book.publisher.name }" />
                        </td>
                    </tr>
                    <tr class="field_view_contenner row0">
                        <td class="title">
                            Nơi xuất bản
                        </td>
                        <td class="values">
                            <c:out value="${bookItem.book.publisher.address }" />
                        </td>
                    </tr>
                    <tr class="field_view_contenner row1">
                        <td class="title">
                            Số trang
                        </td>
                        <td class="values">
                            <c:out value="${bookItem.book.numberOfPage }" />
                        </td>
                    </tr>
                    <tr class="field_view_contenner row0">
                        <td class="title">
                            Danh mục
                        </td>
                        <td class="values">
                            <a href="/danh-muc/14/tieu-thuyet-dam-my.html" title="Tiểu thuyết đam mỹ"><c:out value="${bookItem.book.category.name }" /></a>
                        </td>
                    </tr>
                </table>
                <div class="goshop cfields">
                    <a href="<%= request.getContextPath() %>/cart?bookId=<c:out value="${bookItem.id }" />" style = "color: #fff;">Mua ngay</a>
                </div>
            </div>
            <%@include file="../header_footer/footer.jsp"%>
</body>
</html>