<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Quản lý hóa đơn</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="/admin/assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="/admin/assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
    <
    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body class="container-sm">


<!-- Left Panel -->
<aside id="left-panel" class="left-panel ">
    <nav class="navbar navbar-expand-sm navbar-default">
        <div id="main-menu" class="main-menu collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="">
                    <a href="dashboard_2.html">
                        <i class="menu-icon fa fa-laptop"></i>Dashboard
                    </a>
                </li>
                <li class="menu-title">Quản lý hóa đơn</li>
                <!-- /.menu-title -->
                <li class="menu-item-has-children dropdown active">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-cogs"></i>Quản lý giày
                    </a>
                    <ul class="sub-menu children dropdown-menu">
                        <li>
                            <i class="fa fa-puzzle-piece"></i>
                            <a href="SanPhamCTForm/trangChus.jsp">Sản phẩm</a>
                        </li>
                        <li>
                            <i class="fa fa-gear" style="color: #03a9f3;"></i>
                            <a href="ui-badges.html" style="color: #03a9f3;">Chất liệu</a>
                        </li>
                        <li>
                            <i class="fa fa-eraser"></i>
                            <a href="ui-tabs.html">Màu sắc</a>
                        </li>
                        <li>
                            <i class="fa fa-id-badge"></i>
                            <a href="ui-badges.html">Thương hiệu</a>
                        </li>
                        <li>
                            <i class="fa fa-arrows-h"></i>
                            <a href="ui-tabs.html">Kích cỡ</a>
                        </li>
                        <li>
                            <i class="fa fa-inbox"></i>
                            <a href="ui-tabs.html">Kiểu dáng</a>
                        </li>
                        <li>
                            <i class="fa fa-suitcase"></i>
                            <a href="ui-tabs.html">NSX</a>
                        </li>
                        <li>
                            <i class="fa fa-sun-o"></i>
                            <a href="ui-tabs.html">Dòng sản phẩm</a>
                        </li>
                    </ul>

                </li>
                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-print"></i>Quản lý hóa đơn
                    </a>
                    <ul class="sub-menu children dropdown-menu">
                        <li>
                            <i class="fa fa-puzzle-piece"></i>
                            <a href="ui-buttons.html">Xuất hóa đơn</a>
                        </li>
                        <li>
                            <i class="fa fa-id-badge"></i>
                            <a href="ui-badges.html">Quản lý hóa đơn</a>
                        </li>
                    </ul>
                </li>

                <li class="">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-pencil-square-o"></i>Quản lý khách hàng
                    </a>
                </li>
                <li class="">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-users"></i>Quản lý nhân viên
                    </a>
                </li>
                <li class="">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-leaf"></i>Quản lý khuyến mãi
                    </a>
                </li>
                <li class="">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-user"></i>Quản lý tài khoản
                    </a>
                </li>
                <li class="menu-title">Thống kê</li>
                <!-- /.menu-title -->
                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-bar-chart-o"></i>Thống kê doanh thu
                    </a>
                    <ul class="sub-menu children dropdown-menu">
                        <li>
                            <i class="fa fa-puzzle-piece"></i>
                            <a href="ui-buttons.html">Hàng ngày</a>
                        </li>
                        <li>
                            <i class="fa fa-id-badge"></i>
                            <a href="ui-badges.html">Hàng tháng</a>
                        </li>
                        <li>
                            <i class="fa fa-bars"></i>
                            <a href="ui-tabs.html">Hàng năm</a>
                        </li>
                    </ul>
                </li>
                <li class="menu-title">Bán hàng</li>
                <!-- /.menu-title -->
                <li class="">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-file-text-o"></i>Bán hàng tại quầy
                    </a>
                </li>
                <li class="menu-title">UI elements</li>
                <!-- /.menu-title -->
                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-cogs"></i>Components
                    </a>
                    <ul class="sub-menu children dropdown-menu">
                        <li>
                            <i class="fa fa-puzzle-piece"></i>
                            <a href="ui-buttons.html">Buttons</a>
                        </li>
                        <li>
                            <i class="fa fa-id-badge"></i>
                            <a href="ui-badges.html">Badges</a>
                        </li>
                        <li>
                            <i class="fa fa-bars"></i>
                            <a href="ui-tabs.html">Tabs</a>
                        </li>

                        <li>
                            <i class="fa fa-id-card-o"></i>
                            <a href="ui-cards.html">Cards</a>
                        </li>
                        <li>
                            <i class="fa fa-exclamation-triangle"></i>
                            <a href="ui-alerts.html">Alerts</a>
                        </li>
                        <li>
                            <i class="fa fa-spinner"></i>
                            <a href="ui-progressbar.html">Progress Bars</a>
                        </li>
                        <li>
                            <i class="fa fa-fire"></i>
                            <a href="ui-modals.html">Modals</a>
                        </li>
                        <li>
                            <i class="fa fa-book"></i>
                            <a href="ui-switches.html">Switches</a>
                        </li>
                        <li>
                            <i class="fa fa-th"></i>
                            <a href="ui-grids.html">Grids</a>
                        </li>
                        <li>
                            <i class="fa fa-file-word-o"></i>
                            <a href="ui-typgraphy.html">Typography</a>
                        </li>
                    </ul>
                </li>
                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-table"></i>Tables
                    </a>
                    <ul class="sub-menu children dropdown-menu">
                        <li>
                            <i class="fa fa-table"></i>
                            <a href="tables-basic.html">Basic Table</a>
                        </li>
                        <li>
                            <i class="fa fa-table"></i>
                            <a href="tables-data.html">Data Table</a>
                        </li>
                    </ul>
                </li>
                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-th"></i>Forms
                    </a>
                    <ul class="sub-menu children dropdown-menu">
                        <li>
                            <i class="menu-icon fa fa-th"></i>
                            <a href="forms-basic.html">Basic Form</a>
                        </li>
                        <li>
                            <i class="menu-icon fa fa-th"></i>
                            <a href="forms-advanced.html">Advanced Form</a>
                        </li>
                    </ul>
                </li>

                <li class="menu-title">Icons</li>
                <!-- /.menu-title -->

                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-tasks"></i>Icons
                    </a>
                    <ul class="sub-menu children dropdown-menu">
                        <li>
                            <i class="menu-icon fa fa-fort-awesome"></i>
                            <a href="font-fontawesome.html">Font Awesome</a>
                        </li>
                        <li>
                            <i class="menu-icon ti-themify-logo"></i>
                            <a href="font-themify.html">Themefy Icons</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="widgets.html">
                        <i class="menu-icon ti-email"></i>Widgets
                    </a>
                </li>
                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-bar-chart"></i>Charts
                    </a>
                    <ul class="sub-menu children dropdown-menu">
                        <li>
                            <i class="menu-icon fa fa-line-chart"></i>
                            <a href="charts-chartjs.html">Chart JS</a>
                        </li>
                        <li>
                            <i class="menu-icon fa fa-area-chart"></i>
                            <a href="charts-flot.html">Flot Chart</a>
                        </li>
                        <li>
                            <i class="menu-icon fa fa-pie-chart"></i>
                            <a href="charts-peity.html">Peity Chart</a>
                        </li>
                    </ul>
                </li>

                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-area-chart"></i>Maps
                    </a>
                    <ul class="sub-menu children dropdown-menu">
                        <li>
                            <i class="menu-icon fa fa-map-o"></i>
                            <a href="maps-gmap.html">Google Maps</a>
                        </li>
                        <li>
                            <i class="menu-icon fa fa-street-view"></i>
                            <a href="maps-vector.html">Vector Maps</a>
                        </li>
                    </ul>
                </li>
                <li class="menu-title">Extras</li>
                <!-- /.menu-title -->
                <li class="menu-item-has-children dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-glass"></i>Pages
                    </a>
                    <ul class="sub-menu children dropdown-menu">
                        <li>
                            <i class="menu-icon fa fa-sign-in"></i>
                            <a href="page-login.html">Login</a>
                        </li>
                        <li>
                            <i class="menu-icon fa fa-sign-in"></i>
                            <a href="page-register.html">Register</a>
                        </li>
                        <li>
                            <i class="menu-icon fa fa-paper-plane"></i>
                            <a href="pages-forget.html">Forget Pass</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>
