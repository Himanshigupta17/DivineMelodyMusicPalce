<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="admin.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    </head>
    <body>
        <!-- Button trigger modal -->
        <div class="admin">
             <button type="button" class="btn btn-primary " data-bs-toggle="modal" data-bs-target="#exampleModal">
                Admin Login
            </button>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title text-center" id="exampleModalLabel">Admin Login</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="get_admin_login.jsp">
                            <div class="row">
                                <div class="col-75 login form-floating mb-3">
                                    <input type="text" class="form-control" id="floatingInput login-input" name="loginId" placeholder="Enter your Login ID" required>
                                    <label for="floatingID">Login ID</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-75 form-floating mb-3">
                                    <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="Enter password" required>
                                    <label for="floatingPassword">Password</label>
                                </div>
                            </div><br>
                            <div class="row submit-button">
                                <input type="submit" value="Login" >
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
