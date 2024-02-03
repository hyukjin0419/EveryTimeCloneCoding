package com.example.service;

import com.example.controller.request.BookSaleRequest;
import com.example.controller.response.BookSalePostHomeResponse;
import com.example.controller.response.BookSalePostResponse;
import com.example.domain.BookSalePost;
import com.example.repository.BookSalePostRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class BookSalePostService {

    private final BookSalePostRepository bookSalePostRepository;
    private final S3Service s3Service;

    public void addBookSalePost(BookSaleRequest bookSaleRequest, String imagePath) {
        BookSalePost bookSalePost = BookSalePost.from(bookSaleRequest);
        bookSalePost.setBookImage(imagePath);
        bookSalePostRepository.save(bookSalePost);
    }

    public List<BookSalePostHomeResponse> getBookSalePostList() {
        List<BookSalePost> bookSalePostList= bookSalePostRepository.findAll();// Db로부터 엔티티의 리스트를 가져옴

        List<BookSalePostHomeResponse> bookSalePostHomeResponseList=new ArrayList<>();// 응답을 위한 리스트를 생성

        for(BookSalePost bookSalePost:bookSalePostList){ // 엔티티 리스트를 기반으로 응답을 위한 리스트에 하나씩 데이터를 추가
            bookSalePostHomeResponseList.add(BookSalePostHomeResponse.from(bookSalePost, s3Service.getImageUrl(bookSalePost.getBookImage())));
        }

        return bookSalePostHomeResponseList;
    }

    public BookSalePostResponse getBook(Long id) {
        BookSalePost bookSalePost = bookSalePostRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("해당 게시글이 없습니다. id=" + id));
        return BookSalePostResponse.from(bookSalePost, s3Service.getImageUrl(bookSalePost.getBookImage()));
    }
}
