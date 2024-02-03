package com.example.controller.response;

import com.example.domain.BookSalePost;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class BookSalePostResponse {
    private Long id;
    private String bookTitle;
    private String bookAuthor;
    private String bookPublisher;
    private String regularPrice;
    private String salePrice;
    private String phoneNumber;
    private String bookImageURL; //힌트: URL로 바꿔야합니다.

    public static BookSalePostResponse from(BookSalePost bookSalePost) {
        BookSalePostResponse bookSalePostResponse = new BookSalePostResponse();
        bookSalePostResponse.setId(bookSalePost.getId());
        bookSalePostResponse.setBookTitle(bookSalePost.getBookTitle());
        bookSalePostResponse.setBookAuthor(bookSalePost.getBookAuthor());
        bookSalePostResponse.setBookPublisher(bookSalePost.getBookPublisher());
        bookSalePostResponse.setRegularPrice(bookSalePost.getRegularPrice());
        bookSalePostResponse.setSalePrice(bookSalePost.getSalePrice());
        bookSalePostResponse.setPhoneNumber(bookSalePost.getPhoneNumber());
        //여기에 URL로 바꾸는 세팅이 필요합니다.
        return bookSalePostResponse;
    }
}
