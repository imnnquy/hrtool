//Default value
var DEFAULT_CHOOSE_MASTER = 'Choose Master';
var DEFAULT_CHOOSE_LEVEL = 'Choose Level';

//When click on the button "+" on the editable page
$(document).on('click', '.add-row', function () {
    var rowParent = $(this).parent();

    //There is no more skills to add
    if (rowParent.find('.col:first select option').length < 2) {
        $(this).css("display", "none");
        return;
    }

    //Incase user hasn't fill the current skill completely
    if (rowParent.children('input').val() == '') {
        return;
    }

    var categoryParent = $(rowParent).parent();
    var currentSkill = rowParent.clone();
    currentSkill.appendTo(categoryParent);
    var currentIndex = listMasterExist.length;
    currentSkill.children('.col').children('input').remove();
    var skillMaster = currentSkill.children('.col:first').children('select');
    var skillLevel = currentSkill.children('.col:last').children('select');
    var skillID = currentSkill.children('input');

    //Update skill master editable select
    $(skillMaster).attr('name', 'skillMaster[' + currentIndex + ']');
    $(skillMaster).attr('id', 'skillMaster_' + currentIndex + '_');
    $(skillMaster).attr('style', '');
    $(skillMaster).editableSelect({
        bg_iframe: true,
        width: DEFAULT_SKILL_WIDTH,
        onSelect: function (list_item) {
            selectSkillMaster(this, list_item);
        }
    });
    $(skillMaster).editableSelectInstances()[0].delCurrentSelected();
    $(skillMaster).editableSelectInstances()[0].addOption(DEFAULT_CHOOSE_MASTER, true);
    $(skillMaster).editableSelectInstances()[0].text.val(DEFAULT_CHOOSE_MASTER);

    //If there is only one skill, the Add Skill button will be invisible
    if ($(skillMaster).editableSelectInstances()[0].select.children('option').length <= 2) {
        currentSkill.find('.add-row').css('display', 'none');
    }

    //Update skill level editable select
    $(skillLevel).attr('name', 'skillLevel[' + currentIndex + ']');
    $(skillLevel).attr('id', 'skillLevel_' + currentIndex + '_');
    $(skillLevel).attr('style', '');
    $(skillLevel).editableSelect({
        bg_iframe: true,
        width: DEFAULT_SKILL_WIDTH,
        onSelect: function (list_item) {
            selectSkillLevel(this, list_item);
        }
    });
    $(skillLevel).editableSelectInstances()[0].delOption();
    $(skillLevel).editableSelectInstances()[0].old_value = '';
    $(skillLevel).editableSelectInstances()[0].current_value = '';
    $(skillLevel).editableSelectInstances()[0].text.val(DEFAULT_CHOOSE_LEVEL);

    //Update SkillID input hiden
    $(skillID).val('');
    $(skillID).attr('id', typeSkill + '_null');
    $(skillID).attr('name', typeSkill + '_null');

    //Update button add
    $(this).attr('id', 'btnAdd_' + currentIndex + '_');
    $(this).hide();
});

$(document).on('click', '.remove-row', function () {
    var lastIndex = listMasterExist.length - 1;

    //Get the current skill information
    var curRowOfSkill = $(this).parent();
    var curCategory = curRowOfSkill.parent();
    var skillRows = $(curCategory).children('.row');

    var curSkillMasterSelect = curRowOfSkill.children('.col:first').children('select');
    var curSkillMasterSelectID = $(curSkillMasterSelect).attr('id');
    var curSkillMasterSelectName = $(curSkillMasterSelect).attr('name');

    var curSkillMasterInput = curSkillMasterSelect.next();
    var curSkillMasterInputID = $(curSkillMasterInput).attr('id');
    var curSkillMasterInputName = $(curSkillMasterInput).attr('name');

    var curSkillLevelSelect = curRowOfSkill.children('.col:last').children('select');
    var curSkillLevelSelectID = $(curSkillLevelSelect).attr('id');
    var curSkillLevelSelectName = $(curSkillLevelSelect).attr('name');

    var curSkillLevelInput = curSkillLevelSelect.next();
    var curSkillLevelInputID = $(curSkillLevelInput).attr('id');
    var curSkillLevelInputName = $(curSkillLevelInput).attr('name');

    var curSkillID = curRowOfSkill.children('input');
    var curSkillIDID = $(curSkillID).attr('id');
    var curSkillIDName = $(curSkillID).attr('name');

    var curAddElement = curRowOfSkill.children('span').first();
    var curAddElementID = $(curAddElement).attr('id');

    var curSkillMaster = curSkillMasterSelect.find('option:selected').html();

    //Make sure that the last Add Skill button is show
    curCategory.find('.add-row').last().css('display', 'inline-block');

    //Remove skill master in listMasterExist
    for (i = 0; i < listMasterExist.length; i++) {
        if (listMasterExist[i] == curSkillMaster) {
            listMasterExist.splice(i, 1);
            break;
        }
    }

    //Update the index of the last skill item
    if ($('#' + 'skillMaster_' + lastIndex + '__hidden_select').attr('name') != curSkillMasterSelectID) {
        $('#' + 'skillMaster_' + lastIndex + '__hidden_select').attr('name', curSkillMasterSelectID);
        $('#' + 'skillMaster_' + lastIndex + '__hidden_select').attr('id', curSkillMasterSelectName);
        $('#' + 'skillMaster_' + lastIndex + '_').attr('name', curSkillMasterInputName);
        $('#' + 'skillMaster_' + lastIndex + '_').attr('id', curSkillMasterInputID);

        $('#' + 'skillLevel_' + lastIndex + '__hidden_select').attr('name', curSkillLevelSelectID);
        $('#' + 'skillLevel_' + lastIndex + '__hidden_select').attr('id', curSkillLevelSelectName);
        $('#' + 'skillLevel_' + lastIndex + '_').attr('name', curSkillLevelInputName);
        $('#' + 'skillLevel_' + lastIndex + '_').attr('id', curSkillLevelInputID);

        $('#' + typeSkill + '_' + lastIndex + '__Skill_ID').attr('name', curSkillIDName);
        $('#' + typeSkill + '_' + lastIndex + '__Skill_ID').attr('id', curSkillIDID);

        $('#btnAdd_' + lastIndex + '_').attr('id', curAddElementID);
    }

    //In case there is only one skill in current category
    if (skillRows.length < 2) {
        curSkillMasterInput.val(DEFAULT_CHOOSE_MASTER);
        curSkillLevelSelect.editableSelectInstances()[0].delOption();
        curSkillLevelInput.val(DEFAULT_CHOOSE_LEVEL);
        curSkillID.attr('id', typeSkill + '_null');
        curSkillID.attr('name', typeSkill + '_null');
        curSkillID.val('');
        return;
    }

    //Incase the current skill is the last skill of current category (has the add button)
    if ($(this).prev().css('display') == 'inline-block') {
        var prevSkill = curRowOfSkill.prev();
        if (prevSkill.is('script')) { //In case the ajax render problem, the prev element isn't the skill row, it's a script
            prevSkill = prevSkill.prev();
        }
        prevSkill.children('.add-row').css({ display: "inline-block" });
    }

    //Update all skill master dropdown list in the same category
    for (i = 0; i < skillRows.length; i++) {
        var inputSelect = $(skillRows[i]).children('.col:first').children('.editable-select:first');
        var instances = inputSelect.editableSelectInstances();

        instances[0].addOption(curSkillMaster);
    }

    curRowOfSkill.remove();
});

