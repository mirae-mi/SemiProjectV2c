package mirae.spring4.mvc.vo;

import lombok.*;

@Setter
@Getter
@NoArgsConstructor//디폴트 생성자
@AllArgsConstructor//모든 변수 들어간 생성자
//@ToString
//@Data             //위 다섯가지 속성을 모두 포함
public class BoardVO {
    private String bno;
    private String title;
    private String userid;
    private String regdate;
    private String thumbs;
    private String views;
    private String contents;
}
