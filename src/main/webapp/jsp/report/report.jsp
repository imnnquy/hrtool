<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Recruitment Tool</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width" />
<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<!-- css reset style sheet -->
<link rel="stylesheet" href="/rtool/css/normalize.css" />
<link rel="stylesheet" href="/rtool/css/main.css" />
<link rel="stylesheet" href="/rtool/css/jquery/base/jquery-ui.css" />
<link rel="stylesheet" type="text/css"
	href="/rtool/css/jquery.editable-select.css" />
<link rel="stylesheet" href="/rtool/css/recruitment_tool.css" />
<link rel="Stylesheet" href="/rtool/css/validate.css" />
<link href="/rtool/css/jquery-multiselect/jquery.multiselect.css"
	rel="stylesheet" type="text/css" />
<link href="/rtool/css/jquery-multiselect/jquery.multiselect.filter.css"
	rel="stylesheet" type="text/css" />
<script src="/rtool/Scripts/modernizr-2.6.2.js"></script>
<!-- html5 tags support for IE6 to IE8 -->
<script src="/rtool/js/lib/html5.js"></script>
<!-- jquery library -->
<script src="/rtool/js/lib/jquery-1.9.1.js"></script>
<script src="/rtool/js/lib/jquery-migrate-1.1.0.js"></script>
<script src="/rtool/js/lib/jquery-ui.js"></script>
<script src='/rtool/js/lib/fullcalendar/fullcalendar.min.js'></script>
<!-- jquery third party library -->
<script type="text/javascript"
	src="/rtool/js/lib/jquery.editable-select.pack.js"></script>
<script type="text/javascript" src="/rtool/js/lib/jquery.maskedinput.js"></script>
<!-- resruitmen tool javasript -->
<script src="/rtool/js/recruitment_tool.js" type="text/javascript"></script>
<script
	src="/rtool/js/lib/jquery-multiselect/jquery.multiselect.filter.min.js"
	type="text/javascript"></script>
<script src="/rtool/js/lib/jquery-multiselect/jquery.multiselect.min.js"
	type="text/javascript"></script>
