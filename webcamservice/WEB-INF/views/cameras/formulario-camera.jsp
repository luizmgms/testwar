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
        <link href="resources/css/meus-estilos.css" rel="stylesheet">
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

        <div class="container-fluid">
            <div class="container">
                <div class="panel panel-default login-container" >
                    <form action="salvaCamera" method="post" enctype="multipart/form-data">
                        <h2 class="text-center">Cadastrar Camera</h2>
                        <hr>
                        <div class="form-group">
                            <label>Título</label>
                            <form:input path="camera.titulo" class="form-control"/>
                            <form:errors path="camera.titulo" />
                        </div>
                        <div class="form-group">
                            <label>Descrição</label>
                            <form:textarea rows="10" cols="20" path="camera.descricao" class="form-control"/>
                            <form:errors path="camera.descricao" />
                        </div>
                        <div class="form-group">
                            <label>IP</label>
                            <form:input path="camera.ipcam" class="form-control"/>
                            <form:errors path="camera.ipcam" />
                        </div>
                        <div class="form-group">
                            <label>Porta</label>
                            <form:input path="camera.port" class="form-control"/>
                            <form:errors path="camera.port" />
                        </div>

                        <button type="submit"  class="btn btn-primary btn-block">Cadastrar</button>
                    </form>
                        <button  class="btn btn-primary btn-block"
                        onclick="window.location.href = '/webcamservice'">Voltar</button>

                </div>
            </div>
        </div>
        <!-- Pode usar um formulario modal https://jqueryui.com/resources/demos/dialog/modal-form.html -->
    </body>
</html>