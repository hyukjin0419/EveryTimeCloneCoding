package com.example.controller.request;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class BookSaleRequest {
    private String bookTitle;
    private String bookAuthor;
    private String bookPublisher;
    private String phoneNumber;
    private String regularPrice;
    private String salePrice;
    //string으로 받는 라디오버튼
}
