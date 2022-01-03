<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Website Mua Sách Online Được Yêu Thích Nhất</title>
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
    <div class="container mt-3">
        <div class="d-flex justify-content-between align-items-center">
            <div class="d-flex flex-row align-items-center">
                <h4 class="text-uppercase mt-1">Thanh toán</h4>
            </div> 
        </div>
    <div class="container">
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
                			<a href=""><img
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
                			<label name="quantity"  for="quantity"><c:out value="${ cartItem.quantity}"/></label>                			
                		</div>
              		</td>
              		<td class="">
                		<p class="text-center"><c:out value="${Math.round(cartItem.quantity * cartItem.bookItem.priceCurrent* ( 1 - cartItem.bookItem.discount)) }" />đ</p>
              		</td>
              		<td class="">
              		</td>
              		</tr>
                </c:forEach>
          </tbody>
        </table>
      </div>
    </div>

  <div class="container mt-5">
    <div class="row ">
      <div class="col-6"></div>
      <div class="col-2 ">
        <h5> Tổng tiền</h5>
      </div>
      <div class="col-2 ">
        <h5><c:out value="${ total }"/></h5>
      </div>
    </div>
    
        <div class="row">
        	<div class="col-2"></div>
            <div class="col-md-7">
                <div class="">
                    <form class=" needs-validation" method="post" action="">
                        <div class="row">
                            <h4 class="mb-3">Vận chuyển</h4>
                            <div class="mb-3">
                                <label for="address">Địa chỉ</label>
                                <input type="text" class="form-control" name = "address" id="address" placeholder="Nhập địa chỉ giao hàng..." required>
                                <div class="invalid-feedback">
                                    Xin hãy điền địa chỉ.
                                </div>
                            </div>

                            <div class=" mb-3">
                                <label for="shipment">Hình thức Vận chuyển</label>
                                <select name = "shipment" class="form-control " id="shipment" required>
                                	<c:forEach var="shipment" items="${shipments}">
                                    	<option value="<c:out value="${shipment.id}"/>"><c:out value="${shipment.name}"/></option>
                                    </c:forEach>
                                </select>
                                <div class="invalid-feedback">
                                    Chọn hình thức vận chuyển.
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label>Phí vận chuyển: </label>
                            </div>

                            <h4 class="mt-3 mb-3">Hình thức thanh toán</h4>
                            <div class=" mb-3">
                                <label for="payment">Hình thức Thanh toán</label>
                                <select name = "payment" class="form-control " id="payment" required>
                                    <c:forEach var="payment" items="${payments}">
                                    	<option value="<c:out value="${payment.id}"/>"><c:out value="${payment.name}"/></option>
                                    </c:forEach>
                                </select>
                                <div class="invalid-feedback">
                                    Chọn hình thức thanh toán.
                                </div>
                            </div>
                            <div class="mb-3">
                                <label> Ghi chú</label>
                                <textarea class="form-control" name = "note" id="textAreaExample" rows="5"></textarea>
                            </div>
                        </div>
                        <div class=" d-flex justify-content-center">
                            <button class="mt-5 btn btn-success " type="submit">Thanh Toán</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-1"></div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.1/mdb.min.js"></script>
<%@include file="../header_footer/footer.jsp"%>
</body>

</html>