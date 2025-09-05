#let autor = "Ricardo Luís"
#let instituicao = "ISEL"
#let ano = "2025"
#let titulo = "Enunciados dos Trabalhos Laboratoriais"
#let subtitulo = "Máquinas Elétricas II"
#let github_user = "Ricardo-Luis"
#let github_repo = "me-2-oer"
#let github_subpath = "/tree/main/lab-outlines"
#let github_raw_subpath = "/raw/main/lab-outlines"
#let github_pdf_file = "ME-II_Lab_Outlines.pdf"
#let github_url = "https://github.com/" + github_user + "/" + github_repo + github_subpath
#let github_download = "https://github.com/" + github_user + "/" + github_repo + github_raw_subpath + "/" + github_pdf_file


#set page(paper: "a4",
          margin: (top: 3cm, bottom: 2cm, left:2.5cm, right: 2.5cm),
          //numbering: "i/i",
          //number-align: (odd: right, //even: left)
          number-align: center
        )

#set text(lang: "pt")

#set align(center) 
#image("/images/logos/ISEL-logo-bk.png", height: 2.9cm) 

#set align(center) 
#text(14pt, font: "Chakra Petch")[Licenciatura em Engenharia Eletrotécnica]


#set align(center) 
#text(18pt, font: "Source Code Pro", baseline: 4cm)[#subtitulo]

#set align(center + horizon) 
#text(20pt, font: "Cantarell")[*#titulo*]



#set align(center + bottom) 
#text(10pt)[setembro #ano]



#pagebreak(to: "odd")


// Edição:


#import "@preview/metalogo:1.2.0": LaTeX

//   "\LATEX"
#let TeX = context(styles => {
  set text(font: "New Computer Modern")
  let e = measure("E", styles)
  let T = "T"
  let E = text(1em, baseline: e.height * 0.31, "E")
  let X = "X"
  box(T + h(-0.15em) + E + h(-0.125em) + X)
})

#let LaTeX = context(styles => {
  set text(font: "New Computer Modern")
  let a-size = 0.66em
  let l = measure("L", styles)
  let a = measure(text(a-size, "A"), styles)
  let L = "L"
  let A = box(scale(x: 105%, text(a-size, baseline: a.height - l.height, "A")))
  box(L + h(-a.width * 0.67) + A + h(-a.width * 0.25) + TeX)
})

//


#set page(numbering: none)

#set align(top + left, )
//#v(100%)


#counter(page).update(0)

//#pagebreak()
//verso-capa|

// 
// ============================================================================
// FOLHA DE ROSTO
// ============================================================================

#page[
  #set align(center)
  #v(2cm)
  
  // Título principal
 #text(size: 18pt, weight: "bold")[
    #titulo
  ]
  
 #if subtitulo != "" [
    #v(0.5cm)
    #text(size: 18pt)[
      #subtitulo
    ]
 ]
  
 #v(1.5cm)
  
 // Informação OER
 #set align(center)
 #set text(size: 11pt)
  
 *RECURSO EDUCACIONAL ABERTO (REA)*\
 *OPEN EDUCATIONAL RESOURCE (OER)*
  
 #v(1cm)

#set align(left)
  *Licença:* CC BY-SA 4.0 International\
  #link("https://creativecommons.org/licenses/by-sa/4.0/")
  
 #v(0.5cm)


*Autor:* #autor\ 
*Instituição:* #instituicao\
*Ano:* #ano
  
#v(0.5cm)


  *Repositório GitHub:* #link(github_url)

  
  *Editor: * #link("https://typst.app")[Typst] (ficheiros fonte .typ disponíveis no repositório)
  
  #v(1.5cm)

  // Secção sobre ferramentas de IA
  #set text(size: 11pt)
  
*Ferramentas de inteligência artificial utilizadas:*\

#h(0.5cm) • Perplexity AI: pesquisa de fontes e referências bibliográficas;

#h(0.5cm) • NotebookLM: organização de conteúdos a partir de pesquisa dirigida nos documentos fornecidos pelo autor;

#h(0.5cm) • Claude (Anthropic):  revisão e aprimoramento do texto para maior fluidez e correção linguística.\

\
*Nota:* O autor assume inteira responsabilidade editorial e científica sobre o conteúdo apresentado.
#v(1.5cm)


  
// Secção de citação
  #set text(size: 12pt)
  
*Como citar este documento:*

#raw(autor + ", \"" + titulo + "\", " +  subtitulo + ", recurso educacional aberto, " + instituicao + ", " + ano + ". [Online].\nDisponível: " + github_url)

]

#pagebreak(to: "odd")

// ==============================================================


//Prefácio:

#set page(
   header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) Enunciados TL
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("I")
    ], 
)


#counter(page).update(1)

#set align(top + left)
#v(1cm)
#set text(16pt, font: "TeX Gyre Termes")
#heading(outlined: false, bookmarked: true)[Prefácio]

