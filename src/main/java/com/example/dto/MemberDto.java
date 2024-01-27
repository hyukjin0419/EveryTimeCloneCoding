package com.example.dto;

import com.example.form.JoinForm;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MemberDto {
    private String name;

    private String id;

    private String password;

    private String checkPassword;

    public static MemberDto to(JoinForm form){
        return MemberDto.builder()
                .name(form.getName())
                .id(form.getId())
                .password(form.getPassword())
                .checkPassword(form.getPasswordCheck())
                .build();
    }
}
