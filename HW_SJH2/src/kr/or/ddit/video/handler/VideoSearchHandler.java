package kr.or.ddit.video.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.comm.handler.CommandHandler;
import kr.or.ddit.video.service.VideoService;
import kr.or.ddit.video.vo.VideoVO;

public class VideoSearchHandler implements CommandHandler {

	private static final String VIEW_PAGE = "/WEB-INF/view/video_view.jsp";
	@Override
	public boolean isRedirect(HttpServletRequest req) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String videoKey = req.getParameter("videoKey");
		
		VideoVO videoVo = new VideoVO();
		videoVo.setVideoName(videoKey);

		//회원 목록 조회
		VideoService service = new VideoService();
		List<VideoVO> videoList = service.selectVideoPathList(videoVo);
		
		req.setAttribute("videoList", videoList);
		
		String msg = "";
		
		if(videoList.size() > 0) {
			msg = "성공";
		}else {
			msg = "실패";
		}
		
		return VIEW_PAGE;
	}

}