#set par(spacing: 14pt)
#set text(12pt, font: "Liberation Serif" )
#set par(first-line-indent: (
  amount : 1.0cm,
  all: true),
  leading: 12pt,
  justify: true
  )
 #v(18pt)
  Este documento tem como objetivo orientar os grupos de trabalho das aulas práticas de Máquinas Elétricas II, fornecendo linhas de orientação para a preparação dos ensaios a realizar no Laboratório Máquinas Elétricas (LME) e para a elaboração dos respetivos relatórios técnicos.

  No LME pretende-se um ambiente de experimentação colaborativa e de prática reflexiva. Nesse sentido, as aulas práticas são estruturadas para orientar os estudantes no trabalho em equipa durante a realização de ensaios experimentais, tendo como esteio as competências técnicas nos procedimentos de ensaio e de segurança. Promove-se a observação sistemática e a reflexão estruturada sobre os resultados obtidos, conduzindo os estudantes a analisar os dados recolhidos, a fundamentar-se nos conhecimentos teóricos, a decidir sobre ajustes nos procedimentos e executar as modificações necessárias.
  
  Para tal, após a constituição dos grupos de trabalho no início do semestre, é necessária a consulta do documento "Planeamento das Aulas Práticas", que inclui:
#set list(indent: 2cm)
  - Calendarização semanal das atividades;
  - Distribuição das bancadas de trabalho;
  - Pré-requisitos para as aulas práticas;
  - Informação sobre a entrega de relatórios.
  #v(6pt)
  
  Cada enunciado de Trabalho Laboratorial (TL) está estruturado da seguinte forma:
  - Objetivos de aprendizagem;
  - Introdução ao TL;
  - Sequência de ensaios; 
  - Considerações para observação e análise de resultados. 
#v(6pt)

  Esta estrutura visa proporcionar aos estudantes uma compreensão clara das expectativas e procedimentos para cada TL, facilitando uma aprendizagem eficiente e uma experiência laboratorial produtiva. 
  Complementarmente, este documento inclui um anexo sobre a elaboração de relatórios laboratoriais.
  
  
  //Complementarmente, este documento inclui dois anexos de apoio: um sobre aspetos técnicos de segurança e outro sobre a elaboração de relatórios laboratoriais.

  \
  
  Lisboa, setembro de 2025
#set align(right);
Ricardo Luís

#pagebreak()




//Página em branco:
#set page(
  header: context [],
  footer: context []
)
#v(100%)    //forma expedita de colocar página em branco, sem estar numerado
//Página em branco|






// Ou numa caixa com largura controlada
//#align(right + horizon)
#set quote(block: true)
#show quote: set align(right + horizon)
//#show quote: set pad(x: 2.9cm)

#quote(attribution: [*Herbert Simon* (1916-2001)])[
_A aprendizagem é resultado do que o aluno faz\ e pensa, e somente do que o aluno faz e pensa.\ O professor só pode promover a aprendizagem\ influenciando o que aluno faz e pensa._ 
\
\
]

//Prefácio|

//verso-Prefácio:
#set page(
  header: context [],
  footer: context []
)
#v(100%)    //forma expedita de colocar página em branco, sem estar numerado
//verso-Prefácio|

// Índice:

#set page(
   header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) Enunciados TL
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("I")
    ], 
)


#v(0.3cm)
#set align(left) 
//#outline(title: "Índice")
#show outline.entry.where(level: 1): it => {
  v(12pt, weak: false)
  strong(it)
}


#set text(12pt, font: "TeX Gyre Termes")
#outline(title: "Índice", indent: 0.85cm)
#v(0%)

//#pagebreak(to: "odd", weak: false)
// Índice|



//doc:

#set page(
  header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) Enunciados TL
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )
#counter(page).update(1)

#show heading.where(level: 1): it => block(width: 100%)[
  #set align(right)
  #v(0.5cm)
  #set text(14pt, font: "Source Code Pro", weight: "regular")
  #smallcaps(it.body)
]

#show heading.where(level: 2): it => block(width: 100%)[
  #set align(left)
  #v(0.5cm)
  #set text(14pt, font: "Cantarell", weight: "bold")
  #it.body
]
//
#set par(justify: true)
#set text(
  font: "Liberation Serif",
  size: 12pt,
)

// código para indicar usar a vírgula como separador decimal no texto:
#show regex("\d+\.\d+"): it => {
    if it.func() != heading {show ".": ","}
    it
  }

// código para indicar usar a vírgula como separador decimal nas equações:
#show math.equation: it => {
    show regex("\d+\.\d+"): it => {show ".": {","+h(0pt)}
        it}
    it
}
//





#set page(
  header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) Geradores de Corrente Contínua
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )


#set list(indent: 1cm)

= TL1: Geradores de Corrente Contínua



== Objetivos de aprendizagem
#v(6pt)

Como resultado do TL1 - Geradores de Corrente Contínua, pretende-se que o estudante adquira capacidades para:

- Conceber e executar esquemas elétricos de geradores de CC;
- Operar geradores CC com diferentes tipos de excitação;
- Conduzir ensaios para obtenção de curvas características de funcionamento de geradores CC;
- Distinguir os processos de regulação da tensão de saída de um gerador CC;
- Analisar comparativamente as curvas características de geradores CC. 

== Introdução
#v(6pt)

As máquinas de Corrente Contínua (CC) são classificadas quanto ao tipo de excitação que utilizam na montagem do seus circuitos elétricos. No funcionamento como gerador CC distinguem-se dois grupos principais:
- Gerador CC de excitação separada ou independente. O circuito indutor é alimentado por uma fonte CC;
- Geradores CC autoexcitados. O(s) circuito(s) indutor(es) do gerador é(são) alimentado(s) pela tensão produzida pelo induzido.

Para uma análise completa do gerador CC, do(s) seu(s) circuito(s) indutor(es) e induzido, podem ser consideradas as seguintes curvas características:
 - Característica magnética ou de vazio;
 - Característica externa;
 - Característica de regulação.

