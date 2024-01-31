package com.example.controller;


import com.example.controller.request.PostRequest;
import com.example.controller.response.PostDetailResponse;
import com.example.service.PostService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class PostController {

    private final PostService postService;

    @PostMapping("/posts")
    public String addPost(PostRequest postRequest){
        postService.addPost(postRequest);
        return "redirect:/";
    }

    @GetMapping("/posts/{id}")
    public String detail(@PathVariable("id") Long id, Model model){
        PostDetailResponse postDetailResponse = postService.getPost(id);
        model.addAttribute("post", postDetailResponse);
        return "detail";
    }
}
