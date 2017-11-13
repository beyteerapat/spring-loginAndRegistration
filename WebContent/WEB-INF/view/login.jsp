<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

</head>
<body onload='document.f.username.focus();'>
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

          <p class="login-headline">Login</p>

          <div class="row">

            <form class="login-form col-6 offset-3" role="form" method="post" name='f' action='${pageContext.request.contextPath}/login' accept-charset="UTF-8">
              <div class="form-group">
                <label for="exampleInputEmail1">Username</label>
                <input type="text" class="form-control" name="username" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter username">
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" name="password" id="exampleInputPassword1" placeholder="Enter Password">
              </div>
              <c:if test="${param.error != null}">
              	<p class="error">Login failed. Check your username and password are correct </p>
              </c:if>
              <button type="submit" name="submit" class="btn btn-primary login-btn">Login</button>
            </form>

          </div>


        <a class="link-create-account" href="${pageContext.request.contextPath}/register">create new account</a>

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