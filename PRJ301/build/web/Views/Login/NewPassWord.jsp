<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <title>Document</title>
</head>
<style>
    html,
    body {
        height: 100%;
    }

    body {
        display: -ms-flexbox;
        display: -webkit-box;
        display: flex;
        -ms-flex-align: center;
        -ms-flex-pack: center;
        -webkit-box-align: center;
        align-items: center;
        -webkit-box-pack: center;
        justify-content: center;
        background-color: #f5f5f5;
    }

    form {
        padding-top: 10px;
        font-size: 13px;
        margin-top: 30px;
    }

    .card-title {
        font-weight: 300;
    }

    .btn {
        font-size: 13px;
    }

    .login-form {
        width: 320px;
        margin: 20px;
    }

    .sign-up {
        text-align: center;
        padding: 20px 0 0;
    }

    span {
        font-size: 14px;
    }

    .submit-btn {
        margin-top: 20px;
    }
</style>

<body>
    <div class="card login-form">
        <div class="card-body">
            <h3 class="card-title text-center">Change password</h3>
            <div class="card-text">
                <form action="<%=request.getContextPath()%>/NewPassWord" method="post">
                        ${requestScope.ms}
                    <div class="form-group">
                        <label>Enter Old Password</label>
                        <input type="password" class="form-control form-control-sm" name="oldpass">
                    </div>
                    <div class="form-group">
                        <label>Your new password</label>
                        <input type="password" class="form-control form-control-sm" name="newpass">
                    </div>
                    <div class="form-group">
                        <label>Re-New password</label>
                        <input type="password" class="form-control form-control-sm" name="renewpass">
                    </div>
                    <button type="submit" class="btn btn-primary btn-block submit-btn">Change</button>
                </form>
            </div>
        </div>
    </div>
</body>

</html>