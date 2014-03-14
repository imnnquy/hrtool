<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- local script -->
<script>
	$(function() {
		//resize right column to match height with left column => fix vertical divider
		var colLeft = $('.panel-candidate-detail .io-panel-body .col-6.left');
		var colRight = $('.panel-candidate-detail .io-panel-body .col-6.right');
		colLeft.resize(function() {

			if (colRight.height() < colLeft.height()) {
				colRight.height(colLeft.height());
			}
		});
		colLeft.resize();

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

		//popup move to
		$('#popup-move-to').dialog({
			autoOpen : false,
			title : 'Move To',
			dialogClass : 'io-popup-standard',
			width : 400,
			modal : true,
			buttons : {
				OK : function() {
					$(this).dialog("close");
				},
				CANCEL : function() {
					$(this).dialog("close");
				}
			},
			open : function(event, ui) {

			}
		});

		$('#btn-move-to').click(function() {
			$('#popup-move-to').dialog('open');
		});

		$('#cbo-move-to').editableSelect({
			bg_iframe : true,
			width : 158,
			onSelect : function(list_item) {

			}
		});

		$('#cbo-vacancy').editableSelect({
			bg_iframe : true,
			width : 158,
			onSelect : function(list_item) {

			}
		});

		$('#popup-delete').dialog(
				{
					autoOpen : false,
					title : 'Delete Candidate Information',
					dialogClass : 'io-popup-standard',
					width : 400,
					modal : true,
					buttons : {
						YES : function() {
							$(this).dialog("close");
							var url = window.location;
							url = url.toString();
							url = url.substring(0, url.lastIndexOf('/'))
									+ '/02_searchform.html';
							window.location = url;
						},
						NO : function() {
							$(this).dialog("close");
						}
					},
					open : function(event, ui) {

					}
				});

		$('#btn-delete').click(function() {
			$('#popup-delete').dialog('open');

		});

		$('#popup-status').dialog({
			autoOpen : false,
			title : 'Change Candidate Status',
			dialogClass : 'io-popup-standard',
			width : 400,
			modal : true,
			buttons : {
				OK : function() {
					$(this).dialog("close");
				},
				CANCEL : function() {
					$(this).dialog("close");
				}
			},
			open : function(event, ui) {

			}
		});

		$('#btn-change-status').click(function() {
			$('#popup-status').dialog('open');
		});

		$('#cbo-profile-status').editableSelect({
			bg_iframe : true,
			width : 158,
			onSelect : function(list_item) {

			}
		});

		$('#popup-download-assessment').dialog({
			autoOpen : false,
			title : 'Download Interview Assessments',
			dialogClass : 'io-popup-standard',
			width : 400,
			modal : true,
			buttons : {
				OK : function() {
					$(this).dialog("close");
				},
				CANCEL : function() {
					$(this).dialog("close");
				}
			},
			open : function(event, ui) {

			}
		});

		$('#btn-download-assessment').click(function() {
			$('#popup-download-assessment').dialog('open');
		});

		$('#popup-download-test-result').dialog({
			autoOpen : false,
			title : 'Download Test Result',
			dialogClass : 'io-popup-standard',
			width : 400,
			modal : true,
			buttons : {
				OK : function() {
					$(this).dialog("close");
				},
				CANCEL : function() {
					$(this).dialog("close");
				}
			},
			open : function(event, ui) {

			}
		});

		$('#btn-download-test-result').click(function() {
			$('#popup-download-test-result').dialog('open');
		});

		$('#cbo-export-format').editableSelect({
			bg_iframe : true,
			width : 158,
			onSelect : function(list_item) {

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
					$(this).dialog("close");
				},
				CANCEL : function() {
					$(this).dialog("close");
				}
			},
			open : function(event, ui) {

			}
		});

		$('#btn-export').click(function() {
			$('#popup-export').dialog('open');
		});

		$('#btn-print').click(function() {
			window.print();
		});

	});
