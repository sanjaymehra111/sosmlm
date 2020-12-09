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

    @GetMapping("AdminAnnouncement")
    public String AdminAnnouncement() {
        return "admin/AdminAnnouncement";
    }

    @GetMapping("AdminManageLocation")
    public String AdminManageLocation() {
        return "admin/AdminManageLocation";
    }

    @GetMapping("AdminManageBanner")
    public String AdminManageBanner() {
        return "admin/AdminManageBanner";
    }

    @GetMapping("AdminManageAdvertisement")
    public String AdminManageAdvertisement() {
        return "admin/AdminManageAdvertisement";
    }

    @GetMapping("AdminJoinMember")
    public String AdminJoinMember() {
        return "admin/AdminJoinMember";
    }

    @GetMapping("AdminViewProfile")
    public String AdminViewProfile() {
        return "admin/AdminViewProfile";
    }

    @GetMapping("AdminEditProfile")
    public String AdminEditProfile() {
        return "admin/AdminEditProfile";
    }

    @GetMapping("AdminWelcomeLetter")
    public String AdminWelcomeLetter() {
        return "admin/AdminWelcomeLetter";
    }
    
    @GetMapping("AdminViewNetwork")
    public String AdminViewNetwork() {
        return "admin/AdminViewNetwork";
    }

    @GetMapping("AdminViewMatrix")
    public String AdminViewMatrix() {
        return "admin/AdminViewMatrix";
    }

    @GetMapping("AdminViewSponsor")
    public String AdminViewSponsor() {
        return "admin/AdminViewSponsor";
    }

}