<!-- script for client validation -->
<script src="/rtool/Scripts/jquery.unobtrusive-ajax.js"></script>
<script src="/rtool/Scripts/jquery.validate.js"></script>
<script src="/rtool/Scripts/jquery.validate.unobtrusive.js"></script>
<script src="/rtool/js/recruitment_tool.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		$('#cbo-report-type')
				.editableSelect(
						{
							bg_iframe : true,
							width : 158,
							onSelect : function(list_item) {

								$(
										"#label-university, #label-division, #label-position")
										.css({
											"display" : "none"
										});

								//Get TypeReport.
								var typeTemplate = $("#cbo-report-type").val();

								if (typeTemplate != "--Select--") {
									$("#validate-type-report").css({
										"display" : "none"
									});
									switch (typeTemplate) {
									case "Fresher Report":
										$("#label-university").css({
											"display" : "table-row"
										});
										break;
									case "Hired Report":
										$("#label-division").css({
											"display" : "table-row"
										});
										break;
									case "Internship Report":
										$("#label-university").css({
											"display" : "table-row"
										});
										break;
									case "Interview Report":
										$("#label-position").css({
											"display" : "table-row"
										});
										break;
									case "Offer Report":
										$("#label-position").css({
											"display" : "table-row"
										});
										break;
									case "Resource Report":
										$(
												"#label-university, #label-division, #label-position")
												.css({
													"display" : "none"
												});
										break;
									} //end switch.
								} //end if.
								else {
									$("#btn-export").css({
										"display" : "none"
									});
									$("#display-pdf").css({
										"display" : "none"
									});
								}
							}
						});

		$('#cbo-university').multiselect({
			noneSelectedText : '--All--',
			selectedList : 1
		});
		$('#cbo-division').editableSelect({
			bg_iframe : true,
			width : 168,
			onSelect : function(list_item) {
				this.select.val(list_item.val());
			}
		});
		$('#cbo-position').editableSelect({
			bg_iframe : true,
			width : 168,
			onSelect : function(list_item) {
				this.select.val(list_item.val());
			}
		});
		$("#start-1").datepicker({
			defaultDate : "+1w",
			changeMonth : true,
			numberOfMonths : 1,
			onClose : function(selectedDate) {
				$("#end-1").datepicker("option", "minDate", selectedDate);
				//Get startTime.
				var startTime = $("#start-1").val();
				if (startTime != "") {
					$("#validate-start-time").css({
						"display" : "none"
					});
				}
			}
		});

		$("#end-1").datepicker({
			defaultDate : "+1w",
			changeMonth : true,
			numberOfMonths : 1,
			onClose : function(selectedDate) {
				$("#start-1").datepicker("option", "maxDate", selectedDate);
				//Get endTime.
				var endTime = $("#end-1").val();
				if (endTime != "") {
					$("#validate-end-time").css({
						"display" : "none"
					});
				}
			}
		});

		$('.report-preview-con .layout').draggable({
			containment : [ -300, -300, -300, -300 ],
			containment : "parent"
		});

		function reloadReportViewer() {
			var maxPageWidth = 0;
			$('.report-preview-con .layout .page').each(
					function(index, element) {
						var pageWidth = $(this).outerWidth();
						if (pageWidth > maxPageWidth) {
							maxPageWidth = pageWidth;
						}
					});
			$('.report-preview-con .layout').width(maxPageWidth);
		}

		$('.report-preview-con .layout .page img').load(function() {
			reloadReportViewer();
		});

		$('#btn-search-report')
				.click(
						function() {
							$('html, body').stop().animate(
									{
										scrollTop : $('#search-report-con')
												.offset().top
									}, 250);

							//Get typeReport: Fresher Report, Hired Report,..
							var typeTemplate = $("#cbo-report-type").val();
							//Get positionId.
							var positionId = $("#cbo-position_hidden_select")
									.val();
							//Get divisionId.
							var divisionId = $("#cbo-division_hidden_select")
									.val();
							//Get UniversityId.
							var schoolId = $("#cbo-university_hidden_select")
									.val();
							//Get startTime.
							var startTime = $("#start-1").val();
							//Get endTime.
							var endTime = $("#end-1").val();

							$(
									"#pdfbox1, #pdfbox2, #pdfbox3, #pdfbox4, #pdfbox5, #pdfbox6")
									.css({
										"display" : "none"
									});

							if (typeTemplate != "--Select--" && startTime != ""
									&& endTime != "") {
								$("#btn-export").css({
									"display" : "block"
								});
								$("#display-pdf").css({
									"display" : "block"
								});
								switch (typeTemplate) {
								case "Fresher Report":
									$("#pdfbox1").css({
										"display" : "block"
									});
									break;
								case "Hired Report":
									$("#pdfbox2").css({
										"display" : "block"
									});
									$("#pdfbox2")
											.attr(
													"data",
													'/rtool/StatisticReport/LoadReport'
															+ "?typeReport=Hired Report&positionId="
															+ 0
															+ "&divisionId="
															+ divisionId
															+ "&schoolId=" + 0
															+ "&startTime="
															+ startTime
															+ "&endTime="
															+ endTime);
									break;
								case "Internship Report":
									$("#pdfbox3").css({
										"display" : "block"
									});
									break;
								case "Interview Report":
									$("#pdfbox4").css({
										"display" : "block"
									});
									$("#pdfbox4")
											.attr(
													"data",
													'/rtool/StatisticReport/LoadReport'
															+ "?typeReport=Interview Report&positionId="
															+ positionId
															+ "&divisionId="
															+ 0 + "&schoolId="
															+ 0 + "&startTime="
															+ startTime
															+ "&endTime="
															+ endTime);
									break;
								case "Offer Report":
									$("#pdfbox5").css({
										"display" : "block"
									});
									$("#pdfbox5")
											.attr(
													"data",
													'/rtool/StatisticReport/LoadReport'
															+ "?typeReport=Offer Report&positionId="
															+ positionId
															+ "&divisionId="
															+ 0 + "&schoolId="
															+ 0 + "&startTime="
															+ startTime
															+ "&endTime="
															+ endTime);
									break;
								case "Resource Report":
									$("#pdfbox6").css({
										"display" : "block"
									});
									$("#pdfbox6")
											.attr(
													"data",
													'/rtool/StatisticReport/LoadReport'
															+ "?typeReport=Resource Report&positionId="
															+ 0
															+ "&divisionId="
															+ 0 + "&schoolId="
															+ 0 + "&startTime="
															+ startTime
															+ "&endTime="
															+ endTime);
									break;
								} //end switch.
							} //end if.
							else {
								$("#btn-export").css({
									"display" : "none"
								});
								$("#display-pdf").css({
									"display" : "none"
								});
								if (typeTemplate == "--Select--") {
									$("#validate-type-report").css({
										"display" : "block"
									});
								}
								if (startTime == "") {
									$("#validate-start-time").css({
										"display" : "block"
									});
								}
								if (endTime == "") {
									$("#validate-end-time").css({
										"display" : "block"
									});
								}
							} //end else.
						});

		$('#cbo-export-format').editableSelect({
			bg_iframe : true,
			width : 158,
			onSelect : function(list_item) {
				//Get file type to export.
				var typeFormat = $("#cbo-export-format").select().val();
				if (typeFormat != "--Select--") {
					$("#validate-type-export").css({
						"display" : "none"
					});
				}
			}
		});

		$('#popup-export').dialog({
			autoOpen : false,
			title : 'Export',
			dialogClass : 'io-popup-standard',
			width : 400,
			modal : true,
			buttons : {
				OK : function() {
					//Get typeReport: Fresher Report, Hired Report,..
					var typeTemplate = $("#cbo-report-type").val();
					//Get positionId.
					var positionId = $("#cbo-position_hidden_select").val();
					//Get divisionId.
					var divisionId = $("#cbo-division_hidden_select").val();
					//Get UniversityId.
					var schoolId = $("#cbo-university_hidden_select").val();
					//Get startTime.
					var startTime = $("#start-1").val();
					//Get endTime.
					var endTime = $("#end-1").val();
					//Get typeFormat.
					var typeFormat = $("#cbo-export-format").val();

					if (typeFormat != "--Select--") {
						$.post('/rtool/StatisticReport/ExportToDisk', {
							typeReport : typeTemplate,
							positionId : positionId,
							divisionId : divisionId,
							schoolId : 0, //Need to change.
							startTime : startTime,
							endTime : endTime,
							typeFormat : typeFormat
						}, function(data, status) {
							if (status == 'success') {
								//window.location.reload();
							} else {
							}
						}); //end function.

						$(this).dialog("close");
					} else {
						$("#validate-type-export").css({
							"display" : "block"
						});
					}
				},
				CANCEL : function() {
					$(this).dialog("close");
				}
			},
			open : function(event, ui) {

			}
		});

		$('#btn-export').click(function() {
			$("#validate-type-export").css({
				"display" : "none"
			});
			$('#popup-export').dialog('open');
			return false;
		});
	});
