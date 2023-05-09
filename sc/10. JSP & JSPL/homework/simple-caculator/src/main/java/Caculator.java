public class Caculator {
    public static double calculate(double operand1, String operator, double operand2) throws Exception {
        double result = 0.0;
        switch (operator) {
            case "+":
                result = operand1 + operand2;
                break;
            case "-":
                result = operand1 - operand2;
                break;
            case "*":
                result = operand1 * operand2;
                break;
            case "/":
                if (operand2 == 0) {
                    throw new Exception("Cannot devide by 0");
                }
                result = operand1 / operand2;
                break;
        }
        return result;
    }
}
