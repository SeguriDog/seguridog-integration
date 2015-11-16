<!DOCTYPE html>
	<head>
		<meta name="layout" content="indexveterinarian"/>
        <title>Seguridog - Veterinario</title>
	</head>

	<body>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5">
                        <div class="basic-login">
                            <g:form controller = "K9Veterinarian" action="save_data_clinic">
                                <div class="form-group">
                                    <label for="canine_id"><i class="icon-user"></i> <b>Perro</b></label>
                                    <g:select name="canine_id"
                                              id="canine_id"
                                              from="${canine_list}"
                                              value=""
                                              optionKey="id"
                                              optionValue="nameFullCanine"
                                              noSelection="['':'Seleccione uno...']"/>
                                </div>
                                <div class="form-group">
                                    <label for="dateTreatment"><i class="icon-user"></i> <b>Fecha de Tratamiento:</b></label>
                                    <input class="form-control" id="dateTreatment" name="dateTreatment" type="text" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="nameTreatment"><i class="icon-user"></i> <b>Nombre del Tratamiento:</b></label>
                                    <input class="form-control" id="nameTreatment" name="nameTreatment" type="text" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="typeTreatment"><i class="icon-user"></i> <b>Tipo de tratamiento:</b></label>
                                    <input class="form-control" id="typeTreatment" name="typeTreatment" type="text" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="evaluation"><i class="icon-user"></i> <b>Evaluación:</b></label>
                                    <input class="form-control" id="evaluation" name="evaluation" type="text" placeholder="">
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
	</body>
</html>
