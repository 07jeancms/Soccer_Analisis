<!DOCTYPE html>
<html lang="en">
<head>
<title>Soccer Analysis</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/webjars/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/webjars/bootstrap-table/1.9.1/src/bootstrap-table.css">
<link rel="stylesheet"
	href="//rawgit.com/vitalets/x-editable/master/dist/bootstrap3-editable/css/bootstrap-editable.css">



<!-- Bootstrap Core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- Plugin CSS -->
<link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

<!-- Theme CSS -->
<link href="css/creative.css" rel="stylesheet">

</head>
<body id="page-top">

	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> Menu <i
						class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand page-scroll" href="#page-top">Soccer
					Analysis</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					
					<li><a class="page-scroll" href="#project">Project</a></li>
					<li><a class="page-scroll" href="#analyzeVideo">Analyze
							Video</a></li>
					<li><a class="page-scroll" href="#about">Developers</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<header>
		<div class="header-content">
			<div class="header-content-inner">
				<h1 id="homeHeading">Boca Junior</h1>

				<p>Soccer Analysis</p>
				<hr>
				<a href="#about" class="btn btn-primary btn-xl page-scroll">Analyse
					Video</a>
			</div>
		</div>
	</header>

	<aside class="bg-dark">
		<div class="container text-center">
			<div class="call-to-action">
				<h2>What is the project?</h2>
			</div>
		</div>
	</aside>
	<header  id="project">
		<section class="header-content">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2 text-center">
						<h2 class="section-heading">An automated soccer analysis
							system.</h2>
						<hr class="primary">
						<p>A system that targets and classifies soccer players in a
							digital video.</p>
					</div>
					<div class="col-lg-4 col-lg-offset-2 text-center">
						<i class="fa fa-laptop fa-3x sr-contact"></i>

					</div>
					<div class="col-lg-4 text-center">
						<i class="fa fa-pencil-square-o fa-3x sr-contact"></i>
						<p></p>
					</div>
				</div>
			</div>
		</section>
	</header>

	<aside class="bg-dark">
		<div class="container text-center">
			<div class="call-to-action">
				<h2>Analyze Video</h2>
			</div>
		</div>
	</aside>

	<header id="analyzeVideo">
		<div class="header-content" ng-app="loadVideoModule">
			<div class="row">

				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Select the soccer video to analyse</h2>
					<hr class="primary">
				</div>
			</div>
			<div class="container">
				<form class="form-horizontal" role="form" id="videoUploadForm"
					method="post"
					action="${ pageContext.request.contextPath}/videoReceptor"
					encType="multipart/form-data">
					<div class="clientForm" ng-controller="loadVideoCtrl">
						<div class="row">
							<div class="col-lg-3 col-md-6 text-center">
								<div class="service-box">
									<i class="fa fa-4x fa-upload text-primary sr-icons"></i>
									<h3>Visualizar Video</h3>
									<input type="file" name="video" id="inputFile" />
								</div>
							</div>
							<div class="col-lg-3 col-md-6 text-center">
								<div class="service-box">
									<i class="fa fa-4x fa-video-camera text-primary sr-icons"></i>
									<h3>Video to process</h3>
									<input class="form-control" type="text" name="documentName"
										id='documenFileName' disabled />
								</div>
							</div>
							<div class="col-lg-3 col-md-6 text-center">
								<div class="service-box">
									<i class="fa fa-4x fa-cogs text-primary sr-icons"></i>
									<h3>Procesar Video</h3>
									<button type="submit" class="btn btn-default"
										id="createDocument">Procesar video</button>
								</div>
							</div>
							<div class="col-lg-3 col-md-6 text-center">
								<div class="service-box">
									<i class="fa fa-4x fa-futbol-o text-primary sr-icons"></i>
									<h3>Preview</h3>
									<button type="button" class="btn btn-default"
										data-toggle="collapse" data-target="#videoPreview"
										href="#preview">Visualizar Video</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</header>
	<header class="collapse" id="preview">
		<div class="header-content" ng-app="loadVideoModule">
			<div>
				<div class="container">
					<video width="73%" height="73%" controls class="centered"></video>
				</div>
			</div>
		</div>

	</header>

	<aside class="bg-dark">
		<div class="container text-center">
			<div class="call-to-action">
				<h2>Developers</h2>
			</div>
		</div>
	</aside>
	<section class="no-padding" id="about">
		<div class="container-fluid">
			<div class="row no-gutter popup-gallery">
				<div class="col-lg-4 col-sm-6">
					<a href="img/portfolio/fullsize/1.jpg" class="portfolio-box"> <img
						src="img/portfolio/thumbnails/1.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">Developer</div>
								<div class="project-name">Jean Carlo Mata</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="img/portfolio/fullsize/2.jpg" class="portfolio-box"> <img
						src="img/portfolio/thumbnails/2.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">Developer</div>
								<div class="project-name">Ricardo Castro</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="img/portfolio/fullsize/3.jpg" class="portfolio-box"> <img
						src="img/portfolio/thumbnails/3.jpg" class="img-responsive" alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">Developer</div>
								<div class="project-name">Andres Jimenez Quiros</div>
							</div>
						</div>
					</a>
				</div>
	</section>



	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading">Contact</h2>
					<hr class="primary">
					<p>If you are willing to contact us. Please send us an email to
						the following addresses.</p>
				</div>
				<div class="col-lg-4 text-center">
					<i class="fa fa-envelope-o fa-3x sr-contact"></i>
					<p>
						<a href="mailto:your-email@your-domain.com">andresjimqui@gmail.com</a>
					</p>
				</div>
				<div class="col-lg-4 text-center">
					<i class="fa fa-envelope-o fa-3x sr-contact"></i>
					<p>
						<a href="mailto:your-email@your-domain.com">jean.cms@hotmail.es</a>
					</p>
				</div>
				<div class="col-lg-4 text-center">
					<i class="fa fa-envelope-o fa-3x sr-contact"></i>
					<p>
						<a href="mailto:your-email@your-domain.com">ricardocastrom06@gmail.com</a>
					</p>
				</div>
			</div>
		</div>
	</section>

	<!-- jQuery -->
	<script src="vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script src="vendor/scrollreveal/scrollreveal.min.js"></script>
	<script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

	<!-- Theme JavaScript -->
	<script src="js/creative.min.js"></script>

	<!-- Angular -->
	<script
		src="${pageContext.request.contextPath}/webjars/angularjs/1.5.5/angular.js"
		type="text/javascript"></script>

	<!-- Load Video File -->
	<script src="./assets/loadVideo.js"></script>
</body>
</html>


