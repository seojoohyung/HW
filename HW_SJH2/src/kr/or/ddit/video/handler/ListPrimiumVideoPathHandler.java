package kr.or.ddit.video.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.comm.handler.CommandHandler;
import kr.or.ddit.video.service.IVideoService;
import kr.or.ddit.video.service.VideoService;
import kr.or.ddit.video.vo.VideoVO;

public class ListPrimiumVideoPathHandler implements CommandHandler {

	private static final String VIEW_PAGE = "/WEB-INF/view/video_primiumview.jsp";
	
	@Override
	public boolean isRedirect(HttpServletRequest req) {
		return false;
	}

	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws Exception {
			
		String videoNum	= req.getParameter("videoNum");
		String videoName = req.getParameter("videoName");
		String videoContent = req.getParameter("videoContent");
		String videoPath = req.getParameter("videoPath");
	
		IVideoService videoService = VideoService.getInstance();
		
		VideoVO vv = new VideoVO();
		vv.setVideoNum(videoNum);
		vv.setVideoName(videoName);
		vv.setVideoContent(videoContent);
		vv.setVideoPath(videoPath);
		
		List<VideoVO> videoList = videoService.selectPrimiumVideoPathList(vv);
		
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
