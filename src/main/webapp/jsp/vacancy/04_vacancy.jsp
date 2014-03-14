<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- local script -->
        <script>
        	$(function(){

            $('#cbo-position').editableSelect({
                bg_iframe: true,
				width: 178,
                onSelect: function(list_item) {
                    
                }
            });
            $('#cbo-status').editableSelect({
                bg_iframe: true,
				width: 178,
                onSelect: function(list_item) {
                    
                }
            });
			
			$('#cbo-division').editableSelect({
                bg_iframe: true,
				width: 178,
                onSelect: function(list_item) {
                    
                }
            });
            $('#cbo-manager').editableSelect({
                bg_iframe: true,
				width: 178,
                onSelect: function(list_item) {
                    
                }
            });
			
            $('#cbo-updated-date').editableSelect({
                bg_iframe: true,
				width: 178,
                onSelect: function(list_item) {
                    
                }
            });
            $('#cbo-skill-1').editableSelect({
                bg_iframe: true,
				width: 178,
                onSelect: function(list_item) {
                    
                }
            });

            $('#cbo-skill-level-1').editableSelect({
                bg_iframe: true,
				width: 178,
                onSelect: function(list_item) {
                    
                }
            });
            $('#cbo-skill-2').editableSelect({
                bg_iframe: true,
				width: 178,
                onSelect: function(list_item) {
                    
                }
            });

            $('#cbo-skill-level-2').editableSelect({
                bg_iframe: true,
				width: 178,
                onSelect: function(list_item) {
                    
                }
            });

            $('#cbo-language-1').editableSelect({
                bg_iframe: true,
				width: 178,
                onSelect: function(list_item) {
                    
                }
            });

            $('#cbo-language-level-1').editableSelect({
                bg_iframe: true,
				width: 178,
                onSelect: function(list_item) {
                    
                }
            });

            $('#cbo-other-1').editableSelect({
                bg_iframe: true,
				width: 178,
                onSelect: function(list_item) {
                    
                }
            });

            $('#cbo-other-data-1').editableSelect({
                bg_iframe: true,
				width: 178,
                onSelect: function(list_item) {
                    
                }
            });

            $('#cbo-order-1').editableSelect({
                bg_iframe: true,
				width: 128,
                onSelect: function(list_item) {
                    
                }
            });
            $('#cbo-order-2').editableSelect({
                bg_iframe: true,
				width: 68,
                onSelect: function(list_item) {
                    
                }
            });
            $('#cbo-page-size').editableSelect({
                bg_iframe: true,
				width: 68,
                onSelect: function(list_item) {
                    
                }
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

            
            
			/*----------Java Script for Progressbar-------*/
            $( "#progressbar1" ).progressbar({
		      value: 30
		    });
		    
		    $( "#progressbar2" ).progressbar({
		      value: 50
		    });


			$( "#progressbar3" ).progressbar({
		      value: 30
		    });

			$( "#progressbar4" ).progressbar({
		      	value: 80,
		    });
               
		    for (var i=0; i< $('.progressbar').length; i++){
		    	var progressbarID = $('.progressbar').get(i).id;
		    	var progressbarValue = $("#" + progressbarID ).progressbar("option", "value");
		    	var progressbarTemp = $("#" + progressbarID ).find( ".ui-progressbar-value" );

		    	if (progressbarValue < 50){
			    	progressbarTemp .css({
	          			"background-image": "url('css/ui-lightness/images/Green-ui-bg_diagonals-thick_18_b81900_40x40.png')"
	        		});
        		}
				if (progressbarValue < 80){
			    	progressbarTemp .css({
	          			"background-image": "url('css/ui-lightness/images/Orange-ui-bg_diagonals-thick_18_b81900_40x40.png')"
	        		});
        		}
        		else {
        			progressbarTemp .css({
	          			"background-image": "url('css/ui-lightness/images/ui-bg_diagonals-thick_18_b81900_40x40.png')"
					});
        		}
        	
		    }
			/*----------END Javascript for progressbar--------*/
			
				$( "#from" ).datepicker({
				  defaultDate: "+1w",
				  changeMonth: true,
				  numberOfMonths: 1,
				  onClose: function( selectedDate ) {
					$( "#to" ).datepicker( "option", "minDate", selectedDate );
				  }
				});
				$( "#to" ).datepicker({
				  defaultDate: "+1w",
				  changeMonth: true,
				  numberOfMonths: 1,
				  onClose: function( selectedDate ) {
					$( "#from" ).datepicker( "option", "maxDate", selectedDate );
				  }
				});
		    });
		    
        </script>
    </head>
	<body>
	<form:form>
        <div class="io-wrapper">

            <div class="io-col-main">
                
                <div class="io-main-content">
                	<!--=====Search Vacancies=====-->
					<div class="pad-10">
                        <div class="io-panel panel-search-candidate">
                            <div class="io-panel-header">
                                <h3 class="txtTitle-1">Search Vacancy</h3>
                                <div class="dropdown">
                                	<a href="create" title="" class="io-button-highlight medium"><span>CREATE</span></a>
                                	<div class="btn close"></div>
                                </div><!-- end dropdown -->
                            </div>
                            <div class="io-panel-body">
                              <div class="pad-20">
                                <table class="io-table-input">
                                    <tbody>
                                        <tr>
                                            <td class="label" style="width:12%;">Name</td>
                                            <td class="data" style="width:38%;">
                                                <input type="text" class="io-txt-normal empty" style="width: 178px;" autofocus/>                                            </td>
                                            <td class="label" style="width:12%;">Status</td>
                                            <td class="data" style="width:38%;">
                                                <select id="cbo-status" class="editable-select">
                                                	<option value="Created">Created</option>
                                                    <option value="Approved">Approved</option>
                                                    <option value="Disapproved">Disapproved</option>
                                                    <option value="Opening">Opening</option>
													<option value="Closed">Closed</option>
												</select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label">Division</td>
                                            <td class="data">
                                                <select id="cbo-division" class="editable-select">
                                                	<option value="ICT">ICT</option>
                                                </select>
                                            </td>
                                            <td class="label">Time period</td>
                                            <td class="data"><span style="display: inline-block; width: 50px;">From</span><input type="text" class="io-date-normal" style="width: 108px;" id="from" name="work-date-start-1"/></td>
                                            
                                        </tr>
                                        
                                        <tr>
                                        	<td class="label">Manager</td>
                                            <td class="data">
                                                <select id="cbo-manager" class="editable-select">
                                                	<option value="Vu Tran">Vu Tran</option>
                                                </select>
                                            </td>
                                            <td class="label">&nbsp;</td>
                                            <td class="data"><span style="display: inline-block; width: 50px;">To</span><input type="text" class="io-date-normal" style="width: 108px;" id="to" name="work-date-end-1"/></td>
                                            
                                        </tr>
                                        <tr>
                                            <td class="label">Skill</td>
                                            <td colspan="3" class="data">
                                              <div class="io-editable-list">
                                                <div class="row">
                                                  <span class="col"><select id="cbo-skill-1" class="editable-select">
                                                                                                      <option value="Java">Java</option>
                                                                                                    </select></span>
                                                  <span class="col"><select id="cbo-skill-level-1" class="editable-select">
                                                                                                      <option value="Beginner">Beginner</option>
                                                                                                    </select></span>
                                                  <span class="ico-20 remove-row"></span>
                                                  
                                                </div>
                                              </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="label">Language</td>
                                            <td colspan="3" class="data">
                                              <div class="io-editable-list">
                                                
                                                <div class="row">
                                                  <span class="col"><select id="cbo-language-1" class="editable-select">
                                                                                                      <option value="English">English</option>
                                                                                                    </select></span>
                                                  <span class="col"><select id="cbo-language-level-1" class="editable-select">
                                                    <option value="Beginner">Beginner</option>
                                                                                                      <option value="Intermediate">Intermediate</option>
                                                                                                      <option value="Advanced">Advanced</option>
                                                                                                    </select></span>
                                                  
                                                  <span class="ico-20 add-row"></span>
                                                  <span class="ico-20 remove-row"></span>
                                                </div>
                                              </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="4" class="label"><div class="io-splitter"><h4>Other filters</h4></div></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td colspan="3" class="data">
                                              <div class="io-editable-list">
                                                
                                                <div class="row">
                                                  <span class="col"><select id="cbo-other-1" class="editable-select">
                                                                                                      <option value="University">University</option>
                                                                                                    </select></span>
                                                  <span class="col"><select id="cbo-other-data-1" class="editable-select">
                                                    <option value="RMIT">RMIT</option>
                                                                                                      <option value="Stanford">Stanford</option>
                                                                                                      
                                                                                                    </select></span>
                                                  
                                                  <span class="ico-20 add-row"></span>
                                                  <span class="ico-20 remove-row"></span>
                                                </div>
                                              </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                              </div>
                                
                            </div>
                            <div class="io-panel-footer">
                                <button class="io-button-standard medium"><span>SEARCH</span></button>
                                <button class="io-button-standard medium"><span>CLEAR</span></button>
                            </div>
                        </div>
                    </div>					
                	<!--=====End Search Vacancies=====-->
                	
                	<!--=====View Vacancies=====-->
                    <div class="listVacancy">
                        <div class="txtResult">                        
                            <h3>Search Result (50 record(s) founded)</h3>
                          <div class="io-list-header">

                            <div class="col-left">
                              <span class="txt">Order by</span>&nbsp;
                              <select id="cbo-order-1" class="editable-select">
                                <option value="Deadline">Deadline</option>
                                <option value="Division">Division</option>
                                <option value="Working location">Working location</option>
                                <option value="No. of Position">No. of Position</option>
                              </select>&nbsp;
                              <select id="cbo-order-2" class="editable-select">
                                <option value="Desc">Desc</option>
                                <option value="Asc">Asc</option>
                              </select>
                            </div>
                            
                            <div class="col-right">
                                
                            </div>
                          </div> <!-- end io-list-header -->
                        </div> <!-- end txtResult --> 
                        <div class="lstItemResult">
                          





                        <div class="item-container">
                            <div class="item">
                                <div class="io-panel-body-header"><span class="statusVacancy open">Opening</span></div>
                                <div class="pad-20">
                                    <h3><a href="05_vacancy_detail_tab1_summary.html" title="">Android Developer</a></h3>
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
                                            <span><img src="css/image/transparent.png" class="iconDivision" alt="ICT Division"/>ICT Division</span>
                                            <span><img src="css/image/transparent.png" class="iconAddress" alt="Ho Chi Minh, Vietnam"/>Ho Chi Minh, Vietnam &nbsp;</span>
                                            <span><img src="css/image/transparent.png" class="iconNumberPosition" alt="5 positions"/>5 positions</span>
                                            <div>
                                                Posted by Thanos on Jan 21<sup>th</sup>,2013
                                            </div>
                                            
                                        </div>
                                        <!-- End Details --> 
                                    </div><!-- end blockProgressDetail -->
                                </div><!-- end pad-20 odd -->
                                <div class="workflow"> 
                                    <div class="stepSummary">
                                        <a href="05_vacancy_detail_tab1_summary.html" title="" class="value">Summary</a>
                                    	<div class="arrow"></div>
                                    </div><!-- end step candidate -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab2_candidate.html" title="Waiting" class="value"><span>10</span>Candidates</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">120</a>
                                            <a href="#" title="Passed" class="txtPass">80</a>
                                            <a href="#" title="Rejected">30</a>
                                        </div>
                                    </div><!-- end step candidate -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab3_review.html" title="Waiting" class="value"><span>10</span>Review</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">80</a>
                                            <a href="#" title="Suitable" class="txtPass">30</a>
                                            <a href="#" title="Unsuitable">40</a>
                                        </div>
                                    </div><!-- end step review -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab4_online_test.html" title="Waiting" class="value"><span class="numonline">5</span>Online Test</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">30</a>
                                            <a href="#" title="Passed" class="txtPass">15</a>
                                            <a href="#" title="Failed">10</a>
                                        </div>
                                    </div><!-- end step online test -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab5_interview.html" title="Waiting" class="value"><span class="numinterview">0</span>Interview</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">15</a>
                                            <a href="#" title="Passed" class="txtPass">14</a>
                                            <a href="#" title="Failed">1</a>
                                        </div>
                                    </div><!-- end step interview -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab6_offer.html" title="Waiting" class="value"><span class="numoffer">0</span>Offer</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">14</a>
                                            <a href="#" title="Accepted" class="txtPass">8</a>
                                            <a href="#" title="Rejected">6</a>
                                        </div>
                                    </div><!-- end step offer -->
                                    <div class="step">
                                        <a href="05_vacancy_detail_tab7_hired.html" title="8 Hired" class="value"><span class="numhired">8</span>Hired</a>
                                    </div><!-- end step hired -->
                                </div><!-- end workflow --> 
                            </div>
                            <div class="button-set"><a href="05_Vacancy_Detail_Search_Candidate.html" class="io-button-standard medium"><span>VIEW DETAIL</span></a></div>
                        </div>
                        <!-- end item -->







                        <div class="item-container">
                            <div class="item">
                                <div class="io-panel-body-header"><span class="statusVacancy close">Closed</span></div>
                                <div class="pad-20">
                                    <h3><a href="05_vacancy_detail_tab1_summary.html" title="">Android Developer</a></h3>
                                    <div class="blockProgressDetail">
                                        <!-- Start Progress -->
                                        <div class="vacancy-progress">
                                            <div class="timeLeft">06/20/2013</div>
                                            <div class="progressbar" id="progressbar2"></div>
                                            <div class="timeRight">07/20/2013</div>
                                        </div>
                                        <!-- End Progress -->
                                        
                                        <!-- Start details -->
                                        <div class="vacancy-details">
                                            <span><img src="css/image/transparent.png" class="iconDivision" alt="ICT Division"/>ICT Division</span>
                                            <span><img src="css/image/transparent.png" class="iconAddress" alt="Ho Chi Minh, Vietnam"/>Ho Chi Minh, Vietnam &nbsp;</span>
                                            <span><img src="css/image/transparent.png" class="iconNumberPosition" alt="5 positions"/>5 positions</span>
                                            <div>
                                                Posted by Thanos on Jan 21<sup>th</sup>,2013
                                            </div>
                                            
                                        </div>
                                        <!-- End Details --> 
                                    </div><!-- end blockProgressDetail -->
                                </div><!-- end pad-20 odd -->
                                <div class="workflow"> 
                                    <div class="stepSummary">
                                        <a href="05_vacancy_detail_tab1_summary.html" title="" class="value">Summary</a>
                                    	<div class="arrow"></div>
                                    </div><!-- end step candidate -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab2_candidate.html" title="Waiting" class="value"><span>10</span>Candidates</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">120</a>
                                            <a href="#" title="Passed" class="txtPass">80</a>
                                            <a href="#" title="Rejected">30</a>
                                        </div>
                                    </div><!-- end step candidate -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab3_review.html" title="Waiting" class="value"><span>10</span>Review</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">80</a>
                                            <a href="#" title="Suitable" class="txtPass">30</a>
                                            <a href="#" title="Unsuitable">40</a>
                                        </div>
                                    </div><!-- end step review -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab4_online_test.html" title="Waiting" class="value"><span class="numonline">5</span>Online Test</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">30</a>
                                            <a href="#" title="Passed" class="txtPass">15</a>
                                            <a href="#" title="Failed">10</a>
                                        </div>
                                    </div><!-- end step online test -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab5_interview.html" title="Waiting" class="value"><span class="numinterview">0</span>Interview</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">15</a>
                                            <a href="#" title="Passed" class="txtPass">14</a>
                                            <a href="#" title="Failed">1</a>
                                        </div>
                                    </div><!-- end step interview -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab6_offer.html" title="Waiting" class="value"><span class="numoffer">0</span>Offer</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">14</a>
                                            <a href="#" title="Accepted" class="txtPass">8</a>
                                            <a href="#" title="Rejected">6</a>
                                        </div>
                                    </div><!-- end step offer -->
                                    <div class="step">
                                        <a href="05_vacancy_detail_tab7_hired.html" title="8 Hired" class="value"><span class="numhired">8</span>Hired</a>
                                    </div><!-- end step hired -->
                                </div><!-- end workflow --> 
                            </div>
                            <div class="button-set"><a href="05_Vacancy_Detail_Search_Candidate.html" class="io-button-standard medium"><span>VIEW DETAIL</span></a></div>
                        </div>
                        <!-- end item -->


                        <div class="item-container">
                            <div class="item">
                                <div class="io-panel-body-header"><span class="statusVacancy pending">Pending</span></div>
                                <div class="pad-20">
                                    <h3><a href="05_vacancy_detail_tab1_summary.html" title="">Android Developer</a></h3>
                                    <div class="blockProgressDetail">
                                        <!-- Start Progress -->
                                        <div class="vacancy-progress">
                                            <div class="timeLeft">06/20/2013</div>
                                            <div class="progressbar" id="progressbar3"></div>
                                            <div class="timeRight">07/20/2013</div>
                                        </div>
                                        <!-- End Progress -->
                                        
                                        <!-- Start details -->
                                        <div class="vacancy-details">
                                            <span><img src="css/image/transparent.png" class="iconDivision" alt="ICT Division"/>ICT Division</span>
                                            <span><img src="css/image/transparent.png" class="iconAddress" alt="Ho Chi Minh, Vietnam"/>Ho Chi Minh, Vietnam &nbsp;</span>
                                            <span><img src="css/image/transparent.png" class="iconNumberPosition" alt="5 positions"/>5 positions</span>
                                            <div>
                                                Posted by Thanos on Jan 21<sup>th</sup>,2013
                                            </div>
                                            
                                        </div>
                                        <!-- End Details --> 
                                    </div><!-- end blockProgressDetail -->
                                </div><!-- end pad-20 odd -->
                                <div class="workflow"> 
                                    <div class="stepSummary">
                                        <a href="05_vacancy_detail_tab1_summary.html" title="" class="value">Summary</a>
                                    	<div class="arrow"></div>
                                    </div><!-- end step candidate -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab2_candidate.html" title="Waiting" class="value"><span>10</span>Candidates</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">120</a>
                                            <a href="#" title="Passed" class="txtPass">80</a>
                                            <a href="#" title="Rejected">30</a>
                                        </div>
                                    </div><!-- end step candidate -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab3_review.html" title="Waiting" class="value"><span>10</span>Review</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">80</a>
                                            <a href="#" title="Suitable" class="txtPass">30</a>
                                            <a href="#" title="Unsuitable">40</a>
                                        </div>
                                    </div><!-- end step review -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab4_online_test.html" title="Waiting" class="value"><span class="numonline">5</span>Online Test</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">30</a>
                                            <a href="#" title="Passed" class="txtPass">15</a>
                                            <a href="#" title="Failed">10</a>
                                        </div>
                                    </div><!-- end step online test -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab5_interview.html" title="Waiting" class="value"><span class="numinterview">0</span>Interview</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">15</a>
                                            <a href="#" title="Passed" class="txtPass">14</a>
                                            <a href="#" title="Failed">1</a>
                                        </div>
                                    </div><!-- end step interview -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab6_offer.html" title="Waiting" class="value"><span class="numoffer">0</span>Offer</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">14</a>
                                            <a href="#" title="Accepted" class="txtPass">8</a>
                                            <a href="#" title="Rejected">6</a>
                                        </div>
                                    </div><!-- end step offer -->
                                    <div class="step">
                                        <a href="05_vacancy_detail_tab7_hired.html" title="8 Hired" class="value"><span class="numhired">8</span>Hired</a>
                                    </div><!-- end step hired -->
                                </div><!-- end workflow -->
                            </div>
                            <div class="button-set"><a href="05_Vacancy_Detail_Search_Candidate.html" class="io-button-standard medium"><span>VIEW DETAIL</span></a></div>
                        </div>
                        <!-- end item -->


                        <div class="item-container">
                            <div class="item">
                                <div class="io-panel-body-header"><span class="statusVacancy close">Closed</span></div>
                                <div class="pad-20">
                                    <h3><a href="05_vacancy_detail_tab1_summary.html" title="">Android Developer</a></h3>
                                    <div class="blockProgressDetail">
                                        <!-- Start Progress -->
                                        <div class="vacancy-progress">
                                            <div class="timeLeft">06/20/2013</div>
                                            <div class="progressbar" id="progressbar4"></div>
                                            <div class="timeRight">07/20/2013</div>
                                        </div>
                                        <!-- End Progress -->
                                        
                                        <!-- Start details -->
                                        <div class="vacancy-details">
                                            <span><img src="css/image/transparent.png" class="iconDivision" alt="ICT Division"/>ICT Division</span>
                                            <span><img src="css/image/transparent.png" class="iconAddress" alt="Ho Chi Minh, Vietnam"/>Ho Chi Minh, Vietnam &nbsp;</span>
                                            <span><img src="css/image/transparent.png" class="iconNumberPosition" alt="5 positions"/>5 positions</span>
                                            <div>
                                                Posted by Thanos on Jan 21<sup>th</sup>,2013
                                            </div>
                                            
                                        </div>
                                        <!-- End Details --> 
                                    </div><!-- end blockProgressDetail -->
                                </div><!-- end pad-20 odd -->
                                <div class="workflow"> 
                                    <div class="stepSummary">
                                        <a href="05_vacancy_detail_tab1_summary.html" title="" class="value">Summary</a>
                                    	<div class="arrow"></div>
                                    </div><!-- end step candidate -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab2_candidate.html" title="Waiting" class="value"><span>10</span>Candidates</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">120</a>
                                            <a href="#" title="Passed" class="txtPass">80</a>
                                            <a href="#" title="Rejected">30</a>
                                        </div>
                                    </div><!-- end step candidate -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab3_review.html" title="Waiting" class="value"><span>10</span>Review</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">80</a>
                                            <a href="#" title="Suitable" class="txtPass">30</a>
                                            <a href="#" title="Unsuitable">40</a>
                                        </div>
                                    </div><!-- end step review -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab4_online_test.html" title="Waiting" class="value"><span class="numonline">5</span>Online Test</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">30</a>
                                            <a href="#" title="Passed" class="txtPass">15</a>
                                            <a href="#" title="Failed">10</a>
                                        </div>
                                    </div><!-- end step online test -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab5_interview.html" title="Waiting" class="value"><span class="numinterview">0</span>Interview</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">15</a>
                                            <a href="#" title="Passed" class="txtPass">14</a>
                                            <a href="#" title="Failed">1</a>
                                        </div>
                                    </div><!-- end step interview -->
                                    <div class="step">
                                    	<div class="arrow"></div>
                                        <a href="05_vacancy_detail_tab6_offer.html" title="Waiting" class="value"><span class="numoffer">0</span>Offer</a>
                                        <div class="statusStep">
                                            <a href="#" title="Total">14</a>
                                            <a href="#" title="Accepted" class="txtPass">8</a>
                                            <a href="#" title="Rejected">6</a>
                                        </div>
                                    </div><!-- end step offer -->
                                    <div class="step">
                                        <a href="05_vacancy_detail_tab7_hired.html" title="8 Hired" class="value"><span class="numhired">8</span>Hired</a>
                                    </div><!-- end step hired -->
                                </div><!-- end workflow -->  
                            </div>
                           <div class="button-set"><a href="05_Vacancy_Detail_Search_Candidate.html" class="io-button-standard medium"><span>VIEW DETAIL</span></a></div>
                        </div>
                        <!-- end item -->

                            

                          

                          
 
                            
                            
                            <div class="blockPaging">
                                <div class="display">
                                  <span>Display</span>&nbsp;
                                  <select id="cbo-page-size" class="editable-select page-size">
                                    <option value="20">20</option>
                                    <option value="50">50</option>
                                    <option value="100">100</option>
                                  </select>
                                  &nbsp;<span>item(s)/page</span>
                                </div>
                                <!-- end display  -->
                                
                                <div class="pagination">
                                  <a href="#" class="page gradient">First</a>
                                  <a href="#" class="page gradient">Prev</a>
                                  <a href="#" class="page gradient">2</a>
                                  <a href="#" class="page gradient">3</a>
                                  <span class="page active">4</span>
                                  <a href="#" class="page gradient">5</a>
                                  <a href="#" class="page gradient">6</a>
                                  <a href="#" class="page gradient">Next</a>
                                  <a href="#" class="page gradient">Last</a> </div>
                                
                            </div><!-- end paging -->
                                                        
                        </div><!-- end lstItemResult -->
                    </div> <!-- end listCandidate -->
                </div>
            </div><!-- end io-col-main -->
        </div><!-- end io-wrapper -->
       </form:form>
	</body>
</html>