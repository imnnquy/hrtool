<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>

<body>

	<div class="io-main-content">
		<div class="pad-10">
			<div class="io-panel panel-search-candidate">
				<div class="io-panel-header">
					<h3 class="txtTitle">Search Candidate Information</h3>
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
									<td class="data"><input type="text" class="io-txt-normal"
										placeholder="Ex: 3y 6m" style="width: 178px;" /></td>
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
												</select></span> <span class="col"><select id="cbo-language-level-1"
													class="editable-select">
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
		<!-- start open vacancies -->
		<div class="pad-10">
			<div class="io-panel panel-vacancy">
				<div class="io-panel-header">
					<h3 class="txtTitle-1">Opening Vacancies</h3>
					<div class="lstBtnRight">
						<a href="07_create_vacancy.html"
							class="io-button-highlight medium" title=""><span>CREATE</span></a>
					</div>
					<div style="clear: right;"></div>
				</div>
				<div class="io-panel-body">
					<div class="io-panel-body-header">
						<span class="statusVacancy open">Opening</span>
					</div>
					<div class="pad-20 odd">
						<h3>
							<a href="05_vacancy_detail_tab1_summary.html" title="">Android
								Developer</a>
						</h3>
						<div class="blockProgressDetail">
							<!-- Start Progress -->
							<div class="vacancy-progress">
								<div class="timeLeft">06/20/2013</div>
								<div class="progressbar" id="progressbar1"></div>
								<div class="timeRight">07/20/2013</div>
							</div>
							<!-- End Progress -->

							<!-- Start details -->
							<div class="vacancy-details">
								<span><img src="/css/image/transparent.png"
									class="iconDivision" alt="aa" />ICT Division</span> <span><img
									src="/css/image/transparent.png" class="iconAddress" alt="aa" />Ho
									Chi Minh, Vietnam</span> <span><img
									src="/css/image/transparent.png" class="iconNumberPosition"
									alt="aa" />5 positions</span>
								<div>
									Posted by Thanos on Jan 21<sup>th</sup>,2013
								</div>

							</div>
							<!-- End Details -->
						</div>
						<!-- end blockProgressDetail -->
					</div>
					<!-- end pad-20 odd -->
					<div class="workflow">
						<div class="stepSummary">
							<a href="05_vacancy_detail_tab1_summary.html" title=""
								class="value">Summary</a>
							<div class="arrow"></div>
						</div>
						<!-- end step candidate -->
						<div class="step">
							<div class="arrow"></div>
							<a href="05_vacancy_detail_tab2_candidate.html" title="Waiting"
								class="value"><span>10</span>Candidates</a>
							<div class="statusStep">
								<a href="#" title="Total">120</a> <a href="#" title="Passed"
									class="txtPass">80</a> <a href="#" title="Rejected">30</a>
							</div>
						</div>
						<!-- end step candidate -->
						<div class="step">
							<div class="arrow"></div>
							<a href="05_vacancy_detail_tab3_review.html" title="Waiting"
								class="value"><span>10</span>Review</a>
							<div class="statusStep">
								<a href="#" title="Total">80</a> <a href="#" title="Suitable"
									class="txtPass">30</a> <a href="#" title="Unsuitable">40</a>
							</div>
						</div>
						<!-- end step review -->
						<div class="step">
							<div class="arrow"></div>
							<a href="05_vacancy_detail_tab4_online_test.html" title="Waiting"
								class="value"><span class="numonline">5</span>Online Test</a>
							<div class="statusStep">
								<a href="#" title="Total">30</a> <a href="#" title="Passed"
									class="txtPass">15</a> <a href="#" title="Failed">10</a>
							</div>
						</div>
						<!-- end step online test -->
						<div class="step">
							<div class="arrow"></div>
							<a href="05_vacancy_detail_tab5_interview.html" title="Waiting"
								class="value"><span class="numinterview">0</span>Interview</a>
							<div class="statusStep">
								<a href="#" title="Total">15</a> <a href="#" title="Passed"
									class="txtPass">14</a> <a href="#" title="Failed">1</a>
							</div>
						</div>
						<!-- end step interview -->
						<div class="step">
							<div class="arrow"></div>
							<a href="05_vacancy_detail_tab6_offer.html" title="Waiting"
								class="value"><span class="numoffer">0</span>Offer</a>
							<div class="statusStep">
								<a href="#" title="Total">14</a> <a href="#" title="Accepted"
									class="txtPass">8</a> <a href="#" title="Rejected">6</a>
							</div>
						</div>
						<!-- end step offer -->
						<div class="step">
							<a href="05_vacancy_detail_tab7_hired.html" title="8 Hired"
								class="value"><span class="numhired">8</span>Hired</a>
						</div>
						<!-- end step hired -->
					</div>
					<!-- end workflow -->

				</div>
				<!-- end 1 block -->

			</div>
		</div>
		<!-- end open vacancies -->

		<!-- start calendar -->
		<div class="pad-10">
			<div class="io-panel panel-calendar">
				<div class="io-panel-header">
					<h3 class="txtTitle">Calendar</h3>
				</div>
				<div class="io-panel-body">
					<div class="pad-20">
						<div id="calendar"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- end calendar -->

	</div>
</body>
</html>