== Ensaios laboratoriais
#v(6pt)
#heading(level:3, outlined: false, bookmarked: true)[TL1.1: Gerador CC de excitação separada]
#v(6pt)
- Ensaio em vazio para caracterização do circuito indutor a duas velocidades constantes distintas; 
- Ensaio em carga para caracterização do circuito induzido. Regulação de um ponto de funcionamento do gerador em carga. 

#v(6pt)
#heading(level:3, outlined: false, bookmarked: true)[TL1.2: Características externas de geradores autoexcitados]
#v(6pt)
- Ensaio carga de um gerador autoexcitado. Sugestão: utilizar o gerador em excitação derivação;
- Verificar e testar a influência do enrolamento série no funcionamento do gerador autoexcitado. Sugestão: modificar a montagem anterior para excitação composta; 


== Sugestões de análise 
#v(6pt)
- Quais as condições necessárias para a autoexcitação num gerador CC?
- Determinar as quedas de tensão de um gerador CC;
- Comparar as características externas do gerador CC para os vários tipos de excitação;
- Definir uma característica de regulação para um gerador CC.




#v(60%)

#pagebreak()

#set page(
  header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) Motores de Corrente Contínua
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )


= TL2: Motores de Corrente Contínua
\

#set list(indent: 1cm)

== Objetivos de aprendizagem
#v(6pt)

Como resultado do TL2 - Motores de Corrente Contínua, pretende-se que o estudante adquira capacidades para:
- Conceber e executar esquemas elétricos de motores de CC;
- Operar motores CC com diferentes tipos de excitação;
- Conduzir ensaios para obtenção de curvas características de funcionamento de motores CC;
- Analisar comparativamente as curvas características de motores CC;
- Distinguir os processos de regulação da velocidade de um motor CC;
- Regular a velocidade do motor CC através do sistema Ward-Leonard;
- Obter um mapa de funcionamento de um motor CC em regime de velocidade variável. 

== Introdução
#v(6pt)

Para caracterização do funcionamento de motores de Corrente Contínua (CC) são estabelecidas curvas características que relacionam grandezas que permitem verificar o comportamento de um motor CC no seu funcionamento em regime permanente:

- *Característica de velocidade*: $n=upright(f)(I)$, com $U$ e $R_c$ constantes;
- *Característica de binário*: $T=upright(f)(I)$, com $U$ e $R_c$ constantes;
- *Característica mecânica*: $n=upright(f)(T)$ ou $T=upright(f)(n)$, com $U$ e $  R_c$ constantes.

Estas curvas características podem ser obtidas experimentalmente, ensaiando os motores CC em regime de carga variável, ou deduzidas teoricamente, conhecendo algumas grandezas e parâmetros da máquina CC: $E_0=upright(f)(i_"exc"), U, I, R_i, R_s, display(N_s/N_d), Delta E(I_i)$.

\
O sistema Ward-Leonard permite obter um acionamento de velocidade variável com as grandezas de saída, velocidade e binário, desacopladas. Ou seja, este sistema permite controlar de forma independente, a velocidade e o binário disponível. Neste ensaio experimental são obtidas as grandezas do motor CC, que permitem obter a potência elétrica consumida e a potência mecânica útil, em regime de velocidade e carga variáveis. Com estes dados torna-se possível representar um mapa de funcionamento desta máquina, por exemplo, representando curvas de nível (isolinhas) de rendimento do motor em regime de velocidade e binário variáveis.


== Ensaios laboratoriais
#v(6pt)
#heading(level:3, outlined: false, bookmarked: true)[TL2.1: Motor excitação derivação _vs._ excitação composta]
#v(6pt)
- Ensaio em carga do motor CC de excitação derivação; 
- Ensaio em carga do motor CC de excitação composta (aditiva e subtrativa);
- Verificação das condições de embalamento do motor CC.
#v(6pt)
#heading(level:3, outlined: false, bookmarked: true)[TL2.2: Motor série]
#v(6pt)
- Ensaio carga de um motor CC de excitação série;
- Verificação das condições de embalamento do motor série.
#v(6pt)
#heading(level:3, outlined: false, bookmarked: true)[TL2.3: Sistema Ward-Leonard]
#v(6pt)
- Ensaio de um motor CC de excitação separada, em regime de carga variável, alimentado por uma rede CC de tensão variável.
  

== Sugestões de análise 
#v(6pt)
- Em que situações pode ocorrer um embalamento num motor CC?
- Comparar as características de velocidade e de binário do motor CC para os vários tipos de excitação;
- Representar num gráfico as características mecânicas, $n=upright(f)(T_u)$, do motor CC do sistema Ward-Leonard;
- Determinar o mapa de eficiência de um motor CC de excitação separada, no regime de velocidade e carga variáveis, a partir dos dados de ensaio do sistema Ward-Leonard.
#v(20%)





#pagebreak(to: "odd")

#set page(
  header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) Alternador Síncrono Isolado
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )




= TL3: Alternador Síncrono Isolado


#set list(indent: 1cm)

== Objetivos de aprendizagem
#v(6pt)

Ao completar o trabalho laboratorial, TL3 - Alternador Síncrono Isolado, o estudante será capaz de:
- Identificar e diferenciar alternadores síncronos de polos lisos e polos salientes;
- Conceber e executar esquemas elétricos de Alternadores Síncronos Trifásicos (AST) em rede isolada;
- Conduzir ensaios para determinação dos parâmetros do circuito equivalente por fase, em AST de polos lisos e de polos salientes;
- Operar AST em rede isolada em condições variáveis de carga (corrente e $cos phi$):
  - levantar e interpretar características externas de funcionamento;
  - obter características de regulação de tensão;
  - compreender os mecanismos de regulação da tensão e da frequência. 
