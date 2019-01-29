package com;

public class SoapClass {
	public Integer function(Integer a, Integer b, Integer operator)
	{
		try {
		if (operator == 0)
			return a+b;
		if (operator == 1)
			return a-b;
		if (operator == 2)
			return a*b;
		if (operator == 3)
			return a/b;
		else return 0;
	}
		catch(Throwable e) {
			return 0;
		}
		
}
}
