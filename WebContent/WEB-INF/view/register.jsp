<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>

<!doctype html>
<html lang="en">
<head>
  <title>Hello, world!</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/mystyles.css">
  
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
  
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/matchPassword.js"></script>

</head>
<body>
  <div class="container-fluid">

    <nav class="navbar navbar-bg">
      <a class="navbar-brand text-white" href="${pageContext.request.contextPath}/">HOME</a>
      <div class="float-right">
      <a class="text-white" href="${pageContext.request.contextPath}/login">Login</a><p class="text-separate">&nbsp | </p>
      <a class="text-white" href="${pageContext.request.contextPath}/register">Register</a>
      </div>
    </nav>

    <div class="row container-body">

      <div class="col-12">

        <div class="login-section">

          <p class="login-headline">Register</p>

          <div class="row">

            <sf:form id="form-createuser" class="register-form col-6 offset-3" method="post" action="createuser" modelAttribute="user">
            
              <div class="form-group">
                	<label for="form-username">Username</label>
                	<sf:input class="form-control" type="text" id="form-username" name="username" path="username" placeholder="Your username"/>
             		<sf:errors cssClass="error" path="username" />
              </div>
              
              <div class="form-group">
                	<label for="form-password">Password</label>
                	<sf:input class="form-control" type="password"  id="form-password" name="password" path="password" placeholder="Your password"/>
              		<sf:errors cssClass="error" path="password" />
              </div>
              
              <div class="form-group">
		            <label for="form-confirmPassword">Repeat Password</label>
		            <input type="password" class="form-control" id="form-confirmPassword" placeholder="Repeat your password">
		            <div id="matchpass"></div>
        	  </div>
        	  
              <button type="submit" class="btn btn-primary login-btn">Register</button>
              
            </sf:form>

          </div>


        <a class="link-create-account" href="${pageContext.request.contextPath}/login">Login here</a>

        </div>


      </div>

    </div>

  </div>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
</body>
</html>