/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
public class Main
{
	public static void main(String[] args) {
	    
	    Object[] objectarr = new Object[]{"?","#","15","5","NA","-", "!", "10", "@", "15",18};
	    String[] stringarr = new String[objectarr.length]; // convertir toutes les valeurs en String au préalable
        double[] array = new double[objectarr.length];
        
        // convert mixed datatypes array (object array) to String array
        for (int i = 0; i < objectarr.length; i++) {
            
            if(objectarr[i] instanceof String){// check if it is array of String
                String str = (String) objectarr[i];
                // check if str is numeric or not
                for(int j=0; j<objectarr.length; j++){
        		    String string = (String) objectarr[i];
        		    if (str.matches("[0-9]+[\\.]?[0-9]*")) {
                        //System.out.println(objectarr[j] + " is numeric ");
                        stringarr[j] = String.valueOf(objectarr[i]);
        		    }else{
                        if(objectarr[j] == "&" ||objectarr[j] == "#" || objectarr[j] == "INAPPLICABLE"){
        		            //System.out.println(objectarr[j]+" INAPPLICABLE");
        		            objectarr[j] = "0";
        		            stringarr[i] = String.valueOf(objectarr[j]);
        		        }else{
        		            //System.out.println(objectarr[j]+" NAN");
        		            stringarr[i] = String.valueOf(objectarr[j]);
        		        }
        		        
        		    }
        		}//for
            }else if (objectarr[i] instanceof Integer ){ //..Or not String type but Integer
                stringarr[i] = String.valueOf(objectarr[i]);
            }else if (objectarr[i] instanceof Float ){ //..Or not String type but Float
                stringarr[i] = String.valueOf(objectarr[i]);
            }else if (objectarr[i] instanceof Double ){ //..Or not String type but Double
                stringarr[i] = String.valueOf(objectarr[i]);
            }/*else{ //..Or not String type but Boolean 
                //replace the symbol by this value: "NA"
                objectarr[i] = "NA";
                // convert now to string by casting or else
                stringarr[i] = (String) objectarr[i];
            }*/
        }
        
        for (int k=0; k < stringarr.length; k++){ 
		    System.out.print(array[k]+" , ");
        }

	}
}
