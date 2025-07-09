public class Calculator {

    // Addition method
    public static Integer add(Integer num1, Integer num2) {
        Integer sum;
       sum =num1+num2;
        System.debug(sum);
        return sum;
    }

    // Subtraction method
    public static Integer subtract(Integer num1, Integer num2) {
        return num1 - num2;
    }

    // Multiplication method
    public static Integer multiply(Integer num1, Integer num2) {
        return num1 * num2;
    }

    // Division method
    public static Decimal divide(Integer num1, Integer num2) {
        if (num2 == 0) {
         
            System.debug('Error: Division by zero');
            return null;
        } else {
           
            return (Decimal)num1 / num2;
        }
    }
    }