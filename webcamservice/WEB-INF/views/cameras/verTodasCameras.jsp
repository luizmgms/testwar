<%-- 
    Document   : verTodasCameras
    Created on : 15/03/2018, 10:14:19
    Author     : luiz
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Import da taglib -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html><head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WebCamService</title>

        <!-- Bootstrap -->
        <link href="resources/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="resources/css/starter-template.css" rel="stylesheet">
        <link rel="stylesheet" href="resources/css/meus-estilos.css" />
        <script src="resources/js/bootstrap-filestyle.min.js"></script>
    </head>

    <body>

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
            <div class="container topnav">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <figure class="logo">
                        <a class="navbar-brand topnav" href="/webcamservice"><span class="glyphicon glyphicon-camera"></span> - WebCamService</a>
                    </figure>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">				
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/webcamservice">Início</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>
        
        <c:forEach items="${cameras}" var="cam">
            <div align="center">
            <iframe name="iframe" style="border: 5;" src= "${cam.ipcam}"
                    width="680px" height="520px" marginheight="20" marginwidth="20"
                    frameborder="0" scrolling="yes" >
            </iframe>
        </div>
        </c:forEach>
                
        <div class="button-box">
            <button type="submit" class="btn btn-primary btn-block"
                    onclick="window.location.href = '/webcamservice/listaCameras'">Voltar</button>
        </div>
    </body>
</html>
