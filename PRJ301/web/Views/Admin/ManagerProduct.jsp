<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

    <head>
        <title>Table 03</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/product.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>

    <body>
        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <button type="button" class="btn btn-default btn-sm">
                        <a href="<%=request.getContextPath()%>/Views/Admin/Admin.jsp"><span class="glyphicon glyphicon-arrow-left"></span> Back To Home</a>
                    </button>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="text-center mb-4">List Product</h4>
                        <div class="table-wrap">
                            <table class="table">
                                <thead class="thead-primary">
                                    <tr>
                                        <th>ProductId</th>
                                        <th>NAME</th>
                                        <th>Description</th>
                                        <th>Category</th>
                                        <th>Price</th>
                                        <th>Brand</th>
                                        <th>Image</th>
                                        <th>Created</th>
                                        <th>Quantity</th>
                                        <th>Size</th>
                                        <th>Delete</th>
                                        <th>Edit</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="lP" items="${requestScope.lProduct}">
                                    <tr>
                                        <th scope="row" style="color: #666666;">${lP.productId}</th>
                                        <td>${lP.name}</td>
                                        <td>${lP.description}</td>
                                        <td>${lP.categoryId}</td>
                                        <td>${lP.competitive_price}</td>
                                        <td>${lP.brandId}</td>
                                        <td><img style="width: 20%;" src="${lP.image}" alt=""></td>
                                        <td>${lP.created}</td>
                                        <td>${lP.quantity}</td>
                                        <td>${lP.size}</td>
                                        <!-- getProductID  -->
                                        <td>
                                             <a href="#"onclick="doDelete('${lP.productId}')">
                                                 <span class="glyphicon glyphicon-trash"></span>
                                            </a>
                                        </td>
                                        <td>
                                            <!-- khi nguoi dung click edit
                                                 goi ve controller va truyen 1 bien pid
                                            -->
                                            <a href="<%=request.getContextPath()%>/EditProduct?pid=${lP.productId}">
                                                <span class="glyphicon glyphicon-pencil"></span>
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
        </section>

        <script src="js/jquery.min.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
        <script type="text/javascript">
            <!-- bat su kien onclick truyen id(productId) ve controller DeleteProduct
            -->
            function doDelete(id) {
                if (confirm("Are you sure to delete Product")) {
                    window.location = "DeleteProduct?id=" + id;
                }
            }
        </script>
    </body>

</html>