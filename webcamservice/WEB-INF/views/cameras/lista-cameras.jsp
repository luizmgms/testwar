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

        <div class="container">
            <!-- Default panel contents -->
            <h2 class="text-center">Cameras</h2>
            <hr>
            <div class="panel-heading">Lista de Cameras</div>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <td>Título</td>
                        <td>Descrição</td>
                        <td>IP</td>
                        <td>Ação</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${cameras }" var="camera">
                        <tr>
                            <td>${camera.titulo}</td>
                            <td>${camera.descricao }</td>
                            <td>${camera.ipcam}</td>                                                     
                            <td>
                                <!--Botão Ver Camera -->
                                <form action="/webcamservice/verCam" method="POST">
                                    <input type="hidden" name="end_cam" value="${camera.ipcam}">                                                                  
                                    <input type="submit" value="Ver" />
                                </form>                                
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <h3>${mensagemSucesso}</h3>
            <div class="button-box">
                <button type="submit" class="btn btn-primary btn-block"
                        onclick="window.location.href = '/webcamservice/verTodasCameras'">Ver Todas</button>
                <button type="submit" class="btn btn-primary btn-block"
                        onclick="window.location.href = '/webcamservice'">Voltar</button>
                <button type="submit" class="btn btn-primary btn-block"
                        onclick="window.location.href = '/webcamservice/novaCamera'">Nova Camera</button>
            </div>
        </div>

    </body>
</html>