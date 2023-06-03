class Carro:
    numero_rodas = 4
    quantidade_passageiros = 5
    
    def acelerar(self):
        print('Acelerando...')

    def frear(self):
        print('Freando...')
    
    def buzinar(self):
        print('Buzinando...')
    
class Uno(Carro): #Cria classe Uno herdando de Carro
    modelo = 'Uno'
    marca = 'Fiat'
    ano = '1992'