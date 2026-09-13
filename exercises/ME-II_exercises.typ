#let autor = "Ricardo Luís"
#let instituicao = "ISEL"
#let ano = "2026"
#let titulo = "Exercícios e Problemas de Aplicação Industrial"
#let subtitulo = "Máquinas Elétricas II"
#let github_user = "Ricardo-Luis"
#let github_repo = "me-2-oer"
#let github_subpath = "/tree/main/exercises"
#let github_raw_subpath = "/raw/main/exercises"
#let github_pdf_file = "ME-II_exercises.pdf"
#let github_url = "https://github.com/" + github_user + "/" + github_repo + github_subpath
#let github_download = "https://github.com/" + github_user + "/" + github_repo + github_raw_subpath + "/" + github_pdf_file



// CAPA:
#set page(paper: "a4",
          margin: (top: 3cm, bottom: 2cm, left:2.0cm, right: 2.0cm),
          numbering: none,
          number-align: center)

#set text(lang: "pt")


#set align(center) 
#image("/images/logos/ISEL-logo-bk.png", height: 2.9cm) 

#set align(center) 
#text(14pt, font: "Chakra Petch")[Licenciatura em Engenharia Eletrotécnica]


//#box(baseline: 34.2%, image("/images/logos/ISEL-logo-bk.png", width: 5cm)) #text(4mm, font: "Source Code Pro")[Licenciatura em Engenharia Eletrotécnica]

//#line(length: 100%,  start: (2cm, -1.07cm))

#set align(center) 
#text(22pt, font: "Source Code Pro", baseline: 4cm)[#subtitulo]

#set align(center + horizon) 
#text(20pt, font: "Cantarell")[*#titulo*]

#set align(center + bottom) 
#text(10pt)[setembro #ano]

//CAPA|



#import "@preview/diverential:0.2.0": *

// Edição:
//#pagebreak(to: "odd")






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


#counter(page).update(0)

#show link: underline


============================================================================
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
  
 #v(2cm)

#set align(left)
  *Licença:* CC BY-SA 4.0 International\
  #link("https://creativecommons.org/licenses/by-sa/4.0/")
  
 #v(1cm)


*Autor:* #autor\ 
*Instituição:* #instituicao\
*Ano:* #ano
  
#v(1cm)


  *Repositório GitHub:* #link(github_url)

  
  *Editor: * #link("https://typst.app")[Typst] (ficheiros fonte .typ disponíveis no repositório)
  
  #v(3cm)

  // Secção sobre ferramentas de IA
  #set text(size: 11pt)
  




  
// Secção de citação
  #set text(size: 12pt)
  
*Como citar este documento:*

#raw(autor + ", \"" + titulo + "\", " +  subtitulo + ", recurso educacional aberto, " + instituicao + ", " + ano + ". [Online].\nDisponível: " + github_url)

]

#pagebreak(to: "odd")







//verso-capa|





//Prefácio:

#set page(
   header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) Exercícios e Problemas de Aplicação Industrial
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
#heading(outlined: true, bookmarked: true)[Prefácio]
\
\

//#show par: set block(spacing: 14pt)
#set text(12pt, font: "Liberation Serif" )
#set par(first-line-indent: 1.0cm, 
  leading: 12pt,
  justify: true
  )


Esta coletânea de exercícios e problemas de aplicação industrial está organizada em 3 capítulos:

#list(indent: 2cm,
  [Máquinas de corrente contínua],
  [Máquinas síncronas trifásicas],
  [Transitórios de máquinas elétricas],
)
#v(6pt)
#h(1cm)
O presente documento apresenta exercícios de caráter mais conceptual e problemas de aplicação industrial, permitindo uma progressão desde os conceitos fundamentais até situações práticas presentes na indústria. Cada exercício ou problema é numerado sequencialmente (Exercício 1, Exercício 2, ...), sendo o seu âmbito evidenciado pelo próprio contexto e enunciado.

Os exercícios ímpares estão completamente resolvidos, enquanto os exercícios pares constituem propostas de trabalho, apresentando apenas a indicação das soluções. Estes últimos destinam-se principalmente à resolução nas aulas teórico-práticas, adotando a Aprendizagem Baseada em Problemas como metodologia de ensino-aprendizagem. Deste modo, promove-se a discussão e a análise crítica dos temas, estimulando o desenvolvimento do pensamento analítico e a capacidade de resolução de problemas.

Entre os exercícios resolvidos, alguns estão resolvidos analiticamente como introdução ou sistematização de conceitos, enquanto outros estão resolvidos recorrendo à linguagem de computação científica #link("https://julialang.org/")[`Julia`], através da realização de documentos computacionais (_notebooks_), usando o ambiente de desenvolvimento integrado: #link("https://plutojl.org/")[`Pluto.jl`]. A utilização de _notebooks_ interativos permite que os estudantes aprofundem a sua compreensão dos conceitos teóricos fundamentais e desenvolvam competências essenciais para a prática profissional. Além disso, a prática exploratória possibilita a aplicação dos conhecimentos na resolução de exercícios de forma interativa, a representação e análise gráfica de resultados, e a prática com ferramentas de engenharia.

  \
  
  Lisboa, setembro de 2025
#set align(right);
Ricardo Luís



#pagebreak()

//Prefácio|




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

#quote(attribution: [*John Dewey* (1859-1952)])[
_O verdadeiro processo educativo deve ser\ o processo de aprender a pensar através\ da aplicação de problemas reais._ 
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
    #h(1fr) Exercícios e Problemas de Aplicação Industrial
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
  v(20pt, weak: true)
  strong(it)
}


#set text(12pt, font: "TeX Gyre Termes")
#outline(title: "Índice", indent: 0.85cm)
#v(0%)

//#pagebreak(to: "odd")
// Índice|

#v(80%)

//verso-FOLHA:
#set page(
  header: context [],
  footer: context []
)



//#v(100%)    //forma expedita de colocar página em branco, sem estar numerado
//verso-FOLHA|


//doc

#set page(
  header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) Máquinas de Corrente Contínua
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
  #set text(14pt, font: "Spectral", weight: "regular")
  #smallcaps(it.body)
]

#show heading.where(level: 2): it => block(width: 100%)[
  #set align(left)
  #v(0.5cm)
  #set text(14pt, font: "Cantarell", weight: "bold")
  #it.body
]

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

= Máquinas de Corrente Contínua

== Exercício 1
#v(12pt)
#h(1cm)
Uma máquina de corrente contínua hexapolar tem $360$ condutores em cavas do induzido. Cada polo magnético apresenta um arco polar de $20$~cm, uma profundidade de $20$~cm e uma indução magnética de $0.8$~T. Com o rotor à velocidade de $1000$~rpm, determine a força eletromotriz induzida, $E_0$, que se obtém se a máquina tiver:
#v(6pt) 
#set enum(numbering: "a.1)", indent: 1cm, spacing: 20pt, )

+ enrolamento induzido do tipo imbricado;

+ enrolamento induzido do tipo ondulado.

#v(12pt)
  #rect(fill: luma(240), width: 100%, height: 59%, stroke: (left: 0.25em))[
    *Resolução:* 
#set par(hanging-indent: 1cm)
    Sejam:\
    #set list(marker: [•], indent: 2cm, spacing: 0.5cm)
     - $2p=6$ polos;#h(0.5cm) $z=360$~condutores; 
     - $b=20$~cm (arco polar);#h(0.5cm) $l=20$~cm (profundidade)
     - $B=0.8$~T 

#v(10pt)
#h(1cm)Área da face do polo, $A_p$:

#h(1cm) $A_p=b space l= 0.2 times 0.2=0.04$~m#super([2])

#v(10pt)
O fluxo magnético por polo, $phi.alt_p$, vem: 

#h(1cm) $phi.alt_p = B space A_p = 0.8 times 0.04=0.032$~Wb

#v(10pt)
Com a velocidade em rpm, a constante do induzido, $k$,
vem dada por: #h(0.5cm)$k = display((z space p) / (60 space a))$

#v(10pt)
Assim, obtém-se a força eletromotriz induzida, $E_0$, no enrolamento do induzido: 

#v(10pt)
*a)*#h(0.5em)Enrolamento imbricado, $a=p$ (n.º de escovas igual ao n.º de polos):
    
#h(1cm)$​​E_0=k phi.alt_p n= display((360 times 3) /(60 times 3)) times 0.032 times 1000 = 192$~V

#v(16pt)
*b)*#h(0.5em)Enrolamento ondulado, $a=1$ (apenas um par de escovas):

#h(1cm)$​​E_0=k phi.alt_p n= display((360 times 3) /(60 times 1)) times 0.032 times 1000 = 576$~V
]

\
(Fonte: Modificado a partir do exercício 5.5 de [Guru & Hiziroğlu, 2003])

//#pagebreak()
== Exercício 2
#v(12pt)
#h(1cm)
Considere um induzido de um gerador de corrente contínua tetrapolar com um enrolamento imbricado colocado em $28$ cavas com $10$ condutores em cada uma. O fluxo magnético por polo é $40$~mWb e a velocidade do induzido (rotor) de $1200$~rpm. O gerador alimenta uma carga e a corrente em cada condutor é $2$~A. Quais são o binário e a potência desenvolvidos pelo gerador?

#v(12pt)
  #rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
    *Soluções:* 
#set par(hanging-indent: 1cm)
    $T_d=14.26$~Nm #h(0.5cm) ; #h(0.5cm)$P_d=1.79$~kW
  ]
\
(Fonte: Modificado a partir do exercício 5.8 de [Guru & Hiziroğlu, 2003])



== Exercício 3
#v(12pt)
#h(1cm)
Considere um gerador de corrente contínua com $2p=6$ polos, enrolamento induzido imbricado simples, ou seja, $2a=6$ circuitos derivados e $z=624$ condutores úteis distribuídos uniformemente na periferia do induzido.

Sabe-se que a secção de cada condutor do induzido é $s=8$~mm#super[2] e é percorrido por uma densidade de corrente, $J=3$~A.mm#super[-2].

A máquina tem uma relação arco polar$slash$passo polar, $b slash tau = 2 slash 3$, e o induzido tem um diâmetro, $D=220$~mm.
#v(6pt) 

+ Determinar a força magnetomotriz (FMM) relativa à reação magnética do induzido, $​​\u{02131}_i$, na linha neutra geométrica;

+ Supondo que a máquina terá apenas polos auxiliares, determinar o número de espiras a colocar em polos auxiliares;

+ Suponha que se pretende a máquina com  $​​\u{02131}_i$ totalmente compensada: 
 + Calcular o número de espiras a colocar num enrolamento de compensação, supondo que se abriram 6 cavas em cada polo principal. Calcular o número de condutores a inserir em cada cava; 
 + Dimensionar o numero de espiras a colocar nos polos auxiliares, depois de montados os enrolamentos de compensação. 


#v(12pt)
  #rect(fill: luma(240), width: 100%, height: 99%, stroke: (left: 0.25em))[
    *Resolução:* 
#set par(hanging-indent: 1cm)

Neste exercício foram usados dois tipos de resolução:

#list(body-indent: 1em, indent: 3em, spacing: 20pt,
[- *resolução numérica (computacional)*: usando os dados do exercício foi criado um modelo CAD (_Computer-Aided Design_ - desenho assistido por computador) e CAE (_Computer-Aided Engineering_ - engenharia assistida por computador), aplicando o #link("https://en.wikipedia.org/wiki/Finite_element_method", [método dos elementos finitos]) para o cálculo eletromagnético. O _software_ utilizado foi o #link("https://www.femm.info",[FEMM - Finite Element Method Magnetics]). As soluções computacionais permitem obter a visualizar e quantificar linhas de indução magnética ajudando a compreender a reação magnética do induzido e os seus efeitos no funcionamento da máquina;],
[*Resolução analítica*: é o objetivos principal deste exercício, proceder à compensação da Reação Magnética do Induzido (RMI), através do cálculo das forças magnetomotrizes envolvidas.]
)

#let img(path, x, y, w, h) = place(top + left, dx: x, dy: y,
  image(path, width: w, height: h))

#scale(x: 50%, y: 50%, origin: top + left, reflow: true)[
  #box(width: 33.87cm, height: 2cm)[
    #place(top + left, dx: 0.74cm, dy: 2.8cm,
      block(width: 32.49cm, height: 2cm)[
        #text(size: 36pt, weight: "bold")[
          #h(1fr)campo indutor#h(1fr)+#h(1fr)campo induzido#h(1fr)=#h(1fr)campo resultante
        ]
      ])
    #img("femm/slide3_left.png", 0.28cm, 5cm, 10.01cm, 9.80cm)
    #place(top + left, dx: 9.8cm, dy: 8.66cm,
      block(width: 2.5cm, height: 2.5cm)[#align(center + horizon)[#text(size: 80pt)[+]]])
    #img("femm/slide3_mid.png", 11.79cm, 5cm, 10.01cm, 9.80cm)
    #place(top + left, dx: 21.2cm, dy: 8.66cm,
      block(width: 2.6cm, height: 2.5cm)[#align(center + horizon)[#text(size: 80pt)[=]]])
    #img("femm/slide3_right.png", 23.22cm, 5cm, 10.01cm, 9.80cm)
  ]
]
#place(top + left, dx: 0cm, dy: 16.8cm,
  scale(x: 115%, y: 115%, origin: top + left)[
    #image("femm/slide3_legend.png", width: 4.4cm, height: 6.43cm)
  ])
\
]

#v(12pt)
  #rect(fill: luma(240), width: 100%, height: 99%, stroke: (left: 0.25em))[
     
#set par(hanging-indent: 1cm)


#let img(path, x, y, w, h) = place(top + left, dx: x, dy: y,
  image(path, width: w, height: h))
  
#scale(x: 67%, y: 67%, origin: top + left, reflow: true)[
  #box(width: 33.87cm, height: 18.05cm)[
    #place(top + left, dx: 0.74cm, dy: 0.4cm,
      block(width: 22cm, height: 2cm)[
        #text(size: 26pt, weight: "bold")[
          #h(0.1fr)campo indutor#h(0.1fr)+#h(0.1fr)campo induzido#h(0.1fr)=#h(0.1fr)campo resultante
        ]
      ])
    #img("femm/image5.svg", 1cm, 2cm, 23.42cm, 16.10cm)
  ]
]

#let img(path, x, y, w, h) = place(top + left, dx: x, dy: y,
  image(path, width: w, height: h))

#scale(x: 64%, y: 64%, origin: top + left, reflow: true)[
  #box(width: 33.87cm, height: 18.05cm)[
    #place(top + left, dx: 0.74cm, dy: 1cm,
      block(width: 32.49cm, height: 2.44cm)[
        #text(size: 26pt, weight: "bold")[
          #h(0.5cm)FMM do campo indutor e campo induzido
        ]
      ])
    #img("femm/image7.svg", 1cm, 2.5cm, 24.54cm, 15.34cm)
  ]
]
]

#v(12pt)
  #rect(fill: luma(240), width: 100%, height: 100%, stroke: (left: 0.25em))[
     
#set par(hanging-indent: 1cm)
\
*a)*#h(0.5em) 

$I_a=J space s=3 times 8=24 space "A"$
#v(15pt)

$I=I_a space 2 a= 24 times 2 times 3=144 space "A"$
#v(15pt)

$​\u{02131}_i=A space display(tau / 2 )$ #h(0.25cm) com: #h(0.25cm) $A=display((z space I)/(4 space a space p)) space display(1/tau) #h(0.25cm)$ ou #h(0.25cm)$​\u{02131}_i=display((z space I) / (8 space a space p))$ #h(0.25cm), usando esta última expressão:
#v(15pt)

$​\u{02131}_i=display((z space I) / (8 space a space p) )= display((624 times 144)/(8 times 3 times 3))=1248 "A.cond"$

\
*b)*#h(0.5em) Máquina CC com *polos auxiliares*:

#let img(path, x, y, w, h) = place(top + left, dx: x, dy: y,
  image(path, width: w, height: h))
