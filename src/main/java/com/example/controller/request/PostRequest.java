package com.example.controller.request;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PostRequest {
    private String title;
    private String content;
    private Boolean isAnonymous;
}
