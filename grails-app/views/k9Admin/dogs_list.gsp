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
                        					    <h1>Caninos registrados</h1>
                            				</div>
                        	    		</div>
                        		    </div>
                            	</div>

		<div class="container">
          <table class="table table-bordered table-hover">
            <thead>
              <tr>
              	  <th>Foto</th>
                  <th>Nombre</th>
                  <th>Fecha Nacimiento</th>
                  <th>Sexo</th>
                  <th>Raza</th>
                  <th>Color</th>
                  <th>Microchip</th>
                  <th>Estado</th>
             </tr>
            </thead>
            <tbody>
            <g:each in="${dogs}" var="dog">
              <tr>
                  <td><img src="${request.contextPath}/purpose/img/canines/${dog.photoCanine}"></td>
                  <td>${dog.nameCanine}</td>
                  <td>${dog.dateBirthday}</td>
                  <td>${dog.sexCanine}</td>
                  <td>${dog.typeRace}</td>
                  <td>${dog.colorCanine}</td>
                  <td>${dog.microChip}</td>
                  <td>${dog.stateCanine}</td>
              </tr>
            </g:each>
            </tbody>
          </table>
        </div>
		<!-- end main content -->
	</body>
</html>