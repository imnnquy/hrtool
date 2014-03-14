package com.gcs.rms.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gcs.rms.pojo.Division;
import com.gcs.rms.service.report.ReportService;

/**
 * 
 * @author quynn.
 * 
 */
@Controller
public class ReportController {
    @Autowired
    private ReportService reportService;

    @RequestMapping(value = "/report", method = RequestMethod.GET)
    public final String searchReport() {

        @SuppressWarnings("unused") List<Division> list = reportService.getDivisions();
        return "report/report";
    }
}
