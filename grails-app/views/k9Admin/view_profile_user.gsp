<!DOCTYPE html>
    <head>
        <meta name="layout" content="indexadmin"/>
        <title>Seguridog - Administrador</title>
    </head>

    <body>
    	<!-- Page Title -->
        <br><br><br><br><br><br><br><br><br><br><br>
	    <div class="section section-breadcrumbs">
		    <div class="container">
			    <div class="row">
				    <div class="col-md-12">
					    <h1>Perfil de Usuario</h1>
    				</div>
	    		</div>
		    </div>
    	</div>

	    <!-- main content -->
        <div class="section">
	    	<div class="container">
	    		<div class="row">
	    			<div class="col-sm-6">
	    				<div class="product-image-large">
	                        <img src="${request.contextPath}/purpose/img/users/${user.photoUser}">
	    				</div>
	    			</div>
	    			<div class="col-sm-6 product-details">
	    				<h4>${user.fullName}</h4>
						<h5>Datos Personales:  </h5>
                        <p><b>Cédula:  </b>${user.cedula}</p>
                        <p><b>Fecha Nacimiento:  </b><g:formatDate format="dd-MM-yyyy" date="${user.birthDate}"/></p>
                        <p><b>No. Telefónico:  </b>${user.cellphone}</p>
						<p><b>Email:  </b>${user.eMail}</p>
                        <p><b>Nombre Usuario:  </b>${user.loginUser}</p>
                        <p><b>Contraseña:  </b>${user.loginPass}</p>
                        <p><b>Tipo Contrato:  </b>${user.typeContract}</p>
						<p><b>Fecha Inicio Contrato:  </b><g:formatDate format="dd-MM-yyyy" date="${user.dateContract}"/></p>
	    			</div>

	    		</div>
			</div>
		</div>
    	<!-- end main content -->
	</body>
</html>
