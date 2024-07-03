<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>R&OApp</title>

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
                        <th>Start Data</th>
                        <th>End Data</th>
                        <th>Monthly Cost</th>
                        <th>Deposit</th>
                        <th>Special Provisions</th>
                        <th>Data of Payment</th>
                        <th>Status</th>
                        <th>Code</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${contracts}" var="contract">
                        <tr>
                            <td>${contract.id}</td>
                            <td>${contract.startData}</td>
                            <td>${contract.endData}</td>
                            <td>${contract.monthlyCost}</td>
                            <td>${contract.deposit}</td>
                            <td>${contract.specialProvisions}</td>
                            <td>${contract.dateOfPayment}</td>
                            <td>${contract.status}</td>
                            <td>${contract.code}</td>
                            <td>
                            <td>
                                <a href="${pageContext.request.contextPath}/contracts/send-message/${contract.id}">Send message </a><br><br>
                            <a href="${pageContext.request.contextPath}/contracts/edit/${contract.id}">Edit</a><br><br>
                            <a href="${pageContext.request.contextPath}/contracts/delete/${contract.id}">Delete</a>
                            </td>
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