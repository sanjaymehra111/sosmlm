package com.sosmlm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String HomePage() {
        return "Hello World here";
    }

    @GetMapping("AdminLogin")
    public String AdminLogin() {
        return "admin/AdminLogin";
    }

    @GetMapping("AdminDashboard")
    public String AdminDashboard() {
        return "admin/AdminDashboard";
    }

    @GetMapping("AdminProfile")
    public String AdminProfile() {
        return "admin/AdminProfile";
    }

    @GetMapping("AdminChangePassword")
    public String AdminChangePassword() {
        return "admin/AdminChangePassword";
    }


}
