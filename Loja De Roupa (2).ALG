Algoritmo "Verifica??o"
// Disciplina   : [Linguagem e L?gica de Programa??o]
// Professor   : Antonio Carlos Nicolodi
// Descri??o   : Aqui voc? descreve o que o programa faz! (fun??o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 12/09/2022
Var
   // Se??o de Declara??es das vari?veis
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
   // Se??o de Comandos, procedimento, fun??es, operadores, etc...
   Repita
      escreva("Bem-vindo ao SysTanger")
      escreval("X - Adicionar ao Carrinho")
      escreval("Y - Lista de compras")
      escreval("Z - Finalizar compra")
      escreval("S - Finalizar Sistema")
      leia(opcao)

      Se(opcao = "x") Ent?o
         opcao <- "X"                                                                                                              X"
      Fimse
      Se(opcao = "y") Ent?o
         opcao <- "Y"
      Fimse
      Se(opcao = "z") Ent?o
         opcao <- "Z"
      Fimse
      Se(opcao = "s") Ent?o
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
            escreval("Pre?o do Produto:")
            leia(price[c])
            escreval("=================================")
            mult[c] <- price[c] * qnt[c]
            soma <- soma + mult[c]
            escreval("Deseja continuar? (S/N)")
            Leia(opcao2)

         At? (opcao2 = "N")
      caso "Y"
         c <- c + 1
         escreval("Seu carrinho!")
         para c de 1 ate c fa?a
            escreval(nome[c])
            escreval("Nome do Produto:", clothename[c], "Pre?o:", price[c], "Quantidade:", qnt[c])
         fimpara
      caso "Z"



         escreval("o Total ?:", soma)
         escreval("Quanto o Cliente pagou?")
         leia(pagou)
         Enquanto (pagou < 0) fa?a
                  limpatela
                  Escreval("Voc? inseriu valor inv?lido")
                  Escreval("Insira novamente o valor")
                  Leia(pagou)
         sub <- pagou - soma
         escreval("o Troco ?:", sub)

         escreval("===============NOTA FISCAL===============")
         para c de 1 ate c fa?a
            escreval(nome[c])
            escreval(clothename[c] , "Pre?o:" , mult[c] , "quantidade:" , qnt[c])
            escreval("=========================================")

         fimpara
      caso "S"
         escreval("At? Logo!! Obrigado por comprar na Tanger")

      Outrocaso
         Escreval("Op??o Inv?lida. Digite a opcao certa!")
      Fimescolha
   At? (opcao = "S")

Fimalgoritmo