package com.example.pharmacyinven.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.pharmacyinven.mapper.MemberMapper;
import com.example.pharmacyinven.model.MemberVO;

@RestController
public class MemberController {
	@Autowired
	private MemberMapper membermapper;
    private MemberVO vo;

    public MemberController(MemberMapper membermapper) {
        this.membermapper = membermapper;
    }

    @PutMapping("/member/register")
    public void registerMember(@RequestParam("id") String id,
    		@RequestParam("pw") String pw,
    		@RequestParam("name") String name,
    		@RequestParam("phone") String phone) {
    	membermapper.registerMember(id, pw, name, phone);
    }

    @GetMapping("/member/loginform")
    public void login(@RequestParam("id") String id,
                      @RequestParam("pw") String pw) {
        vo = membermapper.login(id, pw);
        if (!vo.equals(null)) {
            System.out.println(vo);
        } else {
        	System.out.println("로그인 실패");
            //throw new UsernameNotFoundException("User not found with id: " + id);
        }

        // 추후 구현 -> 홈화면 또눈 더움 화면으로
    }
}
