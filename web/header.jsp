<%@page import="serviceLayer.ControllerFacade"%>
<%@page import="serviceLayer.entity.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1"> 
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
    </head>
    <body>
        <nav class="navbar navbar-default">
            <div class="container">

                <!-- Logo -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainNavBar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- Brand name button image (.svg) -->
                    <a href="index.jsp" class="navbar-brand"><svg width="200px" height="40px" viewBox="0 0 360 64" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:sketch="http://www.bohemiancoding.com/sketch/ns">
                        <!-- Generator: Sketch 3.3.3 (12081) - http://www.bohemiancoding.com/sketch -->
                        <title>Polygon Logo</title>
                        <desc>Created with Sketch.</desc>
                        <defs>
                        <radialGradient cx="49.1137092%" cy="54.9306905%" fx="49.1137092%" fy="54.9306905%" r="47.975159%" id="radialGradient-1">
                        <stop stop-color="#00AEEF" offset="19.78%"></stop>
                        <stop stop-color="#0072BC" offset="100%"></stop>
                        </radialGradient>
                        </defs>
                        <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" sketch:type="MSPage">
                        <g id="Polygon-Logo" sketch:type="MSLayerGroup">
                        <path d="M74.4,10.2 L92.4,10.2 C104.7,10.2 110.7,14.6 110.7,25.5 C110.7,35.6 105.4,39.7 94.3,39.7 L89.6,39.7 L89.6,52 L74.6,52 L74.6,10.2 L74.4,10.2 Z M89.5,28.8 L91.8,28.8 C94.7,28.8 96.2,27.5 96.2,25.3 C96.2,23.1 94.7,21.8 91.8,21.8 L89.5,21.8 L89.5,28.8 L89.5,28.8 Z" id="Shape" fill="#00AEEF" sketch:type="MSShapeGroup"></path>
                        <path d="M150.9,46.8 C146.8,50.8 141.1,53.1 134.9,53.1 C128.6,53.1 123.1,50.8 118.9,46.7 C114.8,42.7 112.6,37.3 112.6,31.1 C112.6,24.9 114.8,19.5 118.9,15.5 C123.1,11.4 128.7,9.2 134.9,9.2 C141.2,9.2 146.7,11.4 150.9,15.5 C155,19.5 157.2,25 157.2,31.1 C157.3,37.4 155,42.7 150.9,46.8 L150.9,46.8 Z M141.9,31.2 C141.9,26.3 139,23.2 134.9,23.2 C130.8,23.2 127.8,26.3 127.8,31.2 C127.8,36.1 130.8,39.1 134.9,39.1 C139,39.1 141.9,36.1 141.9,31.2 L141.9,31.2 Z" id="Shape" fill="#00AEEF" sketch:type="MSShapeGroup"></path>
                        <path d="M160.9,10.2 L175.9,10.2 L175.9,38.5 L190.5,38.5 L190.5,52 L160.8,52 L160.8,10.2 L160.9,10.2 Z" id="Shape" fill="#00AEEF" sketch:type="MSShapeGroup"></path>
                        <path d="M197.5,33.6 L183.5,10.3 L200.6,10.3 L204.1,18.4 C204.6,19.5 204.9,20.6 205.3,21.9 C205.7,20.6 206.1,19.5 206.6,18.4 L210.1,10.3 L227.1,10.3 L212.6,33.6 L212.6,52 L197.4,52 L197.4,33.6 L197.5,33.6 Z" id="Shape" fill="#00AEEF" sketch:type="MSShapeGroup"></path>
                        <path d="M244.2,37.1 L244.2,27.3 L267.3,27.3 C267.4,28.4 267.4,29.4 267.4,30.4 C267.4,36.1 266,40.8 263.1,44.7 C259,50.1 252.5,53.2 245,53.2 C238.6,53.2 233.1,51 229,46.9 C224.8,42.9 222.7,37.4 222.7,31.2 C222.7,25 224.9,19.6 229,15.5 C233.2,11.4 238.7,9.2 245,9.2 C253.5,9.2 260.4,13.1 264.6,20.3 L251.2,25.3 C249.7,23 247.8,21.8 245.2,21.8 C240.9,21.8 237.9,25.3 237.9,31.2 C237.9,37.1 240.8,40.5 245.6,40.5 C248.5,40.5 250.4,39.2 250.7,37 L244.2,37 L244.2,37.1 Z" id="Shape" fill="#00AEEF" sketch:type="MSShapeGroup"></path>
                        <path d="M308.5,46.8 C304.4,50.8 298.7,53.1 292.5,53.1 C286.2,53.1 280.7,50.8 276.5,46.7 C272.4,42.7 270.2,37.3 270.2,31.1 C270.2,24.9 272.4,19.5 276.5,15.5 C280.7,11.4 286.3,9.2 292.5,9.2 C298.7,9.2 304.3,11.4 308.5,15.5 C312.6,19.5 314.8,25 314.8,31.1 C314.9,37.4 312.7,42.7 308.5,46.8 L308.5,46.8 Z M299.6,31.2 C299.6,26.3 296.7,23.2 292.6,23.2 C288.5,23.2 285.5,26.3 285.5,31.2 C285.5,36.1 288.5,39.1 292.6,39.1 C296.7,39.1 299.6,36.1 299.6,31.2 L299.6,31.2 Z" id="Shape" fill="#00AEEF" sketch:type="MSShapeGroup"></path>
                        <path d="M318.2,10.2 L333,10.2 L346,32.1 C345.6,29.5 345.5,27.2 345.5,25.4 L345.5,24.2 L345.5,10.2 L360,10.2 L360,52 L345.1,52 L332.2,30.3 C332.6,33 332.7,35.2 332.7,36.9 L332.7,52 L318.2,52 L318.2,10.2 L318.2,10.2 Z" id="Shape" fill="#00AEEF" sketch:type="MSShapeGroup"></path>
                        <path d="M55.4,0 C50.1,0 44.7,0.7 39.5,2.1 C52.7,10.5 61.1,23.8 63.6,38.2 C64.9,25.4 62.4,12 55.4,0 L55.4,0 Z M18.9,51.7 C29.7,59.3 42.5,63.3 55.6,63.3 C58.2,58.8 60.2,53.9 61.6,48.9 C48.6,55.5 33.1,56.8 18.9,51.7 L18.9,51.7 Z M30.3,5.3 C28.1,6.3 25.9,7.4 23.8,8.6 C13.8,14.4 6.1,22.5 0.7,31.8 C3.4,36.5 6.7,40.7 10.4,44.4 C10.8,36.3 13.1,28.1 17.4,20.5 C20.8,14.6 25.2,9.4 30.3,5.3 L30.3,5.3 Z" id="Shape" fill="#A1A1A4" sketch:type="MSShapeGroup"></path>
                        <path d="M18.1,43.2 C18,36.7 19.6,30.1 23.1,24 C26.5,17.9 31.4,13.2 37,9.9 C49.3,16.9 56.3,29.7 56.4,42.9 C45,49.6 30.5,50.2 18.1,43.2 L18.1,43.2 Z" id="Shape" fill="url(#radialGradient-1)" sketch:type="MSShapeGroup"></path>
                        </g>
                        </g>
                        </svg></a>
                </div>

                <!-- Menu Items -->
                <div class="collapse navbar-collapse" id="mainNavBar">

                    <!-- Right side items when logged out--> 
                    <ul class="nav navbar-nav navbar-right">
                        <% if (session.getAttribute("customer") == null && session.getAttribute("admin") == null) { %>
                        <li><a href="login.jsp">Login</a></li>
                            <% } %>

                        <!-- Dropdown for User -->
                        <% if (session.getAttribute("loggedIn") != null && session.getAttribute("customer") != null) {%>
                        <% Customer customer = (Customer) session.getAttribute("customer");
                           customer = new ControllerFacade().getCustomerByCustomerId(customer.getCustomerId()); %>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><%= customer.getCustomerFirstName()%> <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="addBuilding.jsp">Add building</a></li>
                                <li><a href="viewBuildings.jsp">View my buildings</a></li>
                                <li><a href="viewProfile.jsp">View profile</a></li>
                                <li><a href="logout">Logout</a></li>
                            </ul>
                        </li> 
                        <% }%>
                        
                        <!-- Dropdown for Admin -->
                        <% if (session.getAttribute("loggedIn") != null && session.getAttribute("admin") != null) { %>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Admin <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="viewPendingCheckups.jsp">View pending checkups</a></li>
                                <li><a href="viewCustomers.jsp">View all customers</a></li>
                                <li><a href="createCustomer.jsp">Create new <strong>customer</strong></a></li>
                                <li><a href="createAdmin.jsp">Create new <strong>admin</strong></a></li>
                                <li><a href="logout">Logout</a></li>
                            </ul>
                        </li>
                        <% }%>

                    </ul>
                </div>
            </div>
        </nav>
        <div class="wrapper">