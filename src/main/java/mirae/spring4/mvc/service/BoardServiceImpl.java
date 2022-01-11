package mirae.spring4.mvc.service;

import mirae.spring4.mvc.dao.BoardDAO;
import mirae.spring4.mvc.vo.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("bsrv")
public class BoardServiceImpl implements BoardService{
    @Autowired private BoardDAO bdao;

    @Override
    public List<BoardVO> readBoard() {
        return bdao.selectBoard();
    }
}
