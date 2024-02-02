package com.example.domain;

import com.example.controller.request.BookSaleRequest;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "book_sale_post")
@Setter
@NoArgsConstructor
@Getter
public class BookSalePost {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "book_title", columnDefinition = "varchar(20)", nullable = false)
    private String bookTitle;

    @Column(name = "book_author", columnDefinition = "varchar(20)", nullable = false)
    private String bookAuthor;

    @Column(name = "book_publisher", columnDefinition = "varchar(20)", nullable = false)
    private String bookPublisher;

    @Column(name = "book_image", columnDefinition = "varchar(20)", nullable = true)
    private String bookImage;

    @Column(name = "phone_number", columnDefinition = "varchar(20)", nullable = false)
    private String phoneNumber;

    @Column(name = "regular_price", columnDefinition = "varchar(20)", nullable = false)
    private String regularPrice;

    @Column(name = "sale_price", columnDefinition = "varchar(20)", nullable = false)
    private String salePrice;

    @CreationTimestamp
    @Column(name = "created_date", columnDefinition = "TIMESTAMP")
    private LocalDateTime createdDate;

    @UpdateTimestamp
    @Column(name = "last_modified_date", columnDefinition = "TIMESTAMP")
    private LocalDateTime lastModifiedDate;

    public static BookSalePost from(BookSaleRequest bookSaleRequest) {
        BookSalePost bookSalePost = new BookSalePost();
        bookSalePost.setBookTitle(bookSaleRequest.getBookTitle());
        bookSalePost.setBookAuthor(bookSaleRequest.getBookAuthor());
        bookSalePost.setBookPublisher(bookSaleRequest.getBookPublisher());
        bookSalePost.setPhoneNumber(bookSaleRequest.getPhoneNumber());
        bookSalePost.setRegularPrice(bookSaleRequest.getRegularPrice());
        bookSalePost.setSalePrice(bookSaleRequest.getSalePrice());
        return bookSalePost;
    }
}
