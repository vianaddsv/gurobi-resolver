# Otimização Linear com Gurobi Solver

Este repositório contém a formulação matemática e a implementação em Python de estudos de caso em Programação Linear (PL), utilizando o solver **Gurobi**. O projeto foi desenvolvido como requisito acadêmico para o estudo minucioso da ferramenta, englobando modelagem, codificação e interpretação de problemas de pequeno e médio porte.

## 📋 Objetivos do Projeto

1. Analisar o solver Gurobi de forma detalhada (propósito, linguagem, estrutura e interpretação de dados).
2. Modelar e automatizar a entrada de dados utilizando Python em um ambiente Jupyter.
3. Resolver problemas clássicos da literatura de Pesquisa Operacional, interpretando as saídas e decisões do solver.

---

## 📚 Estudos de Caso

Os problemas implementados foram baseados no livro *Otimização Combinatória e Programação Linear: Modelos e Algoritmos* (Goldbarg & Luna, 2005).

### 1. Problema de Pequeno Porte: O Problema da Dieta
* **Dimensão:** 4 Variáveis contínuas e 3 restrições.
* **Referência:** Goldbarg & Luna (2005), Capítulo 2, Seção 2.2.2.
* **Descrição:** Determinar a quantidade diária de consumo de quatro alimentos (leite, carne, peixe e salada) para suprir os requisitos mínimos de Vitaminas A, C e D ao menor custo financeiro.
* **Conceitos Abordados:** Programação Linear Contínua, restrições de não negatividade padrão ($x \ge 0$) e a racionalidade estrita do solver na busca do ótimo financeiro.

### 2. Problema de Médio Porte: Mistura de Petróleo
* **Dimensão:** 12 Variáveis contínuas e 8 restrições principais.
* **Referência:** Goldbarg & Luna (2005), Capítulo 2, Seção 2.2.2, Exemplo 5.
* **Descrição:** Maximizar o lucro diário de uma refinaria misturando quatro tipos de petróleo bruto para produzir três tipos de gasolina (Amarela, Azul e Superazul), respeitando a disponibilidade de insumos e limites percentuais de qualidade de cada mistura.
* **Conceitos Abordados:** Restrições com proporções percentuais de variáveis dependentes, priorização de produtos de maior margem de lucro e identificação de restrições ativas (gargalos).

---

## 🛠️ Tecnologias Utilizadas

* **Linguagem:** Python 3.11+
* **Ambiente Interativo:** Jupyter Lab
* **Solver de Otimização:** Gurobi Optimizer (`gurobipy`)

---

## 🚀 Como Executar o Projeto

### Pré-requisitos
Para executar os modelo sem limitações de tamanho de problema, certifique-se de possuir uma licença acadêmica do Gurobi (Node-Locked ou WLS) ativada.

### Passo a Passo

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/vianaddsv/gurobi-resolver.git
   cd gurobi-resolver
   ```

2. **Crie e ative um ambiente virtual isolado (`venv`):**
   ```bash
   python3 -m venv .venv
   source .venv/bin/activate
   ```

3. **Instale as dependências:**
   ```bash
   pip install jupyterlab gurobipy
   ```

4. **Inicie o Jupyter Lab:**
   ```bash
   jupyter lab
   ```

5. **Execute os Notebooks:**
   Abra os notebooks `.ipynb` dos estudos de caso e execute as células sequencialmente para visualizar a formulação matemática em Markdown, a execução do modelo e as análises dos resultados.

---
## ⚙️ Automação com Makefile

O projeto inclui um `Makefile` para automatizar tarefas operacionais e simplificar a emissão da licença via container efêmero:

### Comandos Disponíveis

* **`make get-key KEY=<chave-gurobi>`**:
  * Executa a imagem oficial `gurobi/optimizer` em modo descartável (`--rm`), sem necessidade de instalar binários locais do Gurobi para ativação.
  * Utiliza `--network=host` para mapear os identificadores de rede (MAC address) do computador host.
  * Injeta automaticamente as respostas de confirmação do prompt interativo (`printf "Y\n/lic\n"`), salvando o arquivo gerado (`gurobi.lic`) diretamente no diretório atual através do volume montado.
* **`make up`**: Inicia os serviços definidos no `docker-compose.yml` em segundo plano (`-d`).
* **`make down`**: Encerra e remove os containers ativos do projeto.
---

## 📖 Referência Bibliográfica

* GOLDBARG, Marco Cesar; LUNA, Henrique Pacca L. *Otimização Combinatória e Programação Linear: Modelos e Algoritmos*. 2. ed. Rio de Janeiro: Elsevier, 2005.
