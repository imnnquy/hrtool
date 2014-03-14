/**
 * 
 */
package com.gcs.rms.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gcs.rms.dto.SkillDTO;
import com.gcs.rms.pojo.Division;
import com.gcs.rms.pojo.Manager;
import com.gcs.rms.pojo.Vacancy;
import com.gcs.rms.service.common.CommonService;
import com.gcs.rms.service.vacancy.VacancyService;

/**
 * @author longhp
 * 
 */
@Controller
@RequestMapping("vacancy")
public class VacancyController {

    private List<Division> divisions;

    private List<Manager> managers;

    @Autowired
    private VacancyService service;

    @Autowired
    private CommonService commonService;

    @RequestMapping("/{id}")
    public String getVacancyById(ModelMap map, @PathVariable("id") int id) {
        map.addAttribute("vacancy", service.getVacancyById(id));
        return "vacancy/05_vacancy_detail_tab1_summary";
    }

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String createVacancy(ModelMap modelMap) {

        modelMap.addAttribute("vacancy", new Vacancy());
        return "vacancy/07_create_vacancy";
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    public String createVacancy(@ModelAttribute("vacancy") Vacancy vacancy, BindingResult result, ModelMap modelMap,
            @RequestParam("division") String divisionName, @RequestParam("manager") String managerName,
            @RequestParam("status") String statusName) {
        for (Division ite : divisions) {
            if (ite.getDivisionName().equals(divisionName)) {
                vacancy.setDivision(ite);
                break;
            }
        }
        for (Manager ite : managers) {
            if (ite.getManagerName().equals(managerName)) {
                vacancy.setManager(ite);
                break;
            }
        }

        int id;
        try {
            id = service.createVacancy(vacancy);
            return "redirect:/vacancy/" + id;
        } catch (Exception e) {
            // error occur during create a new vacancy
            modelMap.addAttribute("error", e.getLocalizedMessage());
            e.printStackTrace();

            return "vacancy/07_create_vacancy";
        }
    }

    @ModelAttribute("divisions")
    private List<Division> getAllDivisions() {
        divisions = service.getAllDivisions();
        return divisions;
    }

    @ModelAttribute("managers")
    private List<Manager> getAllManagers() {
        managers = service.getAllManagers();
        return managers;
    }

    @RequestMapping(value = "/jsSkillMaster", method = RequestMethod.POST)
    @ResponseBody
    public List<SkillDTO> getJsonSkill() {
        return commonService.getSkillMaster();
    }

    @RequestMapping(value = "/jsSkillLevel", method = RequestMethod.GET)
    @ResponseBody
    private List<SkillDTO> getJsonSkillLevel() {
        return commonService.getSkillLevel();
    }
}
