package HelloJava;

public class AraayLengthExample {

	public static void main(String[] args) {
		//배열의 length필드
		int scores[] = { 83, 90, 87 }; //정수타입 scores라는 배열에 83, 90, 87을 저장
		
		int sum = 0;
		for(int i=0; i<3; i++) {
			sum += scores[i]; //반복문을 통해 scores[i]에 저장된 값들을 더함
		}
		System.out.println("총합 : " + sum); //더한 총합 출력
		 //값들의 평균을 구할건데 소수점까지 구해야 하므로 double타입의 avg라는 변수를 선언했고, 정수타입이던 sum을 double타입으로 강제변환후 평균 구하기
		double avg = (double) sum / scores.length; //scores.length 는 scores라는 배열의 길이를 구하는 것이다. 즉, 값이 몇개가 저장되어 있는지 구하는 메소드
		System.out.println("평균 : " + avg);
	}

}
