package com.eccl.ssm.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.eccl.ssm.Service.EmployeeService;
import com.eccl.ssm.pojo.Result;
import com.eccl.ssm.pojo.SourceInfo;
import com.eccl.ssm.pojo.Test;
import com.eccl.ssm.pojo.User;

@Controller
public class EmployeeController {
	private static final String User = null;
	@Autowired
	private EmployeeService eService;

	/**
	 * 登录
	 * 
	 * @param empName
	 *            登录名
	 * @param pwd
	 *            登录密码
	 * @throws IOException
	 */
	@RequestMapping(value = "/login.action", method = RequestMethod.POST)
	public String login(@RequestParam("empName") String empName, @RequestParam("pwd") String pwd,
			@RequestParam(value = "departId", required = false) String departId, HttpServletResponse response,
			HttpSession session, HttpServletRequest request, Model model) throws IOException {
		Map<String, String> empIn = new HashMap<String, String>();
		String returnUrl = "";
		empIn.put("empName", empName);
		empIn.put("pwd", pwd);
		List<User> loginEmp = eService.Login(empIn);
		switch (loginEmp.size()) {
		case 0:
			returnUrl = "login";
			request.setAttribute("tip2", "用户不存在,重新输入");
			break; // 不存在当前用户
		case 1:
			if (loginEmp.get(0).getPassword().equals(pwd)) {
				returnUrl = "main";
				session.setAttribute("user", loginEmp.get(0));
			} else {
				request.setAttribute("tip", "密码错误，重新输入");
				returnUrl = "login";
			}
			break;
		}
		return returnUrl;
	}

	/**
	 * 修改密码
	 * 
	 * @param request
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/editpwd.action")
	public String editpwd(HttpServletRequest request, HttpSession session, HttpServletResponse response)
			throws IOException {
		String uname = request.getParameter("uname");
		String lname = request.getParameter("lname");
		Map<String, String> umap = new HashMap<String, String>();
		umap.put("uname", uname);
		umap.put("lname", lname);
		eService.editpwd(umap);
		request.setAttribute("tips", "密码修改成功,下次登陆请使用新密码");
		return "welcome";
	}

	/**
	 * 退出登录
	 * 
	 * @param request
	 * @return 登录页面
	 */
	@RequestMapping("/logout.action")
	public String LogOutputStream(HttpServletRequest request, HttpSession session, HttpServletResponse response) {
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", 0);
		session.removeAttribute("user");
		session.invalidate();
		return "login";
	}

	@RequestMapping("/test.action")
	public String testForLevel(HttpServletRequest request, HttpSession session, HttpServletResponse response) {
		User user = (User) request.getSession().getAttribute("user");
		List<User> list = eService.findUserByOne(user.getName());

		List<Object> cores = new ArrayList<Object>();

		cores.add(10.0);
		cores.add(9.5);
		cores.add(9.0);
		cores.add(8.5);
		cores.add(8.0);
		cores.add(7.5);
		cores.add(7.0);
		cores.add(6.5);
		cores.add(6.0);
		cores.add(5.5);
		cores.add(5.0);
		request.setAttribute("cores", cores);
		if (0 == list.size()) {
			int a = 0;
			List<User> list2 = new ArrayList<User>();
			for (int i = 0; i < 20; i++) {
				list2.add(new User());
			}

			List<User> list3 = eService.findAllUser();
			for (User user2 : list3) {

				list2.get(a).setHigh_name(user.getName());
				list2.get(a).setName(user2.getName());
				list2.get(a).setDepart(user2.getDepart());
				list2.get(a).setRole(user2.getRole());
				a++;
			}
			request.setAttribute("list", list2);
		} else {
			request.setAttribute("list", list);
		}

		return "test";
	}

	@RequestMapping(value = "/saveScore.action", method = RequestMethod.POST)
	public String saveEmpScore(HttpSession session, SourceInfo sourceInfo) {
		for (Test test : sourceInfo.getTestList()) {
			if (test.getYeji().equals("--")) {
				test.setYeji(0.0);
			}
			if (test.getQuanjv().equals("--")) {
				test.setQuanjv(0.0);
			}
			if (test.getDaituan().equals("--")) {
				test.setDaituan(0.0);
			}
			if (test.getShouquan().equals("--")) {
				test.setShouquan(0.0);
			}
			if (test.getZeren().equals("--")) {
				test.setZeren(0.0);
			}
			if (test.getGongzuo().equals("--")) {
				test.setGongzuo(0.0);
			}
			if (test.getXietiao().equals("--")) {
				test.setXietiao(0.0);
			}
			if (test.getYingbian().equals("--")) {
				test.setYingbian(0.0);
			}
			if (test.getZuzhi().equals("--")) {
				test.setZuzhi(0.0);
			}
			if (test.getXuexi().equals("--")) {
				test.setXuexi(0.0);
			}
		}
		User user = (User) session.getAttribute("user");
		Boolean flag = eService.isSave(user.getName());
		if (flag) {
			for (Test test : sourceInfo.getTestList()) {

				eService.updateTest(test);
			}
		} else {
			for (Test test : sourceInfo.getTestList()) {

				eService.saveTest(test);
			}

		}
		session.setAttribute("tip", "数据已保存，查看或修改请点评测按钮");
		return "welcome";

	}

	@RequestMapping("/testResult.action")
	public String testResult(HttpServletRequest request, HttpSession session, HttpServletResponse response) {
		List<com.eccl.ssm.pojo.User> findAllUser = eService.findAllUser();
		Double sum = (double) 0;
		Double avg = (double) 0;
		for (User user : findAllUser) {
			sum = 0.0;
			avg = 0.0;
			Double a = eService.selectTestResultForHigh(user.getName());
			System.out.println(a);
			Map<String, Object> map2 = new HashMap<String, Object>();

			map2.put("name", user.getName());
			if (null == a) {
				a = 0.0;
			}
			map2.put("a", a);
			eService.updateTestResultForHigh(map2);
			List<Double> list = eService.selectLevel(user.getName());
			Collections.sort(list);
			if (list.size() > 2) {
				list.remove(0);
				list.remove(list.size() - 1);
			}
			for (Double double1 : list) {
				sum += double1;
			}
			Double size = (double) list.size();
			if (size == 0) {
				avg = 0.0;
			} else {
				avg = sum / size;
			}

			Map<String, Object> map = new HashMap<String, Object>();
			map.put("name", user.getName());
			map.put("level", avg * 0.3);
			eService.updateTestResultForLevel(map);
			eService.updateTestResultForFinal(user.getName());
		}
		List<Result> list = eService.findAllScore();
		request.setAttribute("list", list);
		List<String> list2 = eService.findWhoNoFind();
		request.setAttribute("list2", list2);
		return "testResult";
	}

}
