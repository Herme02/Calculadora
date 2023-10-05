package utility;

public class Calculadora {

    private static double resultado;
    private double numeroActual;
    private String operadorActual;

    public Calculadora() {
        resultado = 0.0;
        numeroActual = 0.0;
        operadorActual = "";

    }


    public double getResultado() {
        return resultado;
    }


    


    public void limpiar(StringBuilder mostrar) {
        resultado = 0.0;
        numeroActual = 0.0;
        operadorActual = "";
        mostrar.setLength(0);
    }


    public void introducirCalculos(String numero, String operador, StringBuilder mostrar) {
        if (!numero.isEmpty()) {
            numeroActual = Double.parseDouble(numero);
            mostrar.append(numero);
        }
        operadorActual = operador;
        mostrar.append(operador);
    }

//    public double resolver() {
//        switch (operadorActual) {
//            case "+":
//                sumar(numeroActual);
//                break;
//            case "-":
//                restar(numeroActual);
//                break;
//            default:
//                System.out.println("Operador no válido");
//                break;
//        }
//
//        return resultado;
//
//    }
    
    public double resolver(StringBuilder mostrar) {
    	resultado = 0; 
        int operando = 0; 
        char operador = '+'; 

        for (int i = 0; i < mostrar.length(); i++) {
            char caracter = mostrar.charAt(i);
            if (caracter == '+' || caracter == '-') {
               
               
                if (operador == '+') {
                    resultado += operando;
                } else if (operador == '-') {
                    resultado -= operando;
                }

               
                operador = caracter;
                operando = 0;
            } else {

                operando = operando * 10 + Character.getNumericValue(caracter);
            }
        }

        
        if (operador == '+') {
            resultado += operando;
        } else if (operador == '-') {
            resultado -= operando;
        }

        mostrar.delete(0, mostrar.length()); 
        mostrar.append(resultado);

        return resultado;
    }
}
