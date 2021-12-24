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
			<form method="post" name="rgt" id="rgt" action="/users/register/index.html" onSubmit="return ValidateForm(CheckForm);">
                <div class="field">
                    <div class="textlabel">
                        <label for="idpassword">Mật khẩu</label> <span class="Required">*</span>:
                    </div>
                        <input autocomplete="off" onfocus="showhelp(2)" onblur="fonblur(2)" id="idpassword" type="password" name="password"/>
                        <span class="help" id="help2">Mật khẩu tối thiểu 6 kí tự</span>
                 </div>
                 <div class="field">
                    <div class="textlabel">
                        <label for="repassword">Xác nhận mật khẩu</label> <span class="Required">*</span>:
                    </div>
                        <input autocomplete="off" onfocus="showhelp(3)" onblur="fonblur(3)" id="repassword" type="password" name="repassword"/>
                        <span class="help" id="help3">Xác nhận lại mật khẩu</span>
                 </div>
                 <div class="clear"></div>
                 <div class="field">
                    <div class="textlabel">
                        <label for="fullname">Họ và tên</label> <span class="Required">*</span>:
                    </div>
                        <input onfocus="showhelp(4)" onblur="fonblur(4)" autocomplete="off" id="fullname" type="text" name="fullname"/>
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
<script type="text/javascript">var filter=/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.([a-z]){2,4})$/;var filterphone=/^[0-9-+]+$/;function fonblur(id){var err=false
var em=gde("idusername");var pw=gde("idpassword");var rpw=gde("repassword");var fn=gde("fullname");var tlp=gde("telephone");if(id==2){if(pw.value.length<6){$("#help2").empty();$("#help2").append('<span class="error">Mật khẩu phải dài tối thiểu 6 ký tư</span>');}else{$("#help2").empty();$("#help2").append('<span class="ok">&nbsp;</span>');}}if(id==3){if(pw.value!=rpw.value){$("#help3").empty();$("#help3").append('<span class="error">Xác nhận mật khẩu không đúng</span>');}else if(rpw.value==''){}else{$("#help3").empty();$("#help3").append('<span class="ok">&nbsp;</span>');}}if(id==4){if(fn.value==""){$("#help4").empty();$("#help4").append('<span class="error">Vui lòng nhập tên của bạn</span>');}else{$("#help4").empty();$("#help4").append('<span class="ok">&nbsp;</span>');}}if(id==5){if(tlp.value==""){$("#help5").empty();$("#help5").append('<span class="error">Vui lòng nhập điện thoại</span>');err=true;}else if(!filterphone.test(tlp.value)||tlp.value.length<10){$("#help5").empty();$("#help5").append('<span class="error">Số điện thoại không đúng</span>');err=true;}else{$("#help5").empty();$("#help5").append('<span class="ok">&nbsp;</span>');}}return false;}function CheckForm(){var err=false
var em=gde("idusername");var pw=gde("idpassword");var rpw=gde("repassword");var fn=gde("fullname");var tlp=gde("telephone");if(em.value==""){$("#help1").empty();$("#help1").append('<span class="error">Vui lòng nhập username</span>');err=true;}else if(!filter.test(em.value)){$("#help1").empty();$("#help1").append('<span class="error">username bạn nhập không đúng</span>');err=true;}if(pw.value.length<6){$("#help3").empty();$("#help2").empty();$("#help2").append('<span class="error">Mật khẩu phải dài tối thiểu 6 ký tư</span>');err=true;}else if(pw.value!=rpw.value){$("#help3").empty();$("#help3").append('<span class="error">Xác nhận mật khẩu không đúng</span>');err=true;}if(fn.value==""){$("#help4").empty();$("#help4").append('<span class="error">Vui lòng nhập tên của bạn</span>');err=true;}if(tlp.value==""){$("#help5").empty();$("#help5").append('<span class="error">Vui lòng nhập điện thoại</span>');err=true;}else if(!filterphone.test(tlp.value)||tlp.value.length<9){$("#help5").empty();$("#help5").append('<span class="error">Số điện thoại không đúng</span>');err=true;}if(err){Boxy.alert('Dữ liệu nhập vào không đúng, vui lòng kiểm tra lại',null,{title:'Lỗi'});return false;}else{return true;}}function showhelp(id){if(id==1){$("#help1").empty();$("#help1").append('Nhập username của bạn');}if(id==2){$("#help2").empty();$("#help2").append('Mật khẩu phải có ít nhất 6 ký tự');err=true;}if(id==3){$("#help3").empty();$("#help3").append('Xác nhận lại mật khẩu');err=true;}if(id>3){$("#help"+id).empty();}}function cusername(username,onblur){if(filter.test(username)){address='/users/checkusername/index.html';address=addQuery(address,'username='+username);$.ajax({url:address,dataType:"json",error:function(e){alert(address);return;},success:function(data){if(data.err==0){$("#help1").empty();$("#help1").append('<span class="ok">username có thể dùng</span>');}else{$("#help1").empty();$("#help1").append('<span class="error">username này đã có người dùng</span>');}}});}else if(onblur){if(username!=""){$("#help1").empty();$("#help1").append('<span class="error">username bạn nhập không đúng</span>');}else{$("#help1").empty();$("#help1").append('<span class="error">Vui lòng nhập username</span>');}}}</script>
        </div>
		<div class="clear"></div>
    </div>
</div>
</body>
</html>