/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
public class Main
{
	public static void main(String[] args) {
		
		Object[] objectarr = new Object[]{"?","#","&","5","NA","-", "5", "10", "INAPPLICABLE", "15","@"};
		String[] stringarr = new String[objectarr.length];
		
	//String regex = "[0-9]+[\\.]?[0-9]*";
		for(int i=0; i<objectarr.length; i++){
		    String string = (String)objectarr[i];
		    if(string instanceof String){
		        if (string.matches("[0-9]+[\\.]?[0-9]*")) {
                //System.out.println(objectarr[i] + " is numeric ");
                stringarr[i] = (String)objectarr[i];
    		    }else{
                    if(objectarr[i] == "&" ||objectarr[i] == "#" || objectarr[i] == "INAPPLICABLE"){
    		            //System.out.println(objectarr[i]+" INAPPLICABLE");
    		            stringarr[i] = "0";
    		        }else{
    		           // System.out.println(objectarr[i]+" NAN");
    		           stringarr[i] = "NA";
    		        }
    		        
    		    }
		    }//if
		}// for
		
		
        for(int j=0; j<stringarr.length;j++){
            
            System.out.print(stringarr[j] + " , ");
            
        }
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
    }
}
