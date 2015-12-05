<!DOCTYPE html>
	<head>
        <meta name="layout" content="indexadmin"/>
        <title>Seguridog - Administrador</title>
        <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
        <link href="${request.contextPath}/purpose/css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="${request.contextPath}/purpose/js/fileinput.min.js" type="text/javascript"></script>
	</head>

	<body>

        <script type="text/javascript" language="JavaScript">
           function enable_boxes(){
             if (document.form.typeUsers.value == "2") {
         			document.getElementById('box1').style.display="";
                    document.getElementById('box2').style.display="";
         			document.getElementById('box3').style.display="none";
         			document.form.approved_course.disabled = false;
                    document.form.date_approved.disabled = false;
         			document.form.date_credentials.disabled = false;
         			document.form.specialities.disabled = false;
            }else if (document.form.typeUsers.value == "3") {
                 	document.getElementById('box1').style.display="none";
                    document.getElementById('box2').style.display="none";
                    document.getElementById('box3').style.display="";
                    document.form.professional_card.disabled = false;
                    document.form.date_expedition.disabled = false;
            }else if (document.form.typeUsers.value == "4") {
                    document.getElementById('box1').style.display="";
                    document.getElementById('box2').style.display="none";
                    document.getElementById('box3').style.display="none";
 				    document.form.approved_course.disabled = false;
                    document.form.date_approved.disabled = false;
            }else{
        		 	document.getElementById('box1').style.display="none";
        		 	document.getElementById('box2').style.display="none";
        		 	document.getElementById('box3').style.display="none";
            }
           }
        </script>

		<!-- main content -->
		 <br><br><br><br><br><br><br><br><br><br><br>
            	<!-- Page Title -->
        	    <div class="section section-breadcrumbs">
        		    <div class="container">
        			    <div class="row">
        				    <div class="col-md-12">
        					    <h1>Registrar Usuario</h1>
            				</div>
        	    		</div>
        		    </div>
            	</div>

        <div class="section">
	    	<div class="container">
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3">
						<div class="basic-login">
							<g:form controller = "K9Admin" action="save_data_user" name="form">

                                <div class="form-group">
                                    <label for="typeUsers"><i class="icon-user"></i> <b>Tipo de usuario</b></label>
                                    <select name="typeUsers" id="typeUsers" type="number" SIZE="1" onChange="javascript:enable_boxes();">
                                    			<option value="1">--Seleccione tipo</option>
                                    			<option value="2">Instructor</option>
                                    			<option value="3">Veterinario</option>
                                    			<option value="4">Manejador</option>
                                    </select>
                                </div>

                                <h2>Informacion Personal</h2>

								<div class="form-group">
                                    <label for="photoUser"><i class="icon-user"></i> <b>Foto de usuario</b></label>
                                    <input class="form-control" name="photoUser" id="photoUser" type="file" accept="image/*">
                                    <br>
                                    <img src="" id="image" width="200" style="display:none;" />
                                </div>
                                <div class="form-group">
                                    <label for="path"><i class="icon-user"></i> <b>Ruta de origen de la imagen. Por ejemplo C:\User\PC\images</b></label>
                                    <input class="form-control" id="path" name="path" type="text" placeholder="Ingrese ruta">
                                </div>
                                <div class="form-group">
		        				 	<label for="cedula"><i class="icon-user"></i> <b>Cédula</b></label>
									<input class="form-control" id="cedula" name="cedula" type="text" placeholder="Ingrese cedula">
								</div>
								<div class="form-group">
                                    <label for="firstName"><i class="icon-user"></i> <b>Nombre</b></label>
                           			<input class="form-control" id="firstName" name="firstName" type="text" placeholder="Ingrese nombre">
                           		</div>
                           		<div class="form-group">
                                    <label for="lastName"><i class="icon-user"></i> <b>Apellido</b></label>
                                    <input class="form-control" id="lastName" name="lastName" type="text" placeholder="Ingrese apellido">
                                </div>
                                <div class="form-group">
                                    <label for="loginUser"><i class="icon-user"></i> <b>Usuario</b></label>
                                    <input class="form-control" id="loginUser" name="loginUser" type="text" placeholder="Ingrese usuario">
                                </div>
                                <div class="form-group">
                                	<label for="loginPass"><i class="icon-lock"></i> <b>Contrasenia</b></label>
              						<input class="form-control" id="loginPass" name="loginPass" type="password" placeholder="ingrese contrasenia">
                                </div>
                                <div class="form-group">
                                    <label for="birthDate"><i class="icon-user"></i> <b>Fecha de Nacimiento</b></label>
                                    <input class="form-control" id="birthDate" name="birthDate" type="date" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="cellphone"><i class="icon-user"></i> <b>Teléfono</b></label>
                                    <input class="form-control" id="cellphone" name="cellphone" type="text" placeholder="Ingrese telefono">
                                </div>
                                <div class="form-group">
                                    <label for="eMail"><i class="icon-user"></i> <b>Correo Electrónico</b></label>
                                    <input class="form-control" id="eMail" name="eMail" type="email" placeholder="Ingrese correo">
                                </div>

                                <h2>Formacion Profesional</h2>

                                <div class="form-group" id="box1" style="{display:none}">
	                                <label for="approved_course"><i class="icon-user"></i> <b>Curso Aprobado</b></label>
	                                <input class="form-control" id="approved_course" name="approved_course" type="text" placeholder="Ingrese curso" disabled>
	                                <br>
	                                <label for="date_approved"><i class="icon-user"></i> <b>Fecha de Aprobacion</b></label>
                                    <input class="form-control" id="date_approved" name="date_approved" type="date" placeholder="" disabled>
                                </div>

                                <div class="form-group" id="box2" style="{display:none}">
                                    <label for="date_credentials"><i class="icon-user"></i> <b>Fecha de Credenciales</b></label>
                                    <input class="form-control" id="date_credentials" name="date_credentials" type="date" placeholder="" disabled>
                                    <br>
                                    <label for="specialities"><i class="icon-user"></i> <b>Especialidades</b></label>
                                    <input class="form-control" id="specialities" name="specialities" type="text" placeholder="Ingrese especialidades" disabled>
                                </div>

                                <div class="form-group" id="box3" style="{display:none}">
                                    <label for="professional_card"><i class="icon-user"></i> <b>Tarjeta profesional</b></label>
                                    <input class="form-control" id="professional_card" name="professional_card" type="text" placeholder="Ingrese tarjeta" disabled>
                                    <br>
                                    <label for="date_expedition"><i class="icon-user"></i> <b>Fecha de Expedicion</b></label>
                                    <input class="form-control" id="date_expedition" name="date_expedition" type="date" placeholder="" disabled>
                                </div>

                                <h2>Contrato Laboral</h2>

                                <div class="form-group">
                                    <label for="typeContract"><i class="icon-user"></i> <b>Tipo de contrato</b></label>
                                    <input class="form-control" id="typeContract" name="typeContract" type="text" placeholder="Ingrese contrato">
                                </div>
                                <div class="form-group">
                                    <label for="dateContract"><i class="icon-user"></i> <b>Fecha de Contrato</b></label>
                                    <input class="form-control" id="dateContract" name="dateContract" type="date" placeholder="">
                                </div>
								<div class="form-group">
									<button type="submit" class="btn pull-right">Guardar</button>
									<div class="clearfix"></div>
								</div>

							</g:form>
						</div>
					</div>
				</div>
			</div>
		</div>
		${flash.message}
		<!-- end main content -->

	</body>

        <script type="text/javascript" language="JavaScript">
               $("#photoUser").fileinput({
                  previewFileType: "image",
                  showCaption: false,
                  showUpload: false,
                  showRemove: true,
                  browseClass: "btn btn-success",
                  browseLabel: "Seleccione imagen",
                  browseIcon: "<i class=\"glyphicon glyphicon-picture\"></i> ",
                  removeClass: "btn btn-danger",
                  removeLabel: "Borrar",
                  removeIcon: "<i class=\"glyphicon glyphicon-trash\"></i> "
               });
        </script>

        <script type="text/javascript" language="JavaScript">
                   $('#photo').change( function(event) {
                   var tmppath = URL.createObjectURL(event.target.files[0]);
                   $("#image").fadeIn("fast").attr('src',URL.createObjectURL(event.target.files[0]));
                   });
        </script>
</html>