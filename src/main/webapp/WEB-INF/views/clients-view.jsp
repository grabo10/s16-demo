<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SB Admin 2 - Home</title>

    <!-- Bootstrap core CSS -->
    <link href="/sb-admin-2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body id="page-top">

<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
            <div class="sidebar-brand-icon">
                <i class="fas fa-chart-line"></i>
            </div>
            <div class="sidebar-brand-text mx-3">Residents & Owners</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">



        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">
    </ul>


    <!-- Real Estate Table -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Real Estate List</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>ID No</th>
                        <th>PESEL</th>
                        <th>Passport No</th>
                        <th>Country</th>
                        <th>City</th>
                        <th>Street</th>
                        <th>Zip Code</th>
                        <th>Tel Number</th>
                        <th>Email</th>
                        <th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${clients}" var="client">
                        <tr>
                            <td>${client.id}</td>
                            <td>${client.firstName}</td>
                            <td>${client.lastName}</td>
                            <td>${client.idNo}</td>
                            <td>${client.pesel}</td>
                            <td>${client.passportNo}</td>
                            <td>${client.country}</td>
                            <td>${client.city}</td>
                            <td>${client.street}</td>
                            <td>${client.zipCode}</td>
                            <td>${client.telNumber}</td>
                            <td>${client.email}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/clients/payments/${client.id}">View payments</a><br><br>
                                <a href="${pageContext.request.contextPath}/clients/contracts/${client.id}">View Contract</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Footer -->
<footer class="sticky-footer bg-white">
    <div class="container my-auto">
        <div class="text-center">
            <span></span>
        </div>
    </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Bootstrap core JavaScript -->
<script src="/sb-admin-2/js/jquery.min.js"></script>
<script src="/sb-admin-2/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/sb-admin-2/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="/sb-admin-2/js/sb-admin-2.min.js"></script>

</body>

</html>