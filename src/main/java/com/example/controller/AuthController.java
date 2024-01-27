package com.example.controller;

import com.example.dto.MemberDto;
import com.example.form.JoinForm;
import com.example.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@RequiredArgsConstructor
@Controller
public class AuthController {

    private final MemberService memberService;

    @GetMapping("/join")
    public String join() {
        return "join";
    }

    @PostMapping("/join")
    public String joinPost(JoinForm form) {
        System.out.println("id = " + form.getId());
        MemberDto memberDto = MemberDto.to(form);
        memberService.join(memberDto);
        return "redirect:/";
    }
}
