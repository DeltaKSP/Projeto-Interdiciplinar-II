algoritimo
		inteiro codigo[10], op = 0;
		real preco[10],
		literal nome[10], modelo[10], departamento[10], marca[10], quantidade[10]
inicio
		inteiro op = 0;

		escreva(" ___   ___        ___        ___  ___               ___               ___  ___   ___  ___             ");
		escreva("|   |=|_.'   .'|=|_.'   .'|=|_.' |   | |`.     .'| |   |   .'|   .'|=|_.' |   |=|_.' |   | |`.     .'|");
		escreva("`.  |      .'  |      .'  |  ___ |   | |  `. .'  | |   | .'  | .'  |      `.  |      |   | |  `. .'  |");
		escreva("  `.|=|`.  |   |      |   |=|_.' |   | |   | |   | |   | |   | |   |        `.|=|`.  |   | |   | |   |");
		escreva(" ___  |  `.`.  |  ___ |   |  ___ `.  | |   | |   | |  .' |   | `.  |  ___  ___  |  `.`.  | |   | |   |");
		escreva(" `._|=|___|  `.|=|_.' |___|=|_.'   `.|=|___| |___| |.'   |___|   `.|=|_.'  `._|=|___|  `.|=|___| |___|=|_.' 2.0.1\n\n");

		escreva("\t--------- SCE-UNICSUL 2.0.1 ---------");

		escreva("\nDIGITE A OPÇÃO DESEJADA:");

		faça {
			escreva("\n1 - CADASTRAR PRODUTOS (10) | 2 - NOVA VENDA | 3 - ABRIR BANCO DE DADOS | 4 - SAIR");
			op = leia.nextInt();

			escolha (op) {
				caso 1:
					transacoes = novaCompra(codigo, preco, nome, modelo, departamento, marca, quantidade);
					pare;

				caso 2:
					novaVenda();
					pare;

				caso 3:
					imprimir(codigo, nome, marca, quantidade);
					pare;

				caso 4:
				escreva("\nObrigado por utilizar o sistema SCE!:");
					pare;

				padrao:
				escreva("\nOpção inválida tente novamente!");
					pare;
			}

		} enquanto (op != 4);

fim

	novaCompra(inteiro codigo[10], real preco[10], literal nome[10], literal modelo[10], literal departamento[10], literal marca[10], literal quantidade[10])
	inicio
		para(inteiro i = 0; i < 10; i++) {
			se(codigo[i] == indefinido){
				escreva("Nome do produto:");
				leia(nome);

				escreva("Preço do produto:");
				leia(preco);

				escreva("Modelo do produto:");
				leia(modelo);

				escreva("Codigo do produto:");
				leia(codigo);

				escreva("Quantidade do produto:");
				leia(quantidade);

				escreva("Departamento do produto:");
				leia(departamento);

				escreva("Marca do produto:");
				leia(marca);
			}
			senao {
				escreva("Limite de itens atingido");
			}
		}
	fim

	void imprimir(literal codigo,literal nome,literal marca,literal quantidade)
	inicio
		para(inteiro i = 0; i < 10; i++) {
			escreva("\n----------------" + "\nProduto: " + nome[i]  + "\nFabricante: "
			+ marca[i] + "\nCódigo: "
			+ codigo[i]   + "\nQuantidade: "
			+ quantidade[i] + "\n----------------");
		}
	fim

	void novaVenda()
	inicio
		inteiro codigo, quantidade
		real valor
		escreva("\nCódigo:");
		leia(codigo)

		escreva("\nQuantidade:");
		leia(quantidade)

		escreva("\nValor do pagamento: ");
		leia(valor)

		transacao(quantidade, valor, codigo);
	fim

	void transacao(inteiro unidades, float valor, int codigo )
	inicio
		se(quantidadePorProduto(codigo) > 0 && quantidadePorProduto(codigo) >= unidades) {
			se (valor >= (preco[getProduto(codigo)2] * unidades)) {
				quantidade[getProduto(codigo)] -= unidades

			} senao {
				escreva("SALDO INSUFICIENTE");
			}
		}

		senao {
			escreva("SALDO EM ESTOQUE INSUFICIENTE");
		}
	fim

	inteiro quantidadePorProduto(inteiro codigo)
	inicio
		para (inteiro i = 0; i < 10; i++) {
			se (codigo[i] == codigo) {
			 retorne quantidade[i];
			}
		}
	fim

	inteiro getProduto(inteiro codigo)
	inicio
		para (inteiro i = 0; i < 10; i++) {
			se (codigo[i] == codigo) {
				retorne i;
			}
		}
	fim
