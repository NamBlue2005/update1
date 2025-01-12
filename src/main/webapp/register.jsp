<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #fff8e1;
        }
        .btn-orange {
            background-color: #ff5722;
            border: none;
        }
        .btn-orange:hover {
            background-color: #e64a19;
        }
        .text-orange {
            color: #ff5722;
        }
        .form-control:focus {
            border-color: #ff5722;
            box-shadow: 0 0 5px rgba(255, 87, 34, 0.5);
        }
        .card {
            border: none;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="card shadow mx-auto" style="max-width: 500px;">
        <div class="card-body">
            <h1 class="text-center text-orange">Register</h1>
            <hr>
            <form action="registerCustomer" method="post">
                <div class="mb-3">
                    <label for="registerName" class="form-label">Name</label>
                    <input type="text" class="form-control" id="registerName" name="name" required>
                </div>
                <div class="mb-3">
                    <label for="registerPhone" class="form-label">Phone</label>
                    <input type="text" class="form-control" id="registerPhone" name="phone" required>
                </div>
                <div class="mb-3">
                    <label for="registerEmail" class="form-label">Email</label>
                    <input type="email" class="form-control" id="registerEmail" name="email" required>
                </div>
                <div class="mb-3">
                    <label for="registerAddress" class="form-label">Address</label>
                    <textarea class="form-control" id="registerAddress" name="address" required></textarea>
                </div>
                <div class="mb-3">
                    <label for="registerGender" class="form-label">Gender</label>
                    <select class="form-select" id="registerGender" name="gender" required>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="registerPassword" class="form-label">Password</label>
                    <input type="password" class="form-control" id="registerPassword" name="password" required>
                </div>
                <button type="submit" class="btn btn-orange w-100">Register</button>
                <p class="mt-3 text-center">Already have an account? <a href="login.jsp" class="text-orange">Login here</a>.</p>
                <c:if test="${not empty registerError}">
                    <div class="alert alert-danger mt-3">
                            ${registerError}
                    </div>
                </c:if>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
