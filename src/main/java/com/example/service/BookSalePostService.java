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

    public void addBookSalePost(BookSaleRequest bookSaleRequest) {
        bookSalePostRepository.save(BookSalePost.from(bookSaleRequest));
    }

    public List<BookSalePostHomeResponse> getBookSalePostList() {
        List<BookSalePost> bookSalePostList= bookSalePostRepository.findAll();
        List<BookSalePostHomeResponse> bookSalePostHomeResponseList=new ArrayList<>();
        for(BookSalePost bookSalePost:bookSalePostList){
            bookSalePostHomeResponseList.add(BookSalePostHomeResponse.from(bookSalePost));
        }
        return bookSalePostHomeResponseList;
    }

    public BookSalePostResponse getBook(Long id) {
        BookSalePost bookSalePost = bookSalePostRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("해당 게시글이 없습니다. id=" + id));
        return BookSalePostResponse.from(bookSalePost);
    }
}