#scale(x: 50%, y: 50%, origin: top + left, reflow: true)[
  #box(width: 33.87cm, height: 15.5cm)[
    #img("femm/slide6_main.png", 1cm, 0.2cm, 15.57cm, 15.39cm)
    #img("femm/slide6_legend.png", 16.8cm, 0.2cm, 10cm, 15.39cm)
  ]
]

#let img(path, x, y, w, h) = place(top + left, dx: x, dy: y,
  image(path, width: w, height: h))
#scale(x: 50%, y: 50%, origin: top + left, reflow: true)[
  #box(width: 33.87cm, height: 16.05cm)[
    #img("femm/image10.svg", 1cm, 0cm, 25.8cm, 16cm)
  ]
]

]

#v(12pt)
  #rect(fill: luma(240), width: 100%, height: 99%, stroke: (left: 0.25em))[
     
#set par(hanging-indent: 1cm)

#let img(path, x, y, w, h) = place(top + left, dx: x, dy: y,
  image(path, width: w, height: h))
#scale(x: 50%, y: 50%, origin: top + left, reflow: true)[
  #box(width: 33.87cm, height: 17.05cm)[
    #img("femm/image12.svg", 1cm, 0.5cm, 25.8cm, 16cm)
  ]
]

#h(1cm)Para máquina com polos auxiliares:\

$​\u{02131}_"PA"=\u{02131}_"i"$ #h(0.25cm)como:#h(0.25cm) $​\u{02131}_"PA"=N_"PA" space I$ #h(0.25cm) , tém-se: #h(0.25cm) 
$N_"PA"=display((\u{02131}_"i")/(I))=display((1248)/(144))=8.67 "espiras"$

\
Para facilitar a comutação considera-se o número inteiro acima, ou seja, $9$ espiras.

Assim, obtém-se uma FMM corrigida para os polos auxiliares, $\u{02131}'_"PA"$:

$\u{02131}'_"PA"=9 times 144=1296$ A.cond

\


*c)*#h(0.5em) Máquina com RMI compensada (*polos auxiliares e enrolamentos de compensação*)

#let img(path, x, y, w, h) = place(top + left, dx: x, dy: y,
  image(path, width: w, height: h))
#scale(x: 54%, y: 54%, origin: top + left, reflow: true)[
  #box(width: 33.87cm, height: 15.5cm)[
    #img("femm/slide9_main.png", 1cm, 0.2cm, 15.57cm, 15.39cm)
    #img("femm/slide9_legend.png", 16.8cm, 0.2cm, 10cm, 15.39cm)
  ]
]
]

#v(12pt)
  #rect(fill: luma(240), width: 100%, height: 100%, stroke: (left: 0.25em))[
     
#set par(hanging-indent: 1cm)

\
*c-1)*#h(0.5em) Dimensiona-se primeiro os *enrolamentos de compensação*:

#let img(path, x, y, w, h) = place(top + left, dx: x, dy: y,
  image(path, width: w, height: h))
#scale(x: 40%, y: 40%, origin: top + left, reflow: true)[
  #box(width: 33.87cm, height: 15.5cm)[
    #img("femm/slide10_femm.png", 1cm, 0.2cm, 16cm, 16cm)
    #img("femm/image15.svg", 18cm, 0.2cm, 23.5cm, 16cm)
  ]
]

#let img(path, x, y, w, h) = place(top + left, dx: x, dy: y,
  image(path, width: w, height: h))
#scale(x: 40%, y: 40%, origin: top + left, reflow: true)[
  #box(width: 33.87cm, height: 16.05cm)[
    #img("femm/image18.svg", 1cm, 0.5cm, 25.8cm, 16cm)
  ]
]


\
$​ \u{02131}_"EC"=A space display(b/2)$ #h(0.25cm) ou #h(0.25cm) $​ \u{02131}_"EC"=\u{02131}_"i" space display(b/tau)$ #h(0.25cm) , usando esta última expressão conhecido o valor de $display(b/tau)$:

#v(7pt)

$\u{02131}_"EC"=\u{02131}_"i" space display(b/tau)=1248 times display(2/3)=832$ A.cond 

#v(7pt)

Por outro lado, como: $\u{02131}_"EC"= N_"EC" space I$, o número de espiras do enrolamento de compensação obtém-se: 

#v(7pt)

Assim,  #h(0.25cm) 
$N_"EC"=display((\u{02131}_"EC")/(I))=display((832)/(144))=5.78 "espiras"$

#v(7pt)

Considerando 6 cavas por polo principal, onde as espiras de 3 cavas se ligam ao polo seguinte e as das outras 3 cavas ao polo  anterior, obtém-se $N'_"EC"=6$ espiras, colocando 2 espiras em cada cava.

#v(7pt)

Assim, obtém-se uma FMM corrigida para os enrolamentos de compensação, $\u{02131}'_"EC"$:

$\u{02131}'_"EC"= 6 times 144=864$ A.cond

\
]

    
#v(12pt)
  #rect(fill: luma(240), width: 100%, height: 99%, stroke: (left: 0.25em))[
     
#set par(hanging-indent: 1cm)

\
Fotografia exemplificativa de uma máquinas com enrolamentos de compensação (e polos auxiliares) com 6 cavas na cabeça das peças polares e 2 espiras por cava:

#let img(path, x, y, w, h) = place(top + left, dx: x, dy: y,
  image(path, width: w, height: h))
#scale(x: 60%, y: 60%, origin: top + left, reflow: true)[
  #box(width: 34cm, height: 34.05cm)[
    #img("femm/Lusonave_Enrol.Comp.DC.png", 1cm, 0cm, 26cm, 34cm)
  ]
]


//#figure(image("femm/Lusonave_Enrol.Comp.DC.png", height: 91%, width: 100%, fit: "cover"))


#align(center)[
  Fotografia resultante de trabalho de beneficiação de uma máquina de corrente contínua.\ Imagem do estator com polos auxiliares e enrolamentos de compensação (fonte: #link("http://lusonave.pt/")[Lusonave]).
]

]

#v(12pt)
  #rect(fill: luma(240), width: 100%, height: 100%, stroke: (left: 0.25em))[
     
#set par(hanging-indent: 1cm)

\

*c-2)* e depois os *polos auxiliares*:


#let img(path, x, y, w, h) = place(top + left, dx: x, dy: y,
  image(path, width: w, height: h))
#scale(x: 70%, y: 70%, origin: top + left, reflow: true)[
  #box(width: 33.87cm, height: 14.05cm)[
    #img("femm/image19.png", 1cm, 0.5cm, 20cm, 13.5cm)
  ]
]

#let img(path, x, y, w, h) = place(top + left, dx: x, dy: y,
  image(path, width: w, height: h))
#scale(x: 54.9%, y: 54.9%, origin: top + left, reflow: true)[
  #box(width: 33.87cm, height: 16.05cm)[
    #img("femm/image20.png", 1cm, 0cm, 25.7cm, 16cm)
  ]
]

\
$​​\u{02131}_"PA"=\u{02131}_"i"-\u{02131}'_"EC"=1248-864=384$ A.cond

\
$N_"PA"=display(\u{02131}_"PA"/I)=display(384/144)=2.67$ cond

]

#v(12pt)
  #rect(fill: luma(240), width: 100%, height: 68%, stroke: (left: 0.25em))[
     
#set par(hanging-indent: 1cm)


\
Para facilitar a comutação considera-se o número inteiro acima, ou seja, $3$ espiras.

Assim, obtém-se uma FMM corrigida para os polos auxiliares, $\u{02131}'_"PA"$:

$\u{02131}'_"PA"=3 times 144=432$ A.cond

\
*Conclusão*: após a montagem dos enrolamentos de compensação e dos polos auxiliares obtém-se uma FMM resultante, $\u{02131}_R$, nas Linhas Neutras Geométricas (posições das escovas):

$\u{02131}_R=\u{02131}_i - \u{02131}'_"PEC" - \u{02131}'_"PA" = 1248-864-432=-48$ A.cond



#let img(path, x, y, w, h) = place(top + left, dx: x, dy: y,
  image(path, width: w, height: h))
#scale(x: 54.7%, y: 54.7%, origin: top + left, reflow: true)[
  #box(width: 33.87cm, height: 16.05cm)[
    #img("femm/image22.svg", 1cm, 0cm, 26.5cm, 18cm)
  ]
]



]




== Exercício 4
#v(12pt) 
#h(1cm)
Um enrolamento induzido de um dínamo possui $z=640$~condutores, executado em imbricado simples para uma corrente nominal de $100$~A e $2$ pares de polos.

+ Dimensionar o número de espiras dos enrolamentos de compensação, $N_"EC"$, e dos polos auxiliares, $N_"PA"$, para uma compensação total da reação magnética do induzido. Considere que os polos de excitação da máquina preenchem $70space.thin%$ do perímetro total, visto do rotor;

+ Redimensione $N_"EC"$ e $N_"PA"$ considerando um enrolamento induzido ondulado simples.

#v(12pt)
  #rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
    *Soluções:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $N_"EC"=14$ espiras; #h(2em) $N_"PA"=6$ espiras\
    *b)*#h(0.5em) $N_"EC"=28$ espiras; #h(2em) $N_"PA"=12$ espiras\
  ]


  

== Exercício 5
#v(12pt) 
#h(1cm)Um gerador de corrente contínua $[220" V, " 12" A," 1500" rpm"]$ com excitação independente foi ensaiado em vazio e em carga, à velocidade nominal, tendo-se obtido as seguintes características:

#align(center)[
  #table(
  columns: 7, stroke: none,
  column-gutter: 4pt,
  align: (right),
  [$E_0$ [V]], [$20$], [$180$], [$238$], [$270$], [$284$], [$300$], [$i$ [A]], [$0.00$], [$0.25$], [$0.50$], [$0.75$], [$1.00$], [$1.50$]
)]
#v(6pt) 

#align(center)[
  #table(
  columns: 10, stroke: none,
  column-gutter: 4pt,
  align: (right),
  [$U$ [V]], [$278$], [$260$], [$242$], [$216$], [$186$],
  [$156$], [$128$],[$96$],[$62$],[$I$ [A]], [$0$], [$5$], [$10$], [$15$], [$20$], [$25$], [$30$], [$35$], [$40$], 
)]
#v(6pt) 

+ Determine a queda de tensão interna total deste gerador;

+ O que é a resistência crítica de um gerador com uma excitação derivação? Qual a sua importância? Como se determina (aproximadamente) na prática?

+ Qual a resistência do enrolamento indutor, sabendo que como gerador derivação, à velocidade nominal, sem resistência de campo, $U_0=294$~V;

+ Explicite qualitativamente qual a influência que a variação da resistência de campo tem, sobre a característica externa do gerador derivação. Justifique sucintamente;

+ Nas condições de excitação da alínea c), como proceder para obter uma tensão de vazio de $336$~V?

#v(12pt)
  #rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
#set par(hanging-indent: 0cm)
O exercício 5 está resolvido na linguagem#h(-2pt)
#box(
  baseline: 23%,
  height: 18pt,
  image("/images/logos/julia.svg")
)#h(-1pt), através da ferramenta #h(1pt)
#box(
  baseline: 22%,
  height: 12pt,
  image("/images/logos/pluto.svg")
)
 para uma experiência mais interativa: \u{1F517} 
#show link: underline
#link("https://ricardo-luis.github.io/me-2/Separ.Shunt.GEN.html")[_ notebook_]
]


== Exercício 6
#v(12pt)
#h(1cm)Um gerador de excitação em derivação apresenta a seguinte característica de vazio, a $1500$~rpm:

#table(columns: 11, 
  stroke: none, 
  column-gutter: 12pt,
  align: (right),
  [$i$[A]], [$0$], [$0.1$], [$0.2$], [$0.3$], [$0.4$], [$0.6$], [$0.8$], [$1.0$], [$space.quad$], [$R_i=2.0 space Omega$],
  [$E$[V]], [$20$], [$120$], [$200$], [$235$], [$250$], [$270$], [$285$], [$300$], [$space.quad space.quad$], [$R_d=300 space Omega$]
)
Considere que o gerador tem incorporado polos auxiliares e enrolamentos de compensação.
#v(6pt) 

+ Com o gerador acionado a $1500$~rpm, determine o valor do reóstato de campo para obter o ponto de funcionamento $(35" A" semi  180" V")$;

+ Determine o valor da velocidade de acionamento do gerador, para que sem reóstato de excitação, a máquina funcione nas mesmas condições da alínea a);

+ Nas condições da alínea a) ($1500$~rpm e reóstato de campo), determine a razão de equivalência $(N_s slash N_d)$, para se obter o ponto de funcionamento  $(35" A" semi  " "200" V")$. Considere que o enrolamento de excitação série tem uma resistência de $0.5 space Omega$.

#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Soluções:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $​​150 space Omega$; #h(2em)
    *b)*#h(0.5em) $1389$~rpm; #h(2em)
    *c)*#h(0.5em) $​​0.39 slash 35$ #h(2em) 
  ]


== Exercício 7
#v(12pt)
#h(1cm)Um gerador de excitação composta ligado em longa derivação e fluxo de excitação série aditivo apresenta as seguintes características:

#table(columns: 5, column-gutter: 10pt,stroke: none, align: left,
[$P=8.75$~kW], [$U=250$~V], [$R_d=223 space Omega$], [$R_i=1.3 space Omega$], [$R_s=0.1 space Omega$], 
[$n=1500$~rpm], [$n_("mag")=1500$~rpm], [$N_d=2000$ espiras], [$N_s=50$ espiras], [$E_0=$ f$(I_"exc")$:]
)


#align(center)[
  #table(columns: 12, column-gutter: 10pt,
stroke: none,
align: right,
[$I_"exc"$ [A]], [$0.0$], [$0.2$], [$0.4$], [$0.6$], [$0.8$], [$0.9$], [$1.0$], [$1.1$], [$1.3$], [$1.5$], [$1.7$], 
[$E_0$ [V]], [$15$], [$100$], [$170$], [$220$], [$250$], [$260$], [$270$], [$280$], [$290$], [$300$], [$310$]
)
]


#v(6pt)
Considere ainda um interruptor em paralelo com o enrolamento indutor série, de acordo com esquema seguinte:


#figure(image("/images/Compound_Dynamo.png", width: 44%))

#v(6pt) 

+ Calcule o valor da tensão em vazio sem reóstato de excitação. Explique se o estado do interruptor influencia o valor da tensão de vazio do gerador;

+ Com o interruptor desligado, calcule o valor da queda de tensão devido à reação magnética do induzido, sabendo que nas condições nominais se obtém uma regulação plana;

+ Com o interruptor ligado explicite qualitativamente a característica exterior do gerador. Qual a variação do ponto de funcionamento da característica externa para uma dada resistência de carga, nas seguintes situações:

  + aumento da velocidade de acionamento;

  + diminuição do reóstato de campo derivação.

#v(12pt)
#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
O exercício 7 está resolvido na linguagem#h(-2pt)
#box(
  baseline: 23%,
  height: 18pt,
  image("/images/logos/julia.svg")
) através da ferramenta #h(1pt)
    #box(
  baseline: 22%,
  height: 12pt,
  image("/images/logos/pluto.svg")
)
para uma experiência mais interativa: \u{1F517} 
#show link: underline
#link("https://ricardo-luis.github.io/me-2/Compound.GEN.html")[_ notebook_]
]


== Exercício 8
#v(12pt)
#h(1cm)Considere um gerador série com $5$ espiras$slash$polo, com uma característica magnética que passa pelos seguintes pontos, a $1200$~rpm:

#align(center)[
  #table(columns: 5, column-gutter: 20pt,
stroke: none,
align: right,
[$\u{02131}$~[Ae]], [$0$], [$200$], [$600$], [$1000$], 
[$E_0$~[V]], [$5$], [$120$], [$160$], [$170$]
)
]

Sabe-se que as perdas rotacionais são de $1200$~W, $R_a=0.2 space Omega$ e que $R_s=0.05 space Omega$.
#v(6pt) 

+ Determine a queda de tensão de tensão devido à reação magnética do induzido, quando alimenta uma carga de $1 space Omega$, com $120$~A;

+ Considere que a reação magnética do induzido se traduz numa perda de fluxo de $5space.thin %$. Será possível obter a tensão de $150$~V, para a mesma corrente? Justifique;

