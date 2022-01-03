<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Website Mua Sách Online</title>
	<style><%@include file="./style.css"%></style>
	<link rel="shortcut icon" href="https://nobita.vn/layouts/fontpage/images/favicon.ico" />
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
            <h3 class="mb-4 mt-3">Lịch sử mua hàng </h3>

            <div class="tab-content" id="ex2-content">
                <div class="tab-pane fade show active" id="ex2-tabs-1" role="tabpanel" aria-labelledby="ex2-tab-1">
                    
                    <div class="">
                        <table class="table table-striped shadow">
                            <thead>
                                <tr class="">
                                    <td class=" text-center">Sản phẩm</td>
                                    <td class=" text-center">Tên sách</td>
                                    <td class=" text-center">Địa chỉ nhận</td>
                                    <td class=" text-center">Ghi chú</td>
                                    <td class=" text-center">Thành tiền</td>
                                    <td></td>
                                </tr>
                            </thead>
                            <tbody>
                            	<c:forEach var="ordered" items="${orders}">
                                <tr>
                                    <td class="text-center">
                                        <a href=""><img
                                                src="<c:out value="${ordered.cart.cartItems[0].bookItem.image}"/>"
                                                alt="" height="90px" width="90px"></a>
                                    </td>
                                    <td class="">
                                        <h4><a href=""><c:out value="${ordered.cart.cartItems[0].bookItem.book.title}"/></a></h4>
                                    </td>
                                    <td class="text-center"><c:out value="${ordered.shipTo}"/></td>
                                    <td class="text-center"><c:out value="${ordered.note}"/></td>
                                    <td class="">
                                        <p class="text-center"><c:out value="${ordered.total}" /> đ</p>
                                    </td>
                                    <td class="">
                                        <a class="text-center display-6" ></a>
                                    </td>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane fade" id="ex2-tabs-2" role="tabpanel" aria-labelledby="ex2-tab-2">                   
            </div>
        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.1/mdb.min.js"></script>
<%@include file="../header_footer/footer.jsp"%>
</body>

</html>