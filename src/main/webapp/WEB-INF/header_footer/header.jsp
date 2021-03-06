<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Đăng nhập</title>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>
    <div id="header">
        <div class="top_header">
            <div id="container">
	            <div class="mainlogo">
	
	                <div class="block banner " id="banner_mainlogo"><div class="blockcontent"><a href="<%= request.getContextPath() %>/home" title="Logo chính" target="_self"><img src="https://tse3.mm.bing.net/th?id=OIP.eyuUWTQEf-54LkFuUahQaQHaHa&pid=Api&P=0&w=300&h=300" border="0" title="Logo chính" width="80" height="44"></a></div></div>
	
	            </div>
                <div class="rightheader">
                    <div class="search">
                        <form action="<%=request.getContextPath() %>/filter-book" onsubmit="return checksearch();" method="get">
                            <table width="100%" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td class="input" width="100%">
                                        <input type="text" value="" name="q" id="keyword" size="10"
                                            class="inputfield" title="Tìm" autocomplete="off" onfocus="clearText(this)"
                                            onblur="clearText(this)" />
                                    </td>
                                    <td class="search-submit" nowrap="nowrap" width="40">
                                        <input type="submit" value="Tìm" alt="Tìm">
                                    </td>
                                </tr>
                            </table>
                        </form>
                        <div class="autocomplete" id="autocomplete"></div>
                    </div>
                    <c:if test="${customer != null }">
	                    <div class="shoptool">
	                        <ul class="right_topbar">
	                            <li>
	                         
	                            	<div class="textlable" title="Giỏ hàng">
	                                    <a class="btn_login" style="color:white" href="<%= request.getContextPath() %>/cart">Giỏ hàng</a>
	                                </div>
	                                </li>
	                             <li>
	                                <div class="textlable" title="Tài khoản của bạn">
	                                    <c:out value="${customer.fullName.firstName }"></c:out>
	                                </div>
	                                
	                                <div class="subcontent">
	                                    <div class="buttom">
	                                        <div><a class="btn_login" href="<%= request.getContextPath() %>/profile">Chỉnh sửa thông tin</a></div>
	                                    </div>
	                                    <div class="buttom">
	                                        <div><a class="btn_login" href="<%= request.getContextPath() %>/orderHistory">Lịch sử mua hàng</a></div>
	                                    </div>
	                                    <div class="buttom">
	                                        <div><a class="btn_login" href="<%= request.getContextPath() %>/login">Đăng xuất</a></div>
	                                    </div>
	                                </div>
	                            </li>
	                        </ul>
	                    </div>
                    </c:if>
                    <c:if test="${customer == null }">
	                    <div class="shoptool">
	                        <ul class="right_topbar">
	                            <li>
	                                <div class="textlable" title="Đăng nhập">
	                                    <a class="btn_login" href="<%= request.getContextPath() %>/login">Đăng nhập</a>
	                                </div>
	                            </li>
	                             <li>
                                <div class="textlable" title="Đăng ký">
                                    <a class="btn_login" href="<%= request.getContextPath() %>/register">Đăng ký</a>
                                </div>
                            </li>
	                        </ul>
	                    </div>
                    </c:if>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</body>
</html>