- Desenvolver e interpretar diagramas vetoriais de tensões do alternador para diferentes condições de operação.


== Introdução
#v(6pt)

A análise em regime permanente de um AST a operar numa rede elétrica isolada baseia-se em duas ferramentas analíticas principais:
- *circuito equivalente por fase*;
- *diagrama vetorial de tensões por fase*.

Para implementar estas ferramentas é necessária uma caracterização detalhada dos circuitos indutor (rotor) e induzido (estator). Assim, os parâmetros elétricos da máquina determinam-se a partir dos seguintes ensaios experimentais:
- Ensaio do alternador em vazio, à velocidade nominal, para obter a característica magnética, $E_0=upright(f)(I_"exc")$;
- Ensaio do alternador em curto-circuito, à velocidade nominal, para obter a característica de curto-circuito, $I_"cc"=upright(f)(I_"exc")$;
- Ensaio de pequeno escorregamento para identificação do tipo de rotor da máquina síncrona (polos lisos ou polos salientes);
- Medição da resistência dos enrolamentos do estator.

#v(12pt)
Os ensaios do AST em carga variável com diferentes fatores de potência permitem extrair curvas características do seu funcionamento em rede elétrica isolada:

- *Característica externa*: $U=upright(f)(I)$, com velocidade, $I_"exc"$ e $cos phi$ constantes;
- *Característica de regulação da tensão*: $I_"exc"=upright(f)(I)$, com $U$, velocidade e $cos phi$ constantes.

Estas curvas características permitem validar o(s) modelos considerado(s) para análise do comportamento do AST, para diferentes tipos de carga, comparando os resultados teóricos e experimentais.


== Ensaios laboratoriais
#v(6pt)

#heading(level:3, outlined: false, bookmarked: true)[TL3.1: Máquina síncrona de polos lisos _vs._ polos salientes]
#v(6pt)
- Ensaios em vazio e de curto-circuito;
- Ensaio de pequeno escorregamento;
- Medição da resistência dos enrolamentos do estator.

#v(6pt)
#heading(level:3, outlined: false, bookmarked: true)[TL3.2: Características externas]
#v(6pt)
- Ensaios em carga do AST com cargas resistiva e reativa:
 - obtenção das característica externas;
 - obtenção das características de regulação da tensão;
 - observação da regulação de tensão e frequência do alternador.


== Sugestões de análise 
#v(6pt)
- Desenvolva o circuito equivalente por fase do AST usando o modelo de polos lisos e determine as características externas teóricas;
- Compare os resultados teóricos com as características externas obtidas experimentalmente;
- Sob condições de corrente de carga constante e tensão nominal, elabore os diagramas vetoriais de tensões para diversos cenários de fator de potência;
- Estabeleça a relação entre os diagramas vetoriais obtidos e as respetivas características de regulação da tensão, comparando e discutindo os resultados observados;
- Usando o exemplo prático de um grupo eletrogéneo a Diesel (também conhecido por grupo gerador-Diesel), avalie a necessidade e o funcionamento dos reguladores de tensão e de velocidade na sua operação autónoma em rede isolada.


//#pagebreak(to: "odd")



#set page(
  header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) Enunciados TL
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )





#set page(
  header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) Máquina Síncrona sobre Rede Elétrica
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )


  

= TL4: Máquina Síncrona sobre Rede Elétrica


#set list(indent: 1cm)


== Objetivos de aprendizagem
#v(6pt)

Após a conclusão do trabalho laboratorial, TL4 - Máquina Síncrona sobre Rede Elétrica, o estudante será capaz de:
- Compreender as funções da Máquina Síncrona Trifásica (MST) na rede elétrica;
- Elaborar e implementar esquemas de ligação da MST para operação na rede elétrica;
- Executar os procedimentos de ligação da MST à rede elétrica e operá-la nos quatro quadrantes de funcionamento (como alternador, motor e compensador síncrono);
- Obter experimentalmente e interpretar curvas V (curvas de Mordey) de uma MST;
- Associar e operar alternadores síncronos 3$tilde$ em paralelo numa rede elétrica isolada, garantindo a repartição de carga entre alternadores com tensão e frequência constantes;
- Desenvolver e interpretar diagramas vetoriais de tensões da MST em rede elétrica sob diferentes condições de operação.

#v(12pt)
== Introdução
#v(6pt)

Este trabalho analisa o funcionamento da MST ligada a uma rede elétrica. Considera-se a rede elétrica de corrente alternada do laboratório de potência infinita, o que implica que a tensão e frequência constantes. Assim, nos ensaios TL4.1 e TL4.2 ajustam-se as potências ativa (alternador), mecânica (motor) e reativa (alternador/motor/compensador), considerando que a tensão da MST e a velocidade do rotor permanecem constantes. Essa estabilidade estática é garantida pelo acoplamento magnético entre o rotor e o campo girante, pois os enrolamentos do estator, ligados à rede elétrica, estão sob a mesma tensão e frequência.\
No ensaio TL4.3, a rede elétrica é formada por alternadores em paralelo alimentando uma carga de carácter indutivo (RL), configurando uma rede elétrica isolada. Este ensaio procura responder a duas questões principais:
 - Como manter a tensão e a frequência constantes ao variar a carga ativa e/ou reativa, preservando a repartição de carga entre os alternadores?
 - Como ajustar a repartição de carga (ativa e reativa) entre os alternadores, mantendo constantes a tensão e a frequência?
 #v(6pt)
 O trabalho TL4 possibilita a compreensão prática e teórica da operação da MST em redes elétricas, capacitando o estudante a aplicar conceitos de sincronismo, gestão e repartição de carga em contextos reais de geração e operação de energia elétrica.



