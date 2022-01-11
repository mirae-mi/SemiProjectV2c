package mirae.spring4.mvc.dao;

import mirae.spring4.mvc.vo.MemberVO;
import mirae.spring4.mvc.vo.ZipcodeVO;
import org.springframework.stereotype.Repository;

import java.util.List;

public interface MemberDAO {

    int selectOneUserid(String uid);

    List<ZipcodeVO> selectZipcode(String dong);

    int insertMember(MemberVO mvo);

    int selectOneUserid(MemberVO mvo);
}
