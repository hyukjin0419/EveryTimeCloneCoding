package com.example.domain;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "book_sale_post")
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
}
