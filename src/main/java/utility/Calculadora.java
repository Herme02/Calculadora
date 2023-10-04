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


    public void sumar(double numero) {
        resultado += numero;
    }


    public void restar(double numero) {
        resultado -= numero;
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
    	resultado = Character.getNumericValue(mostrar.charAt(0));
    	for(int i = 1;i < mostrar.length();i++) {
    		if(mostrar.charAt(i)== '+') {
    			resultado += Character.getNumericValue(mostrar.charAt(i+1));
    		}
    		if(mostrar.charAt(i)== '-') {
    			resultado -= Character.getNumericValue(mostrar.charAt(i+1));
    		}
    	}
    	mostrar.delete(0, mostrar.length());
    	mostrar.append(resultado);
    	
    	return resultado;
    }

}
