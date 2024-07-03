<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Owner</title>
    <!-- Custom fonts for this template-->
    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,300,400,600,700,800,900"
            rel="stylesheet">
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
                <h1 class="h3 mb-4 text-gray-800">Add new RealEstate</h1>
                <form:form method="post" modelAttribute="contract" class="user">
                    <form:hidden path="id"/>

                    <div class="form-group">
                        <label for="duration">Duration</label>
                        <form:input path="duration" cssClass="form-control form-control-user"/>
                        <form:errors path="duration" cssClass="text-danger"/>
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
                        <label for="status">Status</label>
                        <form:input path="status" cssClass="form-control form-control-user"/>
                        <form:errors path="status" cssClass="text-danger"/>
                    </div>

                    <div class="form-group">
                        <label for="code">Code</label>
                        <form:input path="code" cssClass="form-control form-control-user"/>
                        <form:errors path="code" cssClass="text-danger"/>
                    </div>

                    <<div class="form-group">
                    <label for="realEstate">Real Estate</label>
                    <form:select path="realEstate" cssClass="form-control form-control-user">
                        <option value="" label="Select a Real Estate"></option>
                        <c:forEach items="${realEstates}" var="realEstate">
                            <option value="${realEstate.id}" label="${realEstate.street}"></option>
                        </c:forEach>
                    </form:select>
                    <form:errors path="realEstate" cssClass="text-danger"/>
                    </div>

<%--                    <div class="form-group">--%>
<%--                        <label for="room">Room</label>--%>
<%--                        <form:select path="room.id" cssClass="form-control form-control-user">--%>
<%--                            <option value="" label="Select a Room"></option>--%>
<%--                            <c:forEach items="${rooms}" var="room">--%>
<%--                                <option value="${room.id}" label="${room.description}"></option>--%>
<%--                            </c:forEach>--%>
<%--                        </form:select>--%>
<%--                        <form:errors path="room.id" cssClass="text-danger"/>--%>
<%--                    </div>--%>

<%--                    <div class="form-group">--%>
<%--                        <label for="client">Client</label>--%>
<%--                        <form:select path="client.id" cssClass="form-control form-control-user">--%>
<%--                            <option value="" label="Select a Client"></option>--%>
<%--                            <c:forEach items="${clients}" var="client">--%>
<%--                                <option value="${client.id}" label="${client.firstName} ${client.lastName}"></option>--%>
<%--                            </c:forEach>--%>
<%--                        </form:select>--%>
<%--                        <form:errors path="client.id" cssClass="text-danger"/>--%>
<%--                    </div>--%>

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
</html>