</aside>
<!-- /#left-panel -->

<!-- Left Panel -->

<!-- Right Panel -->

<div id="right-panel" class="right-panel">

    <!-- Header-->
    <header id="header" class="header">
        <div class="top-left">
            <div class="navbar-header">
                <a class="navbar-brand" href="">
                    <img src="/admin/images/logo.png" alt="Logo">
                </a>
                <a class="navbar-brand hidden" href="">
                    <img src="/admin/images/logo2.png" alt="Logo">
                </a>
                <a id="menuToggle" class="menutoggle">
                    <i class="fa fa-bars"></i>
                </a>
            </div>
        </div>
        <div class="top-right">
            <div class="header-menu">
                <div class="header-left">
                    <div class="for-message" style="margin-top: 15px;">
                        <p>Tên người dùng</p>
                    </div>
                </div>

                <div class="user-area dropdown float-right">
                    <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img class="user-avatar rounded-circle" src="/admin/images/admin.jpg" alt="User Avatar">
                    </a>

                    <div class="user-menu dropdown-menu">
                        <a class="nav-link" href="#">
                            <i class="fa fa-user"></i>My Profile
                        </a>

                        <a class="nav-link" href="#">
                            <i class="fa fa-bell-o"></i>Notifications <span class="count">13</span>
                        </a>

                        <a class="nav-link" href="#">
                            <i class="fa fa-cog"></i>Settings
                        </a>

                        <a class="nav-link" href="#">
                            <i class="fa fa-power-off"></i>Logout
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- /header -->
    <!-- Header-->
    <div class="content" style="margin-top: 50px; min-height: 1000px">
        <h3>Thống kê</h3>
        <select id="dateFilter" class="ms-2 form-select fw-bold" onchange="getDataHoangHong(this.value)">
            <option value="-7DAY">7 ngày qua</option>
            <option value="-30DAY">30 ngày qua</option>
            <option value="-12MONTH">12 tháng qua</option>
        </select>
        <div class="col-12">
            <canvas id="myChart" width="300" height="100"></canvas>
        </div>
    </div>
    <!-- .content -->


    <div class="clearfix"></div>

    <footer class="site-footer">
        <div class="footer-inner bg-white">
            <div class="row">
                <div class="col-sm-6">NiceStore 2024</div>
                <div class="col-sm-6 text-right">
                    Designed by
                    <a href="https://colorlib.com">Team SD-09</a>
                </div>
            </div>
        </div>
    </footer>

