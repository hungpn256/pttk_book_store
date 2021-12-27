<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Đăng nhập</title>
    <script type="text/javascript" src="https://nobita.vn/layouts/system/js/jquery-1.8.2.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script type="text/javascript" src="https://nobita.vn/layouts/system/js/common.js"></script>
    <script type='text/javascript' src='https://nobita.vn/layouts/system/js/jquery.boxy.js'></script>
    <script type="text/javascript">var app = '';</script>
    <style><%@include file="./style.css"%></style>
    
</head>
<body>
	<%@include file="../header_footer/header.jsp"%>
    <div class="block banner " id="banner_TopHeader">
        <div class="blockcontent"></div>
    </div>
    <div class="clear"></div>
    <div id="container">
        <div class="pathway">
            <ul>
                <li><a href="<%= request.getContextPath() %>/home" title="Trang chủ">Trang chủ</a></li>
                <li>Đăng nhập</li>
            </ul>
        </div>
    </div>
   <div id="container">
        <div class="sortable" id="layoutGroup1">
            <div class="block" id="module_Login">
                <h1>
                    Đăng nhập <span>hoặc</span>
                    <a href="<%= request.getContextPath() %>/register" title="Đăng ký">Đăng ký</a>
                </h1>
                <div class="blockcontent">
                    <div class="loginsocial">
                        <h3>Vui lòng đăng nhập</h3>
                    </div>
                    <div class="loginform">
                        <h3>Đăng nhập</h3>
                        <form method="post"  action="<%= request.getContextPath() %>/login"
                            onSubmit="return ValidateForm(CheckForm);">
                            <div class="field">
                                <div class="textlabel">
                                    <label for="idusername">Username</label> <span class="Required">*</span>:
                                </div>
                                <input type="text" name="username" id="idusername" onfocus="showhelp(1)" value=""
                                    autocomplete="off">
                                <span class="help" id="help1">Nhập tên đăng nhập của bạn của bạn</span>
                            </div>
                            <div class="field">
                                <div class="textlabel">
                                    <label for="idpassword">Mật khẩu</label> <span class="Required">*</span>:
                                </div>
                                <input id="idpassword" autocomplete="off" onfocus="showhelp(2)" type="password"
                                    name="password">
                                <span class="help" id="help2">Nhập mật khẩu của bạn</span>
                            </div>
                            <div class="field">
                                <div class="textlabel"></div>
                                <a href="" title="Quên mật khẩu?">Quên mật khẩu?</a>
                            </div>
                            <div class="clear"></div>
                            <div class="field">
                                <div class="textlabel">
                                    &nbsp;
                                </div>
                                <input type="hidden" name="redirect" value="" />
                                <input type="submit" align="absmiddle" class="loginbuton" value="Đăng nhập" />
                                &nbsp;&nbsp;&nbsp;
                                <a href="<%= request.getContextPath() %>/register" title="Đăng ký" >Tạo tài
                                    khoản</a>
                            </div>
                        </form>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
           </div>
        <div class="clear"></div>
    </div>
    </div>
    <%@include file="../header_footer/footer.jsp"%>
</body>
</html>