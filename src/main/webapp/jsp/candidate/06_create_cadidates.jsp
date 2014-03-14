<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script>
	$(function() {
		$('#cbo-state').editableSelect({
			bg_iframe : true,
			width : 98,
			onSelect : function(list_item) {
			}
		});

		$('#cbo-nation').editableSelect({
			bg_iframe : true,
			width : 98,
			onSelect : function(list_item) {
			}
		});

		$('#cbo-profile-status').editableSelect({
			bg_iframe : true,
			width : 98,
			onSelect : function(list_item) {
			}
		});

		$('#cbo-current-level').editableSelect({
			bg_iframe : true,
			width : 168,
			onSelect : function(list_item) {
			}
		});

		$('#cbo-applied-position').editableSelect({
			bg_iframe : true,
			width : 168,
			onSelect : function(list_item) {
			}
		});

		$('#cbo-position').editableSelect({
			bg_iframe : true,
			onSelect : function(list_item) {

			}
		});
		$('#cbo-status').editableSelect({
			bg_iframe : true,
			onSelect : function(list_item) {

			}
		});
		$('#cbo-updated-date').editableSelect({
			bg_iframe : true,
			onSelect : function(list_item) {

			}
		});
		$('#cbo-skill-1').editableSelect({
			bg_iframe : true,
			width : 128,
			onSelect : function(list_item) {

			}
		});

		$('#cbo-skill-level-1').editableSelect({
			bg_iframe : true,
			width : 128,
			onSelect : function(list_item) {

			}
		});
		$('#cbo-skill-2').editableSelect({
			bg_iframe : true,
			width : 128,
			onSelect : function(list_item) {

			}
		});

		$('#cbo-skill-level-2').editableSelect({
			bg_iframe : true,
			width : 128,
			onSelect : function(list_item) {

			}
		});

		$('#cbo-language-1').editableSelect({
			bg_iframe : true,
			width : 128,
			onSelect : function(list_item) {

			}
		});

		$('#cbo-language-level-1').editableSelect({
			bg_iframe : true,
			width : 128,
			onSelect : function(list_item) {

			}
		});

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

		$('#cbo-other-1').editableSelect({
			bg_iframe : true,
			onSelect : function(list_item) {

			}
		});

		$('#cbo-other-data-1').editableSelect({
			bg_iframe : true,
			onSelect : function(list_item) {

			}
		});

		$('.one').click(function() {
			$('.rating-profile').find('ul').attr('class', 'rating onestar')
		});
		$('.two').click(function() {
			$('.rating-profile').find('ul').attr('class', 'rating twostar')
		});
		$('.three').click(function() {
			$('.rating-profile').find('ul').attr('class', 'rating threestar')
		});
		$('.four').click(function() {
			$('.rating-profile').find('ul').attr('class', 'rating fourstar')
		});
		$('.five').click(function() {
			$('.rating-profile').find('ul').attr('class', 'rating fivestar')
		});

		$("#from").datepicker({
			defaultDate : "+1w",
			changeMonth : true,
			numberOfMonths : 1,
			onClose : function(selectedDate) {
				$("#to").datepicker("option", "minDate", selectedDate);
			}
		});
		$("#to").datepicker({
			defaultDate : "+1w",
			changeMonth : true,
			numberOfMonths : 1,
			onClose : function(selectedDate) {
				$("#from").datepicker("option", "maxDate", selectedDate);
			}
		});

		$("#work-date-start-1").datepicker(
				{
					defaultDate : "+1w",
					changeMonth : true,
					numberOfMonths : 1,
					onClose : function(selectedDate) {
						$("#work-date-end-1").datepicker("option", "minDate",
								selectedDate);
					}
				});
		$("#work-date-end-1").datepicker(
				{
					defaultDate : "+1w",
					changeMonth : true,
					numberOfMonths : 1,
					onClose : function(selectedDate) {
						$("#work-date-start-1").datepicker("option", "maxDate",
								selectedDate);
					}
				});

		$("#work-date-start-2").datepicker(
				{
					defaultDate : "+1w",
					changeMonth : true,
					numberOfMonths : 1,
					onClose : function(selectedDate) {
						$("#work-date-end-2").datepicker("option", "minDate",
								selectedDate);
					}
				});
		$("#work-date-end-2").datepicker(
				{
					defaultDate : "+1w",
					changeMonth : true,
					numberOfMonths : 1,
					onClose : function(selectedDate) {
						$("#work-date-start-2").datepicker("option", "maxDate",
								selectedDate);
					}
				});

		$("#edu-date-start-1").datepicker(
				{
					defaultDate : "+1w",
					changeMonth : true,
					numberOfMonths : 1,
					onClose : function(selectedDate) {
						$("#edu-date-end-1").datepicker("option", "minDate",
								selectedDate);
					}
				});
		$("#edu-date-end-1").datepicker(
				{
					defaultDate : "+1w",
					changeMonth : true,
					numberOfMonths : 1,
					onClose : function(selectedDate) {
						$("#edu-date-start-1").datepicker("option", "maxDate",
								selectedDate);
					}
				});

		$("#edu-date-start-2").datepicker(
				{
					defaultDate : "+1w",
					changeMonth : true,
					numberOfMonths : 1,
					onClose : function(selectedDate) {
						$("#edu-date-end-2").datepicker("option", "minDate",
								selectedDate);
					}
				});
		$("#edu-date-end-2").datepicker(
				{
					defaultDate : "+1w",
					changeMonth : true,
					numberOfMonths : 1,
					onClose : function(selectedDate) {
						$("#edu-date-start-2").datepicker("option", "maxDate",
								selectedDate);
					}
				});

		//resize right column to match height with left column => fix vertical divider
		var colLeft = $('.io-contact-information');
		var colRight = $('.io-personal-information');
		colLeft.resize(function() {
			colRight.css('min-height', colLeft.height() + 'px');
		});
		colLeft.resize();

	});
