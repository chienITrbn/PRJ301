<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
   <head>
        <!-- Required meta tags-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Colorlib Templates">
        <meta name="author" content="Colorlib">
        <meta name="keywords" content="Colorlib Templates">
        <title>Edit Account</title>
        <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
        <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
        <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
        <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
        <link href="<%=request.getContextPath()%>/css/edit.css" rel="stylesheet" media="all">
    </head>


    <body>
        <button type="button" class="btn btn-default btn-sm">
            <a href="<%=request.getContextPath()%>/Views/Admin/Admin.jsp"><span class="glyphicon glyphicon-arrow-left"></span> Back To Home</a>
        </button>
        <div class="page-wrapper bg-blue p-t-100 p-b-100 font-robo">
            <div class="wrapper wrapper--w680">
                <div class="card card-1">
                    <div class="card-heading"></div>
                    <div class="card-body">
                        <h2 class="title">Edit Account</h2>
                        <form action="<%=request.getContextPath()%>/EditAccount" method="POST">
                            <c:set var="e" value="${AccountEdit}"/>
                            <div class="input-group">
                                <input class="input--style-1" type="text" readonly value="${e.username}" name="username">
                            </div>
                            <div class="input-group">
                                <input class="input--style-1" type="text" placeholder="PassWord" value="${e.password}" name="password">
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="role">
                                            <option disabled="disabled" selected="selected">Role</option>
                                            <option value="0">Admin</option>
                                            <option value="1">Customer</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="active">
                                            <option disabled="disabled" selected="selected">Active</option>
                                            <option value="0">True</option>
                                            <option value="1">False</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="input-group">
                                <input class="input--style-1" type="text" placeholder="Email" value="${e.email}" name="email">
                            </div>
                            <div class="p-t-20">
                                <button class="btn btn--radius btn--green" type="submit">Edit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <!-- Jquery JS-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <!-- Vendor JS-->
        <script src="vendor/select2/select2.min.js"></script>
        <script src="vendor/datepicker/moment.min.js"></script>
        <script src="vendor/datepicker/daterangepicker.js"></script>


        <!-- Main JS-->
        <script src="js/global.js"></script>

        <script>
            (function ($) {
                'use strict';
                /*==================================================================
                 [ Daterangepicker ]*/
                try {
                    $('.js-datepicker').daterangepicker({
                        "singleDatePicker": true,
                        "showDropdowns": true,
                        "autoUpdateInput": false,
                        locale: {
                            format: 'DD/MM/YYYY'
                        },
                    });

                    var myCalendar = $('.js-datepicker');
                    var isClick = 0;

                    $(window).on('click', function () {
                        isClick = 0;
                    });

                    $(myCalendar).on('apply.daterangepicker', function (ev, picker) {
                        isClick = 0;
                        $(this).val(picker.startDate.format('DD/MM/YYYY'));

                    });

                    $('.js-btn-calendar').on('click', function (e) {
                        e.stopPropagation();

                        if (isClick === 1)
                            isClick = 0;
                        else if (isClick === 0)
                            isClick = 1;

                        if (isClick === 1) {
                            myCalendar.focus();
                        }
                    });

                    $(myCalendar).on('click', function (e) {
                        e.stopPropagation();
                        isClick = 1;
                    });

                    $('.daterangepicker').on('click', function (e) {
                        e.stopPropagation();
                    });


                } catch (er) {
                    console.log(er);
                }
                /*[ Select 2 Config ]
                 ===========================================================*/

                try {
                    var selectSimple = $('.js-select-simple');

                    selectSimple.each(function () {
                        var that = $(this);
                        var selectBox = that.find('select');
                        var selectDropdown = that.find('.select-dropdown');
                        selectBox.select2({
                            dropdownParent: selectDropdown
                        });
                    });

                } catch (err) {
                    console.log(err);
                }


            })(jQuery);
        </script>
    </body><!-- This templates was made by Colorlib (https://colorlib.com) -->


</html>
<!-- end document-->





