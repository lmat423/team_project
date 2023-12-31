package com.example.demo.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.example.demo.vo.ActionVo;
import com.example.demo.vo.AdminVo;
import com.example.demo.vo.ContentVo;
import com.example.demo.vo.FreeVo;
import com.example.demo.vo.GongjiVo;
import com.example.demo.vo.QuestVo;
import com.example.demo.vo.ReserveInfoVo;

public interface AdminService {
	public String contentadd();
	public String contentAddOk(HttpServletRequest request);
	public List<AdminVo> memberView();
	public String action_write();
	public String action_write_ok(HttpServletRequest request);
	public String action_list(Model model,HttpSession session);
	public String action_readnum(HttpServletRequest request, ActionVo avo);
	public String action_content(Model model, ActionVo avo,HttpSession session);
	public String action_delete(ActionVo avo);
	public String action_update(ActionVo avo,Model model);
	public String action_update_ok(HttpServletRequest request, ActionVo avo);
	public String gongjiAddOk(GongjiVo gvo);
	public boolean banMember(String userid);
	public String inquiry_list(Model model);
	public String answer(HttpServletRequest request,Model model);
	public List<ReserveInfoVo> contentCancel();
	boolean cancelMember(int reserve_id);	
	public String questOk(HttpServletRequest request,QuestVo qvo);
	
	public String adfree_list(Model model);
	public String adfree_content(Model model, FreeVo fvo, HttpServletRequest reqeust);
	public String readnum(FreeVo fvo, HttpServletRequest request);
	public String delete(FreeVo fvo, HttpServletRequest request);
	
	public String adgongji_list(Model model, HttpSession session);
	public String adgongjiadd();
	public String adgongjiadd_ok(GongjiVo gvo);
	public String adgongji_content(Model model, GongjiVo gvo);
	public String greadnum(GongjiVo gvo, HttpServletRequest request);
	public String gdelete(GongjiVo gvo);
	public String adgongji_update(GongjiVo gvo, Model model);
	public String adgongji_update_ok(HttpServletRequest request, GongjiVo gvo);
	public List<ContentVo> placeCancel();
	public boolean cancelplace(int no);
}
