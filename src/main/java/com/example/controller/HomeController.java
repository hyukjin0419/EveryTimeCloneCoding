package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String index() {
        return "redirect:/board";
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