
public class Example {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		boolean completed = false;
		char gender = 'F';
		char letter = '\u0041';
		byte n1 = 126;
		int n2 = 1000;
		int n3 = 2147483647;
		long n4 = 2147483648L;
		float n5 = 4.5f;
		double n6 = 4.5;
		String name = "Maria Green";
		Object obj1 = "Alex Brown";
		Object obj2 = 4.5f;

		/*
		 * System.out.println(completed); System.out.println(gender);
		 * System.out.println(letter); System.out.println(n1); System.out.println(n2);
		 * System.out.println(n3); System.out.println(n4); System.out.println(n5);
		 * System.out.println(n6); System.out.println(name); System.out.println(obj1);
		 * System.out.println(obj2);
		 */

		// conversao implicita e casting (explicita)
		// exemplo 1
//		double a;
//		float b;
//
//		a = 5.0;
//		b = (float)a;
//
//		System.out.println(b);
		
		// exemplo 2
		/*
		 * double a; int b;
		 * 
		 * a = 5.0; b = (int)a;
		 * 
		 * System.out.println(b);
		 */
		
		// exemplo 3
		int a, b;
		double result;

		a = 5;
		b = 2;

		result = (double) a / b;

		System.out.println(result);


	}

}
