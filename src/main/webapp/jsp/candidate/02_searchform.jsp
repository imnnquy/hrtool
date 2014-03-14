<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- local script -->
<script>
	$(function() {
		$('#cbo-position').editableSelect({
			bg_iframe : true,
			width : 178,
			onSelect : function(list_item) {

			}
		});
		$('#cbo-status').editableSelect({
			bg_iframe : true,
			width : 178,
			onSelect : function(list_item) {

			}
		});
		$('#cbo-updated-date').editableSelect({
			bg_iframe : true,
			width : 178,
			onSelect : function(list_item) {

			}
		});
		$('#cbo-skill-1').editableSelect({
			bg_iframe : true,
			width : 178,
			onSelect : function(list_item) {

			}
		});

		$('#cbo-skill-level-1').editableSelect({
			bg_iframe : true,
			width : 178,
			onSelect : function(list_item) {

			}
		});
		$('#cbo-skill-2').editableSelect({
			bg_iframe : true,
			width : 178,
			onSelect : function(list_item) {

			}
		});

		$('#cbo-skill-level-2').editableSelect({
			bg_iframe : true,
			width : 178,
			onSelect : function(list_item) {

			}
		});

		$('#cbo-language-1').editableSelect({
			bg_iframe : true,
			width : 178,
			onSelect : function(list_item) {

			}
		});

		$('#cbo-language-level-1').editableSelect({
			bg_iframe : true,
			width : 178,
			onSelect : function(list_item) {

			}
		});

		$('#cbo-other-1').editableSelect({
			bg_iframe : true,
			width : 178,
			onSelect : function(list_item) {

			}
		});

		$('#cbo-other-data-1').editableSelect({
			bg_iframe : true,
			width : 178,
			onSelect : function(list_item) {

			}
		});

		$('#cbo-order-1').editableSelect({
			bg_iframe : true,
			width : 128,
			onSelect : function(list_item) {

			}
		});
		$('#cbo-order-2').editableSelect({
			bg_iframe : true,
			width : 68,
			onSelect : function(list_item) {

			}
		});
		$('#cbo-page-size').editableSelect({
			bg_iframe : true,
			width : 68,
			onSelect : function(list_item) {

			}
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

		$(
				'#btn-move-to1,#btn-move-to2,#btn-move-to3,#btn-move-to4,#btn-move-to5')
				.click(function() {
					$('#popup-move-to').dialog('open');
					return false;
				});

	});
</script>
</head>
<body>
	<div class="io-wrapper">
		<div class="io-col-main">
			<div class="io-main-content">
				<div class="pad-10">
					<div class="io-panel panel-search-candidate">
						<div class="io-panel-header">
							<h3>Search Candidate Information</h3>
							<div class="dropdown">
								<div class="btn close"></div>
							</div>
							<!-- end dropdown -->
						</div>
						<div class="io-panel-body">
							<div class="pad-20">
								<table class="io-table-input">
									<tbody>
										<tr>
											<td class="label">Position</td>
											<td class="data"><select id="cbo-position"
												class="editable-select">
													<option value="All">All</option>
													<option value="Java Developer">Java Developer</option>
													<option value=".Net Developer">.Net Developer</option>
													<option value="Bridge Software Engineer">Bridge
														Software Engineer</option>
													<option value="Project Manager">Project Manager</option>
											</select></td>
											<td class="label">Year of Experience</td>
											<td class="data"><input type="text"
												class="io-txt-normal" placeholder="Ex: 3y 6m"
												style="width: 178px;" /></td>
										</tr>
										<tr>
											<td class="label">Status</td>
											<td class="data"><select id="cbo-status"
												class="editable-select">
													<option value="All">All</option>
													<option value="New">New</option>
													<option value="Selected">Selected</option>
													<option value="Review">Review</option>
													<option value="Online test">Online test</option>
													<option value="Interview">Interview</option>
													<option value="Offer">Offer</option>
													<option value="Hired">Hired</option>
											</select></td>
											<td class="label">Updated Date</td>
											<td class="data"><select id="cbo-updated-date"
												class="editable-select">
													<option value="All">All</option>
													<option value="&le; 6 months">&ge; 6 months</option>
													<option value="&gt; 6 months">&gt; 6 months</option>
													<option value="&gt; 12 months">&gt; 12 months</option>
											</select></td>
										</tr>
										<tr>
											<td class="label">Skill</td>
											<td colspan="3" class="data">
												<div class="io-editable-list">
													<div class="row">
														<span class="col"><select id="cbo-skill-1"
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
											<td class="label">Language</td>
											<td colspan="3" class="data">
												<div class="io-editable-list">

													<div class="row">
														<span class="col"><select id="cbo-language-1"
															class="editable-select">
																<option value="English">English</option>
														</select></span> <span class="col"><select
															id="cbo-language-level-1" class="editable-select">
																<option value="Beginner">Beginner</option>
																<option value="Intermediate">Intermediate</option>
																<option value="Advanced">Advanced</option>
														</select></span> <span class="ico-20 add-row"></span> <span
															class="ico-20 remove-row"></span>
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td colspan="4" class="label"><div class="io-splitter">
													<h4>Other filters</h4>
												</div></td>
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td colspan="3" class="data">
												<div class="io-editable-list">

													<div class="row">
														<span class="col"><select id="cbo-other-1"
															class="editable-select">
																<option value="University">University</option>
														</select></span> <span class="col"><select id="cbo-other-data-1"
															class="editable-select">
																<option value="RMIT">RMIT</option>
																<option value="Stanford">Stanford</option>

														</select></span> <span class="ico-20 add-row"></span> <span
															class="ico-20 remove-row"></span>
													</div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="io-panel-footer">
							<button class="io-button-standard medium">
								<span>SEARCH</span>
							</button>
							<button class="io-button-standard medium">
								<span>CLEAR</span>
							</button>
						</div>
					</div>
				</div>



				<div class="listCandidate">
					<div class="txtResult">
						<h3>Search Result (50 record(s) founded)</h3>
						<div class="io-list-header">

							<div class="col-left">
								<span class="txt">Order by</span>&nbsp; <select id="cbo-order-1"
									class="editable-select">
									<option value="Rating">Rating</option>
									<option value="Updated date">Updated date</option>
									<option value="Name">Name</option>
									<option value="ID">ID</option>
								</select>&nbsp; <select id="cbo-order-2" class="editable-select">
									<option value="Desc">Asc</option>
									<option value="Desc">Desc</option>
								</select>
							</div>

							<div class="col-right">
								<a id="btn-move-to1"
									class="io-button-highlight medium has-icon-right"><span>MOVE
										TO</span><span class="ico-20 arrow-down"></span></a>
							</div>
						</div>
						<!-- end io-list-header -->
					</div>
					<!-- end txtResult -->
					<div class="lstItemResult">






						<div class="item-container">
							<div class="item">
								<div class="stampStatus">Review</div>
								<div class="ctrlSelect">
									<a href="#" class="io-radio"></a>
								</div>
								<div class="photo">
									<div class="o-avartar">
										<!-- <div class="o-avartar no-image">    if there is no image uploaded: hiding button "remove avartar" by adding class "no-image" -->
										<img src="upload/img_can_1.jpg" alt="Peter Belanger"
											width="100" height="100" />
									</div>
								</div>
								<div class="detail">
									<h3>
										<a href="03_candidate_detail.html" title="">Peter Belanger
											| 1307012001</a> <span><img
											src="css/image/transparent.png" alt="" class="iconPosition" />
											Java Developer <img src="css/image/transparent.png" alt=""
											class="iconStatus" /> Active</span>
									</h3>
									<ul>
										<li>Experienced java developer for web application, has a
											strong communication skill in both English & Japanese.
											Experienced java developer for web application, has a strong
											communication skill in both English & Japanese</li>
										<li>3 years of experience (worked at Pepsi Co., Coca
											Cola)</li>
										<li>Java (Expert), Javascript (Beginner), CSS
											(Professional), Database (Oracle, MySQL, MS SQL Server)</li>
										<li>English (Intermediate), Japannese (Sankyu)</li>
									</ul>
								</div>
							</div>
							<div class="button-set">
								<a href="#" id="btn-move-to2"
									class="io-button-highlight medium has-icon-right"><span>MOVE
										TO</span><span class="ico-20 arrow-down"></span></a><a
									href="03_candidate_detail.html"
									class="io-button-standard medium"><span>VIEW DETAIL</span></a>
							</div>
						</div>
						<!-- end item -->


						<div class="item-container">
							<div class="item">
								<div class="stampStatus">Review</div>

								<div class="ctrlSelect">
									<a href="#" class="io-radio"></a>
								</div>
								<div class="photo">
									<div class="o-avartar">
										<!-- <div class="o-avartar no-image">    if there is no image uploaded: hiding button "remove avartar" by adding class "no-image" -->
										<img src="upload/img_can_2.jpg" alt="Peter Belanger"
											width="100" height="100" />
									</div>
								</div>
								<div class="detail">
									<h3>
										<a href="03_candidate_detail.html" title="">Peter Belanger
											| 1307012001</a> <span><img
											src="css/image/transparent.png" alt="" class="iconPosition" />
											Java Developer <img src="css/image/transparent.png" alt=""
											class="iconStatus" /> Active</span>
									</h3>
									<ul>
										<li>Experienced consummer product designer, working at
											Apple Inc from 1993</li>
										<li>30+ years of experience (working at Apple Inc)</li>
										<li>Java (Expert), Javascript (Beginner), CSS
											(Professional), Database (Oracle, MySQL, MS SQL Server)</li>
										<li>English (Intermediate), Japannese (Sankyu)</li>
									</ul>
								</div>
							</div>
							<div class="button-set">
								<a href="#" id="btn-move-to3"
									class="io-button-highlight medium has-icon-right"><span>MOVE
										TO</span><span class="ico-20 arrow-down"></span></a><a
									href="03_candidate_detail.html"
									class="io-button-standard medium"><span>VIEW DETAIL</span></a>
							</div>
						</div>
						<!-- end item -->

						<div class="item-container">
							<div class="item">
								<div class="stampStatus">Review</div>

								<div class="ctrlSelect">
									<a href="#" class="io-radio"></a>
								</div>
								<div class="photo">
									<div class="o-avartar">
										<!-- <div class="o-avartar no-image">    if there is no image uploaded: hiding button "remove avartar" by adding class "no-image" -->
										<img src="upload/img_can_3.jpg" alt="Peter Belanger"
											width="100" height="100" />
									</div>
								</div>
								<div class="detail">
									<h3>
										<a href="03_candidate_detail.html" title="">Peter Belanger
											| 1307012001</a><span><img src="css/image/transparent.png"
											alt="" class="iconPosition" /> Java Developer <img
											src="css/image/transparent.png" alt="" class="iconStatus" />
											Active</span>
									</h3>
									<ul>
										<li>Designer of Lamborghini Aventador</li>
										<li>20+ years of experience (working at lamborghini
											Automobiliti)</li>
										<li>Java (Expert), Javascript (Beginner), CSS
											(Professional), Database (Oracle, MySQL, MS SQL Server)</li>
										<li>English (Intermediate), Japannese (Sankyu)</li>
									</ul>
								</div>
							</div>
							<div class="button-set">
								<a href="#" id="btn-move-to4"
									class="io-button-highlight medium has-icon-right"><span>MOVE
										TO</span><span class="ico-20 arrow-down"></span></a><a
									href="03_candidate_detail.html"
									class="io-button-standard medium"><span>VIEW DETAIL</span></a>
							</div>
						</div>
						<!-- end item -->

						<div class="item-container">
							<div class="item">
								<div class="stampStatus">Review</div>

								<div class="ctrlSelect">
									<a href="#" class="io-radio"></a>
								</div>
								<div class="photo">
									<div class="o-avartar">
										<!-- <div class="o-avartar no-image">    if there is no image uploaded: hiding button "remove avartar" by adding class "no-image" -->
										<img src="upload/img_can_default.jpg" alt="Peter Belanger"
											width="100" height="100" />
									</div>
								</div>
								<div class="detail">
									<h3>
										<a href="03_candidate_detail.html" title="">Peter Belanger
											| 1307012001</a> <span><img
											src="css/image/transparent.png" alt="" class="iconPosition" />
											Java Developer <img src="css/image/transparent.png" alt=""
											class="iconStatus" /> Active</span>
									</h3>
									<ul>
										<li>Designer of iPod products family and Web OS mobile
											operating system</li>
										<li>20+ years of experience (worked at Apple Inc., HP)</li>
										<li>Java (Expert), Javascript (Beginner), CSS
											(Professional), Database (Oracle, MySQL, MS SQL Server)</li>
										<li>English (Intermediate), Japannese (Sankyu)</li>
									</ul>
								</div>
							</div>
							<div class="button-set">
								<a href="#" id="btn-move-to5"
									class="io-button-highlight medium has-icon-right"><span>MOVE
										TO</span><span class="ico-20 arrow-down"></span></a><a
									href="03_candidate_detail.html"
									class="io-button-standard medium"><span>VIEW DETAIL</span></a>
							</div>
						</div>
						<!-- end item -->



						<div class="blockPaging">
							<div class="display">
								<span>Display</span>&nbsp; <select id="cbo-page-size"
									class="editable-select page-size">
									<option value="20">20</option>
									<option value="50">50</option>
									<option value="100">100</option>
								</select> &nbsp;<span>item(s)/page</span>
							</div>
							<!-- end display  -->

							<div class="pagination">
								<a href="#" class="page gradient">First</a> <a href="#"
									class="page gradient">Prev</a> <a href="#"
									class="page gradient">2</a> <a href="#" class="page gradient">3</a>
								<span class="page active">4</span> <a href="#"
									class="page gradient">5</a> <a href="#" class="page gradient">6</a>
								<a href="#" class="page gradient">Next</a> <a href="#"
									class="page gradient">Last</a>
							</div>

						</div>
						<!-- end paging -->

					</div>
					<!-- end lstItemResult -->
				</div>
				<!-- end listCandidate -->
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
				Belanger</span>, <span class="io-bold">Jonathan Ive</span> & <span
				class="io-bold">Phillipino Perini</span>
		</div>
		<table class="io-table-input vertical">
			<tbody>
				<tr>
					<td class="data"><select id="cbo-move-to"
						class="editable-select">
							<option value="Resource Pool">Resource Pool</option>
							<option value="Candidate">Candidate</option>
							<option value="Review">Review</option>
							<option value="Online Test">Online Test</option>
							<option value="Interview">Interview</option>
							<option value="Offer">Offer</option>
							<option value="Hired">Hired</option>
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
</body>
</html>