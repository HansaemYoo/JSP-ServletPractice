package HelloJava;

public class ArrayCreateByNewExample {

	public static void main(String[] args) {
		//new 연산자로 배열 생성
		System.out.println("1. new 연산자를 이용한 int타입 배열 생성");
		int arr1[] = new int[3]; //길이가 3인 정수타입 배열 생성
		for(int i=0; i<3; i++) {
			System.out.println("arr1[" + i + "] : " + arr1[i]); //new연산자로 정수형 배열을 처음 생성할 경우 배열은 자동적으로 기본값 0으로 초기화 된다. 
		}
		arr1[0] = 10; //arr1배열의 0번째 칸에 10 저장
		arr1[1] = 20; 
		arr1[2] = 30;
		for(int i=0; i<3; i++) {
			System.out.println("arr1[" + i + "] : " + arr1[i]); //이제 값을 저장했기 때문에 저장한 값이 출력된다.
		}	

		System.out.println("2. new연산자를 이용한 double타입 배열 생성");
		double arr2[] = new double[3];
		for(int i=0; i<3; i++) {
			System.out.println("arr2[" + i + "] : " + arr2[i]); //new연산자로 실수형 배열을 만들었기 때문에 자동적으로 기본값인 0.0이 저장된다.
		}
		arr2[0] = 0.1;
		arr2[1] = 0.2;
		arr2[2] = 0.3;
		for(int i=0; i<3; i++) {
			System.out.println("arr2[" + i + "] : " + arr2[i]);
		}
			System.out.println("3. new연산자를 이용한 String타입 배열 생성");
		String arr3[] = new String[3];
		for(int i=0; i<3; i++) {
			System.out.println("arr3[" + i + "] : " + arr3[i]); //new연산자로 문자열 배열을 만들었기 때문에 자동적으로 기본값인 null이 저장된다.
		}
		arr3[0] = "1월";
		arr3[1] = "2월";
		arr3[2] = "3월";
		for(int i=0; i<3; i++) {
			System.out.println("arr3[" + i + "] : " + arr3[i]);
		}
	}
}
