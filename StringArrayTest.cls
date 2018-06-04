public class StringArrayTest {
    public static List<string> generateStringArray(integer input) {
		List<String> numbers = new List<String>();
        for (integer i = 0; i < input; i++) {
            numbers.add('Test ' + i + ' ');
        }
        System.debug(numbers);
    	return numbers;
    }
}