#!/usr/bin/python3
# -*- coding: utf-8 -*-

try:
    # Importação para uso direto do módulo
    from funcoes_uteis import input_tipo, validar_intervalo, pausar, limpar_tela
except ImportError:
    # Importação para uso pelo pacote sources
    from sources.funcoes_uteis import input_tipo, validar_intervalo, pausar, limpar_tela

__author__ = "Paulo C. Silva Jr."


class NumeroPrimo:
    """ Classe para verificação e geração de números primos. """
    def __init__(self):
        self._conjunto = self.listar(1, 100)

    @staticmethod
    def eh_numero_primo(n):
        """ Verifica se o parametro informado é um número primo. """
        assert isinstance(n, int), "Param. n não é inteiro."
        assert n > 0, "Param. n <= 0"

        primo = True
        # Verificação de número primo.
        # Regra: Um número é primo somente se ele for divisível por ele mesmo e por 1.
        if n > 2:
            for x in range(2, n - 1):
                if n % x == 0:
                    primo = False
                    break

        return primo

    def listar(self, inicial, final):
        """ Retorna uma lista de números primos dentro do intervalo informado(inicial, final). """
        # Verificação para os parametro de entrada, gera excessão caso não atendidas.
        assert isinstance(inicial, int), "Param. inicial não é inteiro"
        assert isinstance(inicial, int), "Param. final não é inteiro"
        assert inicial > 0, "Param. inicial <= 0"
        # Troca, caso inicial seja maior que final.
        if final < inicial:
            inicial, final = final, inicial

        lista = []
        for x in range(inicial, final + 1):
            if self.eh_numero_primo(x):
                lista.append(x)

        return lista

    def gerador(self):
        """ Retorna um generator de números primos. """
        cont = 0
        while True:
            cont += 1
            if self.eh_numero_primo(cont):
                yield cont

    def __repr__(self):
        conj = str(self._conjunto)[1:-1]
        return "{" + conj + ",...}"


if __name__ == "__main__":
    # Teste em interface de texto.
    np = NumeroPrimo()

    while True:
        limpar_tela()

        print("Números primos\n")
        opc = validar_intervalo(input_tipo("1 - Verificar\n"
                                           "2 - Listar\n"
                                           "3 - Gerador infinito\n"
                                           "4 - Conjunto\n"
                                           "0 - Sair\n"
                                           "\t: "), 0, 4)

        if opc == 1:
            # Verificação de número primo, usando if como operador ternário.
            n = input_tipo("\nDigite um número: ")
            print(n, "é PRIMO\n" if np.eh_numero_primo(n) else "NÃO é primo\n")
        elif opc == 2:
            # Listagem de números primos, de acordo com input do usuário.
            t = input("\nDigite 2 números(x,y): ")

            t = [int(x) for x in (t.split(","))]
            if t[0] > t[1]:
                t[0], t[1] = t[1], t[0]

            print(np.listar(t[0], t[1]), end="\n")
        elif opc == 3:
            if input_tipo("\nCTRL + C, para PARAR.\nContinuar(S/n): ", tipo='bool'):
                g = np.gerador()
                cont = 1
                # Exemplo de aplicação do generator de números primos.
                while True:
                    v = next(g)
                    print("{}:{}".format(cont, v))
                    cont += 1
        elif opc == 4:
            print(np)
        else:
            break

        if opc != 0:
            pausar()

        print("\n")
