   <script type="text/javascript">
        //Get all new skill masters that can be add to object
        function getNewListSkillMaster(curSkillMaster, oldSkillMaster) {
            $.ajax({
                type: "GET",
                url: '/gcshr/rtool/Reference/GetMasterSameCategory',
                data: { skillMasterName: curSkillMaster },
                datatype: "json",
                success: function (result) {
                    for (i = 0; i < result.length; i++) {
                        for (j = 0; j < listMasterExist.length; j++) {
                            if (result[i] == listMasterExist[j].Skill_Master_Name ||
                        result[i] == curSkillMaster) { //Incase the new skill master that existed in the skill list
                                result.splice(i, 1);
                                i--;
                            }
                        }
                    }
                    result.splice(0, 0, oldSkillMaster);
                    return result;
                }
            });
        }

        //Action when user choose skill master in the dropdownlist
        function selectSkillMaster(control, list_item) {
            var skillMaster = list_item.html(); //Get the current skill master
            var oldValue = control.old_value;
            //Incase user doesn't choose new skill master
            if (oldValue == skillMaster) {
                return;
            }
            /*if (skillMaster == oldValue || skillMaster == '') {
            control.text.val(oldValue);
            return;
            }*/
            var level = control.select.parent().next().children('.editable-select:first'); //Get the dropdown list of the level next to the skill master
            var instances = level.editableSelectInstances();
            var categoryParent = instances[0].select.parent().parent().parent();
            $.ajax({
                type: "GET",
                url: '/gcshr/rtool/Reference/GetSkillLevel',
                data: { skillMasterName: skillMaster },
                datatype: "json",
                success: function (result) {
                    instances[0].delOption(); //Clear all old 
                    instances[0].text.val(DEFAULT_CHOOSE_LEVEL);
                    for (i = 0; i < result.length; i++) {
                        instances[0].addOption(result[i]);
                    }
                    updateListSkillMaster(skillMaster, oldValue, categoryParent);
                }
            });
        }

        //Action when user choose skill level in the dropdownlist
        function selectSkillLevel(control, list_item) {
            var curRow = control.select.parent('.col').parent('.row');

            var curSkillMasterSelect = curRow.children('.col:first').children('select');
            var curSkillMasterInput = curSkillMasterSelect.next();
            var curSkillMaster = curSkillMasterInput.val(); //Get the skill master of this skill

            var curSkillLevelSelect = curRow.children('.col:last').children('select');
            var curSkillLevelInput = curSkillLevelSelect.next();
            var curSkillLevel = list_item.html();   //Get skill level of this skill
            if (curSkillLevel == DEFAULT_CHOOSE_LEVEL) {
                return;
            }
            var curBtnAdd = curRow.children('.add-row');

            var curSkillID = 0; //Return Skill ID that match two above properties
            var inputSkillID = curRow.children('input'); //Get the input that contains the skill ID

            $.ajax({
                type: "GET",
                url: '/gcshr/rtool/Reference/GetSkillID',
                data: { skillMasterName: curSkillMaster, skillLevelName: curSkillLevel },
                success: function (result) {
                    curSkillID = result;
                    countSkill = listMasterExist.length - 1;
                    if (curSkillID > 0) {

                        if ($(inputSkillID).attr('id') == typeSkill + '_null') {
                            $(curSkillMasterSelect).attr('name', 'skillMaster[' + countSkill + ']');
                            $(curSkillMasterSelect).attr('id', 'skillMaster_' + countSkill + '__hidden_select');
                            $(curSkillMasterInput).attr('name', 'skillMaster[' + countSkill + ']');
                            $(curSkillMasterInput).attr('id', 'skillMaster_' + countSkill + '_');

                            $(curSkillLevelSelect).attr('name', 'skillLevel[' + countSkill + ']');
                            $(curSkillLevelSelect).attr('id', 'skillLevel_' + countSkill + '__hidden_select');
                            $(curSkillLevelInput).attr('name', 'skillLevel[' + countSkill + ']');
                            $(curSkillLevelInput).attr('id', 'skillLevel_' + countSkill + '_');

                            $(inputSkillID).attr('id', typeSkill + '_' + countSkill + '__Skill_ID');
                            $(inputSkillID).attr('name', typeSkill + '[' + countSkill + '].Skill_ID');

                            $(curBtnAdd).attr('id', 'btnAdd_' + countSkill + '_');
                        }
                        $(inputSkillID).val(curSkillID);
                        countSkill++;
                    } else {
                        alert("Can't not find the skill " + curSkillMaster +
                        " that has level is " + curSkillLevel)
                    }
                }
            });
        }

        //Update all skill master dropdown list in the same category
        function updateListSkillMaster(curSkillMaster, oldSkillMaster, categoryParent) {
            //Get all new skill masters that can be add to object
            $.ajax({
                type: "GET",
                url: '/gcshr/rtool/Reference/GetMasterSameCategory',
                data: { skillMasterName: curSkillMaster },
                datatype: "json",
                success: function (result) {
                    listMasterExist.splice(0, 0, curSkillMaster);
                    for (i = 0; i < result.length; i++) {
                        for (j = 0; j < listMasterExist.length; j++) {
                            if (result[i] == listMasterExist[j] ||
                        result[i] == curSkillMaster ||
                        result[i] == oldSkillMaster) { //Incase the new skill master that existed in the skill list
                                result.splice(i, 1);
                                i--;
                            }
                            if (listMasterExist[j] == oldSkillMaster) {
                                listMasterExist.splice(j, 1);
                                j--;
                            }
                        }
                    }

                    //Add the old skill master of the current skill to other when it isn't  default value
                    if (oldSkillMaster != DEFAULT_CHOOSE_MASTER && oldSkillMaster != '') {
                        result.splice(0, 0, oldSkillMaster);
                    }

                    var skillRows = $(categoryParent).children('.row');

                    //Update all skill master dropdown list in the same category
                    for (i = 0; i < skillRows.length; i++) {
                        var inputSelect = $(skillRows[i]).children('.col:first').children('.editable-select:first');
                        var instances = inputSelect.editableSelectInstances();
                        result.splice(0, 0, instances[0].text.val());
                        instances[0].delOption(); //Clear all old

                        for (j = 0; j < result.length; j++) {
                            instances[0].addOption(result[j]);
                        }
                        result.splice(0, 1);
                    }
                }
            });
        }
        $(function () {
            $('#cbo-position-status').editableSelect({
                bg_iframe: true,
                width: 178,
                onSelect: function (list_item) { }
            });
            //Display Pop-up Cancle


            $('#button-cancel').click(function () {
                $('#popup-cancel-create').dialog('open');
                return false;
            });
            $("#popup-cancel-create").dialog({
                autoOpen: false,
                modal: true,
                buttons: {
                    "Yes": function () {
                        //history.back();
                        callbackForCancel();
                        //                        $("#popup-cancel-create").dialog("close");
                    },
                    "No": function () {
                        $("#popup-cancel-create").dialog("close");
                    }
                }
            });
        });

        //Call when click the cancel button and have comfirmed
        function callbackForCancel() {
            window.location = '/gcshr/rtool/Position/Search';
        }
    </script>