Algoritmo "Verificação"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 12/09/2022
Var
   // Seção de Declarações das variáveis
   clothename : vetor [0..10] de caracter
   qnt : vetor [0..10] de inteiro
   price : vetor [0..10] de real
   nome : vetor [0..10] decaracter
   opcao : caracter
   c : inteiro
   soma : real
   mult : vetor [0..10] de real
   pagou : real
   sub : real
   opcao2 : caracter

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   Repita
      escreva("Bem-vindo ao SysTanger")
      escreval("X - Adicionar ao Carrinho")
      escreval("Y - Lista de compras")
      escreval("Z - Finalizar compra")
      escreval("S - Finalizar Sistema")
      leia(opcao)

      Se(opcao = "x") Então
         opcao <- "X"                                                                                                              X"
      Fimse
      Se(opcao = "y") Então
         opcao <- "Y"
      Fimse
      Se(opcao = "z") Então
         opcao <- "Z"
      Fimse
      Se(opcao = "s") Então
         opcao <- "S"
      Fimse

      Escolha opcao
      caso "X"
         Repita
            c <- c + 1
            escreval(nome[c])
            leia(nome[c])
            escreval("=================================")
            escreval("Nome do produto:")
            leia(clothename[c])
            escreval("=================================")
            escreval("Quantidade:")
            leia(qnt[c])
            escreval("=================================")
            escreval("Preço do Produto:")
            leia(price[c])
            escreval("=================================")
            mult[c] <- price[c] * qnt[c]
            soma <- soma + mult[c]
            escreval("Deseja continuar? (S/N)")
            Leia(opcao2)

         Até (opcao2 = "N")
      caso "Y"
         c <- c + 1
         escreval("Seu carrinho!")
         para c de 1 ate c faça
            escreval(nome[c])
            escreval("Nome do Produto:", clothename[c], "Preço:", price[c], "Quantidade:", qnt[c])
         fimpara
      caso "Z"



         escreval("o Total é:", soma)
         escreval("Quanto o Cliente pagou?")
         leia(pagou)
         Enquanto (pagou < 0) faça
                  limpatela
                  Escreval("Você inseriu valor inválido")
                  Escreval("Insira novamente o valor")
                  Leia(pagou)
         sub <- pagou - soma
         escreval("o Troco é:", sub)

         escreval("===============NOTA FISCAL===============")
         para c de 1 ate c faça
            escreval(nome[c])
            escreval(clothename[c] , "Preço:" , mult[c] , "quantidade:" , qnt[c])
            escreval("=========================================")

         fimpara
      caso "S"
         escreval("Até Logo!! Obrigado por comprar na Tanger")

      Outrocaso
         Escreval("Opção Inválida. Digite a opcao certa!")
      Fimescolha
   Até (opcao = "S")

Fimalgoritmo