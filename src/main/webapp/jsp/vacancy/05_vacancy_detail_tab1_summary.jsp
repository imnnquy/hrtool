<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- local script -->
        <script>
        $(function(){
        	alert("this is jquery");
        });
			$(function(){
                //resize right column to match height with left column => fix vertical divider
                var colLeft = $('.io-panel-body .col-6.left');
                var colRight = $('.io-panel-body .col-6.right');
                colLeft.resize(function(){
                    
                    if(colRight.height() < colLeft.height()){
                        colRight.height(colLeft.height());
                    }
                });
                colLeft.resize();
            });
        	$(document).ready(function(){
				$('#cbo-position').editableSelect({
					bg_iframe: true,
					onSelect: function(list_item) {
						
					}
				});
				
				$('#cbo-updated-date').editableSelect({
					bg_iframe: true,
					onSelect: function(list_item) {
						
					}
				});
				$('#cbo-skill-1').editableSelect({
					bg_iframe: true,
					onSelect: function(list_item) {
						
					}
				});
	
				$('#cbo-skill-level-1').editableSelect({
					bg_iframe: true,
					onSelect: function(list_item) {
						
					}
				});
				$('#cbo-skill-2').editableSelect({
					bg_iframe: true,
					onSelect: function(list_item) {
						
					}
				});
	
				$('#cbo-skill-level-2').editableSelect({
					bg_iframe: true,
					onSelect: function(list_item) {
						
					}
				});
	
				$('#cbo-language-1').editableSelect({
					bg_iframe: true,
					onSelect: function(list_item) {
						
					}
				});
	
				$('#cbo-language-level-1').editableSelect({
					bg_iframe: true,
					onSelect: function(list_item) {
						
					}
				});
	
				$('#cbo-other-1').editableSelect({
					bg_iframe: true,
					onSelect: function(list_item) {
						
					}
				});
	
				$('#cbo-other-data-1').editableSelect({
					bg_iframe: true,
					onSelect: function(list_item) {
						
					}
				});
	
				$('#cbo-order-1').editableSelect({
					bg_iframe: true,
					onSelect: function(list_item) {
						
					}
				});
				$('#cbo-order-2').editableSelect({
					bg_iframe: true,
					onSelect: function(list_item) {
						
					}
				});
				$('#cbo-page-size').editableSelect({
					bg_iframe: true,
					onSelect: function(list_item) {
						
					}
				});
				
				$('#cbo-status').editableSelect({
					bg_iframe: true,
					width: 158,
					onSelect: function(list_item) {
						
					}
				});
				
				$( "#progressbar" ).progressbar({
				  value: 80
				});
				
				/*  PROCESS LOGOUT*/
				
				$('.io-quick-link li:first-child').hover(function(){
					$('#logout').css('display','block');
				
				},function(){
					$('#logout').css('display','none');
				});
				
				$('#logout').hover(function(){
					$('#logout').css('display','block');
				
				},function(){
					$('#logout').css('display','none');
				});
				
				//popup move to
				$('#popup-move-to').dialog({
					autoOpen: false,
					title: 'Move To',
					dialogClass: 'io-popup-standard',
					width: 400,
					modal: true,
					buttons: {
						OK: function() {
							$( this ).dialog( "close" );
						},
						CANCEL: function() {
							$( this ).dialog( "close" );
						}
					},
					open: function( event, ui ) {
						
					}
				});
				
				$('#btn-move-to').click(function(){
					$('#popup-move-to').dialog('open');
				});
				
				$('#popup-status').dialog({
					autoOpen: false,
					title: 'Change Vacancy Status',
					dialogClass: 'io-popup-standard',
					width: 400,
					modal: true,
					buttons: {
						OK: function() {
							$( this ).dialog( "close" );
						},
						CANCEL: function() {
							$( this ).dialog( "close" );
						}
					},
					open: function( event, ui ) {
						
					}
				});
				
				$('#btn-change-status').click(function(){
					alert("CHANGE STATUS");
					$('#popup-status').dialog('open');
					
				});
				
				$('#popup-delete').dialog({
					autoOpen: false,
					title: 'Delete Vacancy',
					dialogClass: 'io-popup-standard',
					width: 400,
					modal: true,
					buttons: {
						YES: function() {
							$( this ).dialog( "close" );
							var url = window.location;
							url = url.toString();
							url = url.substring(0, url.lastIndexOf('/')) + '/04_vacancy.html';
							window.location = url;
						},
						NO: function() {
							$( this ).dialog( "close" );
						}
					},
					open: function( event, ui ) {
						
					}
				});
				
				$('#btn-delete').click(function(){
					$('#popup-delete').dialog('open');
					
				});
				
				$('#cbo-vacancy-status').editableSelect({
					bg_iframe: true,
					width: 158,
					onSelect: function(list_item) {
						
					}
				});
				
				$('#cbo-export-format').editableSelect({
					bg_iframe: true,
					width: 158,
					onSelect: function(list_item) {
						
					}
				});
				
				$('#popup-export').dialog({
					autoOpen: false,
					title: 'Export',
					dialogClass: 'io-popup-standard',
					width: 400,
					modal: true,
					buttons: {
						OK: function() {
							$( this ).dialog( "close" );
						},
						CANCEL: function() {
							$( this ).dialog( "close" );
						}
					},
					open: function( event, ui ) {
						
					}
				});
				
				$('#btn-export').click(function(){
					$('#popup-export').dialog('open');
				});
				
				$('#btn-print').click(function(){
					window.print();
				});

                
        	});
        </script>
    </head>
	<body>
	<form:form commandName="vacancy">
        <div>
            <div>
                <div class="io-main-content">
                    <div class="pad-10">
                        <div class="io-panel panel-vacancy">
                            <div class="io-panel-header">
                                <h3 class="txtTitle-1">Vacancy <span>(Request by <c:out value="${vacancy.manager.managerName}"></c:out> [CAN FIX])</span></h3>
                                
                                <div class="lstBtnRight">
									<a href="05_vacancy_detail_search_candidate" class="io-button-highlight medium"><span>FIND CANDIDATE</span></a>
	                                <a href="#" id="btn-change-status" class="io-button-highlight medium has-icon-right"><span>OPENING</span><span class="ico-20 arrow-down"></span></a>
	                                <a href="12_edit_vacancy" class="io-button-standard medium"><span>EDIT</span></a>
                                    <a href="07_create_vacancy" class="io-button-standard medium"><span>CLONE</span></a>      
	                                <a href="#" id="btn-delete" class="io-button-standard medium"><span>DELETE</span></a>
                                    <a href="#" id="btn-print" class="io-button-standard medium"><span>PRINT</span></a>
	                                <a href="#" id="btn-export" class="io-button-standard medium"><span>EXPORT</span><span class="ico-20 arrow-down"></span></a>
								</div>                         
                            </div>
                            <div class="io-panel-body">
                              		<div class="pad-20">
									<h3><a href="05_vacancy_detail_tab1_summary" title=""><c:out value="${vacancy.vacancyName}"/></a></h3>
									<div class="blockProgressDetail">
										<!-- Start Progress -->
										<div class="vacancy-progress">
											<div class="timeLeft"><fmt:formatDate value="${vacancy.startDate}" pattern="dd/MM/yyyy" var="startdate"></fmt:formatDate> <c:out value="${startdate}"></c:out></div>
											<div class="progressbar" id="progressbar"></div>
											<div class="timeRight"><fmt:formatDate value="${vacancy.endDate}" pattern="dd/MM/yyyy" var="enddate"></fmt:formatDate> <c:out value="${enddate}"></c:out></div>
										</div>
										<!-- End Progress -->
										
										<!-- Start details -->
										<div class="vacancy-details">
											<span><img src="css/image/transparent.png" class="iconDivision" alt='<c:out value="${vacancy.division.divisionName}"/>'/>${vacancy.division.divisionName}</span>
											<span><img src="css/image/transparent.png" class="iconAddress" alt='<c:out value="${vacancy}"/>[FIX]'/>${vacancy.division.divisionName}[FIX]</span>
											<span><img src="css/image/transparent.png" class="iconNumberPosition" alt='<c:out value="${vacancy.number}"/> [FIX]'/>${vacancy.number} Position</span>
											<div>
												Posted by Thanos on Jan 21<sup>th</sup>,2013
											</div>
											
										</div>
										<!-- End Details --> 
									</div><!-- end blockProgressDetail -->
								</div><!-- end pad-20 odd -->
                              	<div class="workflow"> 
                                    <div class="stepSummary current">
                                        <a href="05_vacancy_detail_tab1_summary" title="" class="value">Summary</a>
                                    	<div class="arrow"></div>
                                    </div><!-- end step candidate -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab2_candidate" title="Waiting" class="value"><span>10</span>Candidates</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">120</a>
                                            <a href="#" title="Passed" class="txtPass">80</a>
                                            <a href="#" title="Rejected">30</a>
                                        </div>
                                    </div><!-- end step candidate -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab3_review" title="Waiting" class="value"><span>10</span>Review</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">80</a>
                                            <a href="#" title="Suitable" class="txtPass">30</a>
                                            <a href="#" title="Unsuitable">40</a>
                                        </div>
                                    </div><!-- end step review -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab4_online_test" title="Waiting" class="value"><span class="numonline">5</span>Online Test</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">30</a>
                                            <a href="#" title="Passed" class="txtPass">15</a>
                                            <a href="#" title="Failed">10</a>
                                        </div>
                                    </div><!-- end step online test -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab5_interview" title="Waiting" class="value"><span class="numinterview">0</span>Interview</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">15</a>
                                            <a href="#" title="Passed" class="txtPass">14</a>
                                            <a href="#" title="Failed">1</a>
                                        </div>
                                    </div><!-- end step interview -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab6_offer" title="Waiting" class="value"><span class="numoffer">0</span>Offer</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">14</a>
                                            <a href="#" title="Accepted" class="txtPass">8</a>
                                            <a href="#" title="Rejected">6</a>
                                        </div>
                                    </div><!-- end step offer -->
                                    <div class="step">
                                        <a href="05_vacancy_detail_tab7_hired" title="8 Hired" class="value"><span class="numhired">8</span>Hired</a>
                                    </div><!-- end step hired -->
                                </div><!-- end workflow -->                           
                            </div>
							<!--Begin vacancy detail-->
					<div class="io-panel-body">
						<div class="col-6 left">
							<div class="col-left">
								<div class="pad-20">
									<table class="profile-developer">
										<tr class="row_highlight">
											<td>Date</td>
											<td>CV</td>
											<td>Manager</td>
										</tr>
										<tr>
											<td>06/20/2013</td>
											<td>20 CV</td>
											<td><a href="#">Vu Tran</a></td>
										</tr>
										<tr class="row_highlight">
											<td>06/22/2013</td>
											<td>50 CV</td>
											<td><a href="#">John Smith</a></td>
										</tr>
										<tr>
											<td>06/24/2013</td>
											<td>10 CV</td>
											<td><a href="#">Vu Tran</a></td>
										</tr>
									</table>
								</div>
								<div class="io-block">
									<div class="io-block-header">
										<h3>Timeline</h3>
										<ul class="io-block-button-set">
                                        	<li><a href="#" title="E-mail"><span class="ico-20 email"></span><span class="text">E-MAIL</span></a></li>
                                            <li><a href="#" title="Call"><span class="ico-20 call"></span><span class="text">CALL</span></a></li>
                                          	<li><a href="#" title="Comment"><span class="ico-20 comment"></span><span class="text">COMMENT</span></a></li>
                                          
                                        </ul>
									</div>
									<div class="io-block-body">
										<div class="pad-10">
											<div class="div-comment">
												<textarea class="io-ta-normal"></textarea>
												<button class="io-button-standard medium">
												<span>COMMENT</span></button>
											</div>
											<div class="div-email" style="display: none;">
												<!-- Email form here--></div>
										</div>
										<div class="timeline-container">
											<div class="timeline-item-container">
												<div class="timeline-item">
													<div class="type">
														<span class="ico-30 timeline-move-back">
														</span>
														<span class="ico-timeline-arrow">
														</span></div>
													<div class="callout">
														<div class="thumbnail">
															<img src="upload/small_avatar.jpg" alt="photo" width="26" height="26"/></div>
														<div class="content">
															<p class="title">Moved 
															back to
															<span class="io-bold">
															Resource Pool</span> 
															by
															<a class="user" href="#">
															Chau Nguyen</a><span class="time"> 
															- about 7 days ago</span></p>
															<p class="comment">Staff 
															has resigned</p>
														</div>
													</div>
												</div>
											</div>
											<div class="timeline-item-container">
												<div class="timeline-item">
													<div class="type">
														<span class="ico-30 timeline-hire">
														</span>
														<span class="ico-timeline-arrow">
														</span></div>
													<div class="callout">
														<div class="thumbnail">
															<img src="upload/small_avatar.jpg" alt="photo" width="26" height="26"/></div>
														<div class="content">
															<p class="title">Status 
															changed to
															<span class="io-bold">
															Hired</span> for
															<a class="user" href="#">
															Java Developer</a> position 
															by
															<a class="user" href="#">
															Chau Nguyen</a><span class="time"> 
															- about 7 days ago</span></p>
															<p class="calendar">
															<span class="ico-20 calendar">
															</span><a href="#">August 
															05<sup>th</sup>, 2013 
															10:00AM</a><br />
															</p>
															<p class="comment">Meet 
															receptionist for guidances 
															on the first working 
															day</p>
														</div>
													</div>
												</div>
											</div>
											<div class="timeline-item-container">
												<div class="timeline-item">
													<div class="type">
														<span class="ico-30 timeline-offer">
														</span>
														<span class="ico-timeline-arrow">
														</span></div>
													<div class="callout">
														<div class="thumbnail">
															<img src="upload/small_avatar.jpg" alt="photo" width="26" height="26"/></div>
														<div class="content">
															<p class="title">Candidate
															<span class="io-bold">
															Accepts Offer</span> 
															for
															<a class="user" href="#">
															Java Developer</a> position 
															by
															<a class="user" href="#">
															Chau Nguyen</a><span class="time"> 
															- about 7 days ago</span></p>
														</div>
													</div>
												</div>
											</div>
											<div class="timeline-item-container">
												<div class="timeline-item">
													<div class="type">
														<span class="ico-30 timeline-offer">
														</span>
														<span class="ico-timeline-arrow">
														</span></div>
													<div class="callout">
														<div class="thumbnail">
															<img src="upload/small_avatar.jpg" alt="photo" width="26" height="26"/></div>
														<div class="content">
															<p class="title">Status 
															changed to
															<span class="io-bold">
															Offered</span> for
															<a class="user" href="#">
															Java Developer</a> position 
															by
															<a class="user" href="#">
															Chau Nguyen</a><span class="time"> 
															- about 7 days ago</span></p>
															<p class="salary">
															<span class="ico-20 salary">
															</span>Expected salary: 
															$12.000 | Offered salary: 
															$10.000</p>
															<p class="comment">Offered 
															salary excludes extra 
															incomes</p>
														</div>
													</div>
												</div>
											</div>
											<div class="timeline-item-container">
												<div class="timeline-item">
													<div class="type">
														<span class="ico-30 timeline-interview">
														</span>
														<span class="ico-timeline-arrow">
														</span></div>
													<div class="callout">
														<div class="thumbnail">
															<img src="upload/small_avatar.jpg" alt="photo" width="26" height="26"/></div>
														<div class="content">
															<p class="title">Candidate
															<span class="io-bold">
															Passed Interview</span> 
															for
															<a class="user" href="#">
															Java Developer</a> position 
															by
															<a class="user" href="#">
															Chau Nguyen</a><span class="time"> 
															- about 7 days ago</span></p>
															<p class="comment">Interview 
															with Mr. Jones &amp; Mr. 
															Taylor</p>
														</div>
													</div>
												</div>
											</div>
											<div class="timeline-item-container">
												<div class="timeline-item">
													<div class="type">
														<span class="ico-30 timeline-interview">
														</span>
														<span class="ico-timeline-arrow">
														</span>
                                                    </div>
													<div class="callout">
														<div class="thumbnail">
															<img src="upload/small_avatar.jpg" alt="photo" width="26" height="26"/></div>
														<div class="content">
															<p class="title">Status 
															changed to
															<span class="io-bold">
															Interview</span> for
															<a class="user" href="#">
															Java Developer</a> position 
															by
															<a class="user" href="#">
															Chau Nguyen</a><span class="time"> 
															- about 7 days ago</span></p>
															<p class="calendar">
															<span class="ico-20 calendar">
															</span><a href="#">July 
															22<sup>nd</sup>, 2013 
															10:00AM | Room H.401 
															| Mr. Jones</a><br />
															</p>
															<p class="comment">Interview 
															with Mr. Jones &amp; Mr. 
															Taylor</p>
														</div>
													</div>
												</div>
											</div>
											<div class="timeline-item-container">
												<div class="timeline-item">
													<div class="type">
														<span class="ico-30 timeline-test">
														</span>
														<span class="ico-timeline-arrow">
														</span></div>
													<div class="callout">
														<div class="thumbnail">
															<img src="upload/small_avatar.jpg" alt="photo" width="26" height="26"/></div>
														<div class="content">
															<p class="title">Candidate
															<span class="io-bold">
															Failed Testing</span> 
															for
															<a class="user" href="#">
															Java Developer</a> position 
															by
															<a class="user" href="#">
															Chau Nguyen</a><span class="time"> 
															- about 7 days ago</span></p>
															<p class="comment">Not 
															good in J2EE technology<br />
															</p>
														</div>
													</div>
												</div>
											</div>
											<div class="timeline-item-container">
												<div class="timeline-item">
													<div class="type">
														<span class="ico-30 timeline-test">
														</span>
														<span class="ico-timeline-arrow">
														</span></div>
													<div class="callout">
														<div class="thumbnail">
															<img src="upload/small_avatar.jpg" alt="photo" width="26" height="26"/></div>
														<div class="content">
															<p class="title">Status 
															changed to
															<span class="io-bold">
															Test</span> for
															<a class="user" href="#">
															Java Developer</a> position 
															by
															<a class="user" href="#">
															Chau Nguyen</a><span class="time"> 
															- about 7 days ago</span></p>
															<p class="calendar">
															<span class="ico-20 calendar">
															</span><a href="#">July 
															21<sup>st</sup>, 2013 
															10:00AM | Room H.401</a><br />
															</p>
															<p class="comment">Test 
															coding skills<br />
															</p>
														</div>
													</div>
												</div>
											</div>
											<div class="timeline-item-container">
												<div class="timeline-item">
													<div class="type">
														<span class="ico-30 timeline-review">
														</span>
														<span class="ico-timeline-arrow">
														</span></div>
													<div class="callout">
														<div class="thumbnail">
															<img src="upload/small_avatar.jpg" alt="photo" width="26" height="26"/></div>
														<div class="content">
															<p class="title">Status 
															changed to
															<span class="io-bold">
															Review</span> for
															<a class="user" href="#">
															Java Developer</a> position 
															by
															<a class="user" href="#">
															Chau Nguyen</a><span class="time"> 
															- about 7 days ago</span></p>
															<p class="comment">He 
															is suitable for this 
															position because of 
															having a strong Java 
															skill</p>
														</div>
													</div>
												</div>
											</div>
											<div class="timeline-item-container">
												<div class="timeline-item">
													<div class="type">
														<span class="ico-30 timeline-comment">
														</span>
														<span class="ico-timeline-arrow">
														</span></div>
													<div class="callout">
														<div class="thumbnail">
															<img src="upload/small_avatar.jpg" alt="photo" width="26" height="26"/></div>
														<div class="content">
															<p class="title">
															<a class="user" href="#">
															Chau Nguyen</a> write 
															a comment<span class="time"> 
															- about 7 days ago</span></p>
															<p class="comment">He's 
															a really good candidate 
															for Java Dev position</p>
														</div>
													</div>
												</div>
											</div>
											<div class="timeline-item-container">
												<div class="timeline-item">
													<div class="type">
														<span class="ico-30 timeline-phone">
														</span>
														<span class="ico-timeline-arrow">
														</span></div>
													<div class="callout">
														<div class="thumbnail">
															<img src="upload/small_avatar.jpg" alt="photo" width="26" height="26"/></div>
														<div class="content">
															<p class="title">Phone 
															call by
															<a class="user" href="#">
															Chau Nguyen</a><span class="time"> 
															- about 6 days ago</span></p>
															<p class="comment">Having 
															a short talk with Peter 
															about his current work 
															status and invite him 
															to work with us. He 
															said that need time 
															to consider about our 
															invitation</p>
														</div>
													</div>
												</div>
											</div>
											<div class="timeline-item-container">
												<div class="timeline-item">
													<div class="type">
														<span class="ico-30 timeline-update">
														</span>
														<span class="ico-timeline-arrow">
														</span></div>
													<div class="callout">
														<div class="thumbnail">
															<img src="upload/small_avatar.jpg" alt="photo" width="26" height="26"/></div>
														<div class="content">
															<p class="title">Updated 
															by
															<a class="user" href="#">
															Chau Nguyen</a><span class="time"> 
															- about 6 days ago</span></p>
														</div>
													</div>
												</div>
											</div>
											<div class="timeline-item-container">
												<div class="timeline-item">
													<div class="type">
														<span class="ico-30 timeline-import">
														</span>
														<span class="ico-timeline-arrow">
														</span></div>
													<div class="callout">
														<div class="thumbnail">
															<img src="upload/small_avatar.jpg" alt="photo" width="26" height="26"/></div>
														<div class="content">
															<p class="title">Imported 
															from CV file by
															<a class="user" href="#">
															Chau Nguyen</a><span class="time"> 
															- about 6 days ago</span></p>
														</div>
													</div>
												</div>
											</div>
											<div class="timeline-item-container">
												<div class="timeline-item">
													<div class="type">
														<span class="ico-30 timeline-create">
														</span>
														<span class="ico-timeline-arrow">
														</span></div>
													<div class="callout">
														<div class="thumbnail">
															<img src="upload/small_avatar.jpg" alt="photo" width="26" height="26"/></div>
														<div class="content">
															<p class="title">Created 
															by
															<a class="user" href="#">
															Chau Nguyen</a><span class="time"> 
															- about 1 month ago</span></p>
														</div>
													</div>
												</div>
											</div>
											<div class="timeline-item-container">
												<div class="timeline-more">
													<button class="io-button-standard medium">
													<span>VIEW MORE...</span>
													</button></div>
											</div>
										</div>
									</div>
								</div>
								<!-- end of timeline block--></div>
						</div>
						<div class="col-6 right">
							<div class="col-right">
								<div class="io-block">
									<div class="io-block-header">
										<h3>Vacancy's ${vacancy.vacancyName}</h3>
									</div>
									<div class="io-block-body">
										<div class="pad-20">
											<table class="profile-developer">
												<tr class="row_highlight">
													<td style="width: 30%;">Position</td>
													<td>${vacancy.position.positionName }</td>
												</tr>
												<tr>
													<td>Number</td>
													<td>${vacancy.number }</td>
												</tr>
                                                <tr class="row_highlight">
													<td>Working location</td>
													<td>${vacancy.workingLocationId}[FIX]</td>
												</tr>
												<tr>
													<td>Division</td>
													<td>${vacancy.division.divisionName }</td>
												</tr>
                                                <tr class="row_highlight">
													<td>Manager request</td>
													<td><a href="#">${vacancy.manager.managerName}</a></td>
												</tr>
												<tr>
													<td>Start Date</td>
													<td>${startdate} </td>
												</tr>
												<tr class="row_highlight">
													<td>End Date</td>
													<td>${enddate}</td>
												</tr>
                                                
                                                
                                                
                                                <tr>
													<td>Year of Experience</td>
													<td>${vacancy.yearOfExperience } [FIX]</td>
												</tr>
                                                <tr class="row_highlight">
													<td>Skill</td>
													<td><c:forEach items="${vacancySkills}" var="skills"><c:out value="${skills.skill.skillName}"></c:out>, </c:forEach> [FIX]</td>
												</tr>
												<tr>
													<td>Languange</td>
													<td><c:forEach items="${vacancySkills}" var="skills"><c:out value="${skills.skill.skillName}"></c:out>, </c:forEach></td>
												</tr>
                                                <tr class="row_highlight">
													<td>Description</td>
													<td><ul class="io-panel-body-ul-pos" style="padding-left: 15px;">
                                                        ${vacancy.description}
                                                    </ul></td>
												</tr>
												
											</table>
                                            
                                    
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="io-clear">
						</div>
					</div>
					<!--End vacancy detail-->
                        </div>
                    </div> 
                </div>
            </div><!-- end io-col-main -->
        </div><!-- end io-wrapper -->
        
        </form:form>
        
        <!-- popup move to review-->
        <div id="popup-move-to">
        	<input type="hidden" autofocus />
        	<div class="popup-description">You’re changing application status for <span class="io-bold">Peter Belanger</span>, <span class="io-bold">Jonathan Ive</span> & <span class="io-bold">Phillipino Perini</span></div>
            <table class="io-table-input vertical">
            	<tbody>
                	<tr>
                    	<td class="data">
                        	<select id="cbo-move-to" class="editable-select">
                                <option value="Resource Pool">Resource Pool</option>
                                <option value="Candidate">Review</option>
                                <option value="Review">Project Manager</option>
                                <option value="Online Test">Project Manager</option>
                                <option value="Interview">Project Manager</option>
                                <option value="Offer">Project Manager</option>
                                <option value="Hired">Project Manager</option>
                            </select>
                        </td>
                    </tr>
                    <tr id="tr-reason-label">
                    	<td class="label">Reason</td>
                    </tr>
                    <tr id="tr-reason-data">
                    	<td class="data">
                        	<select id="cbo-reason" class="editable-select">
                                <option value="So far work location">So far work location</option>
                                <option value="Get another offer/job">Get another offer/job</option>
                                <option value="Can not arrange now">Can not arrange now</option>
                                <option value="Higher expectation of salary">Higher expectation of salary</option>
                                <option value="Higher expectation of level">Higher expectation of level</option>
                                <option value="Others">Others</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="label">Comment</td>
                    </tr>
                    <tr>
                        <td class="data">
                        	<textarea class="io-ta-normal"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td class="data">
                        	<input type="checkbox" checked="checked"/> &nbsp;Send e-mail to manager
                        </td>
                    </tr>
                </tbody>
            </table>
        </div><!-- end of popup move to -->
        
        <!-- popup status-->
        <div id="popup-status">
        	<input type="hidden" autofocus />
        	<div class="popup-description">You’re changing status for vacancy <span class="io-bold">Java Developer</span></div>
            <table class="io-table-input vertical">
            	<tbody>
                	<tr>
                    	<td class="data">
                        	<select id="cbo-vacancy-status" class="editable-select">
                                <option value="Created">Created</option>
                                <option value="Approved">Approved</option>
                                <option value="Disapproved">Disapproved</option>
                                <option value="Openning">Openning</option>
                                <option value="Pending">Pending</option>
                                <option value="Closed">Closed</option>
                            </select>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div><!-- end of popup status -->
        
        <!-- popup delete-->
        <div id="popup-delete">
        	<input type="hidden" autofocus />
        	<div class="popup-description">Are you sure you want to delete vacancy <span class="io-bold">Android Developer</span>?</div>
        </div><!-- end of popup delete -->
        
        <!-- popup export -->
        <div id="popup-export">
        	<input type="hidden" autofocus />
        	<div class="popup-description">You’re exporting vacancy <span class="io-bold">Android Developer</span><br/>Please select file type</div>
            <table class="io-table-input vertical">
            	<tbody>
                	<tr>
                    	<td class="data">
                        	<select id="cbo-export-format" class="editable-select">
                            	<option value="- Select -">- Select -</option>
                                <option value="Ms Word (DOC)">Ms Word (DOC)</option>
                                <option value="Ms Excel (XLS)">Ms Excel (XLS)</option>
                                <option value="Adobe Acrobat (PDF)">Adobe Acrobat (PDF)</option>
                            </select>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div><!-- end of popup export -->
        
        
     
	</body>
</html>