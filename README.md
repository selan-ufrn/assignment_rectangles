# Interseção de Retângulos

Denominamos de **rentângulo $xy$-alinhado** um retângulo $`R`$ cujos lados são paralelos aos eixos Cartesianos $X$ e $Y$. Tal retângulo é caracterizado por seu canto inferior esquerdo $(R_x,R_y)$, e sua largura $R_w$ e altura $R_h$.

Sejam $R$ e $S$ dois retângulos $xy$-alinhados no plano Cartesiano, esreva uma função denominada de `Rect intersect(const Rect& R, const Rect& S)` que testa se $R$ e $S$ possui uma interseção não-vazia. Se a interseção for não-vazia, retorne o retângulo formado por essa intersção, caso contrário retorne um retângulo inválido (i.e. um retângulo que possua largura e altura com valores negativos).

Cada retângulo será representado em uma linha de texto contendo 4 valores reais de precisão simples: os dois primeiros valores correspondem às coordenada $(x,y)$ do canto inferior esquerdo do retângulo, e os próximos dois valores correspondem a _largura_  e _altura_  do retângulo, respectivamente.

# Entrada

A entrada corresponde um número indefinido de linhas, sendo que a cada duas linhas temos 2 retângulos que devem ser testados para interseção.

# Saída

Se houver interseção seu programa deve imprimir os 4 valores reais que caracterizam o retângulo resultante da interseção, usando a mesma representação anterior descrita para a entrada. Cada valor real deve ser impresso com 2 casas de precisão. Se não houver interseção seu programa deve imprimir a mensagem _"sem insersecao"_.

# Exemplos de Entrada/Saída

<table>
  <tr>
    <th>Entrada</th> <th>Saída</th>
  </tr>
  <tr>
    <td>
<pre>
-8.0 3.0 5.0 4.3
-3.0 2.0 6.0 3.0
2 3 5 5
10 3 2 5
</pre>
    </td>
    <td>
<pre>
-3.00 3.00 0.00 2.00
sem intersecao
</pre>
    </td>
  </tr>
    <tr>
    <td>
<pre>
1.5 3.0 5.0 5.0
8.5 3.0 5.0 5.0
</pre>
    </td>
    <td>
<pre>
sem intersecao
</pre>
    </td>
  </tr>
</table>

# Compilando e testando sua solução

Para facilitar a implementação de suas respostas, você vai encontrar nesse repositório o código de suporte organizado para ser compilado e testado com o uso do `cmake`.

Para criar sua solução você deve editar apenas o arquivo `src/main.cpp`.

## Dependências

Para você poder compilar e executar os testes preparados para o exercício é necessário os seguintes requisitos:
+ [GNU gcc](https://gcc.gnu.org/), [clang](https://clang.llvm.org/), ou outro: compilador C++.
+ [cmake](https://cmake.org/): para gerar os arquivos _Makefiles_, que gerenciam a compilação otimizada do projeto.
+ [Python](https://www.python.org/): para executar o script de teste de comparação de saída gerada/esperada.

## Instruções Categoria Implementação de Programa
A partir da pasta do projeto faça:
1. Edite o arquivo `src/main.cpp` e implemente a solução do problema.
2. Execute o comando do `cmake` para gerar os arquivos intermediários. Esse comando cria a pasta `build` que conterá os arquivos _Makefile_ e onde o executável será gerado.
```
cmake -S . -B build
```
3. Execute o comando do `cmake` para **compilar** o projeto `assigment_rectangles` dentro da pasta `build`. Esse comando criará um executável dentro de `build` chamado (de forma genérica) de `program`.

```
cmake --build build
```
4. Se houver erro de compilação, corrija e volte ao passo anterior. Se a compilação for bem sucedida, prossiga com o comando abaixo para entrar na pasta `build` e rodar os testes.
```
cd build
make verify
```
# Submissão do Trabalho
Registre (_commit_) todo o seu trabalho para o repositório do GitHub Classroom associado a esse projeto.

--------
&copy; DIMAp/UFRN 2021.