</script>
</head>
<body>
	<div class="io-wrapper">
		<div class="io-col-main">
			<div class="io-main-content">
				<div class="pad-10">
					<div class="io-panel panel-candidate-detail">
						<div class="stampStatus">Interview</div>
						<!-- add class "active" to make bookmark active
                            <div class="bookmark-large"><a class="active" href="#" title="bookmark"></a></div>
                            -->

						<div class="io-panel-header">
							<h3 class="txtTitle-1">
								Peter Belanger | 1025361348 <span>
							</h3>
							<div class="lstBtnRight">
								<a href="#" class="io-button-highlight medium has-icon-right"
									id="btn-move-to"><span>MOVE TO</span><span
									class="ico-20 arrow-down"></span></a> <a href="#"
									class="io-button-highlight medium has-icon-right"
									id="btn-change-status"><span>ACTIVE</span><span
									class="ico-20 arrow-down"></span></a> <a
									href="06_create_cadidates.html"
									class="io-button-standard medium"><span>EDIT</span></a> <a
									href="#" id="btn-delete" class="io-button-standard medium"><span>DELETE</span></a>
								<a href="#" id="btn-print" class="io-button-standard medium"><span>PRINT</span></a>
								<a href="#" id="btn-export" class="io-button-standard medium"><span>EXPORT</span><span
									class="ico-20 arrow-down"></span></a>
							</div>
						</div>
						<div class="io-panel-body">
							<div class="col-6 left">
								<div class="col-left">
									<div class="pad-20">
										<div class="contact-information">
											<div class="col-avatar">
												<div class="o-avartar">
													<!-- <div class="o-avartar no-image">    if there is no image uploaded: hiding button "remove avartar" by adding class "no-image" -->
													<img src="upload/avatar.png" /> <a href="#"
														class="btn-upload"></a> <a href="#" class="btn-remove"></a>
												</div>
											</div>
											<div class="col-contact-detail">
												<p class="location">
													101/74 Dong Khoi Street<br /> District 01, Ho Chi Minh
													City, Vietnam
												</p>
												<p class="phone">(+84) 903-789-987</p>
												<p class="email">
													<a href="mailto:peter.belanger@gmail.com"
														title="peter.belanger@gmail.com">peter.belanger@gmail.com</a>
												</p>
												<p class="link">
													<a href="http://www.peter-belanger.com"
														title="www.peter-belanger.com">www.peter-belanger.com</a>
												</p>
											</div>
										</div>
										<!-- end of contact information block-->
										<div class="moreContactInfo">
											From <strong>Internal Referral</strong> by <strong>Khoi
												Vinh</strong> <br /> <span class="txtStatus">Interviewing</span> for
											<a href="05_vacancy_detail_tab1_summary.html"
												title="Java Developer">Java Developer</a> position of <strong>ICT
												division</strong> <br />
										</div>
										<div class="clear view-document">
											<ul>
												<li><a href="#" id="btn-download-test-result"><span
														class="ico-20 cv-file"></span><span class="text">Test
															Result (1)</span></a></li>
												<li><a href="#" id="btn-download-assessment"><span
														class="ico-20 cv-file"></span><span class="text">Interview
															Asscessments (2)</span></a></li>
											</ul>
										</div>
									</div>


									<div class="io-block">
										<div class="io-block-header">
											<h3>Timeline</h3>
											<ul class="io-block-button-set">
												<li><a href="#" title="E-mail"><span
														class="ico-20 email"></span><span class="text">E-MAIL</span></a></li>
												<li><a href="#" title="Call"><span
														class="ico-20 call"></span><span class="text">CALL</span></a></li>
												<li><a href="#" title="Comment"><span
														class="ico-20 comment"></span><span class="text">COMMENT</span></a></li>

											</ul>
										</div>
										<div class="io-block-body">
											<div class="pad-10">
												<div class="div-comment">
													<textarea class="io-ta-normal">Leave your comment here!</textarea>
													<button class="io-button-standard medium">
														<span>COMMENT</span>
													</button>
												</div>
												<div class="div-email" style="display: none;">
													<!-- Email form here-->
												</div>
											</div>
											<div class="timeline-container">
												<div class="timeline-item-container">
													<div class="timeline-item">
														<div class="type">
															<span class="ico-30 timeline-move-back"></span><span
																class="ico-timeline-arrow"></span>
														</div>
														<div class="callout">
															<div class="thumbnail">
																<img src="upload/small_avatar.jpg" />
															</div>
															<div class="content">
																<p class="title">
																	Moved back to <span class="io-bold">Resource
																		Pool</span> by <a href="#" class="user">Chau Nguyen</a><span
																		class="time"> - about 7 days ago</span>
																</p>
																<p class="comment">Staff has resigned</p>
															</div>
														</div>
													</div>
												</div>
												<div class="timeline-item-container">
													<div class="timeline-item">
														<div class="type">
															<span class="ico-30 timeline-hire"></span><span
																class="ico-timeline-arrow"></span>
														</div>
														<div class="callout">
															<div class="thumbnail">
																<img src="upload/small_avatar.jpg" />
															</div>
															<div class="content">
																<p class="title">
																	Status changed to <span class="io-bold">Hired</span>
																	for <a href="#" class="user">Java Developer</a>
																	position by <a href="#" class="user">Chau Nguyen</a><span
																		class="time"> - about 7 days ago</span>
																</p>
																<p class="calendar">
																	<span class="ico-20 calendar"></span><a href="#">August
																		05<sup>th</sup>, 2013 10:00AM
																	</a><br />
																</p>
																<p class="comment">Meet receptionist for guidances
																	on the first working day</p>
															</div>
														</div>
													</div>
												</div>

												<div class="timeline-item-container">
													<div class="timeline-item">
														<div class="type">
															<span class="ico-30 timeline-offer"></span><span
																class="ico-timeline-arrow"></span>
														</div>
														<div class="callout">
															<div class="thumbnail">
																<img src="upload/small_avatar.jpg" />
															</div>
															<div class="content">
																<p class="title">
																	Candidate <span class="io-bold">Accepts Offer</span>
																	for <a href="#" class="user">Java Developer</a>
																	position by <a href="#" class="user">Chau Nguyen</a><span
																		class="time"> - about 7 days ago</span>
																</p>
															</div>
														</div>
													</div>
												</div>
												<div class="timeline-item-container">
													<div class="timeline-item">
														<div class="type">
															<span class="ico-30 timeline-offer"></span><span
																class="ico-timeline-arrow"></span>
														</div>
														<div class="callout">
															<div class="thumbnail">
																<img src="upload/small_avatar.jpg" />
															</div>
															<div class="content">
																<p class="title">
																	Status changed to <span class="io-bold">Offered</span>
																	for <a href="#" class="user">Java Developer</a>
																	position by <a href="#" class="user">Chau Nguyen</a><span
																		class="time"> - about 7 days ago</span>
																</p>
																<p class="salary">
																	<span class="ico-20 salary"></span>Expected salary:
																	$12.000 | Offered salary: $10.000
																</p>
																<p class="comment">Offered salary excludes extra
																	incomes</p>
															</div>
														</div>
													</div>
												</div>
												<div class="timeline-item-container">
													<div class="timeline-item">
														<div class="type">
															<span class="ico-30 timeline-interview"></span><span
																class="ico-timeline-arrow"></span>
														</div>
														<div class="callout">
															<div class="thumbnail">
																<img src="upload/small_avatar.jpg" />
															</div>
															<div class="content">
																<p class="title">
																	Candidate <span class="io-bold">Passed Interview</span>
																	for <a href="#" class="user">Java Developer</a>
																	position by <a href="#" class="user">Chau Nguyen</a><span
																		class="time"> - about 7 days ago</span>
																</p>
																<p class="comment">Interview with Mr. Jones & Mr.
																	Taylor</p>
															</div>
														</div>
													</div>
												</div>
												<div class="timeline-item-container">
													<div class="timeline-item">
														<div class="type">
															<span class="ico-30 timeline-interview"></span><span
																class="ico-timeline-arrow"></span>
														</div>
														<div class="callout">
															<div class="thumbnail">
																<img src="upload/small_avatar.jpg" />
															</div>
															<div class="content">
																<p class="title">
																	Status changed to <span class="io-bold">Interview</span>
																	for <a href="#" class="user">Java Developer</a>
																	position by <a href="#" class="user">Chau Nguyen</a><span
																		class="time"> - about 7 days ago</span>
																</p>
																<p class="calendar">
																	<span class="ico-20 calendar"></span><a href="#">July
																		22<sup>nd</sup>, 2013 10:00AM | Room H.401 | Mr. Jones
																	</a><br />
																</p>
																<p class="comment">Interview with Mr. Jones & Mr.
																	Taylor</p>
															</div>
														</div>
													</div>
												</div>
												<div class="timeline-item-container">
													<div class="timeline-item">
														<div class="type">
															<span class="ico-30 timeline-test"></span><span
																class="ico-timeline-arrow"></span>
														</div>
														<div class="callout">
															<div class="thumbnail">
																<img src="upload/small_avatar.jpg" />
															</div>
															<div class="content">
																<p class="title">
																	Candidate <span class="io-bold">Failed Testing</span>
																	for <a href="#" class="user">Java Developer</a>
																	position by <a href="#" class="user">Chau Nguyen</a><span
																		class="time"> - about 7 days ago</span>
																</p>
																<p class="comment">
																	Not good in J2EE technology<br />
																</p>
															</div>
														</div>
													</div>
												</div>
												<div class="timeline-item-container">
													<div class="timeline-item">
														<div class="type">
															<span class="ico-30 timeline-test"></span><span
																class="ico-timeline-arrow"></span>
														</div>
														<div class="callout">
															<div class="thumbnail">
																<img src="upload/small_avatar.jpg" />
															</div>
															<div class="content">
																<p class="title">
																	Status changed to <span class="io-bold">Test</span> for
																	<a href="#" class="user">Java Developer</a> position by
																	<a href="#" class="user">Chau Nguyen</a><span
																		class="time"> - about 7 days ago</span>
																</p>
																<p class="calendar">
																	<span class="ico-20 calendar"></span><a href="#">July
																		21<sup>st</sup>, 2013 10:00AM | Room H.401
																	</a><br />
																</p>
																<p class="comment">
																	Test coding skills<br />
																</p>
															</div>
														</div>
													</div>
												</div>
												<div class="timeline-item-container">
													<div class="timeline-item">
														<div class="type">
															<span class="ico-30 timeline-review"></span><span
																class="ico-timeline-arrow"></span>
														</div>
														<div class="callout">
															<div class="thumbnail">
																<img src="upload/small_avatar.jpg" />
															</div>
															<div class="content">
																<p class="title">
																	Status changed to <span class="io-bold">Review</span>
																	for <a href="#" class="user">Java Developer</a>
																	position by <a href="#" class="user">Chau Nguyen</a><span
																		class="time"> - about 7 days ago</span>
																</p>
																<p class="comment">He is suitable for this position
																	because of having a strong Java skill</p>
															</div>
														</div>
													</div>
												</div>
												<div class="timeline-item-container">
													<div class="timeline-item">
														<div class="type">
															<span class="ico-30 timeline-comment"></span><span
																class="ico-timeline-arrow"></span>
														</div>
														<div class="callout">
															<div class="thumbnail">
																<img src="upload/small_avatar.jpg" />
															</div>
															<div class="content">
																<p class="title">
																	<a href="#" class="user">Chau Nguyen</a> write a
																	comment<span class="time"> - about 7 days ago</span>
																</p>
																<p class="comment">He's a really good candidate for
																	Java Dev position</p>
															</div>
														</div>
													</div>
												</div>
												<div class="timeline-item-container">
													<div class="timeline-item">
														<div class="type">
															<span class="ico-30 timeline-phone"></span><span
																class="ico-timeline-arrow"></span>
														</div>
														<div class="callout">
															<div class="thumbnail">
																<img src="upload/small_avatar.jpg" />
															</div>
															<div class="content">
																<p class="title">
																	Phone call by <a href="#" class="user">Chau Nguyen</a><span
																		class="time"> - about 6 days ago</span>
																</p>
																<p class="comment">Having a short talk with Peter
																	about his current work status and invite him to work
																	with us. He said that need time to consider about our
																	invitation</p>
															</div>
														</div>
													</div>
												</div>
												<div class="timeline-item-container">
													<div class="timeline-item">
														<div class="type">
															<span class="ico-30 timeline-update"></span><span
																class="ico-timeline-arrow"></span>
														</div>
														<div class="callout">
															<div class="thumbnail">
																<img src="upload/small_avatar.jpg" />
															</div>
															<div class="content">
																<p class="title">
																	Updated by <a href="#" class="user">Chau Nguyen</a><span
																		class="time"> - about 6 days ago</span>
																</p>
															</div>
														</div>
													</div>
												</div>
												<div class="timeline-item-container">
													<div class="timeline-item">
														<div class="type">
															<span class="ico-30 timeline-import"></span><span
																class="ico-timeline-arrow"></span>
														</div>
														<div class="callout">
															<div class="thumbnail">
																<img src="upload/small_avatar.jpg" />
															</div>
															<div class="content">
																<p class="title">
																	Imported from CV file by <a href="#" class="user">Chau
																		Nguyen</a><span class="time"> - about 6 days ago</span>
																</p>

															</div>
														</div>
													</div>
												</div>
												<div class="timeline-item-container">
													<div class="timeline-item">
														<div class="type">
															<span class="ico-30 timeline-create"></span><span
																class="ico-timeline-arrow"></span>
														</div>
														<div class="callout">
															<div class="thumbnail">
																<img src="upload/small_avatar.jpg" />
															</div>
															<div class="content">
																<p class="title">
																	Created by <a href="#" class="user">Chau Nguyen</a><span
																		class="time"> - about 1 month ago</span>
																</p>
															</div>
														</div>
													</div>
												</div>
												<div class="timeline-item-container">
													<div class="timeline-more">
														<button class="io-button-standard medium">
															<span>VIEW MORE...</span>
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- end of timeline block-->
								</div>
							</div>
							<div class="col-6 right">
								<div class="col-right">
									<div class="io-block">
										<div class="io-block-header" style="border-top: none;">
											<h3>Candidate Profile</h3>
											<ul class="io-block-button-set">
												<li><a href="#" class="btn-send-mail"><span
														class="ico-20 cv-file"></span><span class="text">VIEW
															CV FILE</span></a></li>
											</ul>
										</div>
										<div class="io-block-body">
											<div class="pad-20">
												<div class="profile-summary">
													<h3>
														<img src="css/image/transparent.png" alt=""
															class="iconSummary">Summary
													</h3>
													<div>
														<p>Strong development, lead, architect skills deriving
															by 12 years of experience in successfully implementing IT
															Software Projects varying in size and across different
															industries.
														<p>
														<p>Specialties: Web and enterprise software
															architectures, object oriented development and design,
															design patterns, test-driven and agile software
															development, web application development, Java, J2EE,
															Ruby on Rails, Hibernate, Spring, transactions,
															databases, Oracle, PostgreSQL.</p>
														<ul>
															<li>Current Level: <span class="io-bold">Senior
																	Engineer</span></li>
															<li>Applied Position: <span class="io-bold">Java
																	Developer</span></li>
															<li>Expected Salary: <span class="io-bold">$10.000</span></li>
														</ul>
													</div>
												</div>

												<div class="profile-experience">
													<h3>
														<img src="css/image/transparent.png" alt="" class="iconEx" />Working
														Experiences
													</h3>
													<div>
														<p class="position">Platform Developer</p>
														<p class="company">Exchange Solutions Inc.</p>
														<p class="time">December 2011 – May 2013 (1 year 6
															months) Toronto, Canada Area</p>
														<ul>
															<li>I'm involved in the project for one of Big Five
																Canadian banks</li>
															<li>Java 1.6, Spring, Web services, Multithreading,
																C#, Resin, Hibernate, Oracle</li>
														</ul>
													</div>
													<div>
														<p class="position">Co-founder</p>
														<p class="company">InnoInco</p>
														<p class="time">May 2005 – 2013 (8 years)Canada,
															Switzerland</p>
														<ul>
															<li>Web and Graphic Design</li>
															<li>Custom Web Development</li>
														</ul>
													</div>
												</div>

												<div class="profile-skill">
													<h3>
														<img src="css/image/transparent.png" alt=""
															class="iconSkill" />Skills & Languages
													</h3>
													<div>
														<p class="category">Programming languages</p>
														<p class="skill">Java (expert), C++ (beginner), HTML
															(beginner), Javascript (professfional)</p>
													</div>
													<div>
														<p class="category">Frameworks</p>
														<p class="skill">J2EE (expert), jQuery (professfional)</p>
													</div>
													<div>
														<p class="category">Database</p>
														<p class="skill">MySQL (expert), MS SQL server
															(expert), Oracle (expert)</p>
													</div>
													<div>
														<p class="category">Languages</p>
														<p class="skill">English (intermediate),Japanese
															(sankyu)</p>
													</div>
												</div>

												<div class="profile-education">
													<h3>
														<img src="css/image/transparent.png" alt=""
															class="iconEdu" />Education & Certificates
													</h3>
													<div>
														<p class="certificate">Bachelor of Graphic Designer</p>
														<p class="university">Academy of Art University</p>
														<p class="time">May 2009 – 2012</p>
													</div>
													<div>
														<p class="certificate">Bachelor of Software
															Development</p>
														<p class="university">Standford University</p>
														<p class="time">May 2005 – 2008</p>
													</div>







												</div>


											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="io-clear"></div>

						</div>
					</div>
				</div>
				<!-- end of panel detail -->
			</div>
		</div>
	</div>
	<!-- end io-col-main -->
	</div>
	<!-- end io-wrapper -->
	<footer class="io-footer"> 2013 © Global CyberSoft -
		Recruitment Tool v.1.0 </footer>
	<!-- end footer -->

	<!-- popup move to review-->
	<div id="popup-move-to">
		<input type="hidden" autofocus />
		<div class="popup-description">
			You’re changing application status for <span class="io-bold">Peter
				Belanger</span>
		</div>
		<table class="io-table-input vertical">
			<tbody>
				<tr>
					<td class="data"><select id="cbo-move-to"
						class="editable-select">
							<option value="Resource Pool">Resource Pool</option>
							<option value="Candidate">Review</option>
							<option value="Review">Project Manager</option>
							<option value="Online Test">Project Manager</option>
							<option value="Interview">Project Manager</option>
							<option value="Offer">Project Manager</option>
							<option value="Hired">Project Manager</option>
					</select></td>
				</tr>
				<tr>
					<td class="label">Select vacancy</td>
				</tr>
				<tr>
					<td class="data"><select id="cbo-vacancy"
						class="editable-select">
							<option value="Java Developer">Resource Pool</option>
							<option value="Android Developer">Candidate</option>
							<option value=".NET Developer">Review</option>
							<option value="Project Manager">Online Test</option>
					</select></td>
				</tr>
				<tr>
					<td class="label">Comment</td>
				</tr>
				<tr>
					<td class="data"><textarea class="io-ta-normal"></textarea></td>
				</tr>
				<tr>
					<td class="data"><input type="checkbox" checked="checked" />
						&nbsp;Send e-mail to manager</td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- end of popup move to -->

	<!-- popup delete-->
	<div id="popup-delete">
		<input type="hidden" autofocus />
		<div class="popup-description">
			Are you sure you want to delete candidate <span class="io-bold">Peter
				Belanger</span>?
		</div>
	</div>
	<!-- end of popup delete -->

	<!-- popup status-->
	<div id="popup-status">
		<input type="hidden" autofocus />
		<div class="popup-description">
			You’re changing status for candidate <span class="io-bold">Peter
				Belanger</span>
		</div>
		<table class="io-table-input vertical">
			<tbody>
				<tr>
					<td class="data"><select id="cbo-profile-status"
						class="editable-select">
							<option value="Created">Created</option>
							<option value="Active">Active</option>
							<option value="Inactive">Inactive</option>
							<option value="Closed">Closed</option>
					</select></td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- end of popup status -->

	<!-- popup download assessment-->
	<div id="popup-download-assessment">
		<input type="hidden" autofocus />
		<div class="popup-download-assessment">Please select file to
			download</div>
		<table class="io-table-input vertical">
			<tbody>
				<tr>
					<td class="label"><input type="checkbox" id="current-company" />
						&nbsp;2013/08/22</td>
				</tr>
				<tr>
					<td class="label"><input type="checkbox" id="current-company" />
						&nbsp;2013/08/20</td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- end of popup download assessment -->

	<!-- popup download test result-->
	<div id="popup-download-test-result">
		<input type="hidden" autofocus />
		<div class="popup-description">Please select file to download</div>
		<table class="io-table-input vertical">
			<tbody>
				<tr>
					<td class="label"><input type="checkbox" id="current-company" />
						&nbsp;2013/08/22</td>
				</tr>
				<tr>
					<td class="label"><input type="checkbox" id="current-company" />
						&nbsp;2013/08/20</td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- end of popup download test result -->

	<!-- popup export -->
	<div id="popup-export">
		<input type="hidden" autofocus />
		<div class="popup-description">
			You’re exporting <span class="io-bold">Peter Belanger</span>'s
			profile<br />Please select file type
		</div>
		<table class="io-table-input vertical">
			<tbody>
				<tr>
					<td class="data"><select id="cbo-export-format"
						class="editable-select">
							<option value="- Select -">- Select -</option>
							<option value="Ms Word (DOC)">Ms Word (DOC)</option>
							<option value="Ms Excel (XLS)">Ms Excel (XLS)</option>
							<option value="Adobe Acrobat (PDF)">Adobe Acrobat (PDF)</option>
					</select></td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- end of popup export -->

	<div class="io-print-preview">
		<header class="candidate">
			<img class="background" src="upload/template_header.jpg" /><img
				class="logo" src="upload/template_logo.jpg" />
			<div class="title">Peter Belanger</div>
			<div class="sub-title">Java Developer</div>
			<img class="candidate-avatar" src="upload/avatar.png" />
		</header>

		<div class="candidate-status io-italic pad-20">
			<p>
				Current Level: Senior Engineer<br /> Applied Position: Java
				Developer<br /> Expected Salary: $10.000<br /> CV Status: Active<br />
				Application Status: Interviewing<br /> Manager Contact: Vu Tran
			</p>
		</div>

		<div class="content pad-20">
			<div class="io-block bottom-10">
				<h3>Contact Information</h3>
				<div class="col-7 pad-10">
					<p>
						Address: 101/74 Dong Khoi Street, District 01, HCMC, Vietnam<br />
						Mobile: (+84) 903-789-987<br /> E-mail: peter.belanger@gmail.com<br />
						Link: www.peter-belanger.com
					</p>
				</div>

				<div class="io-clear"></div>
			</div>



			<div class="io-block bottom-10">
				<h3>Summary</h3>
				<div class="col-12 pad-10">
					<p>Strong development, lead, architect skills deriving by 12
						years of experience in successfully implementing IT Software
						Projects varying in size and across different industries.</p>
					<p>Specialties: Web and enterprise software architectures,
						object oriented development and design, design patterns,
						test-driven and agile software development, web application
						development, Java, J2EE, Ruby on Rails, Hibernate, Spring,
						transactions, databases, Oracle, PostgreSQL.</p>
				</div>
				<div class="io-clear"></div>

			</div>

			<div class="io-block bottom-10">
				<h3>Working Experiences</h3>
				<div class="col-6 pad-10">
					<p>
						<span class="io-bold">Platform Developer</span><br /> <span
							class="io-italic">Exchange Solutions Inc.</span><br /> <span
							class="io-italic">December 2011 – May 2013 (1 year 6
							months)</span>
					</p>
					<ul>
						<li>I'm involved in the project for one of Big Five Canadian
							banks.</li>
						<li>Java 1.6, Spring, Web services, Multithreading, C#,
							Resin, Hibernate, Oracle</li>
					</ul>
				</div>
				<div class="col-6 pad-10">
					<p>
						<span class="io-bold">Co-founder</span><br /> <span
							class="io-italic">InnoInco</span><br /> <span class="io-italic">May
							2005 – 2013 (8 years)</span>
					</p>
					<ul>
						<li>Web and Graphic Design</li>
						<li>Custom Web Development</li>
					</ul>
				</div>
				<div class="io-clear"></div>
			</div>


			<div class="io-block bottom-10">
				<h3>Skill & Language</h3>
				<div class="col-6 pad-10">
					<p>
						<span class="io-bold">Programming languages</span><br /> <span>Java
							(expert), C++ (beginner), HTML (beginner), Javascript
							(professfional)</span>
					</p>

				</div>
				<div class="col-6 pad-10">
					<p>
						<span class="io-bold">Frameworks</span><br /> <span>J2EE
							(expert), jQuery (professfional)</span>
					</p>

				</div>
				<div class="io-clear"></div>
				<div class="col-6 pad-10">
					<p>
						<span class="io-bold">Database</span><br /> <span>MySQL
							(expert), MS SQL server (expert), Oracle (expert)</span>
					</p>

				</div>
				<div class="col-6 pad-10">
					<p>
						<span class="io-bold">Languages</span><br /> <span>English
							(intermediate),Japanese (sankyu)</span>
					</p>

				</div>
				<div class="io-clear"></div>
			</div>


			<div class="io-block bottom-10">
				<h3>Educations & Certificates</h3>
				<div class="col-6 pad-10">
					<p>
						<span class="io-bold">Platform Developer</span><br /> <span
							class="io-italic">Academy of Art University</span><br /> <span
							class="io-italic">May 2009 – 2012</span>
					</p>
				</div>
				<div class="col-6 pad-10">
					<p>
						<span class="io-bold">Bachelor of Software Development</span><br />
						<span class="io-italic">Standford University</span><br /> <span
							class="io-italic">May 2005 – 2008</span>
					</p>
				</div>
				<div class="io-clear"></div>
			</div>


		</div>


	</div>

</body>
</html>