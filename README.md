Entity 해설
```jsx
package com.example.domain;

import com.example.controller.request.CommentRequest;
import com.example.controller.request.PostRequest;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

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
    private Boolean isAnonymous = true;
    @CreationTimestamp
    @Column(name = "created_date", columnDefinition = "TIMESTAMP")
    private LocalDateTime createdDate;
    @UpdateTimestamp
    @Column(name = "last_modified_date", columnDefinition = "TIMESTAMP")
    private LocalDateTime lastModifiedDate;

    @OneToMany(mappedBy = "post", fetch = FetchType.EAGER)
    private List<Comment> commentList=new ArrayList<>();
    public static Post from(PostRequest postRequest) {
        Post post = new Post();
        post.setTitle(postRequest.getTitle());
        post.setContent(postRequest.getContent());

        // 명시적으로 isAnonymous 값을 설정하며, null일 경우 기본값인 false로 설정합니다.
        post.setIsAnonymous(postRequest.getIsAnonymous() != null ? postRequest.getIsAnonymous() : false);

        return post;
    }

    public Comment addComment(CommentRequest commentRequest) {
        Comment comment = new Comment();
        comment.setContent(commentRequest.getContent());
        comment.setIsAnonymous(commentRequest.getIsAnonymous());
        comment.setPost(this);
        return comment;
    }
}
```

1. Entity 어노테이션 및 클래스 선언

```jsx
@Entity
@Setter
@NoArgsConstructor
@Getter
public class Post {
    // 클래스 내용
}
```

- `@Setter, @NoArgsConstructor, @Getter:` Lombok 어노테이션으로 Getter, Setter, 기본생성자를 자동으로 생성한다.

1. 필드 정의

```jsx
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private Long id;

@Column(name="title", columnDefinition = "varchar(20)", nullable = false)
private String title;
@Column(name="content", columnDefinition = "text", nullable = false)
private String content;
@Column(name="is_anonymous", columnDefinition = "boolean", nullable = false)
private Boolean isAnonymous = true;
@CreationTimestamp
@Column(name = "created_date", columnDefinition = "TIMESTAMP")
private LocalDateTime createdDate;
@UpdateTimestamp
@Column(name = "last_modified_date", columnDefinition = "TIMESTAMP")
private LocalDateTime lastModifiedDate;
```

- `@Id:` 기본키를 나타낸다.
- `@GeneratedValue:` 기본키의 자동 생성 전략을 지정한다.
- `@Column:` 데이터베이스 컬럼에 대한 매핑 정보를 제공한다.

1. OneToMany 관계

```jsx
@OneToMany(mappedBy = "post", fetch = FetchType.EAGER)
private List<Comment> commentList=new ArrayList<>();
```

- `@OneToMany:` ’Post’ 엔티티가 여러 개의 ‘Comment’ 엔티티를 가질 수 있다.
- `mappedBy = post:` ’Comment’ 클래스에서 ‘post’ 필드에 의해 매핑된다는 것을 의미한다. 다시 말해, ‘Comment’ 엔티티에 있는 ‘post’ 필드로 연결된다.
- `fetch = FetchType.EAGER:` ’fetch’속성은 데이터를 어떻게 가져올지 설정한다. ‘FetchType.Eager’은 관련 엔티티를 즉시 로딩하라는 것을 의미한다. 즉, ‘Post’엔터티를 조회할 때 함게 연관된 모든 ‘Comment’엔터티도 가져오게 된다.

→ 이 부분을 통해 ‘Post’ 엔터티를 조회할 때 해당 ‘Post’에 대한 모든 댓글 (’Comment’)도 함께 가져오게 된다. EAGER 로딩은 한 번에 모든 데이터를 가져오기 때문에 성능상의 이슈가 발생할 수 있으므로 신중하게 사용하는 것이 중요하다. 만약 성능상의 문제가 있을 경우, `FetchType.Lazy` 를 통해 필요한 시점에 데이터를 가져오도록 설정할 수 있다.

3-1. ManyToOne 관계

```jsx
@ManyToOne(fetch = FetchType.EAGER)
@JoinColumn(name = "post_id", nullable = false)
private Post post;
```

- `@ManyToOne:` 여러개의 ‘Comment’ 엔티티 하나의 ‘Post’ 엔티티에 속한다는 것을 나타낸다.
- `@JoinColumn:`외래 키(Foreign Key)를 매핑하는 데 사용된다.
- `nullable = false:` 이 필드는 null이 될 수 없다는 것을 나타낸다. 다시 말해 ‘Commnet’는 항상 특정 ‘Post’에 속해야 한다.

→ 이 관계 설정을 통해 ‘Comment’ 엔티티는 특정 ‘Post’ 엔티티에 속하게 된다.

1. 정적 팩토리 메서드 (’from’ 메서드)

```jsx
public static Post from(PostRequest postRequest) {
    Post post = new Post();
    // 내용 생략
    return post;
}
```

- ‘form’ 메서드는 ‘PostRequest’ 객체를 받아 ‘Post’ 객체로 변환하는 정적 팩토리 메서드 이다.

1. 댓글 추가 메서드 (’addComment’ 메서드_

```jsx
gpublic Comment addComment(CommentRequest commentRequest) {
    Comment comment = new Comment();
    // 내용 생략
    return comment;
}
```

- addComment’메서드는 ‘CommentRequest’ 객체를 받아 새로운 객체를 생성하고, 이를 현재 ‘Post’ 객체에 추가한다.
