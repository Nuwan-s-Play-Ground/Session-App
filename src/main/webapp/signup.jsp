<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up | Session App</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <style>
        form label sup{
            color: red;
        }

        .toast .show{
            animation-name: hide;
            animation-duration: 5s;
            opacity: 0;
        }

        @keyframes hide {
            from{
                opacity: 1;
            }

            to {
                opacity: 0;
            }
        }
    </style>
</head>
<body class="vh-100 d-flex align-items-center justify-content-center">
<form action="signup.jsp" method="post" class="p-2 text-center border p-4 rounded">
    <h1 class="text-center">Session App</h1>
    <div class="mb-3">
        <label for="txt-name" class="form-label">Full Name<sup>*</sup></label>
        <input name="full-name" pattern="^[A-Za-z ]+$" required type="text" class="form-control text-center" id="txt-name" placeholder="Enter your full name">
    </div>
    <div class="mb-3">
        <label for="txt-email" class="form-label">Email address<sup>*</sup></label>
        <input name="email" required type="email" class="form-control text-center" id="txt-email" placeholder="Enter your email">
    </div>

    <div class="mb-3">
        <label for="txt-password" class="form-label">Password<sup>*</sup></label>
        <input name="password" minlength="4"  required type="password" class="form-control text-center" id="txt-password" placeholder="Enter your password">
    </div>

    <div class="mb-3">
        <label for="txt-password-confirm" class="form-label">Password<sup>*</sup></label>
        <input name="confirm-password" minlength="4" required type="password" class="form-control text-center" id="txt-password-confirm" placeholder="Confirm your password">
    </div>
    <div>
        <button type="button" class="btn btn-primary">Sign Up</button>
        <p class="pt-3 m-0">Already Have an account?
            <a href="signin.jsp">Sign In</a></p>
    </div>
</form>
<c:if test="${mismatch}">
<div class="position-fixed toast show align-items-center text-bg-warning border-0 top-0 start-50 translate-middle-x" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="d-flex">
        <div class="toast-body">
            Passwords are not matched
        </div>
        <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
    </div>
</div>
</c:if>
<c:if test="${error}">
    <div class="position-fixed toast show align-items-center text-bg-warning border-0 top-0 start-50 translate-middle-x" role="alert" aria-live="assertive" aria-atomic="true">
        <div class="d-flex">
            <div class="toast-body">
                Somthing went wrong
            </div>
            <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
    </div>
</c:if>
<c:if test="${duplicateemail}">
    <div class="position-fixed toast show align-items-center text-bg-warning border-0 top-0 start-50 translate-middle-x" role="alert" aria-live="assertive" aria-atomic="true">
        <div class="d-flex">
            <div class="toast-body">
                Email already exists.
            </div>
            <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
    </div>
</c:if>
</body>
</html>