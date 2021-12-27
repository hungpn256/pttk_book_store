<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
	<title>Đăng ký</title>
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
	<div class="pathway"><ul><li><a href="<%= request.getContextPath() %>/home" title="Trang chủ">Trang chủ</a></li><li>Đăng ký</li></ul></div>
</div>
<div class="clear"></div>
    <div id="container">
        <div class="sortable" id="layoutGroup1">
            <div class="block" id="module_Register">
	<h1>
    	Đăng ký <span>hoặc</span>
        <a href="<%= request.getContextPath() %>/login" title="Đăng nhập">Đăng nhập</a>
    </h1>
	<div class="blockcontent">
    	<div class="loginsocial">
        	<h3>Vui lòng đăng ký</h3>
        </div>
		<div class="registerform">
			<form method="post" id="rgt" action="<%= request.getContextPath() %>/register" >
				 <h3>Thông tin đăng nhập</h3>
                 <div class="field">
                    <div class="textlabel">
                        <label for="idusername">Username</label> <span class="Required">*</span>:
                    </div>
					<input type="text" autocomplete="off" onfocus="showhelp(1)" onblur="cusername(this.value, 1)" onkeyup="cusername(this.value)" id="idusername" name="username" value=""/>
				 </div>
                 <div class="field">
                    <div class="textlabel">
                        <label for="idpassword">Mật khẩu</label> <span class="Required">*</span>:
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
                 <h3>Thông tin cá nhân</h3>
                 <div class="field">
                    <div class="textlabel">
                        <label for="fullname">Họ</label> <span class="Required">*</span>:
                    </div>
                        <input onfocus="showhelp(4)" onblur="fonblur(4)" autocomplete="off" type="text" name="lastname"/>
                        <span class="help" id="help4"></span>
				 </div>
				 <div class="field">
                    <div class="textlabel">
                        <label for="fullname">Tên</label> <span class="Required">*</span>:
                    </div>
                        <input onfocus="showhelp(4)" onblur="fonblur(4)" autocomplete="off" type="text" name="firstname"/>
                        <span class="help" id="help4"></span>
				 </div>
                 <div class="field">
                    <div class="textlabel">
                        <label for="gender">Giới tính</label> <span class="Required">*</span>:
                    </div>
                        <input onfocus="showhelp(5)" onblur="fonblur(5)" autocomplete="off" id="gender" type="text" name="gender"/>
                        <span class="help" id="help5"></span>
                 </div>
                 <div class="field">
                    <div class="textlabel">
                        <label for="telephone">Điện thoại</label> <span class="Required">*</span>:
                    </div>
                        <input onfocus="showhelp(6)" onblur="fonblur(6)" autocomplete="off" id="telephone" type="text" name="telephone" value=""/>
                        <span class="help" id="help6"></span>
                 </div>
                 <div class="field">
                    <div class="textlabel">
                        <label for="city">Thành phố</label> <span class="Required">*</span>:
                    </div>
                        <input onfocus="showhelp(7)" onblur="fonblur(7)" autocomplete="off" id="city" type="text" name="city"/>
                        <span class="help" id="help7"></span>
                 </div>
                 <div class="field">
                    <div class="textlabel">
                        <label for="district">Quận huyện</label> <span class="Required">*</span>:
                    </div>
                        <input onfocus="showhelp(8)" onblur="fonblur(8)" autocomplete="off" id="district" type="text" name="district"/>
                        <span class="help" id="help8"></span>
                 </div>
                 <div class="field">
                    <div class="textlabel">
                        <label for="ward">Khu vực</label> <span class="Required">*</span>:
                    </div>
                        <input onfocus="showhelp(9)" onblur="fonblur(9)" autocomplete="off" id="ward" type="text" name="ward"/>
                        <span class="help" id="help9"></span>
                 </div>
                 <div class="field">
                    <div class="textlabel">
                        <label for="ward">Chi tiết</label> <span class="Required">*</span>:
                    </div>
                        <input onfocus="showhelp(9)" onblur="fonblur(9)" autocomplete="off" id="ward" type="text" name="detail"/>
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
                        <input type="submit" align="absmiddle" class="loginbuton Field200" value="Đăng ký"/>
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