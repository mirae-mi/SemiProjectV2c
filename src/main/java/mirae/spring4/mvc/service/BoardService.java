package mirae.spring4.mvc.service;

import mirae.spring4.mvc.vo.BoardVO;

import java.util.List;

public interface BoardService {
    List<BoardVO> readBoard();
}
