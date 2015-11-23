<!DOCTYPE html>
    <head>
        <meta name="layout" content="indexveterinarian"/>
        <title>Seguridog - Veterinario</title>
    </head>

    <body>
    <br><br><br><br><br><br><br><br><br><br><br>
    	<!-- Page Title -->
	    <div class="section section-breadcrumbs">
		    <div class="container">
			    <div class="row">
				    <div class="col-md-12">
					    <h1>Editar Perfil del Canino</h1>
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
                            <g:form controller="k9Veterinarian" action="save_profile_canine">
								<div class="form-group">
                                    <label for="name_canine"><i class="icon-user"></i> <b>Nombre Canino: </b></label>
                           			<input class="form-control" id="name_canine" name="name_canine" type="text" value="${edit_canine.nameCanine}">
                           		</div>
								<div class="form-group">
                                    <label for="name_father"><i class="icon-user"></i> <b>Nombre Padre: </b></label>
                           			<input class="form-control" id="name_father" name="name_father" type="text" value="${edit_canine.nameFather}">
                           		</div>
								<div class="form-group">
                                    <label for="name_mother"><i class="icon-user"></i> <b>Nombre Madre:</b></label>
                           			<input class="form-control" id="name_mother" name="name_mother" type="text" value="${edit_canine.nameMother}">
                           		</div>
                                <div class="form-group">
                                    <label for="birthDate"><i class="icon-user"></i> <b>Fecha de Nacimiento:</b></label>
                                    <input class="form-control" id="birthDate" name="birthDate" type="date" value="<g:formatDate format="yyyy-MM-dd" date="${edit_canine.dateBirthday}"/>">
                                </div>
                                <div class="form-group">
                                    <label for="type_race"><i class="icon-user"></i> <b>Tipo de raza:</b></label>
                                    <input class="form-control" id="type_race" name="type_race" type="text" value="${edit_canine.typeRace}">
                                </div>
                                <div class="form-group">
                                    <label for="color_canine"><i class="icon-user"></i> <b>Color:</b></label>
                                    <input class="form-control" id="color_canine" name="color_canine" type="text" value="${edit_canine.colorCanine}">
                                </div>
                                <div class="form-group">
                                    <label for="sign_canine"><i class="icon-user"></i> <b>Señas del Canino:</b></label>
                                    <input class="form-control" id="sign_canine" name="sign_canine" type="text" value="${edit_canine.signCanine}">
                                </div>
                                <div class="form-group">
                                    <label for="sex_canine"><i class="icon-user"></i> <b>Sexo:</b></label>
                                    <select name="sex_canine" id="sex_canine" type="text">
                                        <option value="macho" <g:if test="${edit_canine.sexCanine == 'macho'}">selected </g:if>>Macho</option>
                                        <option value="hembra" <g:if test="${edit_canine.sexCanine == 'hembra'}">selected </g:if>>Hembra</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="state_canine"><i class="icon-user"></i> <b>Estado:</b></label>
                                    <select name="state_canine" id="state_canine" type="text">
                                        <option value="Activo" <g:if test="${edit_canine.stateCanine == 'Activo'}">selected </g:if>>Activo</option>
                                        <option value="Recuperación Física" <g:if test="${edit_canine.stateCanine == 'Recuperación Física'}">selected </g:if>>Recuperación Física</option>
                                        <option value="Recuperación Médica" <g:if test="${edit_canine.stateCanine == 'Recuperación Médica'}">selected </g:if>>Recuperación Médica</option>
                                        <option value="No Activo" <g:if test="${edit_canine.stateCanine == 'No Activo'}">selected </g:if>>No Activo</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" id="id_canine" name="id_canine" type="hidden" value="${edit_canine.id}">
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
    	<!-- end main content -->
	</body>
</html>
