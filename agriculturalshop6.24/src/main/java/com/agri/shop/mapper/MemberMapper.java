package com.agri.shop.mapper;
import com.agri.shop.entity.Member;

public interface MemberMapper {
    // 根据会员账号查询
    Member selectByMembername(String membername);
    // 新增会员
    int insertMember(Member member);
}