</script>
</head>
<body>
	<div class="io-wrapper">
		<div class="io-col-main">
			<div class="io-main-content">
				<div class="pad-10">
					<div class="io-panel panel-create-new-candidate">
						<div class="io-panel-header">
							<h3 style="float: left; margin-top: 8px;">Create New
								Candidate</h3>
							<div style="float: right;">
								<a href="createCandiate" class="io-button-highlight medium"
									style="margin-right: 10px;">SAVE
<!-- 									<input -->
<!-- 										type="submit" name="creatCandidate" value="SAVE"> -->
										</a> <a
									href="03_candidate_detail.html"
									class="io-button-standard medium" style=""><span>CANCEL</span></a>
							</div>
							<div style="clear: right;"></div>
						</div>
						<div class="io-panel-body clearfix">
							<div class="io-contact-information">


								<div class="pad-20">
									<h3>
										<img src="css/image/transparent.png" alt="Contact Information"
											class="iconContactInfo">Contact information
									</h3>

									<table class="io-table-input vertical" style="width: auto;">
										<tbody>
											<tr>
												<td class="label" colspan="2">Fullname</td>
											</tr>
											<tr>
												<!-- 												<td class="data"><input class="io-txt-normal empty" -->
												<!-- 													style="width: 98px;" id="firstname" type="text" value="" -->
												<!-- 													placeholder="First Name" autofocus /></td> -->
												<!-- 												<td class="data"><input class="io-txt-normal empty" -->
												<!-- 													style="width: 98px;" id="lastname" type="text" -->
												<!-- 													placeholder="Last Name" /></td> -->
												<td class="data" colspan="2"><input name="fullname"
													class="io-txt-normal empty" style="width: 230px;"
													id="lastname" type="text" /></td>
											</tr>
											<tr>
												<td class="label" colspan="2">Address</td>
											</tr>
											<tr>
												<!-- 												<td class="data" colspan="2"><input -->
												<!-- 												name="address" class="io-txt-normal empty" style="width: 230px;" -->
												<!-- 													id="no_street" type="text" -->
												<!-- 													placeholder="Address No, Street Name" /></td> -->
												<td class="data" colspan="2"><input name="address"
													class="io-txt-normal empty" style="width: 230px;"
													id="no_street" type="text" /></td>
											</tr>

											<!-- 											<tr> -->
											<!-- 												<td class="data"><input class="io-txt-normal empty" -->
											<!-- 													style="width: 98px;" id="city" type="text" -->
											<!-- 													placeholder="City" /></td> -->
											<!-- 												<td class="data"><select id="cbo-state" -->
											<!-- 													class="editable-select"> -->
											<!-- 														<option value="None">None</option> -->
											<!-- 														<option value="New York">New York</option> -->
											<!-- 														<option value="Texas">Texas</option> -->
											<!-- 												</select></td> -->
											<!-- 											</tr> -->
											<!-- 											<tr> -->
											<!-- 												<td class="data"><select id="cbo-nation" -->
											<!-- 													class="editable-select"> -->
											<!-- 														<option value="Vietnam">Vietnam</option> -->
											<!-- 														<option value="United States">United States</option> -->
											<!-- 														<option value="Japan">Japan</option> -->
											<!-- 												</select></td> -->
											<!-- 												<td class="data">&nbsp;</td> -->
											<!-- 											</tr> -->


											<tr>
												<td class="label" colspan="2">Phone</td>
											</tr>
											<tr>
												<td class="data" colspan="4"><input name="phone"
													class="io-txt-normal empty" style="width: 230px;"
													id="phone" type="text" value="" /></td>
											</tr>
											<tr>
												<td class="label" colspan="2">Email</td>
											</tr>
											<tr>
												<td class="data" colspan="2"><input name="email"
													class="io-txt-normal empty" style="width: 230px;"
													id="email" type="text" value="" /></td>
											</tr>
											<tr>
												<td class="label" colspan="2">Link (Personal website,
													Facebook or LinkedIn or Twitter...)</td>
											</tr>
											<tr>
												<td class="data" colspan="2"><input name="link"
													class="io-txt-normal empty" style="width: 230px;"
													type="text" value="" /></td>
											</tr>

											<tr>
												<td class="label" colspan="2">Status</td>
											</tr>
											<tr>
												<td class="data" colspan="2"><select
													id="cbo-profile-status" class="editable-select">
														<option value="Created">Created</option>
														<option value="Active">Active</option>
														<option value="Inactive">Inactive</option>
														<option value="Closed">Closed</option>
												</select></td>
											</tr>

											<tr>
												<td class="label" colspan="2">Upload picture</td>
											</tr>
											<tr>
												<td class="data" colspan="2"><input id="avatar"
													type="file" value="" /></td>
											</tr>
											<!-- 											<tr> -->
											<!-- 												<td class="label" colspan="2">Original resource</td> -->
											<!-- 											</tr> -->
											<!-- 											<tr> -->
											<!-- 												<td class="data" colspan="2"><input -->
											<!-- 													class="io-txt-normal empty" style="width: 230px;" -->
											<!-- 													type="text" value="" /></td> -->
											<!-- 											</tr> -->
											<!-- 											<tr> -->
											<!-- 												<td class="label" colspan="2">Resource detail</td> -->
											<!-- 											</tr> -->
											<!-- 											<tr> -->
											<!-- 												<td class="data" colspan="2"><input -->
											<!-- 													class="io-txt-normal empty" style="width: 230px;" -->
											<!-- 													type="text" value="" /></td> -->
											<!-- 											</tr> -->


											<!--<tr>
	                            					<td class="label" colspan="2">Rating for this profile</td>
	                            				</tr>
	                            				<tr>
	                            					<td class="data" colspan="2"><ul  class="rating">
															<li class="one"><a title="1 Star">1</a></li>
															<li class="two"><a title="2 Stars">2</a></li>
															<li class="three"><a title="3 Stars">3</a></li>
															<li class="four"><a title="4 Stars">4</a></li>
															<li class="five"><a title="5 Stars">5</a></li>
														</ul></td>
	                            				</tr>-->


											<tr>
												<td class="label" colspan="2">Upload CV file as
													attachment</td>
											</tr>
											<tr>
												<td class="data" colspan="2"><input id="cv-file"
													type="file" value="" /></td>
											</tr>

											<tr>
												<td class="label" colspan="2">Bookmark for this CV?</td>
											</tr>
											<tr>
												<td class="data" colspan="2"><input name="bookmark"
													type="radio" value="true" />&nbsp;Yes&nbsp;&nbsp;&nbsp;&nbsp;<input
													name="bookmark" type="radio" value="false"
													checked="checked" />&nbsp;No</td>
											</tr>





										</tbody>
									</table>

								</div>
							</div>
							<div class="io-personal-information newCandidate">
								<div class="pad-20">
									<div class="profile-summary">
										<h3 class="expand">
											<img src="css/image/transparent.png" alt=""
												class="iconSummary"><span>Summary<span>
										</h3>
										<div>
											<textarea name="summary" class="io-ta-normal"
												style="height: 150px;"></textarea>
										</div>

										<table class="io-table-input vertical" style="width: auto;">
											<tbody>
												<tr>
													<td class="label">Current Level</td>
													<td class="label">Applied Position</td>
												</tr>
												<tr>
													<td class="data"><select id="cbo-current-level"
														class="editable-select">
															<option value="Engineer">Engineer</option>
															<option value="Senior Engineer">Senior Engineer</option>
															<option value="Project Manager">Project Manager</option>
													</select></td>
													<td class="data"><select id="cbo-applied-position"
														class="editable-select">
															<option value="Senior Java Developer">Senior
																Java Developer</option>
															<option value="Senior Web Designer">Senior Web
																Designer</option>
															<option value="Project Manager">Project Manager</option>
													</select></td>
												</tr>
												<tr>
													<td class="label">Expected Salary</td>
													<td class="label">&nbsp;</td>
												</tr>
												<tr>
													<td class="data" colspan="2"><input
														class="io-txt-normal" style="width: 168px;" id="link"
														type="text" value="10,000" /><span
														class="io-currency-sign">đ</span></td>
												</tr>

											</tbody>
										</table>

									</div>
									<!-- end of summary -->
									<div class="profile-experience">
										<h3 class="expand">
											<img src="css/image/transparent.png" alt="" class="iconEx" /><span>Working
												Experiences</span>
										</h3>
										<div class="working-experience" id="work-experience-1">
											<table style="width: 100%;">
												<tbody>
													<tr>
														<td>
															<div class="border-wrap">
																<table class="io-table-input">
																	<tbody>
																		<tr>
																			<td class="label" style="width: 125px;">Position</td>
																			<td class="data"><input type="text"
																				class="io-txt-normal" style="width: 198px;" value="" /></td>
																		</tr>

																		<tr>
																			<td class="label">Company</td>
																			<td class="data"><input type="text"
																				class="io-txt-normal" style="width: 198px;" value="" /></td>
																		</tr>

																		<tr>
																			<td class="label">Time period</td>
																			<td class="data"><span
																				style="display: inline-block; width: 50px;">From</span><input
																				type="text" class="io-date-normal"
																				style="width: 128px;" id="work-date-start-1"
																				name="work-date-start-1" /></td>
																		</tr>
																		<tr>
																			<td class="label">&nbsp;</td>
																			<td class="data"><span
																				style="display: inline-block; width: 50px;">To</span><input
																				type="text" class="io-date-normal"
																				style="width: 128px;" id="work-date-end-1"
																				name="work-date-end-1" /></td>
																		</tr>

																	</tbody>
																</table>
																<table class="io-table-input vertical">
																	<tbody>
																		<tr>
																			<td class="label">Description</td>
																		</tr>
																		<tr>
																			<td class="data"><textarea class="io-ta-normal"></textarea></td>
																		</tr>
																		<tr>
																			<td class="data"><input type="checkbox"
																				id="current-company" checked="checked" />
																				&nbsp;Current working company</td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</td>
														<td>
															<div class="add-remove-con">
																<span class="ico-20 add-row"></span> <span
																	class="ico-20 remove-row"></span>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<!-- end of experience -->

										<div class="working-experience" id="work-experience-1">
											<table style="width: 100%;">
												<tbody>
													<tr>
														<td>
															<div class="border-wrap">
																<table class="io-table-input">
																	<tbody>
																		<tr>
																			<td class="label" style="width: 125px;">Position</td>
																			<td class="data"><input type="text"
																				class="io-txt-normal" style="width: 198px;" value="" /></td>
																		</tr>

																		<tr>
																			<td class="label">Company</td>
																			<td class="data"><input type="text"
																				class="io-txt-normal" style="width: 198px;" value="" /></td>
																		</tr>

																		<tr>
																			<td class="label">Time period</td>
																			<td class="data"><span
																				style="display: inline-block; width: 50px;">From</span><input
																				type="text" class="io-date-normal"
																				style="width: 128px;" id="work-date-start-2"
																				name="work-date-start-2" /></td>
																		</tr>
																		<tr>
																			<td class="label">&nbsp;</td>
																			<td class="data"><span
																				style="display: inline-block; width: 50px;">To</span><input
																				type="text" class="io-date-normal"
																				style="width: 128px;" id="work-date-end-2"
																				name="work-date-end-2" /></td>
																		</tr>

																	</tbody>
																</table>
																<table class="io-table-input vertical">
																	<tbody>
																		<tr>
																			<td class="label">Description</td>
																		</tr>
																		<tr>
																			<td class="data"><textarea class="io-ta-normal"></textarea></td>
																		</tr>
																		<tr>
																			<td class="data"><input type="checkbox"
																				id="current-company" /> &nbsp;Current working
																				company</td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</td>
														<td>
															<div class="add-remove-con">
																<span class="ico-20 add-row"></span> <span
																	class="ico-20 remove-row"></span>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<!-- end of experience -->
									</div>
									<!-- end of div experience -->



									<div class="profile-skill">

										<h3 class="expand">
											<img src="css/image/transparent.png" alt="" class="iconSkill" /><span>Skills
												& Languages</span>
										</h3>

										<table class="io-table-input vertical">
											<tbody>
												<tr>
													<td class="label">Skills</td>
												</tr>
												<tr>

													<td class="data">
														<div class="io-editable-list">
															<div class="row">
																<span class="col"> <select id="cbo-skill-1"
																	class="editable-select">
																		<option value="Java">Java</option>
																</select></span> <span class="col"><select id="cbo-skill-level-1"
																	class="editable-select">
																		<option value="Beginner">Beginner</option>
																</select></span> <span class="ico-20 remove-row"></span>

															</div>
															<div class="row">
																<span class="col"><select id="cbo-skill-2"
																	class="editable-select">
																		<option value="CSS">CSS</option>
																</select></span> <span class="col"><select id="cbo-skill-level-2"
																	class="editable-select">
																		<option value="Expert">Expert</option>
																</select></span> <span class="ico-20 add-row"></span> <span
																	class="ico-20 remove-row"></span>
															</div>
														</div>
													</td>
												</tr>
												<tr>

												</tr>
												<tr>
													<td class="label">Languages</td>

												</tr>
												<tr>
													<td class="data">
														<div class="io-editable-list">

															<div class="row">
																<span class="col"> <select id="cbo-language-1"
																	class="editable-select">
																		<option value="English">English</option>
																</select>
																</span> <span class="col"> <select
																	id="cbo-language-level-1" class="editable-select">
																		<option value="Beginner">Beginner</option>
																		<option value="Intermediate">Intermediate</option>
																		<option value="Advanced">Advanced</option>
																</select>
																</span> <span class="ico-20 add-row"></span> <span
																	class="ico-20 remove-row"></span>
															</div>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<!-- end of skill -->
									<div class="profile-education">

										<h3 class="expand">
											<img src="css/image/transparent.png" alt="" class="iconEdu" /><span>Educations
												& Certificates</span>
										</h3>
										<div class="education-certificate"
											id="education-certificate-1">
											<table style="width: 100%;">
												<tbody>
													<tr>
														<td>
															<div class="border-wrap">
																<table class="io-table-input">
																	<tbody>
																		<tr>
																			<td class="label" style="width: 125px;">Certificate</td>
																			<td class="data"><input type="text"
																				class="io-txt-normal" style="width: 198px;"
																				id="certificate-1"
																				value="Bachelor of Software Development" /></td>
																		</tr>

																		<tr>
																			<td class="label">University / College</td>
																			<td class="data"><input type="text"
																				class="io-txt-normal" style="width: 198px;"
																				id="education-1" value="Standford University" /></td>
																		</tr>

																		<tr>
																			<td class="label">Time period</td>
																			<td class="data"><span
																				style="display: inline-block; width: 50px;">From</span><input
																				type="text" class="io-date-normal"
																				style="width: 128px;" id="edu-date-start-1"
																				name="edu-date-start-1" /></td>
																		</tr>
																		<tr>
																			<td class="label">&nbsp;</td>
																			<td class="data"><span
																				style="display: inline-block; width: 50px;">To</span><input
																				type="text" class="io-date-normal"
																				style="width: 128px;" id="edu-date-end-1"
																				name="edu-date-end-1" /></td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</td>
														<td>
															<div class="add-remove-con">
																<span class="ico-20 add-row"></span> <span
																	class="ico-20 remove-row"></span>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<!-- end of education -->

										<div class="education-certificate"
											id="education-certificate-2">
											<table style="width: 100%;">
												<tbody>
													<tr>
														<td>
															<div class="border-wrap">
																<table class="io-table-input">
																	<tbody>
																		<tr>
																			<td class="label" style="width: 125px;">Certificate</td>
																			<td class="data"><input type="text"
																				class="io-txt-normal" style="width: 198px;"
																				id="certificate-1"
																				value="Bachelor of Software Development" /></td>
																		</tr>

																		<tr>
																			<td class="label">University / College</td>
																			<td class="data"><input type="text"
																				class="io-txt-normal" style="width: 198px;"
																				id="education-1" value="Standford University" /></td>
																		</tr>

																		<tr>
																			<td class="label">Time period</td>
																			<td class="data"><span
																				style="display: inline-block; width: 50px;">From</span><input
																				type="text" class="io-date-normal"
																				style="width: 128px;" id="edu-date-start-2"
																				name="edu-date-start-2" /></td>
																		</tr>
																		<tr>
																			<td class="label">&nbsp;</td>
																			<td class="data"><span
																				style="display: inline-block; width: 50px;">To</span><input
																				type="text" class="io-date-normal"
																				style="width: 128px;" id="edu-date-end-2"
																				name="edu-date-end-2" /></td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</td>
														<td>
															<div class="add-remove-con">
																<span class="ico-20 add-row"></span> <span
																	class="ico-20 remove-row"></span>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<!-- end of education -->


									</div>
									<!-- end of div education-->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end io-col-main -->
	</div>
</body>
</html>