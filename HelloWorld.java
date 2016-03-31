//package com.company;

public class HelloWorld {

    public static void main(String[] args) {
	// write your code here
        System.out.println("Hello World Java");
	System.out.println("Hello Java, 2nd commit");
	System.out.println("Hello Java, 3rd commit");
	System.out.println("Hello java 4th commit. This triggers auto-image build");
	System.out.println("Env val1 is = " + System.getenv("ENV_VAL1"));
	System.out.println("Current Directory is " + System.getProperty("user.dir"));
	
	String firstArg;
	if (args.length > 0) {
 	   try {
        	firstArg = args[0];
		System.out.println("Passed argument is " + firstArg);
 	   } catch (NumberFormatException e) {
        	System.err.println("Argument" + args[0] + " must be an integer.");
        	System.exit(1);
    		}
	}

	// coding ends
    }
}

