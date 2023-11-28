<%@page import="com.emergentes.modelo.Proveedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Proveedor proveedor = (Proveedor) request.getAttribute("proveedor");
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ADVentas | www.incanatoit.com</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/AdminLTE.min.css">
    <link rel="stylesheet" href="css/_all-skins.min.css">
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
    <link rel="shortcut icon" href="img/favicon.ico">
    <style>
        /* Estilos para el formulario */
        .form-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 30px;
            background-color: #f9f9f9;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 8px;
            border-radius: 3px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
        <jsp:include page="META-INF/listas.jsp">
            <jsp:param name="opcion" value="ventas"/>
        </jsp:include>
        <div class="content-wrapper">
            <section class="content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="box">
                            <center><h1>FORMULARIO PROVEEDOR</h1></center>
                            <div style="padding: 20px;" class="form-container">
                                
                                <form action="ProveedorServ" method="post">

                                    <div class="form-group">
                                        <label>id</label>
                                        <input type="number" name="codigoProveedor" value="<%= proveedor.getCodigoProveedor()%>" />
                                    </div>
                                    <div class="form-group">
                                        <label>Nombre del Proveedor:</label>
                                        <input type="text" name="nombreProveedor" value="<%= proveedor.getNombreProveedor()%>" required />
                                    </div>
                                    <div class="form-group">
                                        <label>Contacto:</label>
                                        <input type="text" name="contacto" value="<%= proveedor.getContacto()%>" required />
                                    </div>
                                    <div class="form-group">
                                        <label>Teléfono:</label>
                                        <input type="text" name="telefono" value="<%= proveedor.getTelefono()%>" required />
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" value="Guardar" />
                                    </div>
                                </form>
                            </div><!-- /.box-body -->
                        </div><!-- /.box -->
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </div><!-- /.wrapper -->

    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.2.0
        </div>
        <strong>Copyright &copy;2023 <b><p>Carlos Mamani Corina--Albert Alexander Cordero Rivera--Sadam Quispe Chino</p></b></strong>
        All rights reserved.
    </footer>

    <script src="js/jQuery-2.1.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/app.min.js"></script>
</body>
</html>
