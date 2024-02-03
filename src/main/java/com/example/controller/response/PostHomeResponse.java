package com.example.controller.response;

import com.example.domain.Post;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class PostHomeResponse {


    private Long id;
    private String title;
    private String content;


    public static PostHomeResponse from(Post post) {
        PostHomeResponse postHomeResponse = new PostHomeResponse();
        postHomeResponse.setId(post.getId());
        postHomeResponse.setTitle(post.getTitle());
        postHomeResponse.setContent(post.getContent());
        return postHomeResponse;
    }
}
