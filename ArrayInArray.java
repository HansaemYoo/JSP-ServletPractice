package HelloJava;

public class ArrayInArray {

	public static void main(String[] args) {
		//배열속의 배열
		int mscores[][] = new int[2][3];
		for(int i=0; i<mscores.length; i++) {
			for(int k=0; k<mscores[i].length; k++) {
				System.out.println("mscores[" + i + "][" + k + "]="
					+mscores[i][k]);
			}
		}
		System.out.println();
		
		int escores[][] = new int[2][];
		escores[0] = new int[2];
		escores[1] = new int[3];
		for(int i=0; i<escores.length; i++) {
			for(int k=0; k<escores[i].length; k++) {
				System.out.println("escores[" + i + "][" + k + "]="
						+escores[i][k]);
			}
		}
		System.out.println();
		
		int javascores[][] = { {95,85}, {92,96,80} };
		for(int i=0; i<javascores.length; i++) {
			for(int k=0; k<javascores[i].length; k++) {
				System.out.println("javascores[" + i + "][" + k + "]="
					+javascores[i][k]);
			}
		}
	}

}