+ Tentou-se colocar este dínamo série a funcionar sobre uma carga de $3 space Omega$, mas tal não foi possível. Comente a situação;

+ Determine o valor da corrente correspondente ao rendimento máximo.

#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Soluções:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $​​10$~V ; #h(2em)
    *d)*#h(0.5em) $69.3$~A
  ]


== Exercício 9
#v(12pt)
#h(1cm)Conhecem-se as características externas de dois dínamos de excitação derivação,  de $220$~V, $110$~kW, ligados em paralelo:

#align(center)[
  #table(columns: 7, column-gutter: 24pt,
stroke: none,
align: right,
[$I$ [A]], [$0$], [$200$], [$400$], [$500$],  [$700$], [$900$], 
[$U_1$ [V]], [$229.5$], [$226.5$], [$222.5$], [$220.0$], [$213.0$], [$205.5$],
[$U_2$ [V]], [$224.0$], [$223.0$], [$221.0$], [$220.0$], [$217.5$], [$214.0$]
)
]

#v(6pt) 

+ Como repartiriam as duas máquinas uma corrente de $1500$~A? Qual a tensão?

+ O que se verifica para cargas reduzidas e próximas de zero? $0 < I <250$~A

+ Complete: \ #h(0.5cm) “Em sobrecarga a máquina com $"________________"$ regulação, fornece $"________________"$ corrente”.

#v(12pt)
#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
O exercício 9 está resolvido na linguagem#h(-2pt)
#box(
  baseline: 23%,
  height: 18pt,
  image("/images/logos/julia.svg")
) através da ferramenta #h(1pt)
    #box(
  baseline: 22%,
  height: 12pt,
  image("/images/logos/pluto.svg")
)
para uma experiência mais interativa: \u{1F517} 
#show link: underline
#link("https://ricardo-luis.github.io/me-2/Parallel.GEN.html")[_ notebook_]
]

== Exercício 10
#v(12pt)
#h(1cm)Dois dínamos iguais, de excitação em derivação, têm a seguinte característica magnética a $1500$~rpm: 

#align(center)[#table(
  columns: 6, 
  stroke: none, 
  column-gutter: 18pt,
  align: (right),
  [$i$~[A]], [$0.0$], [$0.2$], [$0.6$], [$1.0$], [$1.4$], [$E$~[V]], [$20$], [$200$], [$220$], [$240$], [$260$],
)]

#h(1cm)A resistência do induzido é de $0.4 space Omega$ e a do indutor de $150 space Omega$; têm cada um, igualmente, ligado um reóstato de campo de valor máximo $300 space Omega$.

As duas máquinas encontram-se em paralelo, com uma carga $(100" A," 200" V")$ rodando o *dínamo~A* a $1500$~rpm.

#v(6pt) 

+ Inicialmente o *dínamo~B* está sem carga. Determine o reóstato de campo do *dínamo~A*;
+ Determine a corrente de curto-circuito do *dínamo~A*;
+ O *dínamo~A* assegura $75$~A, da carga total. Como proceder para que o *dínamo B* assegure a restante? Apresente os cálculos.


#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Soluções:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $​​R_c^"A"=50 space Omega$ ; #h(2em)
    *b)*#h(0.5em) $50$~A \  
    *c)*#h(0.5em) Atuando apenas no reóstato de campo, resulta $R_c^"B" > R_c^"máx"$, logo é necessário atuar também na velocidade. Por exemplo, considerando $R_c^"B"=50 space Omega$, obtém-se $1312.5$~rpm.
    ]

== Exercício 11
#v(12pt)

#h(1cm)Considere um gerador _shunt_, acionado com velocidade constante, que alimenta uma resistência de utilização $R_u=7 space Omega$.
A este circuito é ocasionalmente ligada uma bateria de ácido-chumbo para carregamento, de acordo com o esquema elétrico seguinte:

#figure(image("/images/battery.png", width: 55%))

Característica externa do gerador:
#align(center)[#table(
  columns: 8, 
  stroke: none, 
  column-gutter: 18pt,
  align: (right),
  [$I_G$~[A]], [$0.0$], [$10$], [$20$], [$30$], [$40$], [$50$],[$60$], [$U_G$~[V]], [$312$], [$300$], [$284$], [$262$], [$234$], [$200$], [$160$]
)]

#h(1cm)A bateria é constituída por 100 elementos em série e é carregada sempre que o seu SOC (de _State Of Charge_) atinge $25space.thin %$ (aproximadamente $1.95$~V/elemento). A resistência interna de cada elemento da bateria é de $5$~m$Omega$. 

Determinar a tensão de funcionamento da montagem, quando a bateria é ligada ao circuito (gerador + carga $R_u$), a corrente do gerador, $I_G$, a corrente na carga de utilização, $I_u$, e a corrente de carga inicial da bateria, $I_b$. 

#v(12pt)
  #rect(fill: luma(240), width: 100%, height: 17%, stroke: (left: 0.25em))[
    *Resolução:* 
#set par(hanging-indent: 1cm)

A tensão de vazio da bateria, $E_b$, para SOC$=25space.thin %$, vem dada por:\

#h(1cm) $E_b=100 times 1.95=195$~V

A resistência interna da bateria, $R_b$, com os seus elementos em série:

#h(1cm) $R_b=100 times 5times 10^"-3"=0.8 space Omega$

 ]

#rect(fill: luma(240), width: 100%, height: 100%, stroke: (left: 0.25em))[ 
#set par(hanging-indent: 1cm)


A equação de carga da bateria, $U_b="f"thin (I_b)$, vem dada por:

#h(1cm)$U_b=E_b+R_b 
 thin I_b  space <=> space U_b=195+0.8 
 thin I_b$



#v(12pt)

No gráfico seguinte são representadas:

#set list(marker: [--],indent: 2cm)

- a característica externa do gerador, $U_G="f" thin (I_G)$
- reta da carga de utilização, $U_u="f" thin (I_u)$
- reta de carga da bateria, $U_b="f"thin (I_b)$

#v(6pt)

#h(1cm)Torna-se necessário agrupar as cargas do gerador (resistência de utilização e a bateria) para determinar o ponto de funcionamento do gerador e das cargas.


#figure(image("/images/battery_graph1.svg", width: 80%))

#v(6pt)
#h(1cm)O agrupamento das cargas tem de obedecer ao funcionamento do circuito, ou seja:

#set list(marker: [--], indent: 2cm)

- as tensões de cada ramo serão iguais: #h(0.5cm)$U=U_G=U_u=U_b$
- o gerador alimenta a resistência de utilização e a bateria: #h(0.5cm)$I=I_G approx I_u+I_b$

#v(6pt)
#h(1cm)*Nota:* A corrente de excitação do gerador, $I_d$, é muito menor que as correntes do induzido do gerador e das cargas, por conseguinte, despreza-se a sua representação no gráfico:

#h(1cm)$I_d << {I_b, I_u, I_G}$ 

#v(12pt)
O gráfico seguinte apresenta o processo gráfico de determinação da característica de carga combinada, $U_c="f" space(I)$, com $I=I_b+I_u$, correspondente ao agrupamento das cargas. Dado que da soma de duas retas, resulta uma nova reta, são apenas necessários considerar $2$ níveis de tensão para obter $2$ pontos da característica de carga combinada. Assim:

]

  #rect(fill: luma(240), width: 100%, height: 100%, stroke: (left: 0.25em))[ 
#set par(hanging-indent: 1cm)


#set list(marker: [--], indent: 2cm, spacing: 16pt)

- o ponto a verde, foi obtido escolhendo o nível de tensão correspondente ao da bateria desligada, ou seja, $E_b$. Nesta situação, $I_b=0$, por conseguinte, $I=I_u$
- o ponto vermelho, foi obtido escolhendo o nível de tensão em que as retas da carga de utilização e da bateria se intersetam, ou seja, $I_u=I_b$. Para esse nível de tensão, ponto vermelho será então colocado na abcissa correspondente ao dobro da corrente.

#v(10pt)
#h(1cm)Unindo os pontos (verde e vermelho), obtém-se a característica de carga combinada:

#h(1cm)$U_c="f" space(I)$


#figure(image("/images/battery_graph2.svg", width: 74%))

#v(6pt)
#h(1cm)A interseção da característica de carga combinada com a característica externa do gerador de corrente contínua
define o ponto de funcionamento do circuito: $(I_G; U)=(47.4space.thin"A"; 209space.thin"V")$.

#figure(image("/images/battery_graph3.svg", width: 74%))

]

#rect(fill: luma(240), width: 100%, height: 43%, stroke: (left: 0.25em))[ 
#set par(hanging-indent: 1cm)

#v(6pt)
#h(1cm)Por outro lado, a partir da tensão de funcionamento, $U=209$~V, consultam-se nas retas de carga de utilização e de carga da bateria, obtendo os respetivos valores de corrente, $I_u$ e $I_b$, fornecidos pelo gerador:

#h(1cm)$I_u=29.9$~A
#h(1cm) ; #h(1cm)$I_b=17.5$~A


#v(6pt)
#h(1cm)Em alternativa à determinação gráfica da característica da carga combinada, dado que corresponde à soma de duas retas,  é possível a sua determinação analítica. Atendendo que:
#v(6pt)
#h(1cm)
$U_c=U_b=U_u$~~ e que ~~$I=I_b+I_u$~~ então:
#v(10pt)
#h(1cm)$I=display((U_c-E_b) / R_b + display(U_c) / R_u)$

#v(10pt)
Manipulando a equação anterior obtém-se a equação da reta de carga combinada (carga de utilização + bateria), $U_c="f" space(I)$:

#v(6pt)
#h(1cm)$U_c = display((R_u) /(R_u+R_b) E_b + display((R_u R_b) /(R_u+R_b)) I)$

]

== Exercício 12
#v(12pt)
#h(1cm)Um motor série com o induzido de $0.8 space Omega$ e o indutor de $0.4 space Omega$ foi posto a funcionar como dínamo:

#set list(marker: [--], indent: 1cm)

- Excitado separadamente a $50$~A e acionado a $1500$~rpm, deu $230$~V sobre os terminais em vazio; 
- Com excitação série, debitando $50$~A e à mesma velocidade deu $150$~V.
#v(6pt)
Sabendo que as perdas mecânicas e magnéticas, $P_("(mec+Fe)")$, são $400$~W, calcular:

#v(6pt) 

+ A velocidade quando absorve $50$~A como motor série de uma rede de $220$~V;

+ O binário mecânico que transmite à carga nesta situação;

+ Trace qualitativamente as características de binário e de velocidade deste motor. Explicite a influência da introdução de uma resistência de campo, sobre estas características.

#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Soluções:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $​​1174$~rpm ; #h(2em)
    *b)*#h(0.5em) $61.8$~Nm
    ]


#v(30%)
== Exercício 13
#v(12pt)
#h(1cm)Considere um motor de corrente contínua, com a seguinte chapa de características: $17$~kW, $250$~V, $1200$~rpm, $eta=85space.thin%$.

#table(columns: 2, column-gutter: 6pt, stroke: none, align: left,
[Conhecem-se ainda os seguintes parâmetros:], table.cell(rowspan: 6)[#image("/images/noLoad.png", width: 103%)], 
[],
[$E_0=f(I_("exc")) space space$, ~$n=1200$~rpm],
[$R_i=0.6 space Omega$],[$R_s=0.1 space Omega space.quad$, ~$30$~ espiras],
[$R_d=200 space Omega space.quad$, ~$3000$ espiras]
)

#v(6pt) 

+ Com o motor em excitação derivação, determine o valor do reóstato de campo, nas condições nominais $(U_n, I_n, n_n)$;

+ Utilizando o reóstato de campo calculado na alínea anterior, determine as características de velocidade, binário e mecânica deste motor (excitação derivação);

+ Idem, com excitação composta em longa derivação aditiva e subtrativa. Representar as características nos mesmos gráficos para comparação;

+ Determinar as curvas características com o circuito de derivação desligado (motor série). Representar as características nos mesmos gráficos para comparação;

+ Considere o motor com excitação separada, $U_("exc")=240$~V, com o reóstato de campo calculado na alínea a). Explicite a variação da característica de velocidade nas situações:

  + aumento de tensão do induzido;
  + diminuição do reóstato de campo;
  + aumento da resistência adicional.

#v(12pt)
#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
O exercício 13 está resolvido na linguagem#h(-2pt)
#box(
  baseline: 23%,
  height: 18pt,
  image("/images/logos/julia.svg")
) através da ferramenta #h(1pt)
    #box(
  baseline: 22%,
  height: 12pt,
  image("/images/logos/pluto.svg")
)
para uma experiência mais interativa: \u{1F517} 
#show link: underline
#link("https://ricardo-luis.github.io/me-2/DCmotors.html")[_ notebook_]
]

== Exercício 14
#v(12pt) 
#h(1cm) Um motor excitação derivação apresenta as seguintes características:

#table(columns: 6, align: left, column-gutter: 26pt, stroke: none,
[], [], [$U_n=220$~V], [$I_n=42$~A], [$n_n=1500$~rpm], [$R_a=0.34 space Omega$]
)

#v(6pt) 

+ No ensaio em vazio obtiveram-se os seguintes valores: #table(columns: 5, align: left, column-gutter: 26pt, stroke: none,
[], [$U=220$~V], [$n=1600$~rpm], [$I_a=3$~A], [$I=4.6$~A]
) Calcule o binário de perdas;

+ Obtenha a equação da velocidade, $n="f"space(I_a)$ ;

+ Dimensione um reóstato de arranque por pontos para que: $40$~A $< I_("arr")<65$~A .

#v(12pt)
  #rect(fill: luma(240), height: 9.5%, width: 100%,stroke: (left: 0.25em))[
    *Soluções:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $​​3.92$~Nm #h(2em)
    *b)*#h(0.5em) $n("rpm")=display(frac( hyph 100, 37.4))(I_a-3)+1600$ 
    
    *c)*#h(0.5em) Resistências entre os 6 contactos $(Omega)$: $1.30$; $0.85$; $0.49$;10$0.30$; $0.15$. , Reóstato: $3.04space Omega$ .
    ]


== Exercício 15
#v(12pt) 
#h(1cm)Um motor série de $12$~kW, $250$~V, $1400$~rpm, $80space.thin%$ de rendimento, velocidade máxima $2400$~rpm, tem a seguinte característica magnética obtida a $1500$~rpm:

#align(center)[
  #table(columns: 9, column-gutter: 12pt,
stroke: none,
align: right,
[$I_("exc")$ (A)], [$10$], [$20$], [$30$], [$40$],  [$50$], [$60$], [$70$], [$80$],
[$E_0$ (V)], [$80$], [$140$], [$190$], [$225$], [$250$], [$270$], [$285$], [$295$]
)
]

Sabendo que a resistência do induzido é $0.35space Omega$ e a do indutor é $0.1space Omega$, calcular:
#v(6pt) 
+ As perdas mecânicas e no ferro, $p_"(mec+Fe)"$;

+ O valor mínimo da corrente que o motor pode absorver;

+ A queda de tensão devida à reação magnética do induzido a plena carga;

+ A potência do motor que corresponde ao rendimento máximo;

+  Explicite qualitativamente a influência do reóstato de campo sobre a característica de velocidade do motor série;

+ Explicite qualitativamente a influência do reóstato de campo sobre a característica de binário do motor série.

#v(12pt)
#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
O exercício 15 está resolvido na linguagem#h(-2pt)
#box(
  baseline: 23%,
  height: 18pt,
  image("/images/logos/julia.svg")
) através da ferramenta #h(1pt)
    #box(
  baseline: 22%,
  height: 12pt,
  image("/images/logos/pluto.svg")
)
para uma experiência mais interativa: \u{1F517} 
#show link: underline
#link("https://ricardo-luis.github.io/me-2/SeriesMotor.html")[_ notebook_]
]

== Exercício 16
#v(12pt) 
#h(1cm) Um motor série alimentado a $250$~V tem uma resistência de induzido de $0.2space Omega$ e uma resistência de indutor de $0.15space Omega$. Este enrolamento indutor tem uma resistência de campo de $0.1space Omega$ munida de interruptor.
#v(6pt) 

