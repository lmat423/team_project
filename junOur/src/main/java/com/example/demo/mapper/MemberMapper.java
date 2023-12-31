package com.example.demo.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.vo.MemberVo;

@Mapper
public interface MemberMapper {
    public int useridCheck(MemberVo mvo);
    public void memberOk(MemberVo mvo);
    public String loginOk(MemberVo mvo);
    public MemberVo getMemberByUserId(String userid);
    public String samePnum(String pnum);
    public String chkPnum(String pnum);
    public String getUserid(String pnum);
    public String chkUserid(String userid);
    public String PnUchk(String userid);

}
