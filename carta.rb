# Ejercicio 1 

class Carta

    # numero (1 al 13) y pinta ( C, D, E, T)
    attr_accessor :numero, :pinta #GETTERS

    def initialize(numero, pinta)

        pinta.upcase!
        pintas = ['C','D','E','T']


        if (numero >= 1 && numero <= 13) && pintas.include?(pinta)
            @numero = numero
            @pinta = pinta
        else
            raise ArgumentError.new("El numero no está en el rango o la pinta no es valida")

        end
    end
end

pintas = ['C','D','E','T']


cartas = [c1 = Carta.new(rand(1..13), pintas.sample(1).join),c2 = Carta.new(rand(1..13), pintas.sample(1).join),c3 = Carta.new(rand(1..13), pintas.sample(1).join),c4 = Carta.new(rand(1..13), pintas.sample(1).join),c5 = Carta.new(rand(1..13), pintas.sample(1).join)]

print cartas