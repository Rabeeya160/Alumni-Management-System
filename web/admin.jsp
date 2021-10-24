<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!doctype html>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>UET ALUMNI ASSOCIATION</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="css/carousel.css" rel="stylesheet">
  </head>
  <body>
<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper">
					<div class="brand text-center my-3">
                                            <img src="images/ulogo.png" class="rounded-circle" height="170px" width="170px">
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title">Admin Login</h4>
							<form method="POST" action="alumLogin.jsp">
							 
								<div class="form-group">
									<label for="email">E-Mail Address</label>

									<input id="email" type="email" class="form-control" name="email" value="" required autofocus>
								</div>

								<div class="form-group">
									<label for="password">Password
										
									</label>
									<input id="password" type="password" class="form-control" name="password" required data-eye>
								</div>

								<div class="form-group">
									<label>
										<input type="checkbox" name="remember"> Remember Me
									</label>
								</div>

								<div class="form-group no-margin">
									<button type="submit" class="btn btn-primary btn-block">
										Login
									</button>
								</div>
                                                                <div class="form-group no-margin">
									<a  href = "index.jsp" class="btn btn-primary btn-block">
										Back to Home Page!
									</a>
								</div>

								<div class="margin-top20 text-center">
									Not an admin?<a href="login-page.jsp">Alumni Login</a>
								</div>
							</form>
						</div>
					</div>
                                    <br/>
                                
                                    <hr class="hr-dark">
					<div class="footer">
						Copyright &copy; 2017 UET Lahore.
					</div>
				</div>
			</div>
		</div>
</section>   
      <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="js/holder.min.js"></script>
  </body>
</html>
