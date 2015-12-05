<!DOCTYPE html>
    <head>
        <meta name="layout" content="indexadmin"/>
        <title>Seguridog - Administrador</title>
    </head>

    <body>
    <br><br><br><br><br><br><br><br><br><br><br>
    	<!-- Page Title -->
	    <div class="section section-breadcrumbs">
		    <div class="container">
			    <div class="row">
				    <div class="col-md-12">
					    <h1>Editar Perfil del Usuario</h1>
    				</div>
	    		</div>
		    </div>
    	</div>

	    <!-- main content -->
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3">
                        <div class="basic-login">
                            <g:form controller="k9Admin" action="save_edit_user">
                                <div class="form-group">
		        				 	<label for="cedula"><i class="icon-user"></i> <b>Cédula</b></label>
									<input class="form-control" id="cedula" name="cedula" type="text" value="${edit_user.cedula}">
								</div>
								<div class="form-group">
                                    <label for="firstName"><i class="icon-user"></i> <b>Nombre</b></label>
                           			<input class="form-control" id="firstName" name="firstName" type="text" value="${edit_user.firstName}">
                           		</div>
                           		<div class="form-group">
                                    <label for="lastName"><i class="icon-user"></i> <b>Apellido</b></label>
                                    <input class="form-control" id="lastName" name="lastName" type="text" value="${edit_user.lastName}">
                                </div>
                                <div class="form-group">
                                    <label for="loginUser"><i class="icon-user"></i> <b>Usuario</b></label>
                                    <input class="form-control" id="loginUser" name="loginUser" type="text" value="${edit_user.loginUser}">
                                </div>
                                <div class="form-group">
                                	<label for="loginPass"><i class="icon-lock"></i> <b>Contrasenia</b></label>
              						<input class="form-control" id="loginPass" name="loginPass" type="password" value="${edit_user.loginPass}">
                                </div>
                                <div class="form-group">
                                    <label for="birthDate"><i class="icon-user"></i> <b>Fecha de Nacimiento</b></label>
                                    <input class="form-control" id="birthDate" name="birthDate" type="date" value="<g:formatDate format="yyyy-MM-dd" date="${edit_user.birthDate}"/>">
                                </div>
                                <div class="form-group">
                                    <label for="cellphone"><i class="icon-user"></i> <b>Teléfono</b></label>
                                    <input class="form-control" id="cellphone" name="cellphone" type="tel" value="${edit_user.cellphone}">
                                </div>
                                <div class="form-group">
                                    <label for="eMail"><i class="icon-user"></i> <b>Correo Electrónico</b></label>
                                    <input class="form-control" id="eMail" name="eMail" type="email" value="${edit_user.eMail}">
                                </div>
                                <div class="form-group">
                                    <label for="typeContract"><i class="icon-user"></i> <b>Tipo de contrato</b></label>
                                    <input class="form-control" id="typeContract" name="typeContract" type="text" value="${edit_user.typeContract}">
                                </div>
                                <div class="form-group">
                                    <label for="dateContract"><i class="icon-user"></i> <b>Fecha de Contrato</b></label>
                                    <input class="form-control" id="dateContract" name="dateContract" type="date" value="<g:formatDate format="yyyy-MM-dd" date="${edit_user.dateContract}"/>">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" id="id_type_user" name="id_type_user" type="hidden" value="${edit_user.id}">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" id="id_type" name="id_type" type="hidden" value="${edit_user.typeUsers}">
                                </div>
                                <g:if test="${edit_user.typeUsers == 2}">
                                    <div class="form-group">
                                        <label for="approved_course"><i class="icon-user"></i> <b>Curso Aprobado</b></label>
                                        <input class="form-control" id="approved_course" name="approved_course" type="text" value="${edit_user.approvedCourse}">
                                    </div>
                                    <div class="form-group">
                                        <label for="date_approved"><i class="icon-user"></i> <b>Fecha de Aprobación curso</b></label>
                                        <input class="form-control" id="date_approved" name="date_approved" type="date" value="<g:formatDate format="yyyy-MM-dd" date="${edit_user.dateApproved}"/>">
                                    </div>
                                    <div class="form-group">
                                        <label for="date_credentials"><i class="icon-user"></i> <b>Fecha de Credenciales</b></label>
                                        <input class="form-control" id="date_credentials" name="date_credentials" type="date" value="<g:formatDate format="yyyy-MM-dd" date="${edit_user.dateCredentials}"/>">
                                    </div>
                                    <div class="form-group">
                                    	<label for="ins_specialities"><i class="icon-lock"></i> <b>Especialidades</b></label>
                  						<input class="form-control" id="ins_specialities" name="ins_specialities" type="text" value="${edit_user.specialities}">
                                    </div>
                                </g:if>
                                <g:if test="${edit_user.typeUsers == 3}">
                                    <div class="form-group">
                                        <label for="professional_card"><i class="icon-user"></i> <b>Tarjeta Profesional</b></label>
                                        <input class="form-control" id="professional_card" name="profesional_card" type="text" value="${edit_user.professionalCard}">
                                    </div>
                                    <div class="form-group">
                                        <label for="date_expedition"><i class="icon-user"></i> <b>Fecha de Expedición</b></label>
                                        <input class="form-control" id="date_expedition" name="date_expedition" type="date" value="<g:formatDate format="yyyy-MM-dd" date="${edit_user.dateExpedition}"/>">
                                    </div>
                                </g:if>
                                <g:if test="${edit_user.typeUsers == 4}">
                                    <div class="form-group">
                                        <label for="basic_instruction_course"><i class="icon-user"></i> <b>Curso Instrucción</b></label>
                                        <input class="form-control" id="basic_instruction_course" name="basic_instruction_course" type="text" value="${edit_user.basicInductionCourse}">
                                    </div>
                                    <div class="form-group">
                                        <label for="date_approved_course"><i class="icon-user"></i> <b>Fecha Aprobación Curso</b></label>
                                        <input class="form-control" id="date_approved_course" name="date_approved_course" type="date" value="<g:formatDate format="yyyy-MM-dd" date="${edit_user.dateApprovedInduction}"/>">
                                    </div>
                                    <div class="form-group">
                                    	<label for="type_training"><i class="icon-lock"></i> <b>Tipo Entrenamiento</b></label>
                  						<input class="form-control" id="type_training" name="type_training" type="text" value="${edit_user.typeTrainingHandler}">
                                    </div>
                                </g:if>
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
        <h3>${flash.message}</h3>
    	<!-- end main content -->
	</body>
</html>
