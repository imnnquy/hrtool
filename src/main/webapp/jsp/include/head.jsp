<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Recruitment Management System</title>
<meta content="" name="description">
<meta content="width=device-width" name="viewport">

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<!-- css reset style sheet -->
<link rel="stylesheet" href="/rms/css/normalize.css"/>
    <link rel="stylesheet" href="/rms/css/main.css"/>
	<link href="/rms/css/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="/rms/css/jquery/base/jquery-ui.css"/>
    <link rel="stylesheet" href="/rms/css/jquery.editable-select.css"/>
    <link rel="stylesheet" href="/rms/css/recruitment_tool.css"/>
    <link rel="Stylesheet" href="/rms/css/validate.css" />
    <link href="/rms/css/jquery-multiselect/jquery.multiselect.css" rel="stylesheet"
        type="text/css" />
    <link href="/rms/css/jquery-multiselect/jquery.multiselect.filter.css" rel="stylesheet"
        type="text/css" />
    <!-- html5 tags support for IE6 to IE8 -->
    <script src="/rms/js/lib/html5.js"></script>
    <!-- jquery library -->
    <script src="/rms/js/lib/jquery-1.9.1.js"></script>
    <script src="/rms/js/lib/jquery-migrate-1.1.0.js"></script>
    <script src="/rms/js/lib/jquery-ui.js"></script>
    <script src='/rms/js/lib/fullcalendar/fullcalendar.min.js'></script>
    <!-- jquery third party library -->
    <script type="text/javascript" src="/rms/js/lib/jquery.editable-select.pack.js"></script>
    <script type="text/javascript" src="/rms/js/lib/jquery.maskedinput.js"></script>
    <!-- resruitmen tool javasript -->
    <script src="/rms/js/recruitment_tool.js" type="text/javascript"></script>
	<script type="text/javascript" src="/rms/js/jsSkill.js"></script>
    <script src="/rms/js/lib/jquery-multiselect/jquery.multiselect.filter.min.js" type="text/javascript"></script>
    <script src="/rms/js/lib/jquery-multiselect/jquery.multiselect.min.js" type="text/javascript"></script>
    <!-- script for client validation -->
    <% //<script src="/rms/js/jquery.unobtrusive-ajax.js"></script>
	//<script src="/rms/Scripts/jquery.validate.js"></script>
	//<script src="/rms/Scripts/jquery.validate.unobtrusive.js"></script> %>


<script>
	$(function() {

		/*  PROCESS LOGOUT*/

		$('.io-quick-link li:first-child').hover(function() {
			$('#logout').css('display', 'block');

		}, function() {
			$('#logout').css('display', 'none');
		});

		$('#logout').hover(function() {
			$('#logout').css('display', 'block');

		}, function() {
			$('#logout').css('display', 'none');
		});

		/* FULL CALENDAR*/
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();

		$('#calendar').fullCalendar({
			header : {
				left : 'prev,next today',
				center : 'title',
				right : 'month,agendaWeek,agendaDay'
			},
			editable : true,
			events : [ {
				title : 'All Day Event',
				start : new Date(y, m, 1)
			}, {
				title : 'Long Event',
				start : new Date(y, m, d - 5),
				end : new Date(y, m, d - 2)
			}, {
				id : 999,
				title : 'Repeating Event',
				start : new Date(y, m, d - 3, 16, 0),
				allDay : false
			}, {
				id : 999,
				title : 'Repeating Event',
				start : new Date(y, m, d + 4, 16, 0),
				allDay : false
			}, {
				title : 'Meeting',
				start : new Date(y, m, d, 10, 30),
				allDay : false
			}, {
				title : 'Lunch',
				start : new Date(y, m, d, 12, 0),
				end : new Date(y, m, d, 14, 0),
				allDay : false
			}, {
				title : 'Birthday Party',
				start : new Date(y, m, d + 1, 19, 0),
				end : new Date(y, m, d + 1, 22, 30),
				allDay : false
			}, {
				title : 'Click for Google',
				start : new Date(y, m, 28),
				end : new Date(y, m, 29),
				url : 'http://google.com/'
			} ]
		});

	});
</script>