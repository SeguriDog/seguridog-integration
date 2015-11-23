<!DOCTYPE html>
	<head>
		<meta name="layout" content="indexadmin"/>
        <title>Seguridog - Administrador</title>
	</head>

	<body>
	<br><br><br><br><br><br><br><br><br><br><br>
	    <div class="section section-breadcrumbs">
		    <div class="container">
			    <div class="row">
				    <div class="col-md-12">
					    <h1>Resultado de Búsqueda de Usuario(s)</h1>
    				</div>
	    		</div>
		    </div>
    	</div>

		<div class="section">
	        <div class="container">
				<g:each in="${result_user}" var="rUser">
                    <div class="row service-wrapper-row">
                        <div class="col-sm-4">
                            <div class="service-image">
                                <img src="${request.contextPath}/purpose/img/users/${rUser.photoUser}">
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <h3>${rUser.fullName}</h3>
                            <li><b>Celular: </b>${rUser.cellphone}</li>
                            <li><b>Email: </b>${rUser.eMail}</li>
                            <li><b>Fecha Nacimiento: </b><g:formatDate format="dd-MM-yyyy" date="${rUser.birthDate}"/></li>
                            <li><b>Habilitado: </b>${rUser.enableUser}</li>
                        </div>
                    </div>
                   <g:form controller="k9Admin" action="disable_user">
                         <div class="form-group">
                              <input class="form-control" id="id_user" name="id_user" type="hidden" value="${rUser.id}">
                         </div>
                         <div class="form-group">
                              <button type="submit" class="btn pull-right">Deshabilitar</button>
                           	  <div class="clearfix"></div>
                         </div>
                    </g:form>
				</g:each>

	        </div>
	    </div>
	</body>
</html>