//Transform the classic combobox to the editable select
$(function () {
    var skillWidth = 178;
    if (typeSkill == 'Candidate_Skill') {
        skillWidth = 128;
    }
    $('.skill-master').editableSelect({
        bg_iframe: true,
        width: 178,
        onSelect: function (list_item) {
            selectSkillMaster(this, list_item);
        }
    });

    $('.skill-level').editableSelect({
        bg_iframe: true,
        width: 178,
        onSelect: function (list_item) {
            selectSkillLevel(this, list_item);
        }
    });
});

//Clear all skill
function clearAllSkill() {
    //Get all group of skill
    var skillCategory = $('.io-editable-list');

    for (i = 0; i < skillCategory.length; i++) {
        //Get all skill row
        var rows = $(skillCategory[i]).children('.row');

        //Reset first row
        var skillMasterSelect = $(rows[0]).children('.col:first').children('select');
        var skillMasterID = $(rows[0]).children('.col:first').children('input');

        //Update skill master
        var firstEditableSelectInstances = $(skillMasterSelect).editableSelectInstances()[0];

        if (firstEditableSelectInstances.select.children('option').first().html() != DEFAULT_CHOOSE_MASTER) {
            firstEditableSelectInstances.addOption(DEFAULT_CHOOSE_MASTER, true);
        }
        firstEditableSelectInstances.text.val(DEFAULT_CHOOSE_MASTER);

        $(skillMasterSelect).attr('name', 'skillMaster[0]');
        $(skillMasterSelect).attr('id', 'skillMaster_0_');
        $(skillMasterID).attr('name', 'skillMaster[0]');
        $(skillMasterID).attr('id', 'skillMaster_0_');

        //Update skill level editable select
        var skillLevelSelect = $(rows[0]).children('.col:last').children('select');
        var skillLevelInput = $(rows[0]).children('.col:last').children('input');

        $(skillLevelSelect).editableSelectInstances()[0].delOption();
        $(skillLevelSelect).editableSelectInstances()[0].old_value = '';
        $(skillLevelSelect).editableSelectInstances()[0].current_value = '';
        $(skillLevelSelect).editableSelectInstances()[0].text.val(DEFAULT_CHOOSE_LEVEL);

        $(skillLevelSelect).attr('name', 'skillLevel[0]');
        $(skillLevelSelect).attr('id', 'skillLevel_0_');
        $(skillLevelInput).attr('name', 'skillLevel[0]');
        $(skillLevelInput).attr('id', 'skillLevel_0_');

        //Update SkillID input hiden
        var skillID = $(rows[0]).children('input');
        $(skillID).val('');
        $(skillID).attr('id', typeSkill + '_null');
        $(skillID).attr('name', typeSkill + '_null');

        //Update add skill button
        $(rows[0]).find('.add-row').css('display', 'inline-block');
        $(rows[0]).find('.add-row').attr('id', 'btnAdd_0_');

        //Except the first row, remove all remain rows
        for (j = 1; j < rows.length; j++) {
            var currentSkillMaster = $(rows[j]).children('.col:first').children('input').val();
            firstEditableSelectInstances.addOption(currentSkillMaster);
            $(rows[j]).remove();
        }
    }
    listMasterExist = new Array();
}