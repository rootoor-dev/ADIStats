/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
public class Main
{
	public static void main(String[] args) {
	    
	    Object[] objectarr = new Object[]{"?","#","15","5","NA","-", "5", "10", "@", "15",18};
	    String[] stringarr = new String[objectarr.length]; // convertir toutes les valeurs en String au préalable
        double[] array = new double[objectarr.length];
        
        // convert mixed datatypes array (object array) to String array
        for (int i = 0; i < objectarr.length; i++) {
            if (objectarr[i] instanceof String) { // check if data is String type ...
                if(objectarr[i] == "#" || objectarr[i] == "INAPPLICABLE"){ // missing representation strings : NA, null, unknown, (blank space), any else value choosen to hold missing value (#, ?, !, @, etc.)
                   //replace the symbol by this value: "0" (zero)
                    objectarr[i] = "0";
                    // convert now to string by casting or else
                    //stringarr[i] = (String) objectarr[i];
                }else{
                    //if(objectarr[i] != "NA" || != "#" || != "INAPPLICABLE"){ // missing representation strings : NA, null, unknown, (blank space), any else value choosen to hold missing value (#, ?, !, @, etc.)
                   //replace the symbol by this value: "NA"
                    objectarr[i] = "NA";
                    // convert now to string by casting or else
                    //stringarr[i] = (String) objectarr[i];
                }
                stringarr[i] = (String) objectarr[i];
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
        
        // replace missing value symbol by a numeric value (ease for data analysis)
        for (int i = 0; i < stringarr.length; i++) {
            //System.out.print(stringarr[i]+" , "); // values all converted to String
            if(stringarr[i] == "NA"){
                stringarr[i] = "-3"; // transformer la valeur NA en une valeur numériquement convertible 
            }
            array[i] = Double.valueOf(stringarr[i]);
        }
        
        for (int j=0; j < stringarr.length; j++){ 
		    System.out.print(array[j]+" , ");
        }

	}
}
