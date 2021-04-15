# Ejercicio 2


# 1. Crear la clase con el nombre CuentaBancaria
class CuentaBancaria

    # Los métodos getter y setter para el atributo nombre_de_usuario
    attr_accessor :nombre_de_usuario
    attr_reader :numero_de_cuenta
    attr_reader :vip



    # Crear el constructor que reciba el nombre_usuario y numero_de_cuenta y lo asigne a los atributos
    #Agregar un tercer parámetro opcional al constructor que permita establecer si una cuenta es VIP (1pto), este valor puede ser 1 o 0. Por defecto será 0.

    def initialize(nombre_usuario,numero_de_cuenta,vip = 0)
        

        # Levantar una excepción del tipo RangeError si el atributo numero_de_cuenta tiene un número de dígitos distinto a 8 (se puede ocupar el método .digits para obtener los dígitos y .count para contarlos)
        if  numero_de_cuenta.digits.count != 8
            raise RangeError.new('El digito ingresado debe contener un largo de 8')
        elsif vip != 0 && vip != 1
            raise RangeError.new('El digito a ingresar para definir si es una cuenta es vip es 1 o 0')
        else 
            @nombre_usuario = nombre_usuario
            @numero_de_cuenta = numero_de_cuenta
            @vip = vip
        end
    end

    #Crear un método llamado numero_de_cuenta que devuelva con el número de cuenta con un prefijo '1-' si es vip y '0-' si no lo es. Ejemplo: si la cuenta es VIP y el número 00112233, el método debería devolver '1-00112233'

    def numero_de_cuenta

        stringVip = "1-"
        stringNoVip = "0-"
        cuenta = self.numero_de_cuenta.to_s
        stringFinal = ""
        if self.vip == 0
            stringFinal = stringFinal +stringNoVip+cuenta
        elsif self.vip == 1
            stringFinal = stringFinal +stringVip+cuenta
        end
        stringFinal
    end

end
