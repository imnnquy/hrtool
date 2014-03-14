/**
 * 
 */
package com.gcs.rms.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gcs.rms.dto.SkillDTO;
import com.gcs.rms.pojo.Position;
import com.gcs.rms.pojo.Status;
import com.gcs.rms.service.common.CommonService;
import com.gcs.rms.service.position.PositionService;

/**
 * @author hoatn
 * 
 */
@Controller
@RequestMapping("/position")
public class PositionController {

    private List<Status> statuses;

    @Autowired
    private CommonService commonService;

    @Autowired
    private PositionService positionService;

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public ModelAndView createPosition(
            @ModelAttribute("command") Position position, BindingResult result) {
        return new ModelAndView("position/create_position");
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public ModelAndView createPosition(
            @ModelAttribute("command") Position position, BindingResult result,
            @RequestParam("status") String statusId) {
        Status status = new Status();
        status.setStatusId(Integer.parseInt(statusId));
        position.setStatus(status);
        positionService.createPosition(position);
        return new ModelAndView("index");
    }

    @RequestMapping(value = "/getMasterSameCategory", method = RequestMethod.GET)
    @ResponseBody
    public List<SkillDTO> getJsonSkill() {
        return commonService.getSkillMaster();
    }

    @ModelAttribute("statuses")
    public List<Status> getAllStatus() {
        statuses = positionService.getAllStatus();
        return statuses;
    }
}
