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
    @GetMapping("/view")
    public String view() {
        return "view";
    }
    @GetMapping("/book")
    public String book() {
        return "book";
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