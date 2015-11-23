<!DOCTYPE html>
	<head>
		<meta name="layout" content="indexveterinarian"/>
        <title>Seguridog - Veterinario</title>
	</head>

	<body>
    <br><br><br><br><br><br><br><br><br><br><br>
	    <div class="section section-breadcrumbs">
		    <div class="container">
			    <div class="row">
				    <div class="col-md-12">
					    <h1>Buscar Caninos...</h1>
    				</div>
	    		</div>
		    </div>
    	</div>

        <div class="section">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3">
                        <div class="basic-login">
                            <g:form controller="k9Veterinarian" action="result_search_canines">
                                <div class="form-group">
                                    <label for="search_type_canine"><i class="glyphicon-envelope"></i> <b>Tipo de Búsqueda</b></label>
                                    <select name="search_type_canine" id="search_type_canine" type="number">
                                        <option value="1">Microchip</option>
                                        <option value="2">Nombre</option>
                                        <option value="3">Sexo</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" id="search_text" name="search_text" type="text" placeholder="">
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn pull-right">Buscar</button>
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
