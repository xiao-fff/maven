package com.agri.shop.entity;
import java.util.Date;

public class Member {
    private Integer memberId;
    private String membername;
    private String password;
    private String realName;
    private String phone;
    private String email;
    private String address;
    private Date createTime;
    private String memberLevel;

    public Member() {}

    // Getter & Setter 全部统一命名
    public Integer getMemberId() { return memberId; }
    public void setMemberId(Integer memberId) { this.memberId = memberId; }

    public String getMembername() { return membername; }
    public void setMembername(String membername) { this.membername = membername; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getRealName() { return realName; }
    public void setRealName(String realName) { this.realName = realName; }

    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }

    public Date getCreateTime() { return createTime; }
    public void setCreateTime(Date createTime) { this.createTime = createTime; }

    public String getMemberLevel() { return memberLevel; }
    public void setMemberLevel(String memberLevel) { this.memberLevel = memberLevel; }
}