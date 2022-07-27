/**

Author : ADI Junior

NB: En programmation, tout tableau est d'emblée écrit selon l'ordre majeur des lignes c'est-à-dire ligne après ligne. 
En mathématique (algèbre linéaire), toute matrice (tableau à deux dimensions) est d'emblée écrite selon l'ordre des lignes 
également sauf les vecteurs qui doivent impérativement être écrits selon l'ordre des colonnes pour donner en deux dimensions 
une matrice-colonne ou vecteur-colonne. Ce qui s'obtient en programmation par transposition (transposée du vecteur).


NOTES : NB: In programming, any array is immediately written according to the major order of the rows (rows-major order), 
that means line after line. In mathematics (linear algebra), any array, also called matrix (two-dimensional array) 
is immediately written according to the order of the rows also except the vectors which must imperatively be written 
according to the order of the columns (columns-major order) to give in two dimensions a matrix-column or column-vector. 
What is obtained in programming by transpose (transposed of the vector).

*/


public class Array2D {
  
  
  public static String toCSV(String[] array) {
        String result = "";

        if (array.length > 0) {
            StringBuilder sb = new StringBuilder();

            for (String s : array) {
                sb.append(s).append(",");
            }

            result = sb.deleteCharAt(sb.length() - 1).toString();
        }
        return result;
}

 public String toMatrixMarket(NumberFormat formatter) {
        StringBuilder out = new StringBuilder();

        out.append("%%MatrixMarket matrix array real general\n");
        out.append(rows).append(' ').append(columns).append('\n');
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < columns; j++) {
                out.append(formatter.format(get(i, j))).append('\n');
            }
        }

        return out.toString();
    }

 static void printMatrix(int[][] matrix) {
        for (int[] line : matrix) {
            int i = 0;
            StringBuilder sb = new StringBuilder(matrix.length);
            for (int number : line) {
                if (i != 0) {
                    sb.append("\t");
                } else {
                    i++;
                }
                sb.append(number);
            }
            System.out.println(sb.toString());
        }
    }
	
	
static void printMatrix(Matrix matrix, int n) {
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                if (j != 0) {
                    System.out.print("\t");
                }
                System.out.printf("%.0f", matrix.get(i, j));
            }
            System.out.println("");
        }
    }
	
	
 private static int[][] add(int[][] A, int[][] B) {
        int n = A.length;
        int[][] C = new int[n][n];
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                C[i][j] = A[i][j] + B[i][j];
            }
        }
        return C;
    }

    private static int[][] subtract(int[][] A, int[][] B) {
        int n = A.length;
        int[][] C = new int[n][n];
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                C[i][j] = A[i][j] - B[i][j];
            }
        }
        return C;
    }	
	
	
public static double[][] mult(double a[][], double b[][]){//a[m][n], b[n][p]
   if(a.length == 0) return new double[0][0];
   if(a[0].length != b.length) return null; //invalid dims
 
   int n = a[0].length;
   int m = a.length;
   int p = b[0].length;
 
   double ans[][] = new double[m][p];
 
   for(int i = 0;i < m;i++){
      for(int j = 0;j < p;j++){
         for(int k = 0;k < n;k++){
            ans[i][j] += a[i][k] * b[k][j];
         }
      }
   }
   return ans;
}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
  
  
  
}  