== Ensaios laboratoriais


#heading(level:3, outlined: false, bookmarked: true)[TL4.1: Ligação a rede elétrica e funcionamento nos 4 quadrantes]
#v(6pt)
- Sincronização do alternador com a rede elétrica;
- Operação da MST nos quatro quadrantes de funcionamento, incluindo fator de potência unitário e atuação como compensador síncrono. 

#v(6pt)
#heading(level:3, outlined: false, bookmarked: true)[TL4.2: Curvas de Mordey]
#v(6pt)
- Utilização da MST como motor acoplado a um gerador de corrente contínua (mais carga elétrica) para ensaio em carga no motor síncrono.
- *Bancadas 2 e 3 (MST sem barras amortecedoras)*: preparar esquema e procedimento para ligação da MST à rede elétrica por meio de motor de arrasto.
- *Bancadas 4 e 5 (MST com barras amortecedoras)*: preparar esquema e procedimento para ligação da MST à rede elétrica, utilizando as barras amortecedoras (arranque como motor de indução com auxílio de autotransformador).

#v(6pt)
#heading(level:3, outlined: false, bookmarked: true)[TL4.3: Paralelo de alternadores em rede isolada]
#v(6pt)
- Sincronização (paralelo) entre alternadores síncronos trifásicos;
- Regulação de frequência e tensão _vs_ repartição de carga ativa e reativa.


#v(12pt)
== Sugestões de análise 
#v(6pt)

- Reflita sobre as condições de sincronização do alternador síncrono com a rede elétrica ou entre alternadores. Por exemplo, quais poderiam ser as implicações de sincronizar as tensões entre o alternador e a rede sem a verificar a sequência de fases? 
- Elabore diagramas vetoriais simplificados para explicar a operação da MST nos quatro quadrantes, assumindo o modelo de polos lisos e resistência estatórica, $R approx 0$;
- Utilize diagramas vetoriais da MST para verificar pontos de operação distintos nas curvas "V" da máquina;
- Analise as curvas "V" da MST, interpretando-as nas componentes de potência ativa/mecânica, reativa e aparente;
- No paralelo de alternadores em rede isolada, analise os processos de regulação de tensão e frequência em resposta a variações de carga;
- No paralelo de alternadores em rede isolada, avalie os processos de repartição de carga entre alternadores, mantendo constantes a tensão e frequência da rede isolada;
- Analise o funcionamento da MST como compensador síncrono nos ensaios realizados.




//#pagebreak(to: "odd")


#set page(
  header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) Enunciados TL
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )



= TL5: Transitórios de Máquinas Elétricas

#set list(indent: 1cm)

#v(16pt)
== Objetivos de aprendizagem
#v(16pt)

Como resultado do trabalho laboratorial, TL5 - Transitórios de Máquinas Elétricas, pretende-se que o estudante adquira capacidades para:

- Distinguir os regimes transitórios das máquinas elétricas (ME) em estudo (ME de corrente contínua e ME síncrona trifásica), examinando o comportamento e os resultados experimentais em ensaios específicos;
- Determinar os parâmetros mecânicos de uma ME a partir do ensaio de desaceleração; 
- Obter os parâmetros que caracterizam o regime dinâmico de um curto-circuito trifásico aplicado a um alternador síncrono em vazio.




#v(16pt)
== Introdução
#v(10pt)

Este trabalho permite uma introdução ao funcionamento dos regimes dinâmicos das ME analisadas durante as atividades laboratoriais.\
Assim, neste trabalho laboratorial é utilizado o motor de corrente contínua como exemplo para obtenção da sua equação mecânica, através dos ensaios em vazio, para determinar as perdas mecânicas, $p_"mec"$, e de desaceleração para obter os parâmetros mecânicos. A equação mecânica do motor como parte do modelo matemático da máquina é fundamental para simulação e otimização do seu desempenho, e como base para estudos mais avançados em máquinas elétricas e sistemas de controlo.\
A análise do regime transitório de um curto-circuito trifásico aplicado a um alternador síncrono é fundamental para o dimensionamento de equipamentos de proteção, como disjuntores e relés. Este estudo permite garantir que os dispositivos sejam capazes de suportar e interromper correntes de defeito elevadas, assegurando assim a integridade e a segurança do sistema elétrico onde a máquina síncrona esteja integrada.

#pagebreak()

== Ensaios laboratoriais
#v(6pt)
#heading(level:3, outlined: false, bookmarked: true)[Máquina de corrente contínua]
#v(6pt)
- Ensaio em vazio do motor de corrente continua (utilizar excitação em derivação ou independente) para separação de perdas mecânicas e magnéticas, $p_"(mec+Fe)"$;
- Ensaio de desaceleração do motor de corrente contínua para determinação dos parâmetros mecânicos: momento de inércia, $J$, coeficiente de atrito dinâmico, $K_d$, e coeficiente de atrito estático, $K_e$.

