<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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
<body>
  <div class="container-fluid">

    <nav class="navbar navbar-bg">
      <a class="navbar-brand text-white" href="${pageContext.request.contextPath}/">HOME</a>
      <div class="float-right">
      
      <sec:authorize access="!isAuthenticated()">
      <a class="text-white" href="${pageContext.request.contextPath}/login">Login</a><p class="text-separate">&nbsp | </p>
      <a class="text-white" href="${pageContext.request.contextPath}/register">Register</a>
      </sec:authorize>
      
      <sec:authorize access="isAuthenticated()">
      <a class="text-white" href="${pageContext.request.contextPath}/logout">logout</a>
      </sec:authorize>
      
      </div>
    </nav>

    <div class="home-main-section">
      <p class="text-webdemo"> WEB DEMO </p>
      <div class="home-box-access"><a href="${pageContext.request.contextPath}/database" class="home-box-access-link">Access to database</a></div>
    </div>
  </div>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
</body>
</html>