package mirae.spring4.mvc.dao;

import mirae.spring4.mvc.vo.BoardVO;

import java.util.List;

public interface BoardDAO {
    List<BoardVO> selectBoard();
}
