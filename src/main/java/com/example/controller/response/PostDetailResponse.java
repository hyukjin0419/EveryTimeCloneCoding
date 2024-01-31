package com.example.controller.response;

import com.example.domain.Post;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class PostDetailResponse {
    private Long id;
    private String title;
    private String content;
    private Boolean isAnonymous;

    public static PostDetailResponse from(Post post) {
        PostDetailResponse postDetailResponse = new PostDetailResponse();
        postDetailResponse.setId(post.getId());
        postDetailResponse.setTitle(post.getTitle());
        postDetailResponse.setContent(post.getContent());
        postDetailResponse.setIsAnonymous(post.getIsAnonymous());
        return postDetailResponse;
    }
}
