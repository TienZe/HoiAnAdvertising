package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Cho phép truyền dữ liệu (TempData) từ 1 request chuyển hướng sang 1 request khác
 */
@WebFilter("/*")
public class RestoreDataFilter implements Filter {
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		if (request instanceof HttpServletRequest) {
            var httpRequest = (HttpServletRequest)request;
            var session = httpRequest.getSession(false);

            if (session != null) {
                // Session tồn tại
            	var tempData = session.getAttribute("TempData");
            	if (tempData != null) {
            		request.setAttribute("TempData", tempData);
            		session.removeAttribute("TempData");
            	}
            }
        }
		
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}
	
	
	@Override
	public void destroy() {}
	@Override
	public void init(FilterConfig arg0) throws ServletException {}
}
