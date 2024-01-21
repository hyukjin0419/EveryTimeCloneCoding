package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    @GetMapping("/")
    public String index() {
        return "index";
    }

    @PostMapping("/form")
    public String form(@RequestParam String name, Model model) {
        model.addAttribute("name", name);

        return "index";
    }
    @GetMapping("/test")
    public String test() {
        return "view";
    }

    @GetMapping("/board")
    public String board() {
        return "board";
    }

    @GetMapping("/detail")
    public String detail(){
        return "detail";
    }
}