/**
 * 
 */
package com.eccl.ssm.pojo;

/**
 * @author:
 * @time:2018年12月19日上午1:14:55
 * @description:
 */

public class Result {
	private int id;
	private String depart;
	private String role;
	private String name;
	private double high_test;
	private double level_test;
	private double final_test;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDepart() {
		return depart;
	}

	public void setDepart(String depart) {
		this.depart = depart;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getHigh_test() {
		return high_test;
	}

	public void setHigh_test(Double high_test) {
		this.high_test = high_test;
	}

	public Double getLevel_test() {
		return level_test;
	}

	public void setLevel_test(Double level_test) {
		this.level_test = level_test;
	}

	public Double getFinal_test() {
		return final_test;
	}

	public void setFinal_test(Double final_test) {
		this.final_test = final_test;
	}

}
