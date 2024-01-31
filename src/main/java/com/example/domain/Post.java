package com.example.domain;

import com.example.controller.request.PostRequest;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Setter
@NoArgsConstructor
@Getter
public class Post {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name="title", columnDefinition = "varchar(20)", nullable = false)
    private String title;
    @Column(name="content", columnDefinition = "text", nullable = false)
    private String content;
    @Column(name="is_anonymous", columnDefinition = "boolean", nullable = false)
    private Boolean isAnonymous;
    @CreationTimestamp
    @Column(name = "created_date", columnDefinition = "TIMESTAMP")
    private LocalDateTime createdDate;
    @UpdateTimestamp
    @Column(name = "last_modified_date", columnDefinition = "TIMESTAMP")
    private LocalDateTime lastModifiedDate;

    public static Post from(PostRequest postRequest) {
        Post post = new Post();
        post.setTitle(postRequest.getTitle());
        post.setContent(postRequest.getContent());
        post.setIsAnonymous(postRequest.getIsAnonymous());
        return post;
    }
}
