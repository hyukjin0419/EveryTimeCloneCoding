package com.example.controller;


import com.example.controller.request.CommentRequest;
import com.example.controller.request.PostRequest;
import com.example.controller.response.PostDetailResponse;
import com.example.controller.response.PostHomeResponse;
import com.example.service.PostService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class PostController {

    private final PostService postService;
    @GetMapping("/boards")
    public String boardList(Model model){
        List<PostHomeResponse> postHomeResponseList = postService.getPostlist();
        model.addAttribute("posts",postHomeResponseList);
        return "board";
    }

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

    @PostMapping("/posts/{id}/comments")
    public String addComment(@PathVariable("id") Long id, CommentRequest commentRequest){
        postService.addComment(id, commentRequest);
        return "redirect:/posts/" + id;
    }
}