+ Suponha o interruptor aberto. Nestas condições, o motor fornece um binário útil de $25$~Nm, rodando a $800$~rpm e consumindo uma corrente de $10$~A.\ Calcule o rendimento, $eta space (%)$, o binário eletromagnético, $T_d$, e as perdas mecânicas e magnéticas, $p_"(mec+Fe)"$;

+ Suponha o interruptor fechado. Quais os novos valores da corrente consumida e de velocidade, quando o binário eletromagnético duplica. Explicite as hipóteses efetuadas;

+ Trace qualitativamente a característica de binário útil deste motor. Explicite o que acontece à mesma quando se varia a tensão da rede. Justifique.

#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Soluções:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $​​83.8space.thin%$ ; $space.quad 29.4$~Nm ; $space.quad 370.6$~W #h(2em)
    *b)*#h(0.5em) $22.4$~A ; $space.quad 888$~~rpm
    ]


== Exercício 17
#v(12pt) 
#h(1cm) Um motor _shunt_ com a chapa de características: $45$~kW, $500$~V, $100$~A, $1600$~rpm, apresenta uma resistência do induzido de $0.33$~$Omega$ e utilizará uma travagem por contracorrente, a partir da situação de funcionamento nominal.

#v(6pt)
Sabendo que a corrente inicial de travagem deve estar limitada a $150$~A, calcule:

#v(6pt) 

+ O binário útil, $T_u$, e a força contraeletromotriz, $E'$, à plena carga;

+ O valor da resistência de travagem;

+ Analise qualitativamente o binário desenvolvido no instante de paragem do motor. O que sucede a partir desse instante?

+ Considere uma travagem reostática. Calcule a corrente de travagem inicial se utilizar a resistência de travagem anterior, partindo da situação nominal.


#v(12pt)
  #rect(fill: luma(240), height: 90%, width: 100%,stroke: (left: 0.25em))[
    *Resolução:* 
#set par(hanging-indent: 1cm)

*a)*#h(0.5em) Da chapa de características obtém-se o binário útil:

#h(1cm)$T_u = display(P_u) / (display(2 thin pi thin n_n) / display(60))=display(45thin 000)/(display(2 thin pi thin 1600) / display(60))=268.6$~Nm

#v(6pt)
Cálculo de $E'$:
#h(1cm)$E'=U-R_i thin I_n=500-0.33 times 100=467$~V

#v(12pt)
*b)*#h(0.5em) A figura seguinte apresenta o esquema correspondente ao motor _shunt_ equipado com interruptor DPDT (_Double Pole, Double Throw_ -- Dois Polos, Duas Posições) para a manobra de *travagem por contracorrente*: 

#figure(image("/images/MshuntDPDT.png", width: 80%), gap:16pt) 

#v(6pt)
#h(1cm) Quando o DPDT comuta para realizar  travagem por contracorrente (posição 2), o terminal negativo do induzido do motor passa a estar ligado ao terminal positivo da fonte de alimentação CC, enquanto o terminal positivo do motor fica ligado ao terminal negativo da fonte através de uma resistência de travagem, $R_"trav"$.

Assim, circulando na malha de potência, tem-se a seguinte equação:

#h(1cm) $-U-E'+(R_i + R_"trav") thin I_"trav"=0 quad => quad I_"trav"=display(U+E')/ display(R_i + R_"trav")$

#v(6pt)
Note-se que a corrente de travagem, $I_"trav"$, circula no sentido contrário ao da corrente do motor com o DPDT na posição 1. Assim, o binário desenvolvido durante a travagem é contrário ao movimento do rotor, forçando a diminuição da velocidade, $omega$.

Com a diminuição da velocidade, $omega$, diminui a força contraeletromotriz, $E'$, e por conseguinte, a corrente e o binário durante a manobra de travagem do motor CC. 
]

#v(12pt)
  #rect(fill: luma(240), height: 100%, width: 100%,stroke: (left: 0.25em))[
    
#set par(hanging-indent: 1cm)


Manipulando a expressão anterior para obter a resistência de travagem, $R_"trav"$, vem:


#h(1cm)$R_"trav"=display(U+E')/ display(I_"trav")-R_i=display(500+467)/ display(150)-0.33=6.12space Omega$

#v(12pt)
*c)*#h(0.5em) Relacionando o binário desenvolvido, $T_d$, com a velocidade, $omega$, vem consecutivamente:

#h(1cm) $T_d=K thin phi.alt thin I_i quad$

Particularizando para o binário desenvolvido durante a travagem, $T_d_"trav"$, considerando $I_"trav"$:

#h(1cm) $T_d_"trav"= K thin phi.alt thin(display(U+E')/ display(R_i + R_"trav")) wide$ como: $wide E'= K thin phi.alt thin omega$

#v(12pt)
#h(1cm) $T_d_"trav"= display(K thin phi.alt thin U)/ display(R_i + R_"trav") + display( (K thin phi.alt)^2 thin omega)/ display(R_i + R_"trav") quad$, quando: $quad omega=0 space => space T_d_"trav"= display(K thin phi.alt thin U)/ display(R_i + R_"trav")$

#v(6pt)
Analisando a expressão anterior, verifica-se que a 2ª parcela diminui durante a manobra de travagem até se anular no momento em que: $omega=0$.

No entanto, a 1ª parcela permanece sempre no mesmo valor, pelo que, no instante seguinte àquele em que a velocidade se anula, se nada for feito, o motor arranca com esse valor de binário (da 1ª parcela) no sentido contrário. Conclui-se que é necessário prever um automatismo que desligue o motor da fonte de alimentação CC, assim que a velocidade se anule.

#v(12pt)
*d)*#h(0.5em) A *travagem reostática* consiste em desligar o circuito do induzido do motor da fonte de alimentação CC e ligá-lo sobre uma resistência de travagem. A máquina CC irá agora funcionar como um gerador de excitação separada (fluxo constante) alimentando a resistência de travagem. Como não existe acionamento do "gerador" (força motriz), a velocidade diminui acentuadamente em poucos instantes.

O esquema elétrico da figura seguinte utiliza um interruptor SPDT (_Single Pole, Double Throw_ -- Um Polo, Duas Posições) para a manobra de travagem reostática:

#figure(image("/images/MshuntSPDT.png", width: 80%), gap:16pt) 
]    
    
#v(12pt)
  #rect(fill: luma(240), height: 11%, width: 100%,stroke: (left: 0.25em))[
    
#set par(hanging-indent: 1cm)

#h(1cm)Analisando a circulação da corrente de travagem (interruptor SPDT na posição $2$), no momento inicial desta manobra, tem-se:

#h(1cm)$I_"trav"=display(E')/ display(R_i+R_"trav")= display(467)/ display(0.33+6.12)=72.4$~A


]
    







== Exercício 18
#v(12pt) 
#h(1cm) Um motor de corrente contínua de excitação separada, $10$~kW, $250$~V, $88space.thin%$ de rendimento, é alimentado a partir de um sistema Ward Leonard, apresentado no seguinte esquema
de princípio de funcionamento:

#figure(image("/images/WardLeonard_ex14.png", width: 70%), )

Conhecem-se as características magnéticas obtidas a $1200$~rpm do gerador e do motor:


#table(columns: 12, rows: 2, align: center + horizon, column-gutter: 5pt, stroke: none, table.hline(start:0, end: 12, stroke: 0.5pt), table.vline(start: 0, end: 2, stroke: 0.5pt), table.vline(x: 12, start: 0, stroke: 0.5pt),
underline[Gerador:], [], [$i($A$)$], [$0.0$], [$0.4$], [$0.8$], [$1.2$], [$1.6$], [$2.0$], [], [$R_i=0.8space.thin Omega$], [$R_d=120space.thin Omega$], [], [], [$E($V$)$], [$12$], [$110$],[$200$],[$260$],[$290$],[$310$], [], [$U_("exc")=240$~V], [$Delta E=0$~V], table.hline(start:0, end: 12, stroke: 0.5pt)
)

#table(columns: 12, rows: 2, align: center + horizon, column-gutter: 7.5pt, stroke: none, table.hline(start:0, end: 12, stroke: 0.5pt), table.vline(start: 0, end: 2, stroke: 0.5pt), table.vline(x: 12, start: 0, stroke: 0.5pt),
underline[Motor:], [], [$i($A$)$], [$0.0$], [$0.4$], [$0.8$], [$1.2$], [$1.6$], [], [], [$R_i=1.6space.thin Omega$], [$R_d=150space.thin Omega$], [], [], [$E($V$)$], [$10$], [$105$],[$190$],[$240$],[$265$],[], [], [$U_("exc")=240$~V], [$Delta E=0$~V], table.hline(start:0, end: 12, stroke: 0.5pt)
)
#v(12pt) 

+  Calcule a velocidade e o binário eletromagnético do motor a plena carga, com:\ $R_c^" ger"=180space.thin Omega$ e $R_c^" mot"=50space.thin Omega$ ;  

+ Regule através do sistema Ward Leonard a velocidade do motor para $1100$~rpm a meia carga. Calcule o valor do reóstato de campo para essa situação;

+ Quando a corrente de excitação do gerador atingir o seu valor máximo, como poderá aumentar a velocidade do motor de corrente contínua? Justifique;

+ Refira quais as vantagens na substituição do sistema Ward Leonard por um variador eletrónico de velocidade.

#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Soluções:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $​​455$~rpm ; $space.quad 87$~Nm #h(2em)
    *b)*#h(0.5em) $53space.thin Omega$
    ]

    
== Exercício 19
#v(12pt) 
#h(1cm) Considere um motor de corrente contínua alimentado a partir de um sistema Ward-Leonard eletrónico, de acordo com a figura seguinte:


#table(columns: 2, rows: 13, column-gutter: 6pt, stroke: none, align: (center, left),  table.cell(rowspan: 13, [#image("/images/WardLeonard_ex15.png", width: 80%)], align: center), [],[],[$P_n=5$~kW],[],[],[$T_n=30$~Nm],[],[],[$I_n=40$~A],[],[],[$R_a=0.8space.thin Omega$]
)

Conhece-se ainda a característica magnética da máquina obtida às $2000$~rpm:

#align(center)[
  #table(columns: 8, column-gutter: 12pt,
stroke: none,
align: right,
[$I_f$ (A)], [$0$], [$0.25$], [$0.50$], [$0.75$],  [$1.00$], [$1.25$], [$1.50$], 
[$E_0$ (V)], [$20$], [$160$], [$210$], [$235$], [$250$], [$260$], [$265$])
]

+ Determine qual o valor da tensão aplicada ao induzido do motor em condições nominais;

+ Considere o motor a funcionar nas seguintes condições: $U_a=195$~V; $n=1400$~rpm. Suponha agora que a partir do comando “Referência de velocidade” do variador eletrónico de velocidade, se altera subitamente a tensão do induzido para $155$~V. Calcule no instante imediato o valor da corrente da máquina. O que sucedeu? Justifique.


#v(12pt)
  #rect(fill: luma(240),  height: 30%, width: 100%,stroke: (left: 0.25em))[
    *Resolução:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) Utilizando os valores nominais fornecidos, a velocidade nominal é obtida por:

#h(1cm)$omega=display(P_n/T_n) quad$ combinando com: $quad omega=display(2 thin pi thin n) / display(60) quad$, tem-se: 
#v(10pt)
#h(1cm)$n=display(P_n/T_n) thin display(60/(2 thin pi))=display(5000/30) thin display(60/(2 thin pi))=1592$~rpm

#v(12pt)
Por outro lado, para $I_f=1$~A $=> space K thin phi.alt=display(250/2000)$~V$\/$rpm

#v(12pt)

Utilizando a equação para a velocidade:
$quad n=display(U_a-R_a thin I_n) / display(K thin phi.alt) quad$, com: $quad Delta E=0 space$, obtém-se:
#v(6pt)
#h(1cm)$1592=display(U_a-0.8 times 40) / display(250\/2000) quad => space U_a= 231$~V

]

#v(12pt)
  #rect(fill: luma(240),  height: 50%, width: 100%,stroke: (left: 0.25em))[ 
#set par(hanging-indent: 1cm)
    #h(1cm)*b)*#h(0.5em) Para as condições indicadas: $U_a=195$~V; $n=1400$~rpm, verifica-se uma corrente de funcionamento do motor, $I$:
#v(6pt)  
#h(1cm)$n=display(U_a-R_a thin I) / display(K thin phi.alt) space <=> space 1400=display(195-0.8 thin I) / display(250\/2000) space => I=25$~A

#v(12pt) 
Quando a tensão de alimentação altera subitamente, $(U_a=195$~V $->155$~V$)$, a velocidade ainda permanece a mesma (dinâmica lenta de um sistema mecânico _vs._ um sistema elétrico), verifica-se que a corrente altera para um novo valor, dado por, $I'$:
#v(6pt)  
#h(1cm)$n=display(U_a-R_a thin I') / display(K thin phi.alt) space <=> space 1400=display(155-0.8 thin I') / display(250\/2000) space => I'=-25$~A

#v(12pt) 
Verifica-se com a alteração súbita da tensão, $U_a$, que força contra eletromotriz se torna: $E'>U_a$, invertendo o sentido da corrente. Visto de outro modo, iniciou-se um processo de travagem, em que a corrente, $I'$, acompanhará a evolução de $E'$, sendo restabelecida no valor anterior, $(I=25$~A$)$, assim que a velocidade estabilizar.

Se o variador eletrónico de velocidade for bidirecional em corrente, então ocorre uma *travagem regenerativa*, sendo esta corrente devolvida à rede elétrica, durante o processo de travagem, enquanto se verificar $space E'>U_a$.

  ]


#v(5%)

== Bibliografia


 #list(indent: 1cm,
  [[Guru & Hiziroğlu, 2003]: Bhag S. Guru, Hüseyin R. Hiziroğlu, Electric Machinery and Transformers, 3#super("rd") Ed., Oxford University Press, 2003.]
)
  




#pagebreak(to: "odd")


#set page(
   header: [
    #set text(8pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) Máquinas Síncronas Trifásicas
  ]
  )
  



= Máquinas Síncronas Trifásicas


== Exercício 1
#v(12pt) 
#h(1cm) 
Um alternador síncrono trifásico, $390$~kVA, $1250$~V, $50$~Hz, $750$~rpm, ligado em triângulo, apresenta os seguintes resultados dos ensaios em vazio e curto-circuito:

#v(6pt)
#align(center)[
  #table(columns: 8
  , column-gutter: 20pt,
stroke: none,
align: right,
[$I_"exc"$ (A):], [$0.0$],[$11.5$], [$15.0$], [$20.0$], [$23.5$],  [$29.0$], [$33.5$], [$E_0$ (V):], [$91$],[$1010$], [$1235$], [$1460$], [$1560$], [$1640$], [$1660$], 
[$I_"cc"$ (A):], [$12$], [$144$], [$185$], [$242$], [$284$], [$347$], [$400$])
]

#v(6pt)
A resistência medida aos bornes do enrolamento do induzido é $0.144 space Omega$. Determine:
#v(12pt)

+ A resistência por fase do enrolamento induzido do alternador síncrono, considerando um coeficiente de correção do efeito pelicular da corrente de $1.2$;

+ A tensão de linha, para a corrente nominal e uma corrente de excitação de $33.5$~A, considerando um fator de potência da carga de $0.9$ indutivo;

+ A característica exterior do alternador síncrono trifásico, com uma corrente de excitação de $33.5$~A, para um fator de potência $0.9$ indutivo, unitário e $0.9$ capacitivo;

+ A corrente de excitação do alternador, para este alimentar um motor assíncrono trifásico a uma tensão de $1$~kV, sabendo que o motor desenvolve uma potência de $150$~kW com um fator de potência de $0.832$ e um rendimento de $90thin%$.
#v(6pt)
#h(1.5cm) (*Nota:* Admita que a impedância síncrona, $overline(Z)_s)$, é igual à obtida da alínea anterior)

\
(Fonte: Modificado a partir do problema 9 de [Malea & Balaguer, 2004])



