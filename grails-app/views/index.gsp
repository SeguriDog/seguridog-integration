<!DOCTYPE html>
    <head>
        <meta name="layout" content="main"/>
        <title>Seguridog</title>
    </head>

    <body>
		<!-- main content -->
		<br><br><br><br><br><br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
          </ol>

          <!-- Wrapper for slides -->
          <div class="carousel-inner" role="listbox">
            <div class="item active">
              <img src="${request.contextPath}/purpose/img/labrador.png" alt="Perro Labrador">
              <div class="carousel-caption">
                <p>Labrador prestando servicio de guardia.</p>
              </div>
            </div>

            <div class="item">
              <img src="${request.contextPath}/purpose/img/pastoraleman.png" alt="Pastor Aleman">
              <div class="carousel-caption">
                <p>Pastor aleman prestando servicio de guardia.</p>
              </div>
            </div>

            <div class="item">
              <img src="${request.contextPath}/purpose/img/entrenador.png" alt="Entrenamiento">
              <div class="carousel-caption">
                <p>Tacticas de ataque y defensa.</p>
              </div>
            </div>

            <div class="item">
              <img src="${request.contextPath}/purpose/img/saltarin.png" alt="Agilidad y rapidez">
              <div class="carousel-caption">
                <p>Practica de agilidad, rapidez, y salto.</p>
              </div>
            </div>
          </div>

          <!-- Left and right controls -->
          <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
		<!-- end main content -->
	</body>
</html>