#v(6pt)
#heading(level:3, outlined: false, bookmarked: true)[Máquina síncrona de polos salientes]
#v(6pt)
- Ensaio do alternador à tensão nominal em vazio, submetido a um curto-circuito trifásico.

#v(30pt)
== Sugestões de análise 
#v(16pt)

- Analisar o transitório mecânico do motor de corrente contínua, obtendo: 
 - o binário relativo às perdas mecânicas, $T_p$;
 - os parâmetros mecânicos $(J, K_d, K_e)$ e a validação dos mesmos, estimando a curva de velocidade de desaceleração, $omega(t)$, por amortecimento natural da máquina ensaiada.
#v(12pt)
- Analisar a envolvente da corrente do curto-circuito trifásico do alterador, determinando:
 - as correntes de curto-circuito subtransitória, transitória e de regime permanente $(I''_"cc", I'_"cc", I_"cc")$;
 - a corrente máxima de curto-circuito do alternador devido à componente contínua;
 - as reatâncias síncronas subtransitória, transitória e de regime permanente $(X''_d, X'_d, X_d)$;
 - as constantes de tempo subtransitória, transitória e da armadura (estator) $(T''_d, T'_d, T_a)$.


//#pagebreak(to: "odd")

/*


#set page(
  header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) Enunciados TL
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )



#set list(indent: 1cm, spacing: 14pt)




#set page(
  header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) Aspetos Técnicos de Segurança
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )



= ANEXO A: Aspetos Técnicos de Segurança







#set page(
  header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) Enunciados TL
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )



*/
  
#set list(indent: 1cm, spacing: 14pt)


#set page(
  header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) Relatório Laboratorial
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )




= ANEXO: Relatório Laboratorial


== Âmbito
#set list(indent: 0.75cm)

#heading(level:3, outlined: false, bookmarked: true)[Objetivo do Relatório]
#v(6pt)

O relatório laboratorial é um documento essencial que regista e interpreta os resultados dos ensaios experimentais. Visa documentar de forma sistemática e rigorosa o processo experimental, apresentando a metodologia utilizada, os resultados obtidos, a sua análise crítica e as conclusões relevantes para o trabalho desenvolvido, @i-Barrass1995, @i-Alley1998.
#v(6pt)

#heading(level:3, outlined: false, bookmarked: true)[Importância Académica e Profissional]
#v(6pt)

- Desenvolve competências de comunicação técnico-científica;
- Treina metodologias de registo e análise de dados;
- Promove o pensamento crítico e a capacidade de interpretação;
- Prepara os estudantes para práticas profissionais em engenharia.

== Estrutura
#v(6pt)
O relatório deve ter entre 15-25 páginas (conforme o número de aulas práticas), procurando a síntese e objetividade no desenvolvimento do conteúdo. A estrutura recomendada inclui os seguintes elementos, @i-alley2025lab:
#v(6pt)
#set enum(indent: 0.5cm, body-indent: 0.25cm, spacing: 14pt)

1. *Título*: apresentado na folha de rosto, com outros elementos como: instituição, curso, unidade curricular, grupo de trabalho, data. 
2. *Introdução*: tem o propósito de apresentar o contexto do trabalho (enquadramento), e estabelecer os objetivos. \
  2.1 *Enquadramento*\   
  2.2 *Objetivos*
3. *Procedimentos de Ensaio*: essencial para descrever como o trabalho foi realizado, com detalhe suficiente para que outros possam repetir o procedimento (condução do trabalho/ensaio). De modo a ilustrar as metodologias usadas, os esquemas de ligações e os materiais utilizados devem ser considerados, identificando o objeto de estudo. \
  3.1 *Esquema(s) de ligações*\
  3.2 *Material utilizado*\
  3.3 *Condução do trabalho* (por ensaio)
4. *Resultados Experimentais*: apresentar os dados e observações (em geral, na forma de tabelas e figuras) de forma objetiva, sem interpretação nesta fase.
5. *Análise de Resultados*: a discussão é essencial para interpretar os resultados, relacioná-los com os objetivos e o enquadramento, e eventualmente com outros trabalhos ou comportamento teórico esperado.
6. *Conclusões*: apresenta os aspetos fundamentais, ligando-os aos objetivos do trabalho.

#v(6pt)
A estes elementos podem ainda ser considerados na estrutura do relatório, de acordo com a dimensão e complexidade do mesmo, Índice, Listas de abreviaturas/símbolos/figuras/tabelas/glossário, Resumo/_Abstract_, Bibliografia e Anexos...


== Escrita Técnica
#v(6pt)
A escrita técnica deve ser clara, objetiva e precisa, facilitando a comunicação entre especialistas. Seguem orientações essenciais,  @i-Barrass1995, @i-Alley1998:
#v(6pt)
- *Objetividade*: Seja direto e evite linguagem coloquial ou ambígua.
- *Clareza*: Use frases curtas e evite períodos muito longos. Prefira a voz ativa (“O grupo realizou...”).
- *Organização*: Mantenha a estrutura lógica e sequencial, com títulos descritivos e numeração hierárquica.
- *Impersonalidade*: Evite opiniões pessoais e use linguagem impessoal (“Verificou-se que...”).
- *Legibilidade*: Utilize fontes e tamanhos adequados, margens uniformes e espaçamento consistente.
- *Terminologia*:Utilize terminologia técnica correta e defina todas as siglas e símbolos na primeira ocorrência.
- *Esquemas Elétricos*: Assegure o uso correto da simbologia normalizada de acordo com a norma IEC 60617, @iec60617. Esta conformidade é essencial para a comunicação técnica precisa e universal.
- *Figuras e Tabelas*: Numere e legende todas as figuras e tabelas, indicando preferencialmente unidades do Sistema Internacional, @BIPM_2024.
- *Revisão*: Verifique o texto para eliminar erros ortográficos, gramaticais e de formatação.
- *Referências*: Cite todas as fontes consultadas, seguindo uma das normas internacionais, ou nacional, usuais em engenharia (IEEE, ISO 690 ou NP 405).
 

== Ferramentas técnicas 
#v(6pt)
Na redação de documentos técnicos e relatórios laboratoriais, a escolha adequada de ferramentas computacionais promove eficiência, reprodutibilidade e o rigor técnico. Recomenda-se que os grupos de trabalho selecionem as ferramentas que considerarem mais convenientes para o seu contexto específico. Apresentam-se a seguir algumas sugestões de ferramentas FOSS (_Free and Open Source Software_) compatíveis com os vários sistemas operativos (Linux, macOS, e Windows).

#show link: underline

#v(12pt)
#align(center, block[
  Tabela 1 - Ferramentas FOSS para a realização de documentos técnicos
])