#v(12pt)
#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
O exercício 1 está resolvido na linguagem#h(-2pt)
#box(
  baseline: 23%,
  height: 18pt,
  image("/images/logos/julia.svg")
) através da ferramenta #h(1pt)
    #box(
  baseline: 22%,
  height: 12pt,
  image("/images/logos/pluto.svg")
)
para uma experiência mais interativa: \u{1F517} 
#show link: underline
#link("https://ricardo-luis.github.io/me-2/StandAloneSynGen.html")[_ notebook_]
]

#pagebreak()
== Exercício 2
#v(12pt) 
#h(1cm) 
Um alternador síncrono trifásico de $4$~polos lisos, estator com ligações dos enrolamentos em triângulo, é utilizado para alimentar uma rede elétrica isolada com cargas equilibradas. O circuito do alternador tem reguladores de velocidade e da corrente de excitação operacionais de modo a manter, respetivamente, a frequência e a tensão constantes. Chapa de características: $72$~kVA, $400$~V, $50$~Hz, $cos phi=0.83thin("c")$. Conhecem-se os dados do ensaio em vazio, curto-circuito e medição de resistências:

#v(6pt)
#align(center)[
  #table(columns: 9
  , column-gutter: 16pt,
stroke: none,
align: right,
[$I_"exc"$ (A):], [$0.0$],[$1.0$], [$2.0$], [$3.0$], [$4.0$],  [$5.0$], [$6.0$], [$quad R_"J-K"=1
00thin Omega$], [$E_0$ (V):], [$15$],[$202$], [$370$], [$460$], [$480$], [$491$], [$500$], [],
[$I_"cc"$ (A):], [$2$], [$27$], [$51$], [$76$], [$101$], [$125$], [$150$], [$quad R_"U-V"=0.6thin Omega$])
]

#v(6pt)


+ Represente e determine os parâmetros do esquema equivalente por fase desta máquina para uma corrente de campo de $5$~A;

+ Considere uma reatância síncrona, $X_s=7.9thin Omega\/"fase"$. Determine a força eletromotriz e o ângulo de carga, $overline(E)_0=E_0 thin angle thin delta$, para o alternador funcionar nas condições nominais;

+ Determine o rendimento e o binário mecânico correspondente à situação nominal, sabendo que as perdas rotacionais são $1015$~W;

+ Suponha que o regulador da corrente de excitação avariou. Por conseguinte, a corrente de excitação mantém-se constante nas condições da alínea b). Analise qualitativamente o que sucede à tensão da rede se o fator de potência $(cos phi)$ diminuir, supondo corrente do estator, $I$, constante. Justifique, apresentando diagramas vetoriais justapostos (relativo à situação inicial e após diminuição do $cos phi$). Por simplificação, considere $R_s=0space Omega$.

#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Soluções:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $E_0=491$~V; $quad overline(Z)_s=0.9+"j"thin 6.74space Omega$#h(2em)
    *b)*#h(0.5em) $​​460.4thin angle 66.9degree$~~V\ 
    *c)*#h(0.5em) $​​83.7 thin%$; $quad 448.8$~Nm 
    ]


== Exercício 3
#v(12pt) 
#h(1cm) 
Um gerador síncrono, ligação Y, $2300$~V, $1000$~kVA, fator de potência $0.8$ indutivo, $60$~Hz, $2$~polos, tem uma reatância síncrona de $1.1space Omega$ e uma resistência do induzido de $0.15space Omega$. A $60$~Hz, as perdas por atrito e ventilação são $24$~kW, e as perdas no ferro $18$~kW.\
O enrolamento de campo é alimentado por uma tensão contínua de $200$~V, sendo o valor máximo de $I_f$ de $10$~A. O ensaio em circuito aberto deste alternador é o apresentado na figura seguinte:

#figure(image("/images/Open-circuit_Voltage_Alternator.png", width: 65%), )

+ Qual o valor da corrente de campo necessário para que a tensão composta do seja de $2300$~V, quando o alternador funciona em vazio?

+ Qual a força eletromotriz (FEM) gerada por esta máquina nas condições nominais?

+ Qual o valor da corrente de campo necessário para obter a tensão nominal, quando o alternador se encontra nas condições nominais?

+ Quais os valores de potência e binário necessários, para o acionamento deste alternador nas condições nominais?

+ Obtenha o diagrama P$thin$--$thin$Q deste alternador;

+ Considerando as condições nominais, obtenha a característica externa, $U="f"(I)$, para: \ $cos phi=0.8$ indutivo; $cos phi=0.8$ capacitivo; $cos phi=1$.

+ Para uma FEM de $2500$~V determine a característica externa, $U="f"(I)$, para: \ $cos phi=0.8$ indutivo; $cos phi=0.8$ capacitivo; $cos phi=1$.

\
(Fonte: Adaptado do problema 5.2 de [Chapman, 2005])

#v(12pt)
#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
O exercício 3 está resolvido na linguagem#h(-2pt)
#box(
  baseline: 23%,
  height: 18pt,
  image("/images/logos/julia.svg")
) através da ferramenta #h(1pt)
    #box(
  baseline: 22%,
  height: 12pt,
  image("/images/logos/pluto.svg")
)
para uma experiência mais interativa: \u{1F517} 
#show link: underline
#link("https://ricardo-luis.github.io/me-2/CurvesSynGen.html")[_ notebook_]
]

== Exercício 4
#v(12pt) 
#h(1cm) 
Uma máquina síncrona $3~$, $5$~kVA, $208$~V, $4$~polos, $60$~Hz, estator ligado em Y, apresenta um valor de resistência estatórica desprezável e uma reatância síncrona de $8Omega\/$fase.\
A máquina é posta a funcionar como alternador ligado a uma rede elétrica $3~$, $208$~V -- $60$~Hz.

+ Determine a FEM e o ângulo de carga quando a máquina entrega a potência nominal (kVA), com um fator de potência $0.8$~indutivo. Trace o diagrama vetorial de tensões nessas condições;

+ Calcule a corrente do estator, o fator de potência e a potência reativa fornecida pela máquina, se a corrente de excitação aumentar $20thin%$. Trace o diagrama vetorial de tensões correspondente;

+  Com a corrente de excitação da alínea a), a potência mecânica do motor de acionamento é gradualmente aumentada. Qual o limite de estabilidade em regime permanente?\ Quais são os valores correspondentes de corrente do estator, fator de potência e potência reativa, na condição de transferência máxima de potência? Trace o diagrama vetorial.
\
(Fonte: Exemplo 6.3 de [Sen, 1989])
#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Soluções:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $​​206.8thin angle 25.4degree$~~V#h(2em)
    *b)*#h(0.5em) $​​17.8thin angle -51.6degree$~~A; #h(1em) $0.62(upright(i))$; #h(1em) $5.0$~kVAr\
    *c)*#h(0.5em) $​​29.9thin angle 30.1degree$~~A; #h(1em) $0.87space (upright(c))$; #h(1em) $5.4$~~kVAr
    ]

== Exercício 5
#v(12pt) 
#h(1cm) 
Considere a instalação da central termoelétrica com armazenamento de energia através de ar comprimido (CAES -- _Compressed-Air Energy Storage_) de Huntorf, que utiliza uma máquina síncrona de rotor cilíndrico de alta velocidade, que pode operar como alternador, motor ou compensador síncrono.\ A central encontra-se ligada à rede elétrica de $15$~kV -- $50$~Hz e a máquina síncrona tem os seguintes parâmetros: ligação em Y, $X_s=0.34space Omega\/$fase, $R_a approx 0space Omega space $ e perdas rotacionais,$space p_"rot"=3.2$~MW (consideradas constantes em todos os modos de operação).\ 
#pagebreak()
*Modos de Funcionamento da Central*

A central opera em três modos, facilitados por duas embraiagens do tipo SSS (_Synchro-Self-Shifting_), [SSS gears, 2025], que permitem acoplar ou desacoplar a turbina e o compressor do veio principal:
-   *Modo de Geração (Alternador):* O ar comprimido é aquecido com a queima de gás natural e expandido através da turbina, que aciona o alternador para produzir eletricidade.
-   *Modo de Armazenamento (Motor):* A máquina funciona como motor e aciona o compressor para armazenar ar a alta pressão em reservatórios subterrâneos (cavernas de sal).

-   *Modo Compensador Síncrono:* Ambas as embraiagens estão abertas e a máquina funciona em vazio, focando-se na gestão de potência reativa para suporte da rede.

#figure(image("/images/CAES_plant.png", width: 80%), caption: [Esquema simplificado de funcionamento da central termoelétrica CAES de Huntorf, Alemanha. Adaptado de [EERA, 2013]], numbering: none)

#v(6pt)
*Parte 1: Modo Alternador (Geração de Energia) -- Período de ponta*\
#h(1cm) (Neste modo, a embraiagem da turbina está acoplada) A potência mecânica fornecida pela turbina ao eixo da máquina é de $321$~MW. A máquina síncrona fornece energia para a rede com um fator de potência indutivo de $0.88$. Determine:
#v(6pt)
+  a potência ativa fornecida para a rede elétrica e a corrente de linha;
+  a força eletromotriz por fase e o ângulo de carga;
+ Represente o diagrama vetorial de tensões, indicando as potências nos eixos $Q(delta), P(delta)$ e $P(phi), Q(phi)$.
#v(6pt)
*Parte 2: Modo Motor Síncrono (Armazenamento de Energia) -- Período de vazio*\
#h(1cm) (Neste modo, a embraiagem do compressor está acoplada) A potência mecânica necessária para acionar o compressor é de $60$~MW. A máquina consome energia da rede e é operada em sobreexcitação para injeção de potência reativa na rede, com num fator de potência de $0.70$. Determine:
#v(6pt)
+ a potência ativa consumida da rede elétrica e a corrente na linha;
+ a força eletromotriz por fase e o ângulo de carga;
+ Represente o diagrama vetorial de tensões, indicando as potências nos eixos $Q(delta), P(delta)$ e $P(phi), Q(phi)$.
#v(6pt)
*Parte 3: Modo Compensador Síncrono --  Serviços Ancilares*\
#h(1cm) (Neste modo, ambas as embraiagens SSS estão abertas)
#v(6pt)
+  Partindo do modo gerador, definido na Parte 1, indique os procedimentos para colocar a máquina a funcionar como uma *reatância síncrona*;
+ Partindo do modo motor, definido na Parte 2, indique os procedimentos para colocar a máquina a funcionar como um *condensador síncrono*;
+  Se a central for configurada para fornecer $72$~MVAr indutivos para a rede elétrica, determine a força contraeletromotriz e o ângulo de carga necessários. Represente o respetivo diagrama vetorial de tensões, indicando as potências nos eixos $Q(delta), P(delta)$ e $P(phi), Q(phi)$.

#v(12pt)
  #rect(fill: luma(240), width: 100%,height: 28%, stroke: (left: 0.25em))[
    *Resolução (Parte 1):* 
#set par(hanging-indent: 1cm)
    *a)*\
    Como alternador, atendendo que se desprezam perdas por efeito de Joule do estator $(R approx 0)$,  a potência ativa fornecida à rede elétrica, $P$, vem dada por:\
    #h(2em)$P=P_"turbina"-p_"rot"=321-3.2=317.8$~MW
    #v(6pt)
    Por sua vez, considerando o fator de potência, a corrente na linha, $I_L$, obtém-se de:\
    #v(6pt)
    #h(2em)$I_L=display(P/(sqrt(3)thin U_L thin cos phi))=display((317.8 times 10^6) / (sqrt(3) times 15 times 10^3 times 0.88))=13.90$~kA
  ]


#v(12pt)
  #rect(fill: luma(240), width: 100%,height: 71%, stroke: (left: 0.25em))[  
#set par(hanging-indent: 1cm)
    \
    *b)*\
    Com os enrolamentos estatóricos em estrela, têm-se as seguintes grandezas por fase:

    #h(2em)$overline(I)=I_L angle phi quad$ com: $quad phi=-arccos(0.88)= -28.4 degree quad$ e $quad overline(U)=display(U_L/sqrt(3)) angle 0 degree$

    #v(6pt)
    Assim, $overline(E)_0$, vem dada por:

    #h(2em)$overline(E)_0=E_0 angle delta=overline(U)+"j"X_s overline(I)=(display((15times 10^3) / sqrt(3)) angle 0 degree) + "j"thin 0.34 thin (13.90 times 10^3 angle -28.4 degree)$
    
    #h(3.1cm)$=11.67 thin angle 20.9 degree$~~kV
    
 \
    *c)*\


#import "@preview/cetz:0.3.0"
#move(dx: 2cm, {
cetz.canvas({
  import cetz.draw: *
  let scaleI = 3000
  let scaleU = 1000
  let (Iph, I) = (-28.36deg, 13990.15/scaleI)
  let (Ix, Iy) = (12232.13/scaleI, -6602.2/scaleI)
  let U = (15000/1.732)/scaleU //kV
  let (Eph, E) =(20.88deg, 11671.1/scaleU)
  let (DUx, DUy) = (2244.75/(scaleU), 4158.92/scaleU)
  
  group({
  scale(1)
  set-style(stroke: (thickness:2pt))
  
  line((0, 0), (U, 0), name: "U", mark: (end: ">"))
  content((U*0.9, -0.5), $overline(U)$)

  line((0, 0), (Iph, I), name: "I", mark: (end: ">"))
  content((Iph -10deg, I*0.95), $ overline(I)$)

  line((U, 0), (U+DUx, DUy), name: "DU", mark: (end: ">"))
  content((0.92*(U+DUx), DUy*0.3), $"j"X_s overline(I)$)

  
  line((0, 0), (Eph,E), name: "E0", mark: (end: ">"))
  content((Eph+4deg, 0.5*E), $overline(E)_0^'$)
  })

  group({
  scale(1)
  set-style(stroke: green.darken(30%) + 0.5pt)
  line((U,-1), (U, 5.5), name: "P", mark: (end: ">"))
  content((U*0.94, 5), text(green.darken(30%), $P(delta)$))
  line((U,0), (U+4, 0), name: "q", mark: (end: ">"))
  content((U+3.3, -0.35), text(green.darken(30%), $Q(delta)$))

  group({
  scale(1)
  set-style(stroke: blue.darken(30%) + 0.5pt)
  line((0,0), (-2, 0), name: "P", mark: (end: ">"))
  content((-1.3, -0.3), text(blue.darken(30%), $P(phi)$))
  line((0,0), (0, -3.5), name: "q", mark: (end: ">"))
  content((-0.5, -3), text(blue.darken(30%), $Q(phi)$))
})

group({
  scale(1)
  set-style(stroke: black + 0.5pt)

 arc((1.5, 0), start: 0deg, stop: Iph, radius: 1.5)
  content((1.8, -0.4), $phi$)
  arc((2, 0), start: 0deg, stop: Eph, radius: 1.9)
  content((2.3, 0.3), $delta$)
 })


  line((0,0), (Iph, I*1.8), name: "I_line", stroke: (dash: "dashed"))


  line((U,0), (U - (DUx*1), - (DUy*1)), name: "I_line", stroke: (dash: "dashed"))

   line((0,Iy), (Ix,Iy), name: "I_line",stroke: (paint: blue.darken(30%), dash: "dashed"))

   line((Ix,0), (Ix,Iy), name: "I_line",stroke: (paint: blue.darken(30%), dash: "dashed"))


     line((0,Iy), (Ix,Iy), name: "I_line",stroke: (paint: blue.darken(30%), dash: "dashed"))

   line((U+DUx,0), (U+DUx,DUy), name: "I_line",stroke: (paint: green.darken(30%), dash: "dashed"))

    line((U+DUx,DUy), (U,DUy), name: "I_line",stroke: (paint: green.darken(30%), dash: "dashed"))
   
})
})
})

  ]

  #rect(fill: luma(240), width: 100%,height: 26%, stroke: (left: 0.25em))[
    *Resolução (Parte 2):* 
