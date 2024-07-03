<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <!-- Custom fonts for this template-->
    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,300,400,600,700,800,900" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="/css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body id="page-top">
<!-- Page Wrapper -->
<div id="wrapper">
    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
        <!-- Sidebar content here -->
    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">
        <!-- Main Content -->
        <div id="content">
            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                <!-- Topbar content here -->
            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <h1 class="h3 mb-4 text-gray-800">Add new Contract</h1>
                <form:form method="post" modelAttribute="contract" class="user">
                    <form:hidden path="id"/>

                    <div class="form-group">
                        <label for="startData">Start Data</label>
                        <form:input path="startData" cssClass="form-control form-control-user"/>
                        <form:errors path="startData" cssClass="text-danger"/>
                    </div>
                    <div class="form-group">
                        <label for="endData">End Data</label>
                        <form:input path="endData" cssClass="form-control form-control-user"/>
                        <form:errors path="endData" cssClass="text-danger"/>
                    </div>

                    <div class="form-group">
                        <label for="monthlyCost">Monthly Cost</label>
                        <form:input path="monthlyCost" cssClass="form-control form-control-user"/>
                        <form:errors path="monthlyCost" cssClass="text-danger"/>
                    </div>

                    <div class="form-group">
                        <label for="deposit">Deposit</label>
                        <form:input path="deposit" cssClass="form-control form-control-user"/>
                        <form:errors path="deposit" cssClass="text-danger"/>
                    </div>

                    <div class="form-group">
                        <label for="specialProvisions">Special Provisions</label>
                        <form:input path="specialProvisions" cssClass="form-control form-control-user"/>
                        <form:errors path="specialProvisions" cssClass="text-danger"/>
                    </div>

                    <div class="form-group">
                        <label for="dateOfPayment">Date of Payment</label>
                        <form:input path="dateOfPayment" cssClass="form-control form-control-user"/>
                        <form:errors path="dateOfPayment" cssClass="text-danger"/>
                    </div>

                    <div class="form-group">
                        <label for="code">Code</label>
                        <form:input path="code" cssClass="form-control form-control-user"/>
                        <form:errors path="code" cssClass="text-danger"/>
                    </div>

                    <div class="form-group">
                        <label for="realEstateId">Real Estate</label>
                        <form:select path="realEstate.id" items="${realEstates}" itemLabel="street" itemValue="id" cssClass="form-control form-control-user" id="realEstateId"/>
                        <form:errors path="realEstate.id" cssClass="text-danger"/>
                    </div>

                    <div class="form-group">
                        <label for="clientId">Client</label>
                        <form:select path="client.id" items="${clients}" itemLabel="lastName" itemValue="id" cssClass="form-control form-control-user" id="clientId"/>
                        <form:errors path="client.id" cssClass="text-danger"/>
                    </div>

                    <input type="submit" value="Submit" class="btn btn-primary btn-user btn-block"/>
                </form:form>

            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- End of Main Content -->
    </div>
    <!-- End of Content Wrapper -->
</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Bootstrap core JavaScript-->
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="/js/sb-admin-2.min.js"></script>
</body>
</html></html>