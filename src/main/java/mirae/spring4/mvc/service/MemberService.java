package mirae.spring4.mvc.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import mirae.spring4.mvc.vo.MemberVO;
import mirae.spring4.mvc.vo.ZipcodeVO;

public interface MemberService {

    int checkUserid(String uid);

    String findZipcode(String dong) throws JsonProcessingException;

    boolean newMember(MemberVO mvo);

    boolean loginMember(MemberVO mvo);
}
