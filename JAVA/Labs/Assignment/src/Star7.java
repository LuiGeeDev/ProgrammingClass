public class Star7 {
	public static void main(String[] args) {
		for (int i = 0; i < 10; i++) {
			for (int j = 10; j > 0; j--) {
				if (j > i + 1)
					System.out.print(" ");
				else
					System.out.print("*");
			}
			for (int j = 10; j > 0; j--) {
				if (j > i)
					System.out.print("*");
			}
			System.out.println();
		}
	}
}
