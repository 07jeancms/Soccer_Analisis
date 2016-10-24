<!DOCTYPE html>
<html lang="en" ng-app="loadVideoModule">
<head>
<title>DocumenTek</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
video, input {
	display: block;
}

input {
	width: 100%;
}

.info {
	background-color: aqua;
}

.error {
	background-color: red;
	color: white;
}
</style>
</head>
<body>

	<%@include file="./navbar.jsp"%>

	<!-- Body -->
	<div class="container body">
		<div id="title" class="titleDiv"></div>

		<hr />

		<!-- Item Input Form -->
		<h1>Select the soccer video to analyse</h1>
		<form class="form-horizontal" role="form" id="videoUploadForm"
			method="post"
			action="${ pageContext.request.contextPath}/videoReceptor"
			encType="multipart/form-data">
			<div class="clientForm" ng-controller="loadVideoCtrl">






				<div class="form-group">
					<label for="inputSubject" class="col-xs-2">Documento</label>
					<div class="col-xs-3">
						<div class="input-group-btn">
							<span class="btn btn-default btn-file" id="selectFileSpan">
								Seleccionar Video <input type="file" name="video" id="inputFile" />
							</span>
						</div>
					</div>
					<div class="col-xs-4">
						<input class="form-control" type="text" name="documentName"
							id='documenFileName' disabled />
					</div>
					<div class="col-xs-3">
						<div class="input-group">
							<button type="submit" class="btn btn-default" id="createDocument">Procesar
								video</button>
						</div>
					</div>
				</div>
			</div>
			
			

		</form>
		{{videoToAnalyze}}
			<div class="col-xs-2">
						<button type="button" class="btn btn-default"
							data-toggle="collapse" data-target="#videoPreview">Visualizar Video</button>
					</div>

				</div>
				<div class="collapse" id="videoPreview">
					<video width="50%" height="50%" controls autoplay class="centered"></video>
				</div>
				<hr />

		
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="./assets/loadVideo.js"></script>
</body>
</html>
