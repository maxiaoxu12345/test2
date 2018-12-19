/**
 * 
 */
package com.eccl.ssm.Service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eccl.ssm.Mapper.EmployeeMapper;
import com.eccl.ssm.pojo.Result;
import com.eccl.ssm.pojo.Test;
import com.eccl.ssm.pojo.User;

/**
 * 员工测评Service
 *
 * @author wzc
 * @date 2017年12月4日 下午7:26:53
 *
 */
@Service
public class EmployeeService {
	@Autowired
	private EmployeeMapper eMapper;

	/**
	 * 登录 A
	 * 
	 * @param empIn
	 * @return
	 */
	@Transactional
	public List<User> Login(Map<String, String> empIn) {
		List<User> employee = eMapper.goLogin(empIn.get("empName"));
		return employee;
	}

	/**
	 * @param umap
	 */
	@Transactional
	public void editpwd(Map<String, String> umap) {
		eMapper.editpwd(umap);

	}

	/**
	 * @return
	 */
	@Transactional
	public List<User> findUserByOne(String name) {
		// TODO Auto-generated method stub
		return eMapper.findUserByOne(name);
	}

	/**
	 * @param test
	 */
	@Transactional
	public void saveTest(Test test) {
		eMapper.saveTest(test);

	}

	/**
	 * @param name
	 * @return
	 */
	@Transactional
	public Boolean isSave(String name) {
		// TODO Auto-generated method stub
		int sum = eMapper.isSave(name);
		if (sum > 0) {
			return true;
		} else {
			return false;
		}

	}

	/**
	 * @param test
	 */
	@Transactional
	public void updateTest(Test test) {
		eMapper.updateTest(test);

	}

	/**
	 * @param name
	 * @return
	 */
	@Transactional
	public List<Test> findScore(String name) {
		// TODO Auto-generated method stub
		return eMapper.findScore(name);
	}

	/**
	 * @return
	 */
	@Transactional
	public List<User> findAllUser() {
		// TODO Auto-generated method stub
		return eMapper.findAllUser();
	}

	/**
	 * @param user
	 */
	@Transactional
	public void setUpTable(com.eccl.ssm.pojo.User user) {
		// TODO Auto-generated method stub
		eMapper.setUpTable(user);
	}

	/**
	 * 
	 */
	@Transactional
	public void updateTestResultForHigh(Map<String, Object> map) {
		// TODO Auto-generated method stub
		eMapper.updateTestResultForHigh(map);
	}

	/**
	 * @param name
	 * @return
	 */
	@Transactional
	public List<Double> selectLevel(String name) {
		// TODO Auto-generated method stub
		return eMapper.selectLevel(name);
	}

	/**
	 * @param map
	 */
	@Transactional
	public void updateTestResultForLevel(Map<String, Object> map) {
		// TODO Auto-generated method stub
		eMapper.updateTestResultForLevel(map);
	}

	/**
	 * @param string
	 * 
	 */
	@Transactional
	public void updateTestResultForFinal(String string) {
		// TODO Auto-generated method stub
		eMapper.updateTestResultForFinal(string);
	}

	/**
	 * @return
	 */
	@Transactional
	public List<Result> findAllScore() {
		// TODO Auto-generated method stub
		return eMapper.findAllScore();
	}

	/**
	 * @param name
	 * @return
	 */
	@Transactional
	public Double selectTestResultForHigh(String name) {
		// TODO Auto-generated method stub
		return eMapper.selectTestResultForHigh(name);
	}

	/**
	 * @return
	 */
	public List<String> findWhoNoFind() {
		// TODO Auto-generated method stub
		return eMapper.findWhoNoFind();
	}

}
