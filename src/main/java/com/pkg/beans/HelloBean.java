package com.pkg.beans;

import java.util.Collection;

public class HelloBean {
	
	private String extractType;
	
	private String extractName;
	
	private Collection<String > extractTypes;

	/**
	 * @return the extractType
	 */
	public String getExtractType() {
		return extractType;
	}

	/**
	 * @param extractType the extractType to set
	 */
	public void setExtractType(String extractType) {
		this.extractType = extractType;
	}

	/**
	 * @return the extractName
	 */
	public String getExtractName() {
		return extractName;
	}

	/**
	 * @param extractName the extractName to set
	 */
	public void setExtractName(String extractName) {
		this.extractName = extractName;
	}

	/**
	 * @return the extractTypes
	 */
	public Collection<String> getExtractTypes() {
		return extractTypes;
	}

	/**
	 * @param extractTypes the extractTypes to set
	 */
	public void setExtractTypes(Collection<String> extractTypes) {
		this.extractTypes = extractTypes;
		System.out.println("some extract is added here...");
	}

}