</div>
<!-- /#right-panel -->

<script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
<script src="/admin/assets/js/main.js"></script>

<script>
    // Lấy tham chiếu đến canvas
    var ctx = document.getElementById('myChart').getContext('2d');

    // Dữ liệu mẫu cho biểu đồ
    var data = {
        labels : [ "Ngày 1", "Ngày 2", "Ngày 3", "Ngày 4", "Ngày 5",
            "Ngày 6" ],
        datasets : [ {
            label : "Doanh thu (VND)",
            data : [ 10, 20, 30, 25, 40, 35 ],
            borderColor : 'rgba(75, 192, 192, 1)',
            backgroundColor : 'rgba(75, 192, 192, 0.2)',
            tension : 0.4,
        }]
    };

    // Cấu hình các tùy chọn cho biểu đồ
    var options = {
        responsive : true,
        maintainAspectRatio : false,
        scales : {
            yAxes : [ {
                ticks : {
                    beginAtZero : true
                }
            } ]
        }
    };
    // Tạo biểu đồ đường
    var ctx = document.getElementById("myChart").getContext("2d");
    var myChart = new Chart(ctx, {
        type : 'line',
        data : data,
        options : {
            scales : {
                y : {
                    beginAtZero : true,
                    ticks : {
                        callback : function(value, index, values) {
                            return value + ' VND';
                        }
                    }
                }
            }
        }
    });


    // Hàm set data vô biểu đồ đường
    var setDataMyChart = function (data) {
        let labels = [];
        let revenue = [];
        let countBuy = [];
        let totalDoanhthu = 0;
        let totalCountBuy= 0;
        data.map((e) => {
            labels.push(e.Labels);
            revenue.push(e.TotalRevenue);
            countBuy.push(e.CountBuy);
        })

        myChart.data.labels = labels;
        myChart.data.datasets[0].data = revenue;
        myChart.update(); // Cập nhật biểu đồ
    }

    function getDataHoangHong(filterDTHoaHong) {
        var result = null;
        if (!result) {
            var xhr = new XMLHttpRequest();
            xhr.open('GET', "http://localhost:8080/api/v2/thongke/" + filterDTHoaHong);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onload = function () {
                if (xhr.status === 200) {
                    var response = JSON.parse(xhr.responseText);
                    setDataMyChart(response);
                } else {
                    // Xử lý khi request thất bại
                    AddNotifis("message.errorData1", "danger");
                }
            };
            xhr.onerror = function () {
                // Xử lý khi có lỗi kết nối
                AddNotifis("message.errorData1", "danger");
            };
            xhr.send();
        }
    }

    getDataHoangHong('-7DAY'); // Thay 'DAY' bằng giá trị mong muốn của filterDTHoaHong


</script>
</body>
</html>