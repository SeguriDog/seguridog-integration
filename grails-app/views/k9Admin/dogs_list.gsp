<!DOCTYPE html>
	<head>
		<meta name="layout" content="indexadmin"/>
        <title>Seguridog - Administrador</title>
	</head>

	<body>
		<!-- main content -->
		<div class="container">
          <h2>Perros Registrados</h2>
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
             </tr>
            </thead>
            <tbody>
            <g:each in="${dogs}" var="dog">
              <tr>
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