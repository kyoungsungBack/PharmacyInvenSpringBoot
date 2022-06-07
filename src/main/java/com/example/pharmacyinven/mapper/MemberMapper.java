package com.example.pharmacyinven.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.pharmacyinven.model.MemberVO;

@Mapper
public interface MemberMapper {
	//@Insert("INSERT INTO users VALUES (#{id}, #{pw}, #{name}, #{phone})")
	void registerMember(@Param("id") String id, 
			@Param("pw") String pw, 
			@Param("name") String name,
			@Param("phone") String phone);

	//@Select("SELECT * FROM users WHERE id=#{id} AND pw=#{pw}")
	MemberVO login(@Param("id") String id, 
			@Param("pw") String pw);

}