#set par(hanging-indent: 1cm)
    *a)*\
    Como motor, atendendo que se desprezam perdas por efeito de Joule do estator $(R approx 0)$,  a potência ativa consumida da rede elétrica, $P$, vem dada por:\
    #h(2em)$P=P_"compressor"+p_"rot"=60+3.2=63.2$~MW
    #v(6pt)
    Por sua vez, considerando o fator de potência, a corrente na linha, $I_L$, obtém-se de:\
    #v(6pt)
    #h(2em)$I_L=display(P/(sqrt(3)thin U_L thin cos phi))=display((63.2 times 10^6) / (sqrt(3) times 15 times 10^3 times 0.70))=3475$~A
  ]

  #rect(fill: luma(240), width: 100%,height: 61%, stroke: (left: 0.25em))[
#set par(hanging-indent: 1cm)
    \
    *b)*\
    O motor sobreexcitado, $(E'_0 cos delta >U)$, impõe que a corrente seja de carácter capacitivo, então:

    #h(2em)$phi=arccos(0.70)= 45.6 degree quad$

    #v(6pt)
    Assim, $overline(E)'_0$, vem dada por:
    
    #h(2em)$overline(E)'_0=E'_0 angle delta=overline(U)-"j"X_s overline(I)=(display((15times 10^3) / sqrt(3)) angle 0 degree) - "j"thin 0.34 thin (3475 thin angle 45.6 degree)$
    
    #h(3.1cm)$=9.54 thin angle -5.0 degree$~~kV


     \
    *c)*\


#import "@preview/cetz:0.3.0"
#move(dx: 2cm, {
cetz.canvas({
  import cetz.draw: *
  let scaleI = 3000
  let scaleU = 1000
  let (Iph, I) = (45.57deg, 3475/scaleI)
  let (Ix, Iy) = (2432.57/scaleI, 2481.72/scaleI)
  let U = (15000/1.732)/scaleU //kV
  let (Eph, E) =(-4.97deg, 9540/scaleU)
  let (DUx, DUy) = (843.784/(scaleU), -827.074/scaleU)
  
  group({
  scale(1)
  set-style(stroke: (thickness:2pt))
  
  line((0, 0), (U, 0), name: "U", mark: (end: ">"))
  content((U*0.55, 0.3), $overline(U)$)

  line((0, 0), (Iph, I), name: "I", mark: (end: ">"))
  content((Iph +10deg, I*1.1), $ overline(I)$)

  line((U, 0), (U+DUx, DUy), name: "DU", mark: (end: ">"))
  content((1.07*(U+DUx), DUy*0.6), $"-j"X_s overline(I)$)

  
  line((0, 0), (Eph,E), name: "E0", mark: (end: ">"))
  content((Eph -6deg, 0.5*E), $overline(E)_0^'$)
  })

  group({
  scale(1)
  set-style(stroke: green.darken(30%) + 0.5pt)
  line((U,1), (U, -2), name: "P", mark: (end: ">"))
  content((U*0.94, -1.7), text(green.darken(30%), $P(delta)$))
  line((U,0), (U+3.5, 0), name: "q", mark: (end: ">"))
  content((U+3, -0.35), text(green.darken(30%), $Q(delta)$))

   group({
  scale(1)
  set-style(stroke: blue.darken(30%) + 0.5pt)
  line((0,0), (-2, 0), name: "P", mark: (end: ">"))
  content((-1.3, -0.3), text(blue.darken(30%), $P(phi)$))
  line((0,0), (0, 2.5), name: "q", mark: (end: ">"))
  content((-0.5, 2), text(blue.darken(30%), $Q(phi)$))
})

group({
  scale(1)
  set-style(stroke: black + 0.5pt)

 arc((1.5, 0), start: 0deg, stop: Iph, radius: 1.5)
  content((1.6, 0.7), $phi$)
  arc((6.1, 0), start: 0deg, stop: Eph, radius: 6)
  content((6.3, -0.3), $delta$)
 })


  line((0,0), (Iph, I*5.5), name: "I_line", stroke: (dash: "dashed"))


  line((U,0), (U - (DUx*5.5), - (DUy*5.5)), name: "I_line", stroke: (dash: "dashed"))

   line((0,Iy), (Ix,Iy), name: "I_line",stroke: (paint: blue.darken(30%), dash: "dashed"))

   line((Ix,0), (Ix,Iy), name: "I_line",stroke: (paint: blue.darken(30%), dash: "dashed"))


     line((0,Iy), (Ix,Iy), name: "I_line",stroke: (paint: blue.darken(30%), dash: "dashed"))

   line((U+DUx,0), (U+DUx,DUy), name: "I_line",stroke: (paint: green.darken(30%), dash: "dashed"))

    line((U+DUx,DUy), (U,DUy), name: "I_line",stroke: (paint: green.darken(30%), dash: "dashed"))
   
})
})
})
    
  ]

#rect(fill: luma(240), width: 100%,height: 36.8%, stroke: (left: 0.25em))[
    *Resolução (Parte 3):* 
#set par(hanging-indent: 1cm)
    *a)*\
    Partindo do funcionamento como alternador sobreexcitado (parte 1), é necessário colocar a máquina a "flutuar" na rede elétrica, ou seja, fazendo: $quad P->0 quad$ e $quad Q->0$.\ Para tal é necessário diminuir a potência mecânica da turbina, diminuindo o binário mecânico da turbina fornecida ao alternador. Na sequência disso:\

    #h(2em)$P_"turbina" arrow.br.filled quad => quad delta arrow.br.filled quad => quad P arrow.br.filled space "e" space Q \u{2B08} ("um pouco"); quad "até obter" quad P=0$

    Simultaneamente, é necessário atuar na corrente de excitação do alternador para diminuir a potência reativa até a anular:

    #h(2em)$I_"exc" arrow.br.filled  quad => quad Q arrow.br.filled quad "até obter" quad Q=0$
    #v(6pt)
    Assim que não exista fluxo de potências entre a máquina síncrona e a rede elétrica, a embraiagem turbina-alternador é automaticamente aberta (ou desacoplada).

  ]
  
#rect(fill: luma(240), width: 100%,height: 99%, stroke: (left: 0.25em))[
   
#set par(hanging-indent: 1cm)

\
    Como a máquina síncrona continua eletricamente ligada à rede elétrica, comporta-se agora como um motor síncrono em vazio (compensador síncrono).
    Neste modo consome uma corrente baixa para suportar essencialmente as suas perdas rotacionais, $P=P_"rot"$.

    Como compensador síncrono, para atuar no modo reatância síncrona, tem de absorver uma corrente indutiva. Para tal, é necessário subexcitar a máquina síncrona, diminuindo a corrente de excitação até obter o valor de potência reativa desejado.

    Assim, o compensador síncrono consumirá corrente indutiva, o que significa que estará a produzir potência reativa capacitiva para a rede elétrica.
    
    \
    *b)*\
    Partindo do funcionamento como motor sobreexcitado (parte 2), basta diminuir o binário mecânico que o compressor exerce sobre o veio da máquina síncrona até este se anular, ficando o motor em vazio (compensador síncrono). Assim tem-se:\

    #h(2em)$P_"compressor" arrow.br.filled quad => quad |delta| arrow.br.filled quad => quad |P| arrow.br.filled space "e" space Q\u{2B08} ("um pouco"); quad "até obter" quad P=0$

    Assim que não exista transmissão de potência  mecânica (binário mecânico nulo) do motor síncrono para o compressor, a embraiagem compressor-motor é automaticamente aberta (ou desacoplada).
    
    Para o funcionamento como condensador síncrono é necessário que o compensador síncrono esteja sobreexcitado (já se encontrava na parte 2), para consumir corrente capacitiva. Assim, é apenas necessário reajustar a corrente de excitação para o valor de potência reativa necessária. 
    
    Por conseguinte, e como exemplo, aumentando a corrente de excitação, aumenta o consumo de corrente capacitiva da máquina, o que permite esta produzir mais potência reativa indutiva para a rede elétrica: 
    
    #h(2em)$I_"exc"  \u{2B08}quad => quad E'_0\u{2B08} quad => I ("cap") \u{2B08} quad => Q  \u{2B08}$
    #v(6pt)


     \
    *c)*\
    Para o compensador síncrono produzir $72$~MVAr indutivos para a rede elétrica, então terá de consumir corrente capacitiva, atuando como uma bateria de condensadores (modo condensador síncrono). Assim, a potência aparente necessária para o condensador síncrono funcionar vem dada por:

    #h(2em)$overline(S)=p_"rot"- "j"thin Q=3.2 - "j"thin 72$~~MVA

    Como: $quad overline(S)=3 thin overline(U) thin overline(I)^* quad$ com: $quad U, I quad$ a tensão e a corrente por fase. Assim:
  ]

#rect(fill: luma(240), width: 100%,height: 47%, stroke: (left: 0.25em))[
#set par(hanging-indent: 1cm)
    \
    #h(2em)$overline(I)=(display(overline(S) / (3 thin overline(U))))^*=(display((p_"rot" - "j"thin Q) / (3 thin U angle 0 degree)))^* =(display(((3.2-"j"thin 72)times 10^6) / (3 thin display(15 times 10^3)/ display(sqrt(3)) angle 0 degree)))^*=2774 thin angle 87.5 degree$~~A

    #v(6pt)
    Assim, $overline(E)'_0$, vem dada por:
    
    #h(2em)$overline(E)'_0=E'_0 angle delta=overline(U)-"j"X_s overline(I)=(display((15times 10^3) / sqrt(3)) angle 0 degree) - "j"thin 0.34 thin (2774 thin angle 87.5 degree)$
    
    #h(3.1cm)$=9.6 thin angle -0.25 degree$~~kV
    
    #v(6pt)
    #underline[Diagrama vetorial]:
    
#import "@preview/cetz:0.3.0"
#move(dx: 2cm, {
cetz.canvas({
  import cetz.draw: *
  let scaleI = 3000
  let scaleU = 1000
  let (Iph, I) = (87.455deg, 2774/scaleI)
  let (Ix, Iy) = (123.17/scaleI, 2771.28/scaleI)
  let U = (15000/1.732)/scaleU //kV
  let (Eph, E) =(-0.25deg, 9602.6/scaleU)
  let (DUx, DUy) = (942.23/(scaleU), -41.88/scaleU)
  
  group({
  scale(1)
  set-style(stroke: (thickness:1pt))
  
  line((0, 0), (U, 0), name: "U", mark: (end: ">"))
  content((U*0.95, 0.25), $overline(U)$)

  line((0, 0), (Iph, I), name: "I", mark: (end: ">"))
  content((Iph +10deg, I*1.1), $ overline(I)$)

  line((U, 0), (U+DUx, DUy), name: "DU", mark: (end: ">"),  stroke: (paint: red.darken(30%)))
  content((0.96*(U+DUx), -DUy*6), text(red.darken(30%), $"-j"X_s overline(I)$))
  
  line((0, 0), (Eph,E), name: "E0", mark: (end: ">"), stroke: (paint: purple.darken(30%)))
  content((Eph -6deg, 0.5*E), text(purple.darken(30%), $overline(E)_0^'$))
  })

  group({
  scale(1)
  set-style(stroke: green.darken(30%) + 0.5pt)
  line((U,1), (U, -2), name: "P", mark: (end: ">"))
  content((U*0.94, -1.7), text(green.darken(30%), $P(delta)$))
  line((U,0), (U+3.5, 0), name: "q", mark: (end: ">"))
  content((U+3, -0.35), text(green.darken(30%), $Q(delta)$))

  group({
  scale(1)
  set-style(stroke: blue.darken(30%) + 0.5pt)
  line((0,0), (-2, 0), name: "P", mark: (end: ">"))
  content((-1.3, -0.3), text(blue.darken(30%), $P(phi)$))
  line((0,0), (0, 2.5), name: "q", mark: (end: ">"))
  content((-0.5, 2), text(blue.darken(30%), $Q(phi)$))
})

group({
  scale(1)
  set-style(stroke: black + 0.5pt)

  arc((1.5, 0), start: 0deg, stop: Iph, radius: 1.5)
  content((1.6, 0.7), $phi$)
  arc((6.1, 0), start: 0deg, stop: Eph, radius: 6)
  content((6.3, -0.3), text(purple.darken(30%), $delta=-0.25 degree$))
})


  line((0,0), (Iph, I*3), name: "I_line", stroke: (dash: "dashed"))


  line((U,0), (U - (DUx*10), - (DUy*10)), name: "I_line", stroke: (paint: red.darken(30%),dash: "dashed"))

  line((0,Iy), (Ix,Iy), name: "I_line",stroke: (paint: blue.darken(30%), dash: "dashed"))

  line((Ix,0), (Ix,Iy), name: "I_line",stroke: (paint: blue.darken(30%), dash: "dashed"))


  line((0,Iy), (Ix,Iy), name: "I_line",stroke: (paint: blue.darken(30%), dash: "dashed"))

  line((U+DUx,0), (U+DUx,DUy), name: "I_line",stroke: (paint: green.darken(30%), dash: "dashed"))

  line((U+DUx,DUy), (U,DUy), name: "I_line",stroke: (paint: green.darken(30%), dash: "dashed"))
   
})
})
})

    
  ]
  
    

== Exercício 6
#v(12pt) 
#h(1cm) 
A máquina síncrona do *exercício 4* é agora utilizada como motor síncrono alimentado por uma rede elétrica $3~$, $208$~V -- $60$~Hz. A corrente de excitação é ajustada de modo a obter um fator de potência unitário quando a máquina absorve $3$~kW da rede.

+ Determine a força contraeletromotriz (FCEM) e o ângulo de carga. Trace o diagrama vetorial de tensões nessas condições;

+ Determine o binário máximo que o motor pode desenvolver, se a corrente de excitação se mantiver constante e a carga aplicada ao veio for aumentando gradualmente.

\
(Fonte: Exemplo 6.4 de [Sen, 1989])
#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Soluções:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $​​137.3 thin angle -29.0degree$~~V#h(2em)
    *b)*#h(0.5em) $​​32.8$~Nm    
    ]



\
== Exercício 7
#v(12pt) 
#h(1cm) 
Considere um alternador síncrono  com $X_s=4space Omega$ e $R approx 0space Omega$, a operar sob a rede de potência infinita: $U=200space"V/fase"$ e $f=50space"Hz"
$.

+ Traçar os diagramas vetoriais correspondentes às combinações entre as seguintes potências ativas e reativas: #align(center)[
  #table(columns: 6, align: center, column-gutter: 20pt, stroke: none,
[$0$], [$5$], [$10$], [$15$], [$20$], [kW, kVAr]
)]

+ Traçar as curvas em V, também designadas por curvas de Mordey, das potências requeridas.

#v(12pt)
#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
O exercício 7 está resolvido na linguagem#h(-2pt)
#box(
  baseline: 23%,
  height: 18pt,
  image("/images/logos/julia.svg")
) através da ferramenta #h(1pt)
    #box(
  baseline: 22%,
  height: 12pt,
  image("/images/logos/pluto.svg")
)
para uma experiência mais interativa: \u{1F517} 
#show link: underline
#link("https://ricardo-luis.github.io/me-2/Vcurves.html")[_ notebook_]
]


== Exercício 8
#v(12pt) 
#h(1cm) 
Considere uma máquina síncrona de rotor cilíndrico, $2$~polos, $20$~MVA, $6$~kV$-50$~Hz, #box($cos phi = 0.8$)~ (i), enrolamentos estatóricos em Y, de resistência desprezável e $X_s=1.1$~pu. A máquina síncrona é ligada a uma rede elétrica de $6$~kV$-50$~Hz e apresenta o seu mapa de funcionamento, traduzido nas curvas V da figura seguinte: 

#figure(image("/images/curvas v_pu.png", width: 65%),)

Determine em valores por unidade (pu):

+ as potências ativa e aparente do ponto $4$ e o respetivo ângulo de carga;

+ Que pontos formam uma linha de excitação ótima? Justifique;

+ nos pontos $1$ e $3$, as potências ativa e reativa, ângulos de carga, como alternador. Apresente justapostos os diagramas vetoriais de tensões dos pontos $1$ e $3$ indicando as respetivas potências;

+ as perdas rotacionais da máquina. Justifique.

