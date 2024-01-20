package util;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class Gmail extends Authenticator{
	
	@Override
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication ("codingsalon4@gmail.com", "eljuwkgdcxbmcquz");
	}

	//elju wkgd cxbm cquz
}

/*
 * @Override protected PasswordAuthentication getPasswordAuthentication() { //
 * 외부에서 Gmail 계정 정보를 가져오도록 수정 String username =
 * getGmailUsernameFromExternalSource(); String password =
 * getGmailPasswordFromExternalSource(); return new
 * PasswordAuthentication(username, password); }
 * 
 * // 외부에서 Gmail 계정 정보를 가져오는 메서드 (예: 설정 파일, 환경 변수 등) private String
 * getGmailUsernameFromExternalSource() { // 외부에서 Gmail 계정의 사용자 이름을 가져오는 로직 추가
 * return "codingsalon4@gmail.com"; }
 * 
 * private String getGmailPasswordFromExternalSource() { // 외부에서 Gmail 계정의 비밀번호를
 * 가져오는 로직 추가 return "eljuwkgdcxbmcquz"; } }
 */