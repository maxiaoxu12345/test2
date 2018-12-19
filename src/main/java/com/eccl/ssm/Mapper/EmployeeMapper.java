/**
 * 
 */
package com.eccl.ssm.Mapper;

import java.util.List;
import java.util.Map;

import com.eccl.ssm.pojo.Result;
import com.eccl.ssm.pojo.Test;
import com.eccl.ssm.pojo.User;

/**
 * 员工测评Mapper
 *
 * @author wzc
 * @date 2017年12月4日 下午7:25:06
 *
 */
public interface EmployeeMapper {

	/**
	 * A
	 * 
	 * @param string
	 * @return
	 */
	public List<User> goLogin(String empName);

	/**
	 * @param umap
	 */
	public void editpwd(Map<String, String> umap);

	/**
	 * @return
	 */
	public List<User> findUserByOne(String name);

	/**
	 * @param test
	 */
	public void saveTest(Test test);

	/**
	 * @param name
	 * @return
	 */
	public int isSave(String name);

	/**
	 * @param test
	 */
	public void updateTest(Test test);

	/**
	 * @param name
	 * @return
	 */
	public List<Test> findScore(String name);

	/**
	 * @return
	 */
	public List<User> findAllUser();

	/**
	 * @param user
	 */
	public void setUpTable(User user);

	/**
	 * 
	 */
	public void updateTestResultForHigh(Map<String, Object> map);

	/**
	 * @param name
	 * @return
	 */
	public List<Double> selectLevel(String name);

	/**
	 * @param map
	 */
	public void updateTestResultForLevel(Map<String, Object> map);

	/**
	 * @param string
	 * 
	 */
	public void updateTestResultForFinal(String string);

	/**
	 * @return
	 */
	public List<Result> findAllScore();

	/**
	 * @param name
	 * @return
	 */
	public Double selectTestResultForHigh(String name);

	/**
	 * @return
	 */
	public List<String> findWhoNoFind();

}
