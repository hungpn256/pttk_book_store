<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>

            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta name="description" content="">
            <meta name="author" content="">

            <title>Quan ly sach</title>
            <style>
                <%@include file="./style.css"%>
            </style>
            <!-- Font Awesome -->
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
            <!-- Google Fonts -->
            <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
            <!-- Bootstrap core CSS -->
            <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css"
                rel="stylesheet">
            <!-- Material Design Bootstrap -->
            <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
            <script type="text/javascript"
                src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        </head>

        <body id="page-top">
            <% request.setCharacterEncoding("UTF-8"); %>
                <div id="wrapper">
                    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
                        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                            <div class="sidebar-brand-icon rotate-n-15">
                                <i class="fas fa-laugh-wink"></i>
                            </div>
                            <div class="sidebar-brand-text mx-3">Book store</div>
                        </a>
                        <hr class="sidebar-divider my-0">
                        <li class="nav-item active">
                            <a class="nav-link" href="index.html">
                                <i class="fas fa-fw fa-tachometer-alt"></i>
                                <span>Thanh dieu khien</span></a>
                        </li>

                        <hr class="sidebar-divider">
                        <div class="sidebar-heading">
                            Danh muc
                        </div>
                        <li class="nav-item">
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                                aria-expanded="true" aria-controls="collapseTwo">
                                <span>Sach</span>
                            </a>
                        </li>
                    </ul>
                    <div id="content-wrapper" class="d-flex flex-column " style="height:100vh; overflow-y:scroll">
                        <div id="content">
                            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                                <form
                                    class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                                </form>
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item dropdown no-arrow d-sm-none">
                                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fas fa-search fa-fw"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                            aria-labelledby="searchDropdown">
                                            <form class="form-inline mr-auto w-100 navbar-search">
                                                <div class="input-group">
                                                    <input type="text" class="form-control bg-light border-0 small"
                                                        placeholder="Search for..." aria-label="Search"
                                                        aria-describedby="basic-addon2">
                                                    <div class="input-group-append">
                                                        <button class="btn btn-primary" type="button">
                                                            <i class="fas fa-search fa-sm"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </li>
                                    <div class="topbar-divider d-none d-sm-block"></div>
                                    <li class="nav-item dropdown no-arrow">
                                        <a style="align-items: center; display: flex;" class="nav-link dropdown-toggle"
                                            href="#" id="userDropdown" role="button" data-toggle="dropdown"
                                            aria-haspopup="true" aria-expanded="false">
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                				aria-labelledby="userDropdown">
                                			<a class="dropdown-item" href="#">
                                    			<i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    			Profile
                                			</a>
                                			<div class="dropdown-divider"></div>
                                			<a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    			<i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    		Logout
                                			</a>
                            			</div>
                                    </li>
                                </ul>
                            </nav>

                            <div class="container-fluid mt-3">
                                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                                    <h1 class="h3 mb-0 text-gray-800">Danh sach san pham</h1>
                                    <span class="table-add float-right mb-3 mr-2 ml-4">
                                        <a href="#" class="text-success">
                                            <button type="button" class="btn btn-success btn-rounded btn-sm"
                                                data-toggle="modal" data-target="#basicExampleModal">
                                                <i class="fas fa-plus fa-2x" aria-hidden="true"></i>
                                            </button>
                                        </a>
                                    </span>
                                </div>

                                <div class="">
                                    <table class="table table-striped shadow">
                                        <thead>
                                            <tr class="">
                                                <td class=" text-center">Sach</td>
                                                <td class=" text-center">Mo ta</td>
                                                <td class=" text-center" style="width:150px">Tác giả</td>
                                                <td class=" text-center" style="width:150px">Nhà phát hành</td>
                                                <td class=" text-center" style="width:120px">Giá</td>
                                                <td></td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="bookItem" items="${bookitems }">
                                                <tr>
                                                    <td class="text-center">
                                                        <a href=""><img src="<c:out value=" ${bookItem.image }"></c:out>
                                                            "
                                                            alt="" height="90px" width="90px"></a>
                                                    </td>
                                                    <td class="">
                                                        <h4>
                                                            <c:out value="${bookItem.book.title }"></c:out>
                                                        </h4>
                                                        <p>
                                                            <c:out value="${bookItem.book.description }"></c:out>
                                                        </p>
                                                    </td>
                                                    <td class=" text-center">
                                                        <p>
                                                            <c:out value="${bookItem.book.author.name }"></c:out>
                                                        </p>
                                                    </td>
                                                    <td class="text-center">
                                                        <p>
                                                            <c:out value="${bookItem.book.publisher.name }"></c:out>
                                                        </p>
                                                    </td>
                                                    <td class="">
                                                        <p class="text-center">
                                                            <c:out value="${bookItem.priceCurrent }"></c:out>
                                                        </p>
                                                    </td>
                                                    <td class="text-center">
                                                        <script type="text/javascript">
                                                            function heeelllooo(id) {
                                                                console.log(id)
                                                                $.post("<%=request.getContextPath() %>/productManagerment?edit_book=",
                                                                    { id: id }, (res) => {
                                                                        $("#modal-content").html(res);
                                                                    })
                                                            }
                                                        </script>
                                                        <input name="id" type="hidden" value="<c:out value="
                                                            ${bookItem.id }"></c:out>">
                                                        <button data-toggle="modal" data-target="#basicExampleModal2"
                                                            class="btn btn-primary btn-rounded btn-sm my-0"
                                                            name="edit_book" onclick="heeelllooo(<c:out value="
                                                            ${bookItem.id }"></c:out>)">
                                                            Edit
                                                        </button>
                                                        <form method="post">
                                                            <input name="id" type="hidden" value="<c:out value="
                                                                ${bookItem.id }"></c:out>">
                                                            <button type="submit"
                                                                class="btn btn-danger btn-rounded btn-sm my-0"
                                                                name="delete_book">
                                                                Remove
                                                            </button>
                                                        </form>
                                                    </td>
                                                </tr>

                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="basicExampleModal" tabindex="-1" role="dialog"
                        aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Thêm sách</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form method="post">
                                        <div class="row">
                                            <div class="col-6">
                                                <input type="hidden" class="form-control"
                                                    aria-describedby="basic-addon1" name="add" value="">
                                                <label for="basic-url">Tên sách</label>
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                    </div>
                                                    <input type="text" class="form-control"
                                                        aria-describedby="basic-addon1" name="title" value="">
                                                </div>
                                                <label for="basic-url">Mô tả</label>
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                    </div>
                                                    <input type="text" class="form-control"
                                                        aria-describedby="basic-addon1" name="description" value="">
                                                </div>
                                                <label for="basic-url">Số trang</label>
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                    </div>
                                                    <input type="text" class="form-control"
                                                        aria-describedby="basic-addon1" name="numberOfPage" value="">
                                                </div>
                                                <label for="basic-url">Giá nhập</label>
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                    </div>
                                                    <input type="text" class="form-control"
                                                        aria-describedby="basic-addon1" name="priceImport" value="">
                                                </div>
                                                <label for="basic-url">Giá bán</label>
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                    </div>
                                                    <input type="text" class="form-control"
                                                        aria-describedby="basic-addon1" name="priceCurrent" value="">
                                                </div>
                                                <label for="basic-url">Ảnh</label>
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                    </div>
                                                    <input type="text" class="form-control"
                                                        aria-describedby="basic-addon1" name="image" value="">
                                                </div>
                                                <label for="basic-url">Giảm giá</label>
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                    </div>
                                                    <input type="text" class="form-control"
                                                        aria-describedby="basic-addon1" name="discount" value="">
                                                </div>

                                            </div>
                                            <div class="col-1"></div>
                                            <div class="col-5">
                                                <label for="basic-url">Tác giả</label>
                                                <select class="browser-default custom-select" name="select_author">
                                                    <option selected value="new">Thêm mới</option>
                                                    <c:forEach var="author" items="${authors }">
                                                        <option value="<c:out value=" ${ author.id}" />" >
                                                        <c:out value="${author.name }" />
                                                        </option>
                                                    </c:forEach>
                                                </select>
                                                <label for="basic-url">Tên</label>
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                    </div>
                                                    <input type="text" class="form-control"
                                                        aria-describedby="basic-addon1" name="author_name" value="">
                                                </div>
                                                <label for="basic-url">Tiểu sử</label>
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                    </div>
                                                    <input type="text" class="form-control"
                                                        aria-describedby="basic-addon1" name="bio" value="">
                                                </div>
                                                <label for="basic-url">Nhà xuất bản</label>
                                                <select class="browser-default custom-select" name="select_publisher">
                                                    <option selected value="new">Thêm mới</option>
                                                    <c:forEach var="publisher" items="${publishers }">
                                                        <option value="<c:out value=" ${ publisher.id}" />" >
                                                        <c:out value="${publisher.name }" />
                                                        </option>
                                                    </c:forEach>
                                                </select>
                                                <label for="basic-url">Tên</label>
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                    </div>
                                                    <input type="text" class="form-control"
                                                        aria-describedby="basic-addon1" name="publisher_name" value="">
                                                </div>
                                                <label for="basic-url">Địa chỉ</label>
                                                <div class="input-group mb-3">
                                                    <div class="input-group-prepend">
                                                    </div>
                                                    <input type="text" class="form-control"
                                                        aria-describedby="basic-addon1" name="address" value="">
                                                </div>
                                                <label for="basic-url">Danh mục</label>
                                                <select class="browser-default custom-select" name="category_id">
                                                    <c:forEach var="category" items="${categories }">
                                                        <option value="<c:out value=" ${ category.id}" />" >
                                                        <c:out value="${category.name }" />
                                                        </option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <button class="d-flex ml-auto btn btn-primary" type="submit"
                                            name="add_book">Lưu</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Editable table -->
                    <div class="modal fade" id="basicExampleModal2" tabindex="1" role="dialog"
                        aria-labelledby="exampleModalLabel2" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content" id="modal-content">

                            </div>
                        </div>
                    </div>
                </div>

                <a class="scroll-to-top rounded" href="#page-top">
                    <i class="fas fa-angle-up"></i>
                </a>

                <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>
                            <div class="modal-body">Select "Logout" below if you are ready to end your current session.
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                                <a class="btn btn-primary" href="<%= request.getContextPath() %>/login">Logout</a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- JQuery -->

                <!-- Bootstrap tooltips -->
                <script type="text/javascript"
                    src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
                <!-- Bootstrap core JavaScript -->
                <script type="text/javascript"
                    src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
                <!-- MDB core JavaScript -->
                <script type="text/javascript"
                    src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>

        </body>

        </html>