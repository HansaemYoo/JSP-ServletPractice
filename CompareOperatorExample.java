package HelloJava;

public class CompareOperatorExample {

	public static void main(String[] args) {
		//비교연산자
		int num1 = 10;
		int num2 = 10;
		boolean result1 = (num1 == num2); //num1과 num2가 같은가?
		boolean result2 = (num1 != num2); //num1과 num2가 다른가?
		boolean result3 = (num1 <= num2); //num2가 num1보다 크거나같은가?
		System.out.println("result1= " + result1); 
		System.out.println("result2= " + result2);
		System.out.println("result3= " + result3);
		
		char char1 = 'A'; 
		char char2 = 'B';
		boolean result4 = (char1 < char2); //'A'는 65, 'B'는 66이므로 65<66과 같다.
		System.out.println("result4= " + result4);
	}

}
