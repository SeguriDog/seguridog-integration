<!DOCTYPE html>
	<head>
		<meta name="layout" content="indexadmin"/>
        <title>Seguridog - Administrador</title>
	</head>

	<body>
 		<!-- main content -->
 		<br><br><br><br><br><br><br><br><br><br><br>
                    	<!-- Page Title -->
                	    <div class="section section-breadcrumbs">
                		    <div class="container">
                			    <div class="row">
                				    <div class="col-md-12">
                					    <h1>Usuarios registrados</h1>
                    				</div>
                	    		</div>
                		    </div>
                    	</div>


		<div class="container">
          	<table class="table table-bordered table-hover">
            	<thead>
              		<tr>
              	  		<th>Foto</th>
						<th>Cedula</th>
                  		<th>Nombre</th>
                 		<th>Apellido</th>
                  		<th>Usuario</th>
                  		<th>Contraseña</th>
                  		<th>Fecha Nacimiento</th>
                  		<th>Telefono</th>
                  		<th>Correo electronico</th>
                  		<th>Tipo de contrato</th>
                  		<th>Fecha de contrato</th>
                  		<th>Tipo de usuario</th>
             		</tr>
            	</thead>
            	<tbody>
            		<g:each in="${users}" var="user">
              			<tr>
              	  			<td><img src="${request.contextPath}/purpose/img/users/${user.photoUser}"></td>
                  			<td>${user.cedula}</td>
                  			<td>${user.firstName}</td>
                  			<td>${user.lastName}</td>
                  			<td>${user.loginUser}</td>
                  			<td>${user.loginPass}</td>
                 			<td>${user.birthDate}</td>
                  			<td>${user.cellphone}</td>
                  			<td>${user.eMail}</td>
                  			<td>${user.typeContract}</td>
                  			<td>${user.dateContract}</td>
                  			<td>${user.typeUsers}</td>
              			</tr>
            		</g:each>
            	</tbody>
          	</table>
        </div>
		<!-- end main content -->
	</body>
</html>