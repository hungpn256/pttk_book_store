<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Quản lý cua hang</title>
	<style><%@include file="./style.css"%></style>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
  <link href="/style.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.1/mdb.min.css" rel="stylesheet" />
</head>

<body>
<%@include file="../header_footer/header.jsp"%>
  <section id="">
    <div class="container">
      <h3 class="mb-5">Giỏ hàng </h3>
      <div class="">
        <table class="table table-striped shadow">
          <thead>
            <tr class="">
              <td class=" text-center">Sản phẩm</td>
              <td class=" text-center">Tên sách</td>
              <td class=" text-center">Giá</td>
              <td class=" text-center">Số lượng</td>
              <td class=" text-center">Thành tiền</td>
              <td></td>
            </tr>
          </thead>
          <tbody>
            	<c:forEach var="cartItem" items="${cart.cartItems}">
            	<tr>
                    <td class="text-center">
                			<a href="">
                			<img
                    			src="<c:out value="${ cartItem.bookItem.image}"/>"
                   				alt="" height="90px" width="90px">
                			</a>
              		</td>
              		<td class="">
                		<h5><a href=""><c:out value="${ cartItem.bookItem.book.title}"/></a></h5>
              		</td>
              		<td class=" text-center">
                		<p><c:out value="${Math.round( cartItem.bookItem.priceCurrent * ( 1 - cartItem.bookItem.discount))}"/></p>
              		</td>
              		<td class="text-center">
                		<div class="">
                  			<a href = "<%=request.getContextPath()%>/cart?decrease=<c:out value="${cartItem.id}" />" class="" onclick=""> <i class="fa fa-minus" aria-hidden="true"></i> </a>
                  			<input class="text-center" type="text" name="quantity" value="<c:out value="${ cartItem.quantity}"/>" autocomplete="off" size="2">
                  			<a href = "<%=request.getContextPath()%>/cart?bookId=<c:out value="${cartItem.bookItem.id}" />" class="" onclick=""> <i class="fa fa-plus" aria-hidden="true"></i> </a>
                		</div>
              		</td>
              		<td class="">
                		<p class="text-center"><c:out value="${Math.round(cartItem.quantity * cartItem.bookItem.priceCurrent* ( 1 - cartItem.bookItem.discount)) }" />đ</p>
              		</td>
              		<td class="">
                		<a class="text-center" onclick=""><i class="fa fa-times"></i></a>
              		</td>
              		</tr>
                </c:forEach>
            
          </tbody>
        </table>
      </div>
    </div>
  </section>

  <div class="container mt-5">
    <div class="row ">
      <div class="col-8"></div>
      <div class="col-2 ">
        <h5> Tổng tiền</h5>
      </div>
      <div class="col-2 ">
        <h5><c:out value="${ total }"/></h5>
      </div>
    </div>
    <div class="row">
      <div class="col d-flex justify-content-center">
        <button class=" btn btn-success "><a href="<%= request.getContextPath() %>/order">Đặt hàng</a></button>
      </div>
    </div>
  </div>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.1/mdb.min.js"></script>
      <%@include file="../header_footer/footer.jsp"%>
</body>

</html>