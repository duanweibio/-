package com.duan.comtroller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 
 * @author dwb
 *
 */
public class LoginServlet extends HttpServlet{
	
	/**
	 * 验证码
	 */
	private static final long serialVersionUID = 1L;

	public LoginServlet(){
		super();
	}
	
	public void destory(){
		
	}
    public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException{
    	response.setContentType("text/html;charset=gbk");
    	String verifyCode = (String)request.getSession().getAttribute("verifyCode");
        String checkCode = request.getParameter("checkCode");
        verifyCode = verifyCode.toUpperCase();
        checkCode = checkCode.toUpperCase();
        
        PrintWriter writer = response.getWriter();
        
        if(checkCode.equals(verifyCode)){
        	writer.println("验证码输入正确！！");
        }else{
        	writer.println("验证码输入错误！！");
        }
        writer.flush();
        writer.close();
    }
    
    public void doPost(HttpServletRequest request,HttpServletResponse response) {
    	
    }
    
    public void init() throws ServletException{
    	
    }
    	
}
