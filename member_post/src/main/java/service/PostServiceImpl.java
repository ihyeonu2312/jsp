package service;

import java.util.List;
import dao.PostDao;
import vo.Post;
public class PostServiceImpl implements PostService {
	private PostDao dao = new PostDao();
	
	@Override
	public int write(Post post) {
		// TODO Auto-generated method stub
		return dao.insert(post);
	}

	@Override
	public int modify(Post post) {
		// TODO Auto-generated method stub
		return dao.update(post);
	}

	@Override
	public int remove(Long pno) {
		// TODO Auto-generated method stub
		return dao.delete(pno);
	}

	@Override
	public Post findBy(Long pno) {
		// TODO Auto-generated method stub
		return dao.selectOne(pno);
	}

	@Override
	public List<Post> list() {
		// TODO Auto-generated method stub
		return dao.selectList();
	}

	@Override
	public Post view(Long pno) {
		dao.increaseViewCount(pno);
		return findBy(pno);
	}

}