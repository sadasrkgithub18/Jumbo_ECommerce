<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Sign up</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />

    <!-- Bootstrap JS Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

    <style>
         .container {
            width: 500px;
            background:#fff;
        }
        body{
            background-color:lightblue;
        }
        h2{
            color:blue;
            text-align: center;
        }
        p{
            text-align: center;
        }
    </style>
</head>


<body>

    <div class="container">

        <form action="registration.jsp" method="post">

            <div>
                <h2>Signup Form</h2>
                <p>Please fill the details to create an account</p>
            </div>

            <div class="row mt-4">
                <div class="input-group mb-3 col">
                    <span class="input-group-text">
                        <i class="bi bi-person-fill"></i> </span>
                    <input type="text" class="form-control" placeholder="username"  size=10 name="username">
                </div>
            </div>



            <div class="row">
                <div class="input-group mb-3 col">
                    <span class="input-group-text">
                        <i class="bi bi-file-lock-fill"></i> </span>
                    <input type="password" class="form-control" placeholder="password"  name="password">
                </div>
            </div>


            <div class="row">
                <div class="input-group mb-3 col">
                    <span class="input-group-text">
                        <i class="bi bi-person-fill"></i> </span>
                    <input type="text" class="form-control" placeholder="firstname" name="firstname">
                </div>
            </div>


            <div class="row">
                <div class="input-group mb-3 col">
                    <span class="input-group-text">
                        <i class="bi bi-person-fill"></i></span>
                    <input type="text" class="form-control" placeholder="lastname" name="lastname">
                </div>
            </div>

			  
              <div class="row">
                <div class="col-sm-6">
                    <div class="form-check">
                        <input class="form-check-input" type="radio"  name="gender" value="M">Male
                      </div>
                </div>
                
                <div class="col-sm-6">
                <div class="form-check">
                    <input class="form-check-input" type="radio"  name="gender" value="F">Female
                  </div>
                </div>
              </div>
              
            <div class="row">
                <div class="input-group mb-3 col">
                    <span class="input-group-text">
                        <i class="bi bi-telephone"></i></span>
                        <input type="tel"   placeholder="+91-000-000-0000" name="mobile">
                </div>
            </div>

            <div class="row">
                <div class="input-group mb-3 col">
                    <span class="input-group-text">
                        <i class="fa fa-calendar" aria-hidden="true"></i></span>
                    <input type="date" class="form-control" name="dob">
                </div>
            </div>

            <div class="row">
                <div class="input-group mb-3 col">
                    <span class="input-group-text">
                        <i class="bi bi-envelope"></i> </span>
                    <input type="email" class="form-control" placeholder="email"  name="email">
                </div>
            </div>

            <div class="row">
                <div class="input-group mb-3 col">
                    <span class="input-group-text">
                        <i class="bi bi-person-lines-fill"></i> </span>
                    <input type="text" class="form-control" placeholder="address" name="address">
                </div>
            </div>




            <div class="row">
                <div class="input-group mb-3 col">
                    <span class="input-group-text">
                        <i class="bi bi-house-door-fill"></i></i> </span>
                    <input type="text" class="form-control" placeholder="landmark" name="landmark">
                </div>
            </div>


            <div class="row">
                <div class="input-group mb-3 col">
                    <span class="input-group-text">
                        <i class="fas fa-city"></i> </span>
                    <input type="text" class="form-control" placeholder="city" name="city">
                </div>
            </div>

            <div class="row">
                <div class="input-group mb-3 col">
                    <span class="input-group-text">
                        <i class="fas fa-industry"></i> </span>
                    <input type="text" class="form-control" placeholder="state" name="state">
                </div>
            </div>

            <div class="row">
                <div class="input-group mb-3 col">
                    <span class="input-group-text">
                        <i class="bi bi-pin-map"></i>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-pin-map" viewBox="0 0 16 16">
                            <path fill-rule="evenodd"
                                d="M3.1 11.2a.5.5 0 0 1 .4-.2H6a.5.5 0 0 1 0 1H3.75L1.5 15h13l-2.25-3H10a.5.5 0 0 1 0-1h2.5a.5.5 0 0 1 .4.2l3 4a.5.5 0 0 1-.4.8H.5a.5.5 0 0 1-.4-.8l3-4z" />
                            <path fill-rule="evenodd"
                                d="M8 1a3 3 0 1 0 0 6 3 3 0 0 0 0-6zM4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999z" />
                        </svg>
                    </span>
                    <input type="number" class="form-control" placeholder="pincode" name="pincode">
                </div>
            </div>


             <div class="row">
                <div class="col-sm-6">
                    <input type="submit" class="form-control btn btn-primary btn-sm" value="Submit">
                </div>
                <div class="col-sm-6">
                    <p>Already Registered<a href="sign_in.jsp">&nbsp&nbsp sign_In</a></p>
                </div>
            </div>

        </form>
    </div>

</body>

</html>