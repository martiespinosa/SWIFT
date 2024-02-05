import Foundation

func ejemploFuncion(edad: Int?) {
    guard let edadValida = edad, edadValida >= 18 else {
        print("La edad no es válida para continuar.")
        return
    }
    
    // El código continúa aquí si la edad es válida
    print("Bienvenido, eres mayor de edad.")
}

// Llamamos a la función con una edad válida
ejemploFuncion(edad: 25)

// Llamamos a la función con una edad no válida
ejemploFuncion(edad: 15)
