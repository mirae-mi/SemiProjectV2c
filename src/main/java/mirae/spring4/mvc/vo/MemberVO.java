package mirae.spring4.mvc.vo;


public class MemberVO {
    private String userid;
    private String passwd;
    private String name;
    private String jumin1;
    private String jumin2;
    private String zipcode;
    private String addr;
    private String etcaddr;

    private String email;
    private String tel;
    private String regdate;

    public MemberVO() {
    }

    public MemberVO(String userid, String passwd, String name, String jumin1, String jumin2, String zipcode, String addr, String etcaddr, String email, String tel, String regdate) {
        this.userid = userid;
        this.passwd = passwd;
        this.name = name;
        this.jumin1 = jumin1;
        this.jumin2 = jumin2;
        this.zipcode = zipcode;
        this.addr = addr;
        this.etcaddr = etcaddr;
        this.email = email;
        this.tel = tel;
        this.regdate = regdate;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getJumin1() {
        return jumin1;
    }

    public void setJumin1(String jumin1) {
        this.jumin1 = jumin1;
    }

    public String getJumin2() {
        return jumin2;
    }

    public void setJumin2(String jumin2) {
        this.jumin2 = jumin2;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getEtcaddr() {
        return etcaddr;
    }

    public void setEtcaddr(String etcaddr) {
        this.etcaddr = etcaddr;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getRegdate() {
        return regdate;
    }

    public void setRegdate(String regdate) {
        this.regdate = regdate;
    }
}
