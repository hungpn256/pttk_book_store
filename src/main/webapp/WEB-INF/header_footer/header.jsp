<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Đăng nhập</title>
    <style><%@include file="./style.css"%></style>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>
    <div id="header">
        <div class="top_header">
            <div id="container">
                <div class="rightheader">
                    <div class="search">
                        <form action="/products/search/index.html" onsubmit="return checksearch();" method="get">
                            <table width="100%" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td class="input" width="100%">
                                        <input type="text" value="" name="keyword" id="keyword" size="10"
                                            class="inputfield" title="Tìm" autocomplete="off" onfocus="clearText(this)"
                                            onblur="clearText(this)" />
                                    </td>
                                    <td class="search-submit" nowrap="nowrap" width="40">
                                        <input type="submit" value="Tìm" alt="Tìm">
                                        <input type="hidden" name="productid" id="productid" value="0" />
                                    </td>
                                </tr>
                            </table>
                        </form>
                        <div class="autocomplete" id="autocomplete"></div>
                    </div>
                    <div class="shoptool">
                        <ul class="right_topbar">
                            <li>
                                <div class="textlable" title="Tài khoản của bạn">
                                    Tên tài khoản<i class="fa fa-sort-desc"></i>
                                </div>
                                <div class="subcontent">
                                    <div class="buttom">
                                        <div><a class="btn_login" href="<%= request.getContextPath() %>/profile">Chỉnh sửa thông tin</a></div>
                                    </div>
                                    <div class="buttom">
                                        <div><a class="btn_login" href="">Đăng xuất</a></div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="shoptool">
                        <ul class="right_topbar">
                            <li>
                                <div class="textlable" title="Đăng nhập">
                                    <a class="btn_login" href="<%= request.getContextPath() %>/login">Đăng nhập</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="shoptool">
                        <ul class="right_topbar">
                            <li>
                                <div class="textlable" title="Đăng ký">
                                    <a class="btn_login" href="<%= request.getContextPath() %>/register">Đăng ký</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                    
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</body>
</html>