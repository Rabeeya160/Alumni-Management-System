<!doctype html>
<%@page import = "classes.DBUtils" %>
<%@page import = "java.sql.*" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Admin Dashboard</title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

        <!-- Custom styles for this template -->
        <link href="dashboard.css" rel="stylesheet">
    </head>

    <body>
        <%@include file = "modals.jsp" %>
        <header>
            <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
                <a class="navbar-brand" href="#">Dashboard</a>
                <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarsExampleDefault">   
                    <form class="form-inline mt-2 mt-md-0">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Log Out</button>
                    </form>
                </div>
            </nav>
        </header>

        <div class="container-fluid">
            <div class="row my-5 py-5">
                <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
                    <ul class="nav nav-pills flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" href="#">View Alumni</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="modal" href="#deleteAlum">Delete A Member</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Add a Story</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Delete A Story</a>
                        </li>
                    </ul>

                    <ul class="nav nav-pills flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Add A Post</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Delete A Post</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Add A News</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Delete A News</a>
                        </li>

                    </ul>


                </nav>


                <main role="main" class="col-sm-9 ml-sm-auto col-md-10 my-4">
                    <h1>Dashboard</h1>
                    <h2>Alumni List</h2>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Registation</th>
                                    <th>Email</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% ResultSet rs = DBUtils.viewAlumniList();
                                    while (rs.next()) {
                                %>
                                <tr>
                                    <td><%=rs.getString("alumniID")%></td>
                                    <td><%=rs.getString("firstName")%></td>
                                    <td><%=rs.getString("lastName")%></td>
                                    <td><%=rs.getString("regNum")%></td>
                                    <td><%=rs.getString("email")%></td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                    </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
    </body>
</html>
