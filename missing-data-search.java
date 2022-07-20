public static seaarchMissing(Object[] objectarr) {
		
		///Object[] objectarr = new Object[]{"?","#","&","5","NA","-", "5", "10", "INAPPLICABLE", "15","@"};
		
	//String regex = "[0-9]+[\\.]?[0-9]*";
		for(int i=0; i<objectarr.length; i++){
		    String string = (String) objectarr[i];
		    if (string.matches("[0-9]+[\\.]?[0-9]*")) {
                System.out.println(objectarr[i] + " is numeric ");
		    }else{
                if(objectarr[i] == "&" ||objectarr[i] == "#" || objectarr[i] == "INAPPLICABLE"){
		            System.out.println(objectarr[i]+" INAPPLICABLE");
		        }else{
		            System.out.println(objectarr[i]+" NAN");
		        }
		        
		    }
		}
}
		
