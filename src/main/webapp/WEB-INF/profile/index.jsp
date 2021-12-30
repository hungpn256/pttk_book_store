<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
	<title>Thông tin cá nhân</title>
	<script type="text/javascript" src="https://nobita.vn/layouts/system/js/jquery-1.8.2.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	<script type="text/javascript" src="https://nobita.vn/layouts/system/js/common.js"></script>
	<script type='text/javascript' src='https://nobita.vn/layouts/system/js/jquery.boxy.js'></script>
	<script type="text/javascript">var app='';</script>
    <style><%@include file="./style.css"%></style>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
		
<body>
<%@include file="../header_footer/header.jsp"%>
<div id="container">
	<div class="pathway"><ul><li><a href="<%= request.getContextPath() %>/home" title="Trang chủ">Trang chủ</a></li><li>Thông tin cá nhân</li></ul></div>
</div>
<div class="clear"></div>
    <div id="container">
        <div class="sortable" id="layoutGroup1">
            <div class="block" id="module_Register">
	<div class="blockcontent">
    	<div class="loginsocial">
        	<h3>Chỉnh sửa thông tin cá nhân</h3>
        </div>
		<div class="registerform">
			<form method="post" name="rgt" id="rgt" action="<%= request.getContextPath() %>/profile" onSubmit="return ValidateForm(CheckForm);">
                <div class="field">
                    <div class="textlabel">
                        <label for="idpassword">Mật khẩu cũ</label> <span class="Required">*</span>:
                    </div>
                        <input autocomplete="off" onfocus="showhelp(2)" onblur="fonblur(2)" id="idpassword" type="password" name="passwordOld"/>
                 </div>
                <div class="field">
                    <div class="textlabel">
                        <label for="idpassword">Mật khẩu mới</label> <span class="Required">*</span>:
                    </div>
                        <input autocomplete="off" onfocus="showhelp(2)" onblur="fonblur(2)" id="idpassword" type="password" name="password"/>
                 </div>
                 <div class="field">
                    <div class="textlabel">
                        <label for="repassword">Xác nhận mật khẩu</label> <span class="Required">*</span>:
                    </div>
                        <input autocomplete="off" onfocus="showhelp(3)" onblur="fonblur(3)" id="repassword" type="password" name="repassword"/>
                 </div>
                 <div class="clear"></div>
                 <div class="field">
                    <div class="textlabel">
                        <label for="fullname">Họ</label> <span class="Required">*</span>:
                    </div>
                        <input onfocus="showhelp(4)" onblur="fonblur(4)" autocomplete="off" id="fullname" type="text" name="lastname" value='<c:out value="${customer.fullName.lastName }"></c:out>'/>
                        <span class="help" id="help4"></span>
				 </div>
				 <div class="field">
                    <div class="textlabel">
                        <label for="fullname">Tên</label> <span class="Required">*</span>:
                    </div>
                        <input onfocus="showhelp(4)" onblur="fonblur(4)" autocomplete="off" id="fullname" type="text" name="firstname" value='<c:out value="${customer.fullName.firstName }"></c:out>'/>
                        <span class="help" id="help4"></span>
				 </div>
                 <div class="field">
                    <div class="textlabel">
                        <label for="gender">Giới tính</label> <span class="Required">*</span>:
                    </div>
                        <input onfocus="showhelp(5)" onblur="fonblur(5)" autocomplete="off" id="gender" type="text" name="gender" value='<c:out value="${customer.gender }"></c:out>'/>
                        <span class="help" id="help5"></span>
                 </div>
                 <div class="field">
                    <div class="textlabel">
                        <label for="telephone">Điện thoại</label> <span class="Required">*</span>:
                    </div>
                        <input onfocus="showhelp(6)" onblur="fonblur(6)" autocomplete="off" id="telephone" type="text" name="telephone" value='<c:out value="${customer.phone }"></c:out>'/>
                        <span class="help" id="help6"></span>
                 </div>
                 <div class="field">
                    <div class="textlabel">
                        <label for="city">Thành phố</label> <span class="Required">*</span>:
                    </div>
                        <input onfocus="showhelp(7)" onblur="fonblur(7)" autocomplete="off" id="city" type="text" name="city" value='<c:out value="${customer.address.city }"></c:out>'/>
                        <span class="help" id="help7"></span>
                 </div>
                 <div class="field">
                    <div class="textlabel">
                        <label for="district">Quận huyện</label> <span class="Required">*</span>:
                    </div>
                        <input onfocus="showhelp(8)" onblur="fonblur(8)" autocomplete="off" id="district" type="text" name="district" value='<c:out value="${customer.address.district }"></c:out>'/>
                        <span class="help" id="help8"></span>
                 </div>
                 <div class="field">
                    <div class="textlabel">
                        <label for="ward">Khu vực</label> <span class="Required">*</span>:
                    </div>
                        <input onfocus="showhelp(9)" onblur="fonblur(9)" autocomplete="off" id="ward" type="text" name="ward" value='<c:out value="${customer.address.ward }"></c:out>'/>
                        <span class="help" id="help9"></span>
                 </div>
                 <div class="field">
                    <div class="textlabel">
                        <label for="detail">Chi tiết</label> <span class="Required">*</span>:
                    </div>
                        <input onfocus="showhelp(9)" onblur="fonblur(9)" autocomplete="off" id="detail" type="text" name="detail" value='<c:out value="${customer.address.detail }"></c:out>'/>
                        <span class="help" id="help9"></span>
                 </div>
                 <div class="clear">&nbsp;</div>
                 	<div class="field">
                    <div class="textlabel">&nbsp;</div>
					<div style="margin-left:100px" class="g-recaptcha" data-sitekey="6LcFUikUAAAAANDfAs3P8UUIId_JIBnKNTMJdqqK"></div>
                    <span style="margin-left:100px" class="help" id="help6"></span>
                    </div>
                 <div class="clear">&nbsp;&nbsp;</div>
                  <div class="field" style="padding-left:200px">
                        <input type="submit" align="absmiddle" class="loginbuton Field200" value="Chỉnh sửa"/>
                        <input type="hidden" name="redirect" value=""/>
                        <input type="hidden" name="C47671e5b8af389f3706f05011383c1ac" value="1"/>
                 </div>
			</form>
		</div>
	</div>
</div>
       </div>
		<div class="clear"></div>
    </div>
</div>
<%@include file="../header_footer/footer.jsp"%>
</body>
</html>