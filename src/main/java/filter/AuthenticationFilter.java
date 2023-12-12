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
import javax.servlet.http.HttpServletResponse;

import controller.BaseServlet;
import controller.BaseServlet.Identity;

/**
 * Servlet Filter implementation class AuthenticationFilter
 */
@WebFilter("/*")
public class AuthenticationFilter implements Filter {
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		if (request instanceof HttpServletRequest) {
			var httpRequest = (HttpServletRequest)request;
			
			String url = httpRequest.getRequestURI();
			System.out.println("Request Url : " + url);
			
			if (url.contains("Admin")) { // need authenticate
				boolean isAuthen = false;
				
				var session = httpRequest.getSession(false);
				if (session != null && session.getAttribute("username") != null) {
					String username = (String)session.getAttribute("username");
					isAuthen = true;
					request.setAttribute("Identity", Identity.admin(username));
				} else {
					request.setAttribute("Identity", Identity.anonymous());
				}
				
				if (!isAuthen) {
					((HttpServletResponse)response).sendRedirect(
							httpRequest.getContextPath() + "/Login?error=need-authen");
					return;
				}
			}
		}
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {}
	public void destroy() {}
}
