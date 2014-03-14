<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- local script -->
        <script>
        	$(function(){
        	
            $('#cbo-position').editableSelect({
                bg_iframe: true,
				width: 198,
                onSelect: function(list_item) {
                    
                }
            });

            $('#cbo-working').editableSelect({
                bg_iframe: true,
				width: 198,
                onSelect: function(list_item) {
                    
                }
            });

            
            
            $('#cbo-division').editableSelect({
                bg_iframe: true,
				width: 198,
                onSelect: function(list_item) {
                    
                }
            });
			
			$('#cbo-manager-request').editableSelect({
                bg_iframe: true,
				width: 198,
                onSelect: function(list_item) {
                    
                }
            });
            
			$( "#start-date" ).datepicker({
				onClose: function( selectedDate ) {
					$( "#end-date" ).datepicker( "option", "minDate", selectedDate );
				}
			});
				
				$( "#end-date" ).datepicker({
				onClose: function( selectedDate ) {
					$( "#start-date" ).datepicker( "option", "maxDate", selectedDate );
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

              //resize right column to match height with left column => fix vertical divider
                var colLeft = $('.col-4.left');
                var colRight = $('.col-8.right');
                colLeft.resize(function(){
                    
                    if(colRight.height() < colLeft.height()){
                        colRight.height(colLeft.height());
                    }
                });
                colLeft.resize();

                $('#cbo-skill-1').editableSelect({
                    bg_iframe: true,
					width: 128,
                    onSelect: function(list_item) {
                        
                    }
                });

                $('#cbo-skill-level-1').editableSelect({
                    bg_iframe: true,
					width: 128,
                    onSelect: function(list_item) {
                        
                    }
                });
                $('#cbo-skill-2').editableSelect({
                    bg_iframe: true,
					width: 128,
                    onSelect: function(list_item) {
                        
                    }
                });

                $('#cbo-skill-level-2').editableSelect({
                    bg_iframe: true,
					width: 128,
                    onSelect: function(list_item) {
                        
                    }
                });

                $('#cbo-language-1').editableSelect({
                    bg_iframe: true,
					width: 128,
                    onSelect: function(list_item) {
                        
                    }
                });

                $('#cbo-language-level-1').editableSelect({
                    bg_iframe: true,
					width: 128,
                    onSelect: function(list_item) {
                        
                    }
                });
				
				$('#cbo-vacancy-status').editableSelect({
                    bg_iframe: true,
					width: 198,
                    onSelect: function(list_item) {
                        
                    }
                });
        	
        	        	
        	});

        	
        </script>
    </head>
	<body>
    <form:form commandName="vacancy" id="EditForm" method="POST">
        <div>
            <div>
                <div class="io-main-content">
					<div class="pad-10">
						<div class="io-panel panel-create-vacancy">
							<div class="io-panel-header" >
								<h3 class="txtTitle-1">Edit Vacancy <form:label path="vacancyId"></form:label> </h3>
								<div class="float-r"> 
									<a href="javascript:EditForm.submit();" class="io-button-highlight medium">
										<span>EDIT</span>
									</a> 
									<a href='../${vacany.vacancyId}' class="io-button-standard medium">
										<span>CANCEL</span>
									</a> 
								</div> 
							</div>
						
							<div class="io-panel-body">
                                <div class="col-4 col-36 left">
                                    <div class="col-left">
        								<div class="pad-20">
        									<table class="io-table-input vertical">
        	                                    <tbody>
        	                                    	<tr>
        	                                            <td class="label">Vacancy name</td>
                                                    </tr>
                                                    <tr>
        	                                            <td class="data">
        	                                               <form:input path="vacancyName" type="text" class="io-txt-normal" style="width: 198px;" autofocus="true"/>
        	                                            </td>
        	                                        </tr>
        	                                        
        	                                        <tr>
        	                                            <td class="label">Number</td>
                                                    </tr>
                                                    <tr>
        	                                            <td class="data">
        	                                              <form:input path="number" tfype="text" class="io-txt-normal" style="width: 198px;" value="10"/>
        	                                            </td>
        	                                        </tr>
                                                    <tr>
                                                        <td class="label">Working location</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="data cbo-working-con">
                                                        <select id="cbo-working" class="editable-select" style="width: 173px;">
                                                    		<c:forEach items="${locations}" varStatus="item" >
                                                    			<option value="${locations[item.index].workingLocationId}">${lcations[item.index].workingLocationName}</option>
                                                    		</c:forEach>
                                                    	</select>
                                                        </td>
                                                    </tr>

        	                                        <tr>
        	                                            <td class="label">Division</td>
                                                    </tr>
                                                    <tr>
        	                                            <td class="data">
        	                                            <form:select path="division" id="cbo-division" class="editable-select" style="width: 173px;">
                                                    		<form:options items="${divisions}" itemValue="divisionId" itemLabel="divisionName"/>
                                                    	</form:select>
        	                                            </td>
        	                                        </tr>
        	                                        
        	                                        <tr>
        	                                            <td class="label">Manager request</td>
                                                    </tr>
                                                    <tr>
                                                    <td class="data">
                                                    	<form:select path="manager" id="cbo-manager-request" class="editable-select" style="width: 173px;">
                                                    		<form:options items="${managers}" itemValue="managerId" itemLabel="managerName"/>
                                                    	</form:select>
                                                    	</td>
        	                                        </tr>
        	                                        <tr>
        	                                        	<td class="label">Start date</td>
                                                    </tr>
                                                    <tr>
        	                                        	<td class="data">
        	                                              <input type="text" class="io-date-normal" id="start-date" style="width: 178px;"/>
        	                                            </td>
        	                                        </tr>
        	                                        <tr>
        	                                        	<td class="label">End date</td>
                                                    </tr>
                                                    <tr>
        	                                        	<td class="data">
        	                                              <input type="text" class="io-date-normal" id="end-date" style="width: 178px;"/>
        	                                            </td>
        	                                        </tr>
                                                    
                                                    <tr>
                                                        <td class="label">Status</td>
                                    </tr>
                                    <tr>
                                                        <td class="data">
                                                        <form:select path="status" items="${Status}" itemValue="statusId" itemLabel="statusName" id="cbo-vacancy-status" class="editable-select" style="width: 178px;">
                                                        </form:select>
                                                        </td>
                                                  </tr>
        	                                    </tbody>
        	                                </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-8 col-64 right">
                                    <div class="col-right">
                                    
                                        <div class="pad-20">
                                            <table class="io-table-input vertical">
                                                <tbody>
                                                    <tr>
                                                        <td class="label">Position</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="data">
                                                        <form:select path="position" items="${positions}" itemValue="positionId" itemLabel="positionName" id="cbo-position" class="editable-select">
                                                        </form:select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="label">Year of Experience</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="data">
                                                           <input type="text" class="io-txt-normal" placeholder="Ex: 3y 6m" style="width: 178px;"/>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="label">Skill</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="data">
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
                                                            <div class="row">
                                                              <span class="col"><select id="cbo-skill-2" class="editable-select">
                                                                                                                  <option value="CSS">CSS</option>
                                                                                                                </select></span>
                                                              <span class="col"><select id="cbo-skill-level-2" class="editable-select">
                                                                                                                  <option value="Expert">Expert</option>
                                                                                                                </select></span>
                                                              
                                                              <span class="ico-20 add-row"></span>
                                                              <span class="ico-20 remove-row"></span>
                                                            </div>
                                                          </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="label">Language</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="data">
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
                                                        <td class="label">Description</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="data"><textarea class="io-ta-normal">- Having a creative thinking
- Strong word Ethic
- Time management ability
- Working well in pressure</textarea>
                                                        </td>
                                                    </tr>
                                                    
                                                    
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="io-clear"></div>
							</div>
						</div>
					</div> 
                </div>
            </div><!-- end io-col-main -->
        </div><!-- end io-wrapper -->
        </form:form>
	</body>
</html>