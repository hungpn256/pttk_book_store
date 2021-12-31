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
    <section id="">
        <div class="container">
            <h3 class="mb-5">Lich su mua hang </h3>
            <ul class="nav nav-tabs nav-fill mb-3" id="ex1" role="tablist">
                <li class="nav-item" role="presentation">
                    <a class="nav-link active" id="ex2-tab-1" data-mdb-toggle="tab" href="#ex2-tabs-1" role="tab"
                        aria-controls="ex2-tabs-1" aria-selected="true">Don hang thanh cong</a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="ex2-tab-2" data-mdb-toggle="tab" href="#ex2-tabs-2" role="tab"
                        aria-controls="ex2-tabs-2" aria-selected="false">Don hang dang xu ly</a>
                </li>

            </ul>

            <div class="tab-content" id="ex2-content">
                <div class="tab-pane fade show active" id="ex2-tabs-1" role="tabpanel" aria-labelledby="ex2-tab-1">
                    
                    <div class="mt-3">
                        <table class="table table-striped shadow">
                            <thead>
                                <tr class="">
                                    <td class=" text-center">Sach</td>
                                    <td class=" text-center">Mo ta</td>
                                    <td class=" text-center">So luong</td>
                                    <td class=" text-center">Thanh tien</td>
                                    <td></td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center">
                                        <a href=""><img
                                                src="https://salt.tikicdn.com/cache/280x280/ts/product/c9/7c/04/67db9bf2590d75f978e68f9dcfe0db9a.jpg"
                                                alt="" height="90px" width="90px"></a>
                                    </td>
                                    <td class="">
                                        <h4><a href="">Item tab1</a></h4>
                                        <p>Web ID: 1089772</p>
                                    </td>
                                    <td class="text-center"> 12
                                        
                                    </td>
                                    <td class="">
                                        <p class="text-center">$59</p>
                                    </td>
                                    <td class="">
                                        <a class="text-center display-6" ><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                    </td>
                                </tr>
                                <!-- item 2-->
                                <tr>
                                    <td class="text-center">
                                        <a href=""><img
                                                src="https://salt.tikicdn.com/cache/280x280/ts/product/c9/7c/04/67db9bf2590d75f978e68f9dcfe0db9a.jpg"
                                                alt="" height="90px" width="90px"></a>
                                    </td>
                                    <td class="">
                                        <h4><a href="">Colorblock Scuba</a></h4>
                                        <p>Web ID: 1089772</p>
                                    </td>
                                    <td class="text-center"> 12
                                        
                                    </td>
                                    <td class="">
                                        <p class="text-center">$59</p>
                                    </td>
                                    <td class="">
                                        <a class="text-center display-6" ><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane fade" id="ex2-tabs-2" role="tabpanel" aria-labelledby="ex2-tab-2">
                    
                    <div class="mt-3">
                        <table class="table table-striped shadow">
                            <thead>
                                <tr class="">
                                    <td class=" text-center">Sach</td>
                                    <td class=" text-center">Mo ta</td>
                                    <td class=" text-center">So luong</td>
                                    <td class=" text-center">Thanh tien</td>
                                    <td></td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-center">
                                        <a href=""><img
                                                src="https://salt.tikicdn.com/cache/280x280/ts/product/c9/7c/04/67db9bf2590d75f978e68f9dcfe0db9a.jpg"
                                                alt="" height="90px" width="90px"></a>
                                    </td>
                                    <td class="">
                                        <h4><a href="">Colorblock Scuba</a></h4>
                                        <p>Web ID: 1089772</p>
                                    </td>
                                    <td class="text-center"> 12
                                        
                                    </td>
                                    <td class="">
                                        <p class="text-center">$59</p>
                                    </td>
                                    <td class="">
                                        <a class="text-center display-6" ><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                    </td>
                                </tr>
                                <!-- item 2-->
                                <tr>
                                    <td class="text-center">
                                        <a href=""><img
                                                src="https://salt.tikicdn.com/cache/280x280/ts/product/c9/7c/04/67db9bf2590d75f978e68f9dcfe0db9a.jpg"
                                                alt="" height="90px" width="90px"></a>
                                    </td>
                                    <td class="">
                                        <h4><a href="">Colorblock Scuba</a></h4>
                                        <p>Web ID: 1089772</p>
                                    </td>
                                    <td class="text-center"> 12
                                        
                                    </td>
                                    <td class="">
                                        <p class="text-center">$59</p>
                                    </td>
                                    <td class="">
                                        <a class="text-center display-6" ><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>

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