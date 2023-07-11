<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>List Product</title>
    </head>
    <style>
        html,
        body,
        .intro {
            height: 100%;
        }


        table td,
        table th {
            text-overflow: ellipsis;
            white-space: nowrap;
            overflow: hidden;
        }


        thead th,
        tbody th {
            color: #fff;
        }


        tbody td {
            font-weight: 500;
            color: rgba(255,255,255,.65);
        }


        .card {
            border-radius: .5rem;
        }
    </style>
    <body>
        <section class="intro">
            <div class="bg-image h-100"
                 style="background-image: url('https://mdbootstrap.com/img/Photos/new-templates/tables/img2.jpg');">
                <button type="button" class="btn btn-default btn-sm">
                    <a href="<%=request.getContextPath()%>/Views/Admin/Admin.jsp"><span class="glyphicon glyphicon-arrow-left"></span> Back To Home</a>
                </button>
                <div class="mask d-flex align-items-center h-100" style="background-color: rgba(0,0,0,.25);">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-12">
                                <div class="card bg-dark shadow-2-strong">
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-dark table-borderless mb-0">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">CategoryId</th>
                                                        <th scope="col">CategoryName</th>
                                                        <th scope="col">Edit</th>
                                                        <th scope="col">Delete</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="lCat" items="${requestScope.lCat}">
                                                        <tr>
                                                            <th scope="row">${lCat.id}</th>
                                                            <td>${lCat.name}</td>
                                                            <td> <a href="<%=request.getContextPath()%>/CheckUpdateCategory?cid=${lCat.id}">
                                                                    <span class="glyphicon glyphicon-pencil"></span>
                                                                </a>
                                                            </td>
                                                            <td> 
                                                                <a href="#"onclick="doDelete('${lCat.id}')">
                                                                    <span class="glyphicon glyphicon-trash"></span>
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script type="text/javascript">
            function doDelete(cid) {
                if (confirm("Are you sure to delete Category")) {
                    window.location = "DeleteCategory?cid=" + cid;
                }
            }
        </script>
    </body>
</html>

