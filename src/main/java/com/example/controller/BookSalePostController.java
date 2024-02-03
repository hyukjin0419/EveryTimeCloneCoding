package com.example.controller;

import com.example.controller.request.BookSaleRequest;
import com.example.controller.response.BookSalePostHomeResponse;
import com.example.controller.response.BookSalePostResponse;
import com.example.service.BookSalePostService;
import com.example.service.S3Service;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class BookSalePostController {

    private final BookSalePostService bookSalePostService;
    private final S3Service s3Service;

    @GetMapping("/add_book")
    public String addBookSalePost(){
        return "add_book";
    }

    @PostMapping("/add_book")
    public String addBookSalePostPost(@RequestParam("image") MultipartFile image, BookSaleRequest bookSaleRequest) throws IOException {
        String imagePath=s3Service.upload(image, "example");
        bookSalePostService.addBookSalePost(bookSaleRequest, imagePath);
        BookSalePostResponse bookSalePostResponse = new BookSalePostResponse();
        bookSalePostResponse.setBookImageURL(s3Service.getImageUrl(imagePath));
        return "redirect:/books";
    }
    @GetMapping("/books")
    public String bookSalePostList(Model model){
        List<BookSalePostHomeResponse> bookSalePostHomeResponseList= bookSalePostService.getBookSalePostList();
        model.addAttribute("books", bookSalePostHomeResponseList);
        return "book";
    }

    @GetMapping("/books/{id}")
    public String bookSalePostDetail(@PathVariable("id") Long id, Model model){
        model.addAttribute("book", bookSalePostService.getBook(id));
        return "view";
    }
}
