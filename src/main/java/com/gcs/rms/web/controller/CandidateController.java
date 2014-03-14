package com.gcs.rms.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gcs.rms.service.candidate.CandidateServiceImpl;

@Controller
@RequestMapping(value = "candidate")
public class CandidateController {
    // @Autowired
    private CandidateServiceImpl candidateService;

    @RequestMapping(value = "/createCandidate", method = RequestMethod.POST)
    public String show(ModelMap map) {
        // map.addAttribute("demo", "hello");
        return "candidate/demo";
    }
}