</script>

</head>
<body>
	<form action="/rtool/StatisticReport/Search" method="post">
		<div class="pad-10">
			<div class="io-panel panel-search-candidate">
				<div class="io-panel-header">
					<h3 class="txtTitle-1">Statistic & Report</h3>
					<div class="lstBtnRight">
						<button class="io-button-highlight medium" onclick=""
							id="btn-export" style="display: none">
							<span>EXPORT</span>
						</button>
					</div>
					<div style="clear: right;"></div>
				</div>
				<div class="io-panel-body">
					<div class="pad-20">
						<div class="io-message-warning">
							<span class="ico-20 message-warning"></span>
							<p class="message-content ">Please select report template and
								parameters, then and press button ""Search"</p>
						</div>
						<table class="io-table-input">
							<tr>
								<td class="label" style="width: 150px;">Report template</td>
								<td class="data" style="width: 300px;"><select
									class="editable-select" id="cbo-report-type"
									name="ListReportTemplate"><option value="--Select--">--Select--</option>
										<option value="Resource Report">Resource Report</option>
										<option value="Fresher Report">Fresher Report</option>
										<option value="Internship Report">Internship Report</option>
										<option value="Interview Report">Interview Report</option>
										<option value="Offer Report">Offer Report</option>
										<option value="Hired Report">Hired Report</option>
								</select></td>
								<td>
									<div id="validate-type-report" style="display: none">
										<span style="color: Red; font-size: 20px;">Please
											select report type.</span>
									</div>
								</td>
							</tr>
							<tr>
								<td class="label" colspan="3">
									<div class="io-splitter">
										<h4>Other filters</h4>
									</div>
								</td>
							</tr>
							<tr style="display: none" id="label-university">
								<td class="label">University</td>
								<td class="data"><select class="editable-select"
									id="cbo-university" multiple="multiple" name="ListUniversity"><option
											value="0">All</option>
										<option value="1">HCMC University of Science</option>
										<option value="2">HCMC University of Technology</option>
										<option value="3">HCMC University of Information
											Technology</option>
										<option value="4">HCMC Univerisity of Technical
											Education</option>
										<option value="5">HUFLIT</option>
										<option value="6">HCMC International University</option>
										<option value="7">HCMC Economics University</option>
										<option value="8">Can Tho University</option>
										<option value="9">HCMC University of Pedagogy</option>
										<option value="10">Da Nang University of Technology</option>
										<option value="11">Van Lang University</option>
										<option value="12">Industrial University HCMC</option>
										<option value="13">Other Universities</option>
										<option value="14">Other Colleges</option>
										<option value="15">IT Center</option>
								</select></td>
								<td>&nbsp;</td>
							</tr>
							<tr style="display: none" id="label-position">
								<td class="label">Position</td>
								<td class="data"><select class="editable-select"
									id="cbo-position" name="ListPosition"><option
											value="0">All</option>
										<option value="2">ABC 456</option>
										<option value="5">Position 1</option>
										<option value="6">Position 2</option>
										<option value="7">Java Developer VuTest</option>
										<option value="8">Position 3110 0248</option>
										<option value="9">Position 3110 0253</option>
										<option value="10">NET Developer</option>
										<option value="11">Embedded Software Engineer</option>
										<option value="12">Embedded Software Engineer 1</option>
										<option value="13">Pos 1411</option>
										<option value="14">Co Huynh Test</option>
										<option value="15">Co Huynh Test 1</option>
										<option value="16">Technical Trainer</option>
										<option value="17">Junior Engineer</option>
										<option value="21">Java Developer</option>
										<option value="22">Embedded Engineeer</option>
										<option value="24">DOTNET Engineer</option>
										<option value="25">Expert Programmer</option>
										<option value="26">java junior</option>
										<option value="28">dot net adsfgsdfgs</option>
										<option value="29">gfdgfdgfdg</option>
										<option value="31">test9999</option>
										<option value="35">dfasdfd</option>
										<option value="36">dsfsdf</option>
										<option value="37">Project Manage</option>
										<option value="38">Project Manage1</option>
										<option value="39">Manager</option>
										<option value="44">kdfjh fsgdfg</option>
										<option value="45">Position 62</option>
										<option value="46">Position 61</option>
										<option value="47">PositionABC</option>
										<option value="48">positionxyz</option>
										<option value="49">PositionMNP</option>
										<option value="52">Software Engineer</option>
										<option value="53">Siunhon2</option>
										<option value="58">1223336snm</option>
										<option value="59">123457</option>
										<option value="61">Software Engineer exp</option>
										<option value="64">asdasdas</option>
										<option value="70">Hung Bill</option>
										<option value="73">p111111111111111</option>
										<option value="74">p111111111111112</option>
										<option value="75">Vice President</option>
										<option value="76">BSE Japa</option>
										<option value="77">President</option>
										<option value="80">hoang nguyen2</option>
										<option value="82">teo45yr45y</option>
										<option value="83">gvgggggggg</option>
										<option value="84">fdfgdgdgfg</option>
										<option value="90">dsfsadf</option>
										<option value="92">ghjhgj</option>
										<option value="93">ddqwdfwqdxx</option>
										<option value="95">ghjhgj2</option>
										<option value="96">sdfdsf</option>
										<option value="97">asdasdasdasdasd</option>
										<option value="98">asad asd</option>
										<option value="99">asdasdasd</option>
										<option value="101">asdasdasdsdfsdfsdfsdf</option>
										<option value="102">asdasdasdsdfssdfsdfdfsdfsdf</option>
										<option value="110">sdfsadasdaasdsd</option>
										<option value="111">sdfsasdsd</option>
										<option value="112">sdfsasdsdasd</option>
										<option value="113">sdfsasdsdasdasd</option>
										<option value="114">sdfsasdsdasdaasdsd</option>
										<option value="115">sdfsasdsdasasddaasdsd</option>
										<option value="116">sdfsasdsdasasddaasasddsd</option>
										<option value="122">234234</option>
										<option value="123">ghjghj</option>
										<option value="124">54546df66</option>
										<option value="125">positionmoiiii</option>
										<option value="126">sadfasdfsadf</option>
										<option value="127">POS 0303 0940</option>
										<option value="128">POS 0303 0946</option>
										<option value="129">abc789</option>
										<option value="130">POS 0303 0954</option>
										<option value="131">sdfsdf</option>
										<option value="132">sdfsdf111</option>
								</select></td>
								<td>&nbsp;</td>
							</tr>
							<tr style="display: none" id="label-division">
								<td class="label">Division</td>
								<td class="data"><select class="editable-select"
									id="cbo-division" name="ListDivision"><option
											value="0">All</option>
										<option value="1">GCSVN</option>
										<option value="2">ICT</option>
										<option value="3">FA</option>
										<option value="4">TS</option>
										<option value="5">Gen.Mngt</option>
										<option value="6">BOM</option>
										<option value="7">EBS</option>
										<option value="8">EMB</option>
										<option value="9">DNB</option>
										<option value="10">TrainingCenter</option>
								</select></td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td class="label">Time period</td>
								<td class="data"><span
									style="display: inline-block; width: 50px;">From</span> <input
									type="text" class="io-date-normal" style="width: 128px;"
									id="start-1" name="start-1" /></td>
								<td>
									<div id="validate-start-time" style="display: none">
										<span style="color: Red; font-size: 20px;">Please
											select start time.</span>
									</div>
								</td>
							</tr>
							<tr>
								<td class="label">&nbsp;</td>
								<td class="data"><span
									style="display: inline-block; width: 50px;">To</span> <input
									type="text" class="io-date-normal" style="width: 128px;"
									id="end-1" name="end-1" /></td>
								<td>
									<div id="validate-end-time" style="display: none">
										<span style="color: Red; font-size: 20px;">Please
											select end time.</span>
									</div>
								</td>
							</tr>
						</table>
					</div>
					<!--end of padding 20-->
					<div class="pad-10 io-block-border" id="search-report-con">
						<div class="io-block io-center">
							<input type="button" class="io-button-standard medium"
								id="btn-search-report" value="SEARCH" />
						</div>
					</div>
					<div id="display-pdf" style="display: none">
						<div class="io-block">
							<div class="report-preview-con">
								<div class="layout" id="layout-report">
									<div class="page" id="page-report">
										<object id='pdfbox1' class="pdfbox" style="display: none"
											type="application/pdf" data=""> </object>
										<object id='pdfbox2' class="pdfbox" style="display: none"
											type="application/pdf" data=""> </object>
										<object id='pdfbox3' class="pdfbox" style="display: none"
											type="application/pdf" data=""> </object>
										<object id='pdfbox4' class="pdfbox" style="display: none"
											type="application/pdf" data=""> </object>
										<object id='pdfbox5' class="pdfbox" style="display: none"
											type="application/pdf" data=""> </object>
										<object id='pdfbox6' class="pdfbox" style="display: none"
											type="application/pdf" data=""> </object>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	<!-- popup export -->
	<div id="popup-export">
		<input type="hidden" autofocus />
		<div class="popup-description">
			You’re exporting <span class="io-bold">Fresher Report</span><br />
			Please select file type
		</div>
		<table class="io-table-input vertical">
			<tbody>
				<tr>
					<td class="data"><select id="cbo-export-format"
						class="editable-select">
							<option value="--Select--">--Select--</option>
							<option value="DOC">Ms Word (DOC)</option>
							<option value="XLS">Ms Excel (XLS)</option>
							<option value="PDF">Adobe Acrobat (PDF)</option>
					</select></td>
				</tr>
			</tbody>
		</table>
		<div id="validate-type-export" style="display: none">
			<span style="color: Red">Please select file type.</span>
		</div>
	</div>
	<!-- end of popup export -->

	</div>
	</div>
	<!-- end io-col-main -->
	</div>
	<!-- end io-wrapper -->
	<footer class="io-footer"> 2013 © Global CyberSoft -
	Recruitment Tool v.1.0 </footer>
	<!-- end footer -->


	<!-- The dialog content -->
	<div id="confirm-message-dialog" title="Confirm">
		<p id="confirm-message-dialog-message"></p>
	</div>
</body>
</html>