package com.example.service;

import com.example.domain.Member;
import com.example.dto.MemberDto;
import com.example.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional
public class MemberService {

    private final MemberRepository memberRepository;

    public void join(MemberDto memberDto) {
        Member member = Member.toMember(memberDto);
        memberRepository.save(member);
    }
}
