<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Quan ly san pham</title>
	<style><%@include file="./style.css"%></style>
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
</head>

<body id="page-top">

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
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Sach</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Danh muc sach</h6>
                        <a class="collapse-item" href="buttons.html">Buttons</a>
                        <a class="collapse-item" href="cards.html">Cards</a>
                    </div>
                </div>
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
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
                                <img class="img-profile rounded-circle" src="img/undraw_profile.svg">
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
                <div class="container-fluid">

                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">BANG QUAN LY</h1>
                    </div>

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-primary shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Earnings (Monthly)</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-success shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                Earnings (Annual)</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Earnings (Monthly) Card Example -->
                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-info shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Tasks
                                            </div>
                                            <div class="row no-gutters align-items-center">
                                                <div class="col-auto">
                                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                                                </div>
                                                <div class="col">
                                                    <div class="progress progress-sm mr-2">
                                                        <div class="progress-bar bg-info" role="progressbar"
                                                            style="width: 50%" aria-valuenow="50" aria-valuemin="0"
                                                            aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-3 col-md-6 mb-4">
                            <div class="card border-left-warning shadow h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                                Pending Requests</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-comments fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!---->
                <div class="container-fluid mt-3">
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Danh sach san pham</h1>
                        <span class="table-add float-right mb-3 mr-2 ml-4">
                            <a href="#" class="text-success">
                                <button type="button" class="btn btn-success btn-rounded btn-sm" data-toggle="modal"
                                    data-target="#basicExampleModal">
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
                                    <td class=" text-center">Tác giả</td>
                                    <td class=" text-center">Nhà phát hành</td>
                                    <td class=" text-center">Giá</td>
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
                                        <h4>Colorblock Scuba</h4>
                                        <p>Web ID: 1089772</p>
                                    </td>
                                    <td class=" text-center">
                                        <p>abc</p>
                                    </td>
                                    <td class="text-center">
                                        <p>abc</p>
                                    </td>
                                    <td class="">
                                        <p class="text-center">$59</p>
                                    </td>
                                    <td class="text-center">
                                        <button data-toggle="modal" data-target="#basicExampleModal2"
                                            class="btn btn-primary btn-rounded btn-sm my-0" onclick="editS()">
                                            Edit
                                        </button>
                                        <button type="button" class="btn btn-danger btn-rounded btn-sm my-0"
                                            name="remove" onclick="deleteS()">
                                            Remove
                                        </button>
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
                                        <h4>Colorblock Scuba</h4>
                                        <p>Web ID: 1089772</p>
                                    </td>
                                    <td class=" text-center">
                                        <p>abc</p>
                                    </td>
                                    <td class="text-center">
                                        <p>abc</p>
                                    </td>
                                    <td class="">
                                        <p class="text-center">$59</p>
                                    </td>
                                    <td class="text-center">
                                        <a class="fa-2x mr-3 " onclick=""><i class="fa fa-edit"></i></a>
                                        <a class="fa-2x" onclick=""><i class="fa fa-times"></i></a>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="basicExampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-xl" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Thêm sách</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form method="post" action="">
                            <div class="row">
                                <div class="col-6">
                                    <label for="basic-url">Tên sách</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                        </div>
                                        <input type="text" class="form-control" aria-describedby="basic-addon1"
                                            name="maSV" value="">
                                    </div>
                                    <label for="basic-url">Mô tả</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                        </div>
                                        <input type="text" class="form-control" aria-describedby="basic-addon1"
                                            name="name" value="">
                                    </div>
                                    <label for="basic-url">Số trang</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                        </div>
                                        <input type="text" class="form-control" aria-describedby="basic-addon1"
                                            name="gender" value="">
                                    </div>
                                    <label for="basic-url">Giá nhập</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                        </div>
                                        <input type="text" class="form-control" aria-describedby="basic-addon1"
                                            name="email" value="">
                                    </div>
                                    <label for="basic-url">Giá bán</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                        </div>
                                        <input type="text" class="form-control" aria-describedby="basic-addon1"
                                            name="email" value="">
                                    </div>
                                    <label for="basic-url">Ảnh</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                        </div>
                                        <input type="text" class="form-control" aria-describedby="basic-addon1"
                                            name="phone" value="">
                                    </div>
                                  
                                </div>
                                <div class="col-1"></div>
                                <div class="col-5">
                                    <label for="basic-url">Tác giả</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                        </div>
                                        <input type="text" class="form-control" aria-describedby="basic-addon1"
                                            name="maSV" value="">
                                    </div>
                                    <label for="basic-url">Tiểu sử</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                        </div>
                                        <input type="text" class="form-control" aria-describedby="basic-addon1"
                                            name="name" value="">
                                    </div>
                                    <hr>
                                    <label for="basic-url">Nhà xuất bản</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                        </div>
                                        <input type="text" class="form-control" aria-describedby="basic-addon1"
                                            name="gender" value="">
                                    </div>
                                    <label for="basic-url">Địa chỉ</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                        </div>
                                        <input type="text" class="form-control" aria-describedby="basic-addon1"
                                            name="email" value="">
                                    </div> 
                                </div>
                            </div>
                            <button class="d-flex ml-auto btn btn-primary">Lưu</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Editable table -->
        <div class="modal fade show" id="basicExampleModal2" tabindex="1" role="dialog"
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
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        function deleteS(id) {
            option = confirm('Bạn có muốn xoá cuốn sách này không')
            if (!option) {
                return;
            }
            console.log(id)
            $.post('', {
                'id': id
            }, function (data) {
                alert(data)
                location.reload()
            })
        }

        function edit(id) {
            $.ajax({
                url: 'editS.html',
                data: {
                    'id': id
                },
                type: 'POST',
                success: function (result) {
                    $('#modal-content').html(result)
                }
            })
        }

    </script>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>