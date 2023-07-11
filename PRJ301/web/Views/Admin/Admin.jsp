<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">


    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>
            Robert Admin
        </title>
        <link rel="shortcut icon" href="/images/logo-mb.png" type="image/png">
        <!-- GOOGLE FONT -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
        <!-- BOXICONS -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <!-- APP CSS -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/app.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/grid.css">
    </head>


    <body>


        <!-- SIDEBAR -->
        <div class="sidebar">
            <div class="sidebar-logo">
                <img src="<%=request.getContextPath()%>/img/logo.png" alt="Comapny logo">
                <div class="sidebar-close" id="sidebar-close">
                    <i class='bx bx-left-arrow-alt'></i>
                </div>
            </div>
            <div class="sidebar-user">
                <div class="sidebar-user-info">
                    <a href="<%=request.getContextPath()%>/Views/Admin/Admin.jsp"><img src="<%=request.getContextPath()%>/img/logo.png" alt="User picture" class="profile-image"></a>
                    <div class="sidebar-user-name">
                        ${sessionScope.account.username}
                    </div>
                </div>
                <button class="btn btn-outline">
                    <a href="<%=request.getContextPath()%>/LogoutController"><i class='bx bx-log-out bx-flip-horizontal'></i></a>
                </button>
            </div>
            <!-- SIDEBAR MENU -->
            <ul class="sidebar-menu">
                <li>
                    <a href="#" class="active">
                        <i class='bx bx-home'></i>
                        <span>dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-shopping-bag'></i>
                        <span>sales</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-chart'></i>
                        <span>analytic</span>
                    </a>
                </li>
                <li class="sidebar-submenu">
                    <a href="#" class="sidebar-menu-dropdown">
                        <i class='bx bx-user-circle'></i>
                        <span>manager account</span>
                        <div class="dropdown-icon"></div>
                    </a>
                    <ul class="sidebar-menu sidebar-menu-dropdown-content">
                        <li>
                            <a href="<%=request.getContextPath()%>/ListAccount">
                                list account
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-submenu">
                    <a href="#" class="sidebar-menu-dropdown">
                        <i class='bx bx-category'></i>
                        <span>category</span>
                        <div class="dropdown-icon"></div>
                    </a>
                    <ul class="sidebar-menu sidebar-menu-dropdown-content">
                        <li>
                            <a href="<%=request.getContextPath()%>/ManagerCategory">
                                list category
                            </a>
                        </li>
                        <li>
                            <a href="<%=request.getContextPath()%>/Views/Admin/AddCategory.jsp">
                                add category
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-submenu">
                    <a href="#" class="sidebar-menu-dropdown">
                        <i class='bx bx-category'></i>
                        <span>e-commerce</span>
                        <div class="dropdown-icon"></div>
                    </a>
                    <ul class="sidebar-menu sidebar-menu-dropdown-content">
                        <li>
                            <a href="<%=request.getContextPath()%>/ManagerProduct">
                                list product
                            </a>
                        </li>
                        <li>
                            <a href="<%=request.getContextPath()%>/CatBrandSize">
                                add product
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                orders
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-mail-send'></i>
                        <span>mail</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-chat'></i>
                        <span>chat</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-calendar'></i>
                        <span>calendar</span>
                    </a>
                </li>
                <li class="sidebar-submenu">
                    <a href="#" class="sidebar-menu-dropdown">
                        <i class='bx bx-cog'></i>
                        <span>settings</span>
                        <div class="dropdown-icon"></div>
                    </a>
                    <ul class="sidebar-menu sidebar-menu-dropdown-content">
                        <li>
                            <a href="#" class="darkmode-toggle" id="darkmode-toggle">
                                darkmode
                                <span class="darkmode-switch"></span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- END SIDEBAR MENU -->
        </div>
        <!-- END SIDEBAR -->


        <!-- MAIN CONTENT -->
        <div class="main">
            <div class="main-header">
                <div class="mobile-toggle" id="mobile-toggle">
                    <i class='bx bx-menu-alt-right'></i>
                </div>
                <div class="main-title">
                    dashboard
                </div>
            </div>
            <div class="main-content">
                <div class="row">
                    <div class="col-3 col-md-6 col-sm-12">
                        <div class="box box-hover">
                            <!-- COUNTER -->
                            <div class="counter">
                                <div class="counter-title">
                                    total order
                                </div>
                                <div class="counter-info">
                                    <div class="counter-count">
                                        6578
                                    </div>
                                    <i class='bx bx-shopping-bag'></i>
                                </div>
                            </div>
                            <!-- END COUNTER -->
                        </div>
                    </div>
                    <div class="col-3 col-md-6 col-sm-12">
                        <div class="box box-hover">
                            <!-- COUNTER -->
                            <div class="counter">
                                <div class="counter-title">
                                    conversion rate
                                </div>
                                <div class="counter-info">
                                    <div class="counter-count">
                                        30.5%
                                    </div>
                                    <i class='bx bx-chat'></i>
                                </div>
                            </div>
                            <!-- END COUNTER -->
                        </div>
                    </div>
                    <div class="col-3 col-md-6 col-sm-12">
                        <div class="box box-hover">
                            <!-- COUNTER -->
                            <div class="counter">
                                <div class="counter-title">
                                    total profit
                                </div>
                                <div class="counter-info">
                                    <div class="counter-count">
                                        $9,780
                                    </div>
                                    <i class='bx bx-line-chart'></i>
                                </div>
                            </div>
                            <!-- END COUNTER -->
                        </div>
                    </div>
                    <div class="col-3 col-md-6 col-sm-12">
                        <div class="box box-hover">
                            <!-- COUNTER -->
                            <div class="counter">
                                <div class="counter-title">
                                    daily visitors
                                </div>
                                <div class="counter-info">
                                    <div class="counter-count">
                                        690
                                    </div>
                                    <i class='bx bx-user'></i>
                                </div>
                            </div>
                            <!-- END COUNTER -->
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-3 col-md-6 col-sm-12">
                        <!-- TOP PRODUCT -->
                        <div class="box f-height">
                            <div class="box-header">
                                top product
                            </div>
                            <div class="box-body">
                                <ul class="product-list">
                                    <li class="product-list-item">
                                        <div class="item-info">
                                            <img src="./images/thumb-7.jpg" alt="product image">
                                            <div class="item-name">
                                                <div class="product-name">Jacket</div>
                                                <div class="text-second">Cloths</div>
                                            </div>
                                        </div>
                                        <div class="item-sale-info">
                                            <div class="text-second">Sales</div>
                                            <div class="product-sales">$5,930</div>
                                        </div>
                                    </li>
                                    <li class="product-list-item">
                                        <div class="item-info">
                                            <img src="./images/sneaker.jpg" alt="product image">
                                            <div class="item-name">
                                                <div class="product-name">sneaker</div>
                                                <div class="text-second">Cloths</div>
                                            </div>
                                        </div>
                                        <div class="item-sale-info">
                                            <div class="text-second">Sales</div>
                                            <div class="product-sales">$5,930</div>
                                        </div>
                                    </li>
                                    <li class="product-list-item">
                                        <div class="item-info">
                                            <img src="./images/headphone.jpg" alt="product image">
                                            <div class="item-name">
                                                <div class="product-name">headphone</div>
                                                <div class="text-second">Devices</div>
                                            </div>
                                        </div>
                                        <div class="item-sale-info">
                                            <div class="text-second">Sales</div>
                                            <div class="product-sales">$5,930</div>
                                        </div>
                                    </li>
                                    <li class="product-list-item">
                                        <div class="item-info">
                                            <img src="./images/backpack.jpg" alt="product image">
                                            <div class="item-name">
                                                <div class="product-name">Backpack</div>
                                                <div class="text-second">Bags</div>
                                            </div>
                                        </div>
                                        <div class="item-sale-info">
                                            <div class="text-second">Sales</div>
                                            <div class="product-sales">$5,930</div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- TOP PRODUCT -->
                    </div>
                    <div class="col-4 col-md-6 col-sm-12">
                        <!-- CATEGORY CHART -->
                        <div class="box f-height">
                            <div class="box-body">
                                <div id="category-chart"></div>
                            </div>
                        </div>
                        <!-- END CATEGORY CHART -->
                    </div>
                    <div class="col-5 col-md-12 col-sm-12">
                        <!-- CUSTOMERS CHART -->
                        <div class="box f-height">
                            <div class="box-header">
                                customers
                            </div>
                            <div class="box-body">
                                <div id="customer-chart"></div>
                            </div>
                        </div>
                        <!-- END CUSTOMERS CHART -->
                    </div>
                    <div class="col-12">
                        <!-- ORDERS TABLE -->
                        <div class="box">
                            <div class="box-header">
                                Recent orders
                            </div>
                            <div class="box-body overflow-scroll">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Customer</th>
                                            <th>Date</th>
                                            <th>Order status</th>
                                            <th>Payment status</th>
                                            <th>Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>#2345</td>
                                            <td>
                                                <div class="order-owner">
                                                    <img src="./images/user-image.jpg" alt="user image">
                                                    <span>tuat tran anh</span>
                                                </div>
                                            </td>
                                            <td>2021-05-09</td>
                                            <td>
                                                <span class="order-status order-ready">
                                                    Ready
                                                </span>
                                            </td>
                                            <td>
                                                <div class="payment-status payment-pending">
                                                    <div class="dot"></div>
                                                    <span>Pending</span>
                                                </div>
                                            </td>
                                            <td>$123.45</td>
                                        </tr>
                                        <tr>
                                            <td>#2345</td>
                                            <td>
                                                <div class="order-owner">
                                                    <img src="./images/user-image-2.png" alt="user image">
                                                    <span>John doe</span>
                                                </div>
                                            </td>
                                            <td>2021-05-09</td>
                                            <td>
                                                <span class="order-status order-shipped">
                                                    Shipped
                                                </span>
                                            </td>
                                            <td>
                                                <div class="payment-status payment-paid">
                                                    <div class="dot"></div>
                                                    <span>Paid</span>
                                                </div>
                                            </td>
                                            <td>$123.45</td>
                                        </tr>
                                        <tr>
                                            <td>#2345</td>
                                            <td>
                                                <div class="order-owner">
                                                    <img src="./images/user-image-3.png" alt="user image">
                                                    <span>evelyn</span>
                                                </div>
                                            </td>
                                            <td>2021-05-09</td>
                                            <td>
                                                <span class="order-status order-shipped">
                                                    Shipped
                                                </span>
                                            </td>
                                            <td>
                                                <div class="payment-status payment-paid">
                                                    <div class="dot"></div>
                                                    <span>Paid</span>
                                                </div>
                                            </td>
                                            <td>$123.45</td>
                                        </tr>
                                        <tr>
                                            <td>#2345</td>
                                            <td>
                                                <div class="order-owner">
                                                    <img src="./images/user-image-2.png" alt="user image">
                                                    <span>John doe</span>
                                                </div>
                                            </td>
                                            <td>2021-05-09</td>
                                            <td>
                                                <span class="order-status order-shipped">
                                                    Shipped
                                                </span>
                                            </td>
                                            <td>
                                                <div class="payment-status payment-paid">
                                                    <div class="dot"></div>
                                                    <span>Paid</span>
                                                </div>
                                            </td>
                                            <td>$123.45</td>
                                        </tr>
                                        <tr>
                                            <td>#2345</td>
                                            <td>
                                                <div class="order-owner">
                                                    <img src="./images/user-image-3.png" alt="user image">
                                                    <span>evelyn</span>
                                                </div>
                                            </td>
                                            <td>2021-05-09</td>
                                            <td>
                                                <span class="order-status order-shipped">
                                                    Shipped
                                                </span>
                                            </td>
                                            <td>
                                                <div class="payment-status payment-paid">
                                                    <div class="dot"></div>
                                                    <span>Paid</span>
                                                </div>
                                            </td>
                                            <td>$123.45</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- END ORDERS TABLE -->
                    </div>
                </div>
            </div>
        </div>
        <!-- END MAIN CONTENT -->


        <div class="overlay"></div>
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <script>
            document.querySelectorAll('.sidebar-submenu').forEach(e => {
                e.querySelector('.sidebar-menu-dropdown').onclick = (event) => {
                    event.preventDefault()
                    e.querySelector('.sidebar-menu-dropdown .dropdown-icon').classList.toggle('active')

                    let dropdown_content = e.querySelector('.sidebar-menu-dropdown-content')
                    let dropdown_content_lis = dropdown_content.querySelectorAll('li')

                    let active_height = dropdown_content_lis[0].clientHeight * dropdown_content_lis.length

                    dropdown_content.classList.toggle('active')

                    dropdown_content.style.height = dropdown_content.classList.contains('active') ? active_height + 'px' : '0'
                }
            })

            let category_options = {
                series: [44, 55, 41, 17],
                labels: ['Cloths', 'Devices', 'Bags', 'Watches'],
                chart: {
                    type: 'donut',
                },
                colors: ['#6ab04c', '#2980b9', '#f39c12', '#d35400']
            }

            let category_chart = new ApexCharts(document.querySelector("#category-chart"), category_options)
            category_chart.render()

            let customer_options = {
                series: [{
                        name: "Store Customers",
                        data: [40, 70, 20, 90, 36, 80, 30, 91, 60]
                    }, {
                        name: "Online Customers",
                        data: [20, 30, 10, 20, 16, 40, 20, 51, 10]
                    }],
                colors: ['#6ab04c', '#2980b9'],
                chart: {
                    height: 350,
                    type: 'line',
                },
                dataLabels: {
                    enabled: false
                },
                stroke: {
                    curve: 'smooth'
                },
                xaxis: {
                    categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep'],
                },
                legend: {
                    position: 'top'
                }
            }

            let customer_chart = new ApexCharts(document.querySelector("#customer-chart"), customer_options)
            customer_chart.render()

            setDarkChart = (dark) => {
                let theme = {
                    theme: {
                        mode: dark ? 'dark' : 'light'
                    }
                }

                customer_chart.updateOptions(theme)
                category_chart.updateOptions(theme)
            }

            // DARK MODE TOGGLE
            let darkmode_toggle = document.querySelector('#darkmode-toggle')

            darkmode_toggle.onclick = (e) => {
                e.preventDefault()
                document.querySelector('body').classList.toggle('dark')
                darkmode_toggle.querySelector('.darkmode-switch').classList.toggle('active')
                setDarkChart(document.querySelector('body').classList.contains('dark'))
            }

            let overlay = document.querySelector('.overlay')
            let sidebar = document.querySelector('.sidebar')

            document.querySelector('#mobile-toggle').onclick = () => {
                sidebar.classList.toggle('active')
                overlay.classList.toggle('active')
            }

            document.querySelector('#sidebar-close').onclick = () => {
                sidebar.classList.toggle('active')
                overlay.classList.toggle('active')
            }
        </script>


    </body>


</html>

