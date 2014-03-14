<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<script>
$(function() {
	$('#cbo-position-status').editableSelect({
		bg_iframe: true,
		width : 178,
		onSelect : function(list_item) {
		}
	});

	$('#cbo-position-status').removeAttr('name');
});
</script>
</head>

<body>
<form:form id="createPosition" method="POST" action="/rms/position/create">
	<div class="io-main-content">
		<div class="pad-10">
			<div class="io-panel panel-search-candidate">
				<div class="io-panel-header">
					<h3 class="txtTitle-1">Create New Position</h3>
					<div class="lstBtnRight">
						<a href="javascript:createPosition.submit();" class="io-button-highlight medium">
						<span>SAVE</span></a>
						<a href="/rms/position/create" class="io-button-standard medium">
						<span>CANCEL</span></a>
					</div>
					<div style="clear: right;"></div>
				</div>
				<div class="io-panel-body">
					<div class="pad-20">						
							<table class="io-table-input vertical">
								<tr>
									<td class="label">Position name</td>
								</tr>
								<tr>
									<td class="data">
										<form:input path="positionName" class="io-txt-normal empty" style="width: 178px" type="text" autoforcus="true" />
									</td>
								</tr>
								<tr>
									<td class="label">Year of Experience</td>
								</tr>
								<tr>
									<td class="data">
										<form:input path="yearOfExperience" type="text" class="io-txt-normal" placeholder="Ex: 3y 6m" style="width: 178px;" />
									</td>
								</tr>
								<tr>
									<td class="label">Status</td>
								</tr>
								<tr>
									<td class="data">
										<form:select path="status" items="${statuses}" itemValue="statusId" itemLabel="statusName" id="cbo-position-status" class="editable-select"></form:select>
									</td>
								</tr>
								<script type="text/javascript">
							        var listMasterExist = new Array();
							        var typeSkill = 'Position_Skill';
							        var DEFAULT_SKILL_WIDTH = 178;
							        if (typeSkill == 'Candidate_Skill') {
							            DEFAULT_SKILL_WIDTH = 128;
							        }
							    </script>
								<tr>
									<td class="label">Skill</td>
								</tr>
								<tr>
									<td>
										<div class="io-editable-list">
											<div class="row">
            									<span class="col">
													<select class="editable-select skill-master" id="skillMaster_0_" name="skillMaster[0]">
														<option>Choose Master</option>
														<option>skill2</option>
														<option>skill3</option>
													</select>
            									</span>
           										<span class="col">    
	                								<select class="editable-select skill-level" id="skillLevel_0_" name="skillLevel[0]">
	                									<option>Choose Level</option>
	                									<option>level2</option>
	                									<option>level3</option>
													</select>
           										</span>
            									
            									<span id="btnAdd_0_" class="ico-20 add-row"></span>
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
										</div>
									</td>
								</tr>
								<tr>
									<td class="label">Description</td>
								</tr>
								<tr>
									<td class="data">
										<form:textarea path="description" class="io-ta-normal" style="width: 50%;"/>
									</td>
								</tr>
							</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</form:form>
</body>

</html>
