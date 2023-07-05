package egovframework.let.member.service.impl;

import egovframework.com.cmm.LoginVO;
import egovframework.let.join.service.JoinVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("loginMapper")
public interface MemberMapper {
	
	//일반로그인을 처리한다
	public LoginVO actionLogin(LoginVO vo) throws Exception;
}