+ o binário mecânico correspondente ao ponto $8$, em funcionamento como motor síncrono. Apresente o respetivo diagrama vetorial de tensões;

+ Escolha justificadamente o ponto correspondente ao funcionamento como condensador síncrono e apresente o respetivo diagrama vetorial de tensões.

#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Soluções:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $Q_4=0$~pu; #h(0.5em) $​​P_4=plus.minus 0.6$~pu; #h(0.5em) $delta_4=plus.minus 33.4degree$#h(2em) 
    *b)*#h(0.5em) excitação ótima: $6-​​8 - 2 - 4$ #h(2em)\
    *c)*#h(0.5em) $P_1=P_3=0.25$~pu; #h(1em) $delta_1=21.5degree$; #h(0.5em)  $delta_3=10.6degree$; #h(1em) $Q_1=0.27$~pu (c); #h(0.5em)\ #h(1.5em)$Q_3=0.43$~pu (i) #h(2em)\
    *d)*#h(0.5em) $p_"rot"=0.05$~pu #h(2em) 
    *e)*#h(0.5em) $T_"mec"=0.2$~pu #h(2em) 
    *f)*#h(0.5em) condensador síncrono: $7$
    ]


    == Exercício 9
#v(12pt) 
#h(1cm) 
Uma máquina síncrona trifásica, $5$~MVA, $11$~kV, ligação dos enrolamentos do estator em Y, apresenta uma reatância síncrona de $10space Omega\/$fase e uma resistência do induzido desprezável. A máquina é ligada a
um barramento de $11$~kV$-60$~Hz e funciona como compensador síncrono. Despreze as perdas mecânicas.

+ Determine a corrente do estator para o ponto de excitação ótima. Desenhe o diagrama vetorial;

+ Determine a corrente do estator e o fator de potência se a corrente de excitação aumentar $50thin%$. Desenhe o diagrama vetorial;

+ Idem, para uma diminuição de $50thin%$. Desenhe o diagrama vetorial.

\
(Fonte: Exemplo 6.6 de [Sen, 1989])
#v(12pt)
  #rect(fill: luma(240), width: 100%,height: 100%, stroke: (left: 0.25em))[
    *Resolução:* 
#set par(hanging-indent: 1cm)
    *a)* 
    
    Não havendo perdas a considerar e tratando-se de um compensador síncrono $(P=0)$, a corrente será nula para o ponto de excitação ótima $(Q=0, space "ou" space cos phi=1)$, por conseguinte, $I=0$~A.

    #v(6pt)
#h(1cm)    #underline[Diagrama vetorial]:
    
    
#import "@preview/cetz:0.3.0"
#move(dx: 2cm, {
cetz.canvas({
  import cetz.draw: *
  let scaleI = 40
  let scaleU = 1000
  let (Iph, I) = (90deg, 200/scaleI)
  let U = (11e3/1.732)/scaleU //kV
   
  group({
  scale(1)
  set-style(stroke: (thickness:2pt))
  
  line((0, 0), (U, 0), name: "U", mark: (end: ">"))
  content((U*0.9, -0.5), $overline(U)$)

  line((0, 0), (0.1, 0.1), name: "I", mark: (end: "<>"))
  content((-0.2, 0.3), $ overline(I)=0$)

  line((0, 0), (U,0), name: "E0", mark: (end: ">"))
  content((U*0.9, 0.5), $overline(E)_0^'$)
  })

  group({
  scale(1)
  set-style(stroke: (thickness:0.5pt))
  line((U,-1), (U, 3.5), name: "P", mark: (end: ">"))
  content((U*0.95, 3), "P")
  line((U,0), (U+3.5, 0), name: "q", mark: (end: ">"))
  content((U+3, -0.35), "Q")
})
})
})

\
    
    *b)* 
    
    Considerando circuito magnético linear (desconhecida a característica magnética), um aumento da corrente de excitação em $50thin%$ terá o mesmo aumento na força eletromotriz, $overline(E)_0$. Assim, partindo da situação anterior, $(overline(E)_0^'=overline(U))$, tem-se:

    #h(2em) $E_0^'=1.5thin U$

    Como compensador síncrono, desprezando perdas, tem-se um ângulo de carga nulo, $delta=0degree.$


#v(6pt)
#h(1cm)#underline[Diagrama vetorial]:

#import "@preview/cetz:0.3.0"
#move(dx: 2cm, {
cetz.canvas({
  import cetz.draw: *
  let scaleI = 150
  let scaleU = 1000
  let (Iph, I) = (90deg, 317.5/scaleI)
  let U = (11e3/1.732)/scaleU //kV
  let E =1.5*U
   
  group({
  scale(1)
  set-style(stroke: (thickness:2pt))
  
  line((0, 0), (U, 0), name: "U", mark: (end: ">"))
  content((U*0.9, -0.5), $overline(U)$)

  line((0, 0), (Iph, I), name: "I", mark: (end: ">"))
  content((-0.4, I*0.8), $ overline(I)$)

  line((0, 0), (E,0), name: "E0", mark: (end: ">"))
  content((E*0.9, 0.5), $overline(E)_0^'$)
  content((E*0.9, -0.6), $-j X_s overline(I)$)
  })

  group({
  scale(1)
  set-style(stroke: (thickness:0.5pt))
  line((U,-1), (U, 2.5), name: "P", mark: (end: ">"))
  content((U*0.95, 2), "P")
  line((U,0), (U+6, 0), name: "q", mark: (end: ">"))
  content((U+5.5, -0.35), "Q")
})
})
})

\  
    #h(2em) $​​overline(E)_0^'=overline(U)-"j"thin X_s thin overline(I) quad <=> quad overline(I)=display((overline(E)_0^'-overline(U)) / (-"j"thin X_s))quad <=>$
    
    \
    #h(2em) $<=> quad overline(I)=display(((1.5times 11times 10^3)/sqrt(3) thin angle 0 degree)-((11times 10^3)/sqrt(3)thin angle 0 degree)) / (display(-"j"thin 10))=317.5 thin angle 90 degree$~~A

    
     ]

#rect(fill: luma(240), width: 100%,height: 43%, stroke: (left: 0.25em))[
#set par(hanging-indent: 1cm)  
\
    *c)* 
    
    Usando um raciocínio similar à alínea anterior, tem-se:       $quad E_0^'=0.5thin U quad$ e $quad delta=0degree.$

    \
    #underline[Diagrama vetorial]:
#import "@preview/cetz:0.3.0"
#move(dx: 2cm, {
cetz.canvas({
  import cetz.draw: *
  let scaleI = 150
  let scaleU = 1000
  let (Iph, I) = (90deg, 317.5/scaleI)
  let U = (11e3/1.732)/scaleU //kV
  let E =0.5*U
   
  group({
  scale(1)
  set-style(stroke: (thickness:2pt))
  
  line((0, 0), (U, 0), name: "U", mark: (end: ">"))
  content((U*0.9, -0.5), $overline(U)$)

  line((0, 0), (Iph, -I), name: "I", mark: (end: ">"))
  content((-0.4, -I*0.8), $ overline(I)$)

  line((0, 0), (E,0), name: "E0", mark: (end: ">"))
  content((E*0.8, 0.5), $overline(E)_0^'$)
  

  line((U, 0), (E,0), name: "Xs", mark: (end: ">"))
  content((E*1.2, -0.6), $-j X_s overline(I)$)
  
  })

  group({
  scale(1)
  set-style(stroke: (thickness:0.5pt))
  line((U,-1), (U, 2.5), name: "P", mark: (end: ">"))
  content((U*0.95, 2), "P")
  line((U,0), (U+3.5, 0), name: "q", mark: (end: ">"))
  content((U+3, -0.35), "Q")
})
})
})

\  
    #h(0.5em) $​​overline(E)_0^'=overline(U)-"j"thin X_s thin overline(I) quad <=> quad overline(I)=display((overline(E)_0^'-overline(U)) / (-"j"thin X_s))quad <=> quad overline(I)=317.5 thin angle -90 degree$~~A
    ]


== Exercício 10
#v(12pt) 
#h(1cm) 
Considere um alternador síncrono trifásico, $20$~MVA, $11$~kV, com os enrolamentos do estator ligados em estrela, sendo a respetiva resistência desprezável. O alternador síncrono apresenta a seguinte característica magnética à velocidade nominal:

#align(center)[
  #table(columns: 11, column-gutter: 4pt,
stroke: none,
align: right,
[$I_"exc"$ (A)], [$60$], [$80$], [$100$], [$120$],  [$140$], [$160$], [$180$], [$200$], [$220$], [$240$], 
[$E_0$ (V)], [$7 772$], [$8 827$], [$9 611$], [$10 214$], [$10 694$], [$11 085$], [$11 409$], [$11 683$], [$11 917$], [$12 119$])
]

O alternador encontra-se ligado a uma rede elétrica de potência infinita de $11$~kV, fornecendo uma potência de $20$~MW com fator de potência unitário. Para uma corrente de excitação de $200$~A, determine:\

#set par(hanging-indent: -3.5em) // Define o recuo deslocado

+ A reatância síncrona do alternador;\
  \
  Considere um segundo alternador síncrono trifásico, de idênticas características nominais, ligado à rede de potência infinita de $11$~kV em paralelo com o anterior e à mesma corrente de excitação. Se o conjunto dos alternadores fornecer uma potência de $36$~MW, repartida de igual modo por ambos, com um fator de potência $0.9$~indutivo, calcule:

+ A FEM induzida em cada um dos alternadores síncronos trifásicos e a corrente total fornecida à rede elétrica;\ 
  \
  Se reduzir a FEM por fase em $10thin%$ de um dos alternadores ligados em paralelo, mantendo constante o binário mecânico aplicado pela turbina a cada alternador, bem como o fator de potência global, determine:

+ A FEM induzida no outro alternador síncrono trifásico para satisfazer as condições indicadas;

+ As correntes fornecidas à rede e o fator de potência de cada alternador.

#set par(hanging-indent: 0em) // 
\
(Fonte: Modificado a partir do problema 10 de [Malea & Balaguer, 2004])

#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Soluções:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $2.16space Omega$; #h(2em)
    *b)*#h(0.5em) $7618 thin angle 15.5 degree$~~V;#h(0.5em)$2099 thin angle -25.8degree$~~A;#h(2em)
    *c)*#h(0.5em) $8385 thin angle 14.1 degree$~~V#h(2em)\
    *d)*#h(0.5em) $949$~A; #h(0.5em)$0.996space("i")$; #h(1em)$1254$~A;#h(0.5em)$0.753space("i")$
    ]



== Exercício 11
#v(12pt) 
#h(1cm)
Um alternador síncrono de polos salientes, $12$~MVA, ligação em triângulo, $eta=91%$, faz parte de um processo de cogeração de uma indústria de celulose e encontra-se ligado à rede elétrica de potência infinita de $13.8$~kV$-50$~Hz. Sabe-se que: $X_d=34Omega\/$fase; $X_q=16space Omega\/$fase e $R approx 0 space Omega$.

+ Trace qualitativamente o diagrama vetorial de tensões para uma situação de plena carga e $cos phi = 0.81$~(c), evidenciando a determinação dos eixos direto e quadratura e das componentes da corrente nos mesmos;

+ Determine o fasor da força eletromotriz nessa situação;

+ Mantendo a corrente de excitação constante, determine o limite de estabilidade estática deste alternador e a potência desenvolvida correspondente;

+ Qualitativamente:
    - Como proceder para colocar esta máquina síncrona a operar como um condensador síncrono nesta instalação, partindo do ponto de funcionamento descrito;
    - Apresente o diagrama vetorial do novo ponto de funcionamento da máquina síncrona.

 
    
#v(12pt)
  #rect(fill: luma(240), width: 100%, height: 99%, stroke: (left: 0.25em))[
    *Resolução:* 
#set par(hanging-indent: 1cm)


*a)*

#import "@preview/cetz:0.3.0"
#cetz.canvas({
  import cetz.draw: *
  let scaleI=60
  let (Iph, I) = (35.9deg, 289.9/scaleI)
  let (Idph, Id) = (108.7deg, 85.7/scaleI)
  let (Iqph, Iq) = (18.7deg, 286.9/scaleI)
  let U = 13.8 //kV
 
  let (XqI_x, XqI_y) = (11.08, 3.75)
  let (Eph, E) = (18.7deg, 11.7)
  let (XdXq_x, XdXq_y) = (9.62,3.255)
  
  group({
  scale(1)
  set-style(stroke: (thickness:2pt))
  
  line((0, 0), (U, 0), name: "U", mark: (end: ">"))
  content((13, -0.5), $overline(U)$)
  
  line((0,0), (Iph, I), name: "I", mark: (end: ">"))
  content((3.3, 2.9), $overline(I)$)
  
  line((0,0), (Idph, Id), name: "Id", mark: (end: ">"))
  content((-0.7, 0.6), $overline(I)_d$)
  
  line((0,0), (Iqph, Iq), name: "Iq", mark: (end: ">"))
  content((4, 0.8), $overline(I)_q$) 

  
  line((U,0), (XqI_x, XqI_y), name: "XqI", mark: (end: ">"))
  content((13.2, 1.9), $j X_q overline(I)$) 

  line((0,0), (Eph, E), name: "E", mark: (end: ">"))
  content((10.5, 3.8), $overline(E)$)

  line((11.08,3.75), (XdXq_x, XdXq_y), name: "XdXq", mark: (end: ">"), stroke: blue.darken(30%) + 4pt)
  content((10.4, 2.7), text(blue.darken(30%), $j(X_d - X_q) overline(I)_d $))

  line((0,0), (XdXq_x, XdXq_y), name: "E0", mark: (end: ">"))
  content((8.94, 3.38), $overline(E)_0$)
  
  })
  
  arc((1.5, 0), start: 0deg, stop: Iph, radius: 1.5)
  content((1.6, 0.88), $phi$)
  arc((1.8, 0), start: 0deg, stop: Iqph, radius: 1.9)
  content((2, 0.3), $delta$)
  line((0.5,-1.47), (108.7deg, 4), name: "d", mark: (end: ">"))
  content((-1.3, 3), "d")
  line((-2.5,-0.85), (18.7deg, 15), name: "q", mark: (end: ">"))
  content((13.7, 4.35), "q")

  line((-0.458,1.353), (3.91,2.83), stroke: (dash: "dashed"))
  
  line((3.91,2.83), (4.5,1.5), stroke: (dash: "dashed"))

 
  line((0,0), (Iph, I*2.5), name: "I_line", stroke: (dash: "dashed"))

  line((U,0), (9.05, 6.54), name: "XqI_line", stroke: (dash: "dashed"))

})


#v(12pt)

#h(2.5em)*b)*

Fasores da tensão e corrente por fase (circuito equivalente), $overline(U)_f$ e $overline(I)_f$:
#v(6pt)
#h(2em) $​​I_n=display(S_n /(sqrt(3) U_n)) = display((12 times 10^6) /(sqrt(3) dot 13.8 times 10^3)) = 502$~A
#h(2em) fase: $phi=arccos(0.81)=35.9degree$
#v(10pt)
#h(4em) Estator em $Delta$:#h(1em) $U_f=U_n$ ; #h(1em)  $I_f=display(I_n/sqrt(3))$ #h(1cm) 
#v(10pt)
#h(4em) Fasores:#h(1em)  
$overline(U)_"f"=13.8 angle 0 degree$ kV#h(2em)  $overline(I)_"f"=display(502/sqrt(3)) thin angle 35.9 degree$~~A 
#v(12pt)
Fasor da FEM efetiva, $overline(E)$:\
#h(2em) $overline(E)=overline(U)_f + j X_q  overline(I)_f = (13.8 times 10^3 angle 0 degree)+j 16 (display(502/sqrt(3)) angle 35.9 degree)= 11.7 thin angle 18.7 degree$~~kV
#v(12pt)
Fasor da corrente segundo o eixo direto, $overline(I)_d$:\
#v(6pt)
#h(2em) $overline(I)_d = I sin(phi-delta) angle (delta+90degree) = display(502/sqrt(3))sin(35.9degree- 18.7degree) thin angle (18.7degree + 90 degree)$\ 
#h(2em) $overline(I)_d = 85.7 angle 108.7 degree$~~A