//#set align(center)
//#text(11pt)[Tabela 1 - Ferramentas FOSS para a realização de documentos técnicos]

#import "@preview/metalogo:1.2.0": LaTeX

#table(
  columns: 3,
 align: (horizon + left),
  table.header(
     [*Categoria*], [*Ferramenta*], [*Descrição*]),
     
  table.cell(
    rowspan: 4, align: (horizon + left), [*Escrita,\ Edição e\ Formatação*]
  ),
  [#link("https://www.onlyoffice.com/")[OnlyOffice],\ #link("https://www.libreoffice.org/")[LibreOffice]], [Processadores de texto para documentos, com suporte a formatação avançada e compatibilidade],
  [#link("https://typst.app/")[Typst]], [Alternativa moderna ao #LaTeX, com sintaxe simplificada e tipografia automática para documentos técnicos],
  [#link("https://www.overleaf.com/")[Overleaf]], [Plataforma online colaborativa para edição #LaTeX, controlo de versões e modelos de documentos científicos],
  [#link("https://www.texstudio.org/")[TeXstudio],\ #link("https://www.tug.org/texworks/")[TeXworks],\ #link("https://www.xm1math.net/texmaker/")[TeXmaker]], [Editores de texto para a escrita de documentos #LaTeX],
  
  table.cell(
    rowspan: 4, align: (horizon + left), [*Folha de\ Cálculo / Gráficos\ de Resultados*]
  ),
  [#link("https://www.onlyoffice.com/")[OnlyOffice],\ #link("https://www.libreoffice.org/")[LibreOffice]], [As respetivas folhas de cálculo são alternativas compatíveis com o Microsoft Excel],
  [#link("https://labplot.org/")[LabPlot]], [Análise e visualização de dados científicos com gráficos 2D/3D avançados e ferramentas estatísticas],
  [#link("http://www.gnumeric.org/")[Gnumeric]], [Folha de cálculo leve e precisa, instalação independente sem necessidade de _suite office_ completa],

  [#link("http://www.gnuplot.info/")[gnuplot]], [Utilitário de linha de comandos para criação de gráficos 2D/3D e visualização de funções matemáticas e dados],
    
  table.cell(
    rowspan: 3, align: (horizon + left), [*Desenho\ Técnico*]
  ),
  [#link("https://librecad.org/")[LibreCAD],\ #link("https://www.qcad.org/en/")[QCAD]], [Aplicações de desenho assistido por computador (CAD) bidimensional (2D) que utilizam o formato base DXF],
  [#link("https://www.drawio.com/")[draw.io]], [Desenhos como esquemas, diagramas e fluxogramas, com bibliotecas para facilitar a criação, com exportação para SVG, PNG, JPEG, PDF, _etc._],
  [#link("https://www.drawio.com/")[QElectroTech]], [Esquemas elétricos, eletrónicos, controlo e automação e outras áreas de engenharia com uma vasta biblioteca de componentes],
  table.cell(
    rowspan: 2, align: (horizon + left) , [*Linguagens\ de descrição\ gráfica textuais *]
  ),
  [#link("https://cetz-package.github.io/")[CeTZ]], [Biblioteca Typst para ilustrações vetoriais, esquemas e diagramas],
  [#link("https://tikz.net/")[TikZ]], [Biblioteca #LaTeX para ilustrações vetoriais, esquemas e diagramas],

  table.cell(
    rowspan: 4, align: (horizon + left), [*Computação\ Científica\ e Análise\ Numérica*]
  ),
  [#link("")[Octave]], [Linguagem de programação compatível com a sintaxe do MATLAB, utilizada para computação numérica e visualização de dados],
  [#link("https://julialang.org/")[Julia]], [Linguagem de programação dinâmica de elevado desempenho, ideal para computação científica, análise numérica e aplicações de engenharia],
  [#link("https://www.python.org/")[Python]], [Linguagem e bibliotecas (NumPy, SciPy, SymPy) para cálculo numérico, simbólico e simulações científicas],
  [#link("https://www.scilab.org/")[Scilab]], [Ambiente de programação para cálculo numérico com ferramentas para análise de dados, visualização e simulação, semelhantes ao MATLAB e Simulink],
)

#v(12pt)
=== _Notebooks_ computacionais como Ambiente Integrado
#v(6pt)
Para projetos multidisciplinares e relatórios técnicos, pode considerar-se a utilização de _notebooks_ computacionais (e.g., Jupyter, Pluto, Google Colab, LabPlot) como ambiente de integração para desenvolvimento, análise e documentação. Nestes ambientes, é possível combinar código, texto, equações matemáticas, visualizações e tabelas, facilitando a reprodução dos resultados e a elaboração de relatórios técnicos claros e completos. Um exemplo de relatório laboratorial sobre máquinas elétricas no formato de _notebook_ computacional pode ser consultado em @luis2025notebooks. 


#v(6pt)
=== Trabalho Colaborativo em Tempo Real
#v(6pt)
Entre as ferramentas recomendadas, destacam-se as seguintes plataformas que permitem trabalho colaborativo em tempo real, com edição simultânea por vários utilizadores, histórico de versões e controle de acessos:

- Typst (documentos Typst)\
- Overleaf (documentos LaTeX)\
- OnlyOffice, #link("https://cryptpad.fr/")[CryptPad] (documentos, folhas de cálculo, ...)
- Draw.io (desenhos, esquemas, diagramas, fluxogramas)
- #link("https://colab.google/")[Google Colab] (serviço alojado do Jupyter Notebook que não requer configuração para utilização e fornece acesso a recursos de computação, através das linguagens de programação: Python, Julia, R)

#v(6pt)
=== Inteligência Artificial Generativa 
#v(6pt)
A Inteligência Artificial Generativa (GenAI) pode apoiar a redação e revisão de relatórios, mas a sua integração deve ser feita com *responsabilidade*, *transparência* e *sentido crítico*, @Holmes2024-lt, @COHEN2025111646 @soc15010006.
#v(6pt)
- *Trabalhar com GenAI, não através dela*
 - Use-a para: revisão gramatical e ortográfica, verificação ou sugestões de estrutura do relatório, esclarecimento de conceitos, organização inicial de ideias ou para _brainstorming_;
 - Evite usar para: escrever secções inteiras do relatório, interpretar resultados experimentais, substituir a sua análise crítica e tirar conclusões científicas;
 - Não perca a prática da escrita: editar texto gerado não substitui o exercício da escrita;
 - Pratique o pensamento crítico: confronte, questione e valide sempre os resultados.
#v(6pt)
- *Transparência*
 - Declare sempre o uso de GenAI, explicando como foi utilizada (ex.: revisão, resumo, verificação gramatical). Exemplos de declaração:
    
  “A revisão linguística deste relatório foi apoiada por GenAI (ex.: ChatGPT, Gemini). O conteúdo final foi validado e é assumido pelos autores.”

  "Recorreu-se à GenAI (Claude) para esclarecimento de terminologia técnica. A interpretação dos resultados é da responsabilidade dos autores."
  
 - Verifique e cite a informação obtida, recorrendo a fontes credíveis.
#v(6pt)
- *Considerações Éticas*
 - Integridade: declare sempre o uso e mantenha a equidade académica;
 - Questione-se: "Isto ajuda-me a aprender ou substitui o meu pensamento?"
 - Proteja dados pessoais e respeite direitos de autor.
#v(6pt)
- *Autoria e Responsabilidade*
 - O relatório deve refletir o seu/vosso entendimento e reflexão crítica;
 - A GenAI não substitui a autoria nem a responsabilidade académica do(s) estudante(s), nomeadamente quanto à originalidade, validade e integridade do trabalho.



== Resumo
#v(6pt)
A escrita técnica em engenharia exige clareza, rigor e organização. O uso de ferramentas técnicas adequadas, a integração de _notebooks_ como ambiente integrativo, o trabalho colaborativo em tempo real e o uso responsável de inteligência artificial contribuem para a qualidade, reprodutibilidade e transparência dos relatórios técnicos. Privilegie sempre a autonomia, a reflexão crítica e a ética académica.



//#pagebreak(to: "odd")

//Referências sem header:
#set page(
  header: context [],
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ],
)





  
 
= Referências
#v(12pt)
#show bibliography: set par(leading: 1em, spacing: 2em)
#bibliography("ref.bib", title: none, style: "ieee")



// ============================================================================
// CONTRA-CAPA (última página)
// ============================================================================


#pagebreak(to: "even")



//contra-capa sem header nem footer:
#set page(
  header: context [],
  footer: context [],
)




// Importar pacote para gerar QR codes
#import "@preview/codetastic:0.2.2": qrcode

#page[
  // QR code e info no canto inferior esquerdo
  #place(
    bottom + left,
    dx: 0cm,
    dy: -1cm,
    [
      #set align(left)
      
      // Layout com QR code à esquerda e info à direita
      #grid(
        columns: (2.5cm, 1fr),
        column-gutter: 0.01cm,
        
        // Coluna esquerda - QR code
        align(left + bottom)[
          #qrcode(github_download, width: 2.5cm)
        ],
        
        // Coluna direita - Informação básica
        align(left + horizon)[
          #text(size: 11pt, weight: "bold")[
            REA/OER | CC BY-SA 4.0
          ]
          
          #v(0.1cm)
          
          #text(size: 11pt)[
            #autor | #instituicao | #ano
          ]
        ]
      )
    ]
  )
]


// Para ver o endereço de download:
//#raw(github_download)