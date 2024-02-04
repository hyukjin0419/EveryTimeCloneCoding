package com.example.controller.response;

import com.example.domain.Post;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Setter
@Getter
public class PostDetailResponse {
    private Long id;
    private String title;
    private String content;
    private Boolean isAnonymous;
    private List<Comment> commentList;

    public static PostDetailResponse from(Post post) {
        PostDetailResponse postDetailResponse = new PostDetailResponse();
        postDetailResponse.setId(post.getId());
        postDetailResponse.setTitle(post.getTitle());
        postDetailResponse.setContent(post.getContent());
        postDetailResponse.setIsAnonymous(post.getIsAnonymous());
        postDetailResponse.setCommentList(Comment.CommentListFrom(post.getCommentList()));
        return postDetailResponse;
    }
    @Setter
    @Getter
    public static class Comment {
        private Long id;
        private String content;
        private int isAnonymous;

        public static Comment from(com.example.domain.Comment comment) {
            Comment commentResponse = new Comment();
            commentResponse.setId(comment.getId());
            commentResponse.setContent(comment.getContent());
            commentResponse.setIsAnonymous(comment.getIsAnonymous());
            return commentResponse;
        }
        public static List<Comment> CommentListFrom(List<com.example.domain.Comment> commentList) {
            List<Comment> commentResponseList = new ArrayList<>();
            for (com.example.domain.Comment comment : commentList) {
                commentResponseList.add(Comment.from(comment));
            }
            return commentResponseList;
        }
    }
}