#v(12pt)
Fasor da FEM, $overline(E)_0$:\
#h(2em) $overline(E)_0=overline(E) + j (X_d-X_q)  overline(I)_d = (11.7 times 10^3 angle 18.7 degree)+j (34-16) (85.7 thin angle 108.7 degree)$\
#h(2em) $overline(E)_0 = 10.16 thin angle 18.7 degree$~~kV

]

#rect(fill: luma(240), width: 100%, height: 100%, stroke: (left: 0.25em))[
#set par(hanging-indent: 1cm)
\
*c)*#h(0.5em) \
$"Limite de estabilidade estática: " arrow.r.double display((upright(d)P_d)/(upright(d)delta)) &= 0 arrow.l.r.double \
display((3 thin U E_0)/X_d)cos delta_"lim" + display((3 thin U^2 (X_d-X_q))/(X_d X_q)) cos (2 delta_"lim") &= 0 arrow.l.r.double\
display((3 dot 13.8 times 10^3 dot 10.16 times 10^3)/34)cos delta_"lim" + display((3 thin  (13.8 times 10^3)^2 (34-16))/(34 dot 16)) cos (2 delta_"lim") &= 0 arrow.r.double\
delta_"lim" &= 55.8 degree$

Com: $I_"exc"="constante" arrow.r.double E_0="constante"$

#v(12pt)
Substituindo em $P_d (delta)$ com $delta=delta_"lim"$:
#v(12pt)
$P_d^"max" &= display((3 U E_0)/X_d) sin delta_"lim" + display((3U^2(X_d-X_q))/(2 X_d X_q)) sin (2 delta_"lim") \
&= display((3 dot 13.8 times 10^3 dot 10.16 times 10^3)/34) sin (55.8degree) + display((3 thin  (13.8 times 10^3)^2 (34-16))/(2 dot 34 dot 16)) sin (2 dot 55.8degree) \
&approx 19space"MW"$


\
*d)*#h(0.5em)Procedimento para funcionar como condensador síncrono:

#h(2.5em)1º : $(T_"mec" arrow.br.filled$ #h(0.5em)até#h(0.5em) $delta=0)$#h(0.5em)e#h(0.5em)$(I_"exc" arrow.tr.filled$#h(0.5em)até#h(0.5em) $overline(E)_0=overline(U))$ $arrow.r.double$  máquina a "flutuar" na rede, ou seja, $(Q=0, P=0)$

#h(2.5em)2º : Desacoplar a turbina do alternador $arrow.r.double$ motor síncrono em vazio

#h(2.5em)3º : $(I_"exc" arrow.tr.filled$#h(0.5em)até#h(0.5em) $Q "desejado")$, modo sobreexcitado $arrow.r.double$ condensador síncrono 

\
Diagrama vetorial de tensões do condensador síncrono de polos salientes:

\
#import "@preview/cetz:0.3.0"
#cetz.canvas({
  import cetz.draw: *
  let scaleI = 40
  let (Iph, I) = (90deg, 200/scaleI)
  let U = 13.8 //kV
   
  group({
  scale(0.5)
  set-style(stroke: (thickness:2pt))
  
  line((0, 0), (U, 0), name: "U", mark: (end: ">"))
  content((12.8, -1), $overline(U)$)

  line((0, 0), (Iph, I), name: "I", mark: (end: ">"))
  content((-1.6, 3.6), $overline(I)_d= overline(I)$)

  line((U, 0), (17,0), name: "E", mark: (end: ">"))
  content((16.2, -1), $overline(E)'$)
  content((15.2, 0.7), $-j X_q overline(I)$)

  line((U, 0), (20.6,0), name: "E0", mark: (end: ">"))
  content((20, -1), $overline(E)_0^'$)
  content((20., 0.7), $-j (X_d-X_q) overline(I)_d$)
  })

  line((0,-1), (90deg, 4), name: "d", mark: (end: ">"))
  content((-0.3, 3.3), "d")
  line((-2.5,0), (0deg, 14), name: "q", mark: (end: ">"))
  content((13.5, -0.3), "q")
})


]

    

== Exercício 12
#v(12pt) 
#h(1cm) 
Um motor síncrono trifásico com quatro polos salientes e o estator ligado em estrela, encontra-se a trabalhar sobre uma rede de potência infinita de $208$~V, com $cos phi = 0.8thin ("i")$, consumindo $40$~A.\

Sabe-se que: $f=50$~Hz; $X_d=2.7space Omega\/$fase; $X_q=1.7space Omega\/$fase; $R=0space Omega$.

+ Trace, qualitativamente, o diagrama vetorial de tensões correspondente, evidenciando a determinação dos eixos direto e de quadratura e das componentes da corrente nos mesmos;

+ Determine o fasor da força contraeletromotriz, $overline(E)_0^'$, nas condições de funcionamento indicadas;

+ Calcule o binário máximo desenvolvido por esta máquina;

+ Trace qualitativamente a curva de binário desenvolvido deste motor.

#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Soluções:* 
#set par(hanging-indent: 1cm)
    *b)*#h(0.5em) $94.5 thin angle -34.5 degree$~~V;#h(2em)
    *c)*#h(0.5em) $95.8$~Nm
    ]


== Exercício 13
#v(12pt) 
#h(1cm) 
Uma máquina síncrona $3~$ de polos salientes, $50$~MVA, $11$~kV$-60$~Hz, enrolamentos do estator em Y, apresenta as reatâncias: $X_d=0.8$~pu e $X_q=0.4$~pu. Como motor síncrono é colocado à plena carga com fator de potência $0.8$ indutivo. As perdas mecânicas representam são $0.15$~pu.\
Despreze as perdas de Joule do induzido.

+ Determine $X_d$ e $X_q$ em $Omega$;

+ Determine a FEM em pu;

+ Determine a potências desenvolvidas (em pu) devido à FEM de excitação e devido ao efeito de relutância do rotor;

+ Se a corrente de excitação for reduzida a zero, a máquina continua em sincronismo? Justifique;

+ Se a carga ao veio for retirada e a corrente de excitação reduzida a zero, determine o valor da corrente do estator (em pu) e o fator de potência. Desenhe o diagrama vetorial da máquina para esta situação.

#v(12pt)
#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
O exercício 13 está resolvido na linguagem#h(-2pt)
#box(
  baseline: 23%,
  height: 18pt,
  image("/images/logos/julia.svg")
) através da ferramenta #h(1pt)
    #box(
  baseline: 22%,
  height: 12pt,
  image("/images/logos/pluto.svg")
)
para uma experiência mais interativa: \u{1F517} 
#show link: underline
#link("https://ricardo-luis.github.io/me-2/SalientPoleSyncMotor.html")[_ notebook_]
]




== Bibliografia

\
 #list(indent: 1cm, spacing: 18pt, 
  [[Chapman, 2005]: S.J. Chapman, Electric Machinery Fundamentals, 4#super("th") Ed., McGraw-Hill, USA, 2005.],
  [[Malea & Balaguer, 2004]: J.M. Malea, E.F. Balaguer, Problemas resueltos de máquinas eléctricas rotativas, Publicações da Universidade de Jaume I, Espanha, 2004.],
  [[Sen, 1989]: P.C. Sen, Principles of electric machines and power electronics, John Wiley & Sons, USA, 1989.],
  [[EERA, 2013] Luo X, Wang J. Overview of current development on compressed air energy storage. EERA technical report; Dec. 2013. URL: #link("https://www.cedren.no/Portals/Cedren/Overview%20of%20Current%20Development%20on%20Compressed%20Air%20Energy%20Storage_EERA%20report%202013.pdf", )],
  [[SSS gears, 2025] SSS Clutch
Operating Principle, SSS Notes Reference NR2167, SSS Gears Limited. URL:
#link("https://files.sssgears.co.uk/NR2167.pdf")]
)

//#pagebreak(to: "odd")



// //verso-Prefácio:
 #set page(
   header: context [],
   footer: context []
 )
 #v(100%)    //forma expedita de colocar página em branco, sem estar numerado
// //verso-Prefácio|



#set page(
   header: [
    #set text(8pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) Transitórios de Máquinas Elétricas
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )
#counter(page).update(41)


= Transitórios de Máquinas Elétricas



== Exercício 1
#v(12pt) 
#h(1cm) Analise separadamente os dois alternadores síncronos trifásicos seguintes, cada um ligado em estrela a um barramento infinito de $6$~kV --~$50$~Hz.
Cada alternador fornece inicialmente $1 "MW"$ com $cos phi = 1$.

#align(center)[
  #table(columns: 3, column-gutter: 12pt, row-gutter: 8pt,
stroke: none,
align: (right, center, center),
[], [*Alternador 1*], [*Alternador 2*], 
[Máquina síncrona:], [polos lisos],  [polos salientes], [Potência nominal:], [$5$~MVA], [$5$~MVA], 
[Reatâncias/fase:], [$X_s=12.75thin Omega$], [$X_d=12.75thin Omega$; $X_q=display(X_d/2)$ ], 
[Perdas:], [desprezáveis], [desprezáveis],
[FEM/fase:], [$E_0=3.675$~kV], [$E_0=3.675$~kV],)
]

#v(6pt)
#h(1cm)Suponha que ocorre uma falha no regulador da turbina, fazendo a potência mecânica, $P_"mec"$, aumentar subitamente de $1$~MW para um novo valor constante, $P_"mec" > 1$~MW.
O barramento infinito mantém a frequência e a tensão constantes, absorvendo o excesso de potência ativa e qualquer variação de potência reativa.

Utilizando o critério de igualdade das áreas, determinar a máxima perturbação admissível de cada um dos alternadores, mantendo o funcionamento da máquina síncrona estável. Analise as diferenças entre os alternadores.

#v(12pt)
#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
O exercício 1 está resolvido na linguagem#h(-2pt)
#box(
  baseline: 23%,
  height: 18pt,
  image("/images/logos/julia.svg")
) através da ferramenta #h(1pt)
    #box(
  baseline: 22%,
  height: 12pt,
  image("/images/logos/pluto.svg")
)
para uma experiência mais interativa: \u{1F517} 
#show link: underline
#link("https://ricardo-luis.github.io/me-2/EqualArea.html")[_ notebook_]
]

== Exercício 2

#h(1cm)Um motor síncrono trifásico de polos lisos, $800$~kW, $X_s=1.2$~pu, ligado a rede elétrica de potência infinita, $6.6$~kV~--~$50$~Hz, aciona a linha principal de uma extrusora de filme de polipropileno.

Em regime permanente, o motor absorve uma potência de $560$~kW com um fator de potência unitário $(Q approx 0)$. Considere perdas de Joule e rotacionais desprezáveis.

Subitamente o filme rasga no forno de estiramento, fazendo com que a carga mecânica ao veio do motor passe instantaneamente de  $560$~kW para $0$~kW (o motor fica em vazio).  

Considerando que a corrente de excitação se mantém constante, determine:

+ o ângulo de carga inicial, $delta_0$;

+ o ângulo máximo que o rotor atinge durante o transitório, $delta_"máx"$;

+ Justifique se o motor mantém ou perde o sincronismo, através do critério de igualdade das áreas.
*Nota:* Não é necessário efetuar o cálculo numérico das áreas. Obtenha a resposta por simples inspeção das áreas aceleradora e desaceleradora, sem qualquer integração (usar apenas a interpretação física).


#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Soluções:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $-40.0 degree quad$;#h(2em)
    *b)*#h(0.5em) $40.0 degree$
    ]




== Exercício 3
#v(12pt) 
#h(1cm) Considere um motor de corrente contínua de excitação separada, no qual se efetuaram dois ensaios:

 #list(indent: 2cm,
    [Ensaio em vazio para a separação das perdas mecânicas e magnéticas;],[Ensaio de desaceleração para determinação dos parâmetros mecânicos.]
  )

#v(12pt)
*Ensaio em vazio*  (tensão e corrente no induzido com velocidade constante = $1500$rpm)

#align(center)[
  #table(columns: 15, column-gutter: 6pt,
stroke: none,
align: right,
[(V)], [$220$], [$210$], [200], [$190$], [$180$],  [$170$], [$160$], [$151$], [$140$], [$130$], [$121$], [$110$], [100], [$91$],
[(mA)], [$2720$], [$2730$], [$2740$], [$2780$], [$2816$], [$2870$], [$3036$], [$3080$], [$3180$], [$3353$], [$3492$], [$3730$], [$4010$], [$4335$])
]

#v(12pt)
*Ensaio de desaceleração* (ganho vertical: $1500$~rpm <> $5.8$~div):

#figure(image("/images/DesaccTest.png", width: 83%), )

\
+ Determine o valor das perdas mecânicas deste motor, sabendo que a resistência do induzido tem o valor: $R_a=0.834 thin Omega$;
+ Determine os parâmetros mecânicos (momento de inércia, coeficientes de atrito viscoso e estático) deste motor.

#v(12pt)
#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
O exercício 3 está resolvido na linguagem#h(-2pt)
#box(
  baseline: 23%,
  height: 18pt,
  image("/images/logos/julia.svg")
) através da ferramenta #h(1pt)
    #box(
  baseline: 22%,
  height: 12pt,
  image("/images/logos/pluto.svg")
)
para uma experiência mais interativa: \u{1F517} 
#show link: underline
#link("https://ricardo-luis.github.io/me-2/DecelerationTest.html")[_ notebook_]
]



== Exercício 4
#v(12pt) 
#h(1cm) Considere duas máquinas de corrente contínua ligadas de acordo com o esquema da figura seguinte:

#v(6pt)
#figure(image("/images/motor-generator_DCgroup.png", width: 100%))

#v(6pt)
O gerador de excitação derivação, *G*, alimenta a resistência de utilização, *Ru*, e é acionado a $1250$~rpm por um motor de excitação separada, *M*, que apresenta a seguinte característica magnética:

#align(center)[
  #table(columns: 10, column-gutter: 12pt,
stroke: none,
align: right,
[$i$ (A)], [$0$], [$0.2$], [$0.4$], [$0.6$],  [$0.8$], [$1.0$], [$1.2$], [1.4], table.cell(colspan: 1, [$n_("mag")=1000$~rpm]), 
[$E$ (V)], [$15$], [$75$], [$130$], [$170$], [$200$], [$220$], [$235$], [250])
]

#v(6pt)
+ Escreva as equações que modelizam o funcionamento do motor CC em regime dinâmico;

+ Considere o motor alimentado à tensão de $295$~V e uma corrente de $50$~A. Atendendo que o fluxo é constante, calcule o binário de carga aplicado ao motor nessas condições, sabendo que o sistema (motor + carga) apresenta os seguintes parâmetros mecânicos:#table(columns: 3, column-gutter: 50pt,
stroke: none,
align: right,
[$J=0.4$~kgm#super([2])], [$K_d=0.07$~Nm/rad.s#super([-1])], [$K_e=3.5$~Nm])

+ Suponha que o motor se encontra a funcionar nas seguintes condições: #table(columns:3, align: center,stroke: none, column-gutter: 50pt, [$T_d=100$~Nm], [$T_c=80$~Nm], [$n=2250$~rpm])

#v(12pt)

 #pad(x: 1.4cm)[
  #table(columns:2,align:right, row-gutter: 2pt, stroke: none, table.cell(colspan: 1, [Determine o valor de $space display(("d" omega)/("d" t))space$ quando:]),[1$)space ->$ o interruptor 1 é aberto;], [], [2$) space ->$  o interruptor 2 é aberto.])]

#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Soluções:* 
#set par(hanging-indent: 1cm)
    *b)*#h(0.5em) $​92.3$~Nm;#h(2em)
    *c-1)*#h(0.5em) $-250$~rads#super([-2]) ; #h(2em) *c-2)*#h(0.5em) $200$~rads#super([-2])
    ]

#v(24pt) 



#v(15%)

//verso-Prefácio:
#set page(
  header: context [],
  footer: context []
)
#v(100%)    //forma expedita de colocar página em branco, sem estar numerado
//verso-Prefácio|


//#bibliography("works.bib")


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