/**
 * ToDo App
 */

(function localFileVideoPlayer() {
	'use strict'
  var URL = window.URL || window.webkitURL
 
  var playSelectedFile = function (event) {
    var file = this.files[0]
    var type = file.type
    var videoNode = document.querySelector('video')
   
    var fileURL = URL.createObjectURL(file)
    videoNode.src = fileURL
  }
  var inputNode = document.querySelector('input')
  inputNode.addEventListener('change', playSelectedFile, false)
})()

$(document)
		.ready(
				
				function() {
					
					var options = {
						beforeSubmit : beforeSubmit, // pre-submit callback
						success : showResponse, // post-submit callback
						data : {
							"method" : "loadVideo"
						},
						processData : false,
						contentType : false
					// other available options:

					};

					// bind form using 'ajaxForm'
					$('#videoUploadForm').ajaxForm(options);

				});

$('.btn-file input').change(function() {
	var fileName = this.value.split(/[\/\\]/).pop();
	$('#proccessVideo').addClass('btn-success').removeClass('btn-default');
	$('#documenFileName').val(fileName);
});
// pre-submit callback
function beforeSubmit(arr, $form, options) {

}

// post-submit callback
function showResponse(response) {
	$('#message').text(response);
	$('#log').text(response);
	//alert(response);
	
}

var loadVideoModule = angular.module('loadVideoModule', []);

loadVideoModule
		.controller(
				"loadVideoCtrl",
				[
						'$scope',
						'$http',
						function($scope, $http) {
							
						} ]);





