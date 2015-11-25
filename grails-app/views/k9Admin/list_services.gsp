<!DOCTYPE html>
	<head>
		<meta name="layout" content="indexadmin"/>
        <title>Seguridog - Administrador</title>
	</head>

	<body>
 		<!-- main content -->
 		<br><br><br><br><br><br><br>
		<div class="container">
          	<h2>Servicios Registrados</h2>
          	<table class="table table-bordered table-hover">
            	<thead>
              		<tr>
						<th>userOfService</th>
                  		<th>addressUbicationWorkArea</th>
                 		<th>dateUbicationWorkArea</th>
                  		<th>hoursPerDay</th>
                  		<th>typeService</th>
                  		<th>addressRestCanine</th>
                  		<th>dateFinishReturnUnitK9</th>
             		</tr>
            	</thead>
            	<tbody>
            		<g:each in="${servi}" var="service">
              			<tr>
                  			<td>${service.userOfService}</td>
                  			<td>${service.addressUbicationWorkArea}</td>
                  			<td>${service.dateUbicationWorkArea}</td>
                  			<td>${service.hoursPerDay}</td>
                  			<td>${service.typeService}</td>
                 			<td>${service.addressRestCanine}</td>
                  			<td>${service.dateFinishReturnUnitK9}</td>
							<td>
                               <g:form controller="k9Admin" action="look_book_service">
                                    <div class="form-group">
                                        <input class="form-control" id="service_id" name="service_id" type="hidden" value="${service.id}">
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn pull-right">Mas...</button>
                                    <div class="clearfix"></div>
                                    </div>
                                </g:form>
							</td>
              			</tr>
            		</g:each>
            	</tbody>
          	</table>
        </div>
		<!-- end main content -->
	</body>
</html>