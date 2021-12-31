<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
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
    <div class="container mt-3 mb-3">
        <div class="d-flex justify-content-between align-items-center mb-5">
            <div class="d-flex flex-row align-items-center">
                <h4 class="text-uppercase mt-1">bookstore</h4> <span class="ml-2">Pay</span>
            </div> <a href="#" class="cancel com-color">Hủy</a>
        </div>
        <div class="row">
            <div class="col-md-7">
                <div class="">
                    <form class=" needs-validation" novalidate>
                        <div class="row">
                            <h4 class="mb-3">Vận chuyển</h4>

                            <div class="mb-3">
                                <label for="address">Địa chỉ</label>
                                <input type="text" class="form-control" id="address" placeholder="" required>
                                <div class="invalid-feedback">
                                    Xin hãy điền địa chỉ.
                                </div>
                            </div>

                            <div class=" mb-3">
                                <label for="shipment">Hình thức Vận chuyển</label>
                                <select class="form-control " id="shipment" required>
                                    <option value="">Choose...</option>
                                    <option value="">United States</option>
                                    <option value="">Ha noi</option>
                                    <option value="">Ho Chi Minh</option>
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
                                <select class="form-control " id="payment" required>
                                    <option value="">Choose...</option>
                                    <option value="">United States</option>
                                    <option value="">Ha noi</option>
                                    <option value="">Ho Chi Minh</option>
                                </select>
                                <div class="invalid-feedback">
                                    Chọn hình thức thanh toán.
                                </div>
                            </div>
                            <div class="mb-3 mt-3">
                                <label> Ghi chú</label>
                                <textarea class="form-control" id="textAreaExample" rows="5"></textarea>
                            </div>
                        </div>
                        <div class=" d-flex justify-content-center">
                            <button class="mt-5 btn btn-success  btn-lg " type="submit">Thanh Toán</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-1"></div>
            <div class="col-md-4 ">
                <div class="p-3 jumbotron" style="background-color: rgb(236, 236, 236);">
                    <h5 class="text-center text-danger"> HÓA ĐƠN</h5>
                    <div class="d-flex justify-content-between mt-2"> <span class="fw-500">contracted Price</span>
                        <span>$186.86</span>
                    </div>
                    <div class="d-flex justify-content-between mt-2"> <span class="fw-500">Amount Deductible</span>
                        <span>$0.0</span>
                    </div>
                    <div class="d-flex justify-content-between mt-2"> <span class="fw-500">Coinsurance(0%)</span>
                        <span>+ $0.0</span>
                    </div>
                    <div class="d-flex justify-content-between mt-2"> <span class="fw-500">Copayment </span> <span>+
                            40.00</span> </div>
                    <hr>
                    <div class="d-flex justify-content-between mt-2"> <span class="lh-16 fw-500">Total Deductible,<br>
                            Coinsurance and copay </span> <span>$40.00</span> </div>
                    <div class="d-flex justify-content-between mt-2"> <span class="lh-16 fw-500">Maximum out-of-pocket
                            <br> on insurance policy</span> <span>$40.00</span> </div>
                    <hr>
                    <div class="d-flex justify-content-between mt-2"> <span class="fw-500">Insurance Responsibility
                        </span> <span>$71.76</span> </div>
                    <div class="d-flex justify-content-between mt-2"> <span class="fw-500">Patient Balance </span>
                        <span>$13.24</span>
                    </div>
                    <hr>
                    <div class="d-flex justify-content-between mt-2"> <span class="fw-500">Total </span> <span
                            class="text-success">$85.00</span> </div>
                </div>
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