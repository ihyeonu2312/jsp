package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mapper.MemberMapper;
import utils.MybatisInit;
import vo.Member;

public class MemberServiceImpl implements MemberService {
	@Override
	public int register(Member member) {
		try (SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession(true)) {
			MemberMapper mapper = session.getMapper(MemberMapper.class);
			return mapper.insert(member);
		}
	}

	@Override
	public Member findBy(String id) {
		try (SqlSession session = MybatisInit.getInstance().sqlSessionFactory().openSession()) {
			MemberMapper mapper = session.getMapper(MemberMapper.class);
			return mapper.selectOne(id);
		}
	}

	@Override
	public boolean login(String id, String pw) {
		Member m = findBy(id);
		return m != null && m.getPw().equals(pw);
	}

	@Override
	public List<Member> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean remove(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean modify(Member member) {
		// TODO Auto-generated method stub
		return false;
	}
	
//	public static void main(String[] args) {
//		new MemberServiceImpl().register(Member.builder().id("aaaaaa").pw("12").name("가가가").build());
//	}

}
