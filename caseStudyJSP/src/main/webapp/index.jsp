<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
</head>
<body style="background-color: #3498db;">

<section class="vh-100 gradient-custom">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card bg-custom text-white" style="border-radius: 1rem;">
                    <div class="card-body p-5 text-center">

                        <div class="mb-md-5 mt-md-4 pb-5">
                            <form action="/login" class="row g-3">
                                <h2 class="fw-bold mb-4 text-black">Login</h2>

                                <div class="col-12">
                                    <div class="input-group mb-4">
                                        <span class="input-group-text" id="basic-addon1" style="background-color: #2c3e50;"><i class="fas fa-user"></i></span>
                                        <input type="text" name="username" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="input-group mb-4">
                                        <span class="input-group-text" id="basic-addon2" style="background-color: #2c3e50;"><i class="fas fa-lock"></i></span>
                                        <input type="password" name="password" class="form-control" placeholder="Password" aria-label="Password" aria-describedby="basic-addon2">
                                    </div>
                                </div>

                                <p class="small mb-4"><a class="text-black-50" href="#!" style="color: #050b0c;">Forgot password?</a></p>

                                <div class="col-12">
                                    <button class="btn btn-outline-light btn-lg px-5" type="submit" style="background-color: #e74c3c;">Login</button>
                                </div>

                                <div class="col-12 mt-4">
                                    <div class="d-flex justify-content-center text-center" style="color: #050b0c">
                                        <a href="#!" class="text-black"><i class="fab fa-facebook-f fa-lg"></i></a>
                                        <a href="#!" class="text-black mx-4"><i class="fab fa-twitter fa-lg"></i></a>
                                        <a href="#!" class="text-black"><i class="fab fa-google fa-lg"></i></a>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <div>
                            <p class="mb-0" style="color: #050b0c;">Don't have an account? <a href="/signup" class="text-white-50 fw-bold">Sign Up</a></p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

</body>
</html>
