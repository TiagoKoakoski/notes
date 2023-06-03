class Animal:

    def emitir_som(self):
        print('Qualquer som...')

class Cachorro(animal):

    def emitir_som(self):
        print('Au Au')

class Gato(animal):

    def emitir_som(self):
        print('Miau Miau')


cachorro = Cachorro()
cachorro.emitir_som() #$ 'Au Au'

gato = Gato()
gato.emitir_som() #$ 'Miau Miau'
