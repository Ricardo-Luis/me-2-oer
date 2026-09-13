// Máquina de Corrente Contínua — Reação Magnética do Induzido (RMI)
// Convertido de PowerPoint para Typst.
// Layout: posicionamento absoluto por coordenadas (em polegadas), replicando
// a geometria original do .pptx. Sem dependência de pacotes externos
// (touying/polylux) — apenas Typst puro, compatível com este ambiente.

#let W = 13.333in
#let H = 7.5in

#set page(
  width: W,
  height: H,
  margin: 0pt,
  fill: white,
  footer: context [
    #place(bottom + right, dx: -0.25in, dy: -0.2in,
      text(size: 10pt, fill: gray)[#counter(page).display()])
  ],
)
#set text(font: "Libertinus Serif", size: 20pt)

// ---- helpers ----------------------------------------------------------

#let img(path, x, y, w, h) = place(top + left, dx: x, dy: y,
  image(path, width: w, height: h))

// Slide title used on slides 6–14: "N - Máquina CC com **destaque** (k/m)"
#let header(prefix, bold-part) = place(top + left, dx: 0.29in, dy: 0.16in,
  block(width: 12.79in, height: 0.96in)[
    #text(size: 36pt)[#prefix#text(weight: "bold")[#bold-part]]
  ])

// Secondary sub-heading, e.g. "FMM:" or "Dimensionar primeiro os..."
#let subheader(txt, y: 0.98in) = place(top + left, dx: 0.90in, dy: y,
  block(width: 12.29in, height: 0.96in)[
    #text(size: 28pt, weight: "bold")[#txt]
  ])

#let equation-header(body) = place(top + left, dx: 0.29in, dy: 0.16in,
  block(width: 12.79in, height: 0.96in, above: 0pt)[
    #align(left)[#text(size: 36pt, weight: "bold")[#body]]
  ])

// ---- Slide 1 — title slide --------------------------------------------

#page()[
  #place(top + left, dx: 1.67in, dy: 0.65in,
    block(width: 10in, height: 2.61in)[
      #align(center)[#text(size: 48pt, weight: "bold")[Máquina de Corrente Contínua]]
    ])
  #place(top + left, dx: 1.67in, dy: 3.65in,
    block(width: 10in, height: 1.81in)[
      #align(center)[#text(size: 36pt, weight: "bold")[Reação Magnética do Induzido (RMI)]]
    ])
  #place(top + left, dx: 0in, dy: 6.33in,
    block(width: 13.33in, height: 1.18in)[
      #align(center)[#text(size: 16pt, weight: "bold")[
        ISEL\\LEE\\ME-II #h(2em) setembro de 2025 #h(2em) Ricardo Luís
      ]]
    ])
]

// ---- Slide 2 — Observações ---------------------------------------------

#page()[
  #place(top + left, dx: 0.38in, dy: 0.40in,
    block(width: 12.03in, height: 0.53in)[
      #text(size: 36pt, weight: "bold")[Observações]
    ])
  #place(top + left, dx: 0.38in, dy: 1.15in,
    block(width: 12.58in, height: 6.0in)[
      #set text(size: 24pt)
      #set par(leading: 0.75em)
      Para suporte da aula sobre reação magnética do induzido (RMI):
      #v(0.4em)
      #set enum(indent: 1em, body-indent: 0.6em)
      + Foram utilizados os dados do Exercício 3 para o desenvolvimento do
        modelo CAD da máquina de corrente contínua, de modo a expor o
        problema da RMI;
      + Foram utilizadas as soluções de cálculo das forças
        magnetomotrizes (FMM), $cal(F)_i$, $cal(F)_"PA"$ e $cal(F)_"EC"$,
        e espiras resultantes ($N_"PA"$, $N_"EC"$), presentes na
        resolução do Exercício 3, para representar os gráficos das
        FMM $= f($comprimento na periferia do induzido$)$;
      + Com base nas soluções anteriores, obtiveram-se os resultados de
        simulação CAE para visualização das linhas de fluxo magnético e
        de indução magnética nos núcleos ferromagnéticos, de modo a
        comprovar a mitigação da RMI;
      + Foi utilizado o programa #emph[FEMM] para o CAD (_Computer-Aided
        Design_ — desenho assistido por computador) e CAE (_Computer-Aided
        Engineering_ — engenharia assistida por computador) do
        Exercício 3, aplicando o método dos elementos finitos para o
        cálculo eletromagnético.
    ])
]

// ---- Slide 3 — campo indutor + campo induzido = campo resultante -------

#page()[
  #equation-header[campo indutor#h(1fr)+#h(1fr)campo induzido#h(1fr)=#h(1fr)campo resultante]
  #img("assets/slide3_left.png", 0.11in, 2.20in, 3.94in, 3.86in)
  #place(top + left, dx: 3.90in, dy: 3.41in,
    block(width: 1.02in, height: 1.45in)[#align(center + horizon)[#text(size: 80pt)[+]]])
  #img("assets/slide3_mid.png", 4.64in, 2.20in, 3.94in, 3.86in)
  #place(top + left, dx: 8.41in, dy: 3.41in,
    block(width: 1.02in, height: 1.45in)[#align(center + horizon)[#text(size: 80pt)[=]]])
  #img("assets/slide3_right.png", 9.14in, 2.20in, 3.94in, 3.86in)
  #img("assets/slide3_legend.png", 8.20in, 4.86in, 1.61in, 2.53in)
]

// ---- Slide 4 — same header, resulting field graph ----------------------

#page()[
  #equation-header[campo indutor#h(1fr)+#h(1fr)campo induzido#h(1fr)=#h(1fr)campo resultante]
  #img("assets/image5.svg", 1.93in, 1.00in, 9.22in, 6.34in)
]

// ---- Slide 5 — FMM ------------------------------------------------------

#page()[
  #header[][FMM do campo indutor e campo induzido]
  #img("assets/image7.svg", 1.51in, 1.12in, 9.66in, 6.04in)
]

// ---- Slide 6 — 1 - Máquina CC com polos auxiliaries (1/3) --------------

#page()[
  #header[1 - Máquina CC com ][polos auxiliaries (1/3)]
  #img("assets/slide6_main.png", 2.72in, 1.12in, 6.13in, 6.06in)
  #img("assets/slide6_legend.png", 9.70in, 1.28in, 3.48in, 5.68in)
]

// ---- Slide 7 — (2/3) -----------------------------------------------------

#page()[
  #header[1 - Máquina CC com ][polos auxiliaries (2/3)]
  #img("assets/image10.svg", 1.70in, 0.89in, 9.39in, 6.45in)
]

// ---- Slide 8 — (3/3) -----------------------------------------------------

#page()[
  #header[1 - Máquina CC com ][polos auxiliaries (3/3)]
  #img("assets/image12.svg", 1.50in, 1.14in, 9.94in, 6.21in)
]

// ---- Slide 9 — 2 - Máquina CC com RMI compensada (1/6) -------------------

#page()[
  #header[2 - Máquina CC com ][RMI compensada (1/6)]
  #img("assets/slide9_main.png", 2.13in, 0.96in, 6.46in, 6.38in)
  #img("assets/slide9_legend.png", 9.62in, 1.26in, 3.46in, 5.56in)
]

// ---- Slide 10 — (2/6) ------------------------------------------------------

#page()[
  #header[2 - Máquina CC com ][RMI compensada (2/6)]
  #subheader[Dimensionar primeiro os enrolamentos de compensação]
  #img("assets/image15.svg", 5.10in, 1.68in, 8.18in, 5.63in)
  #img("assets/slide10_femm.png", 0.04in, 2.01in, 4.90in, 4.87in)
]

// ---- Slide 11 — (3/6) FMM --------------------------------------------------

#page()[
  #header[2 - Máquina CC com ][RMI compensada (3/6)]
  #subheader[FMM:]
  #img("assets/image18.svg", 2.16in, 1.30in, 9.49in, 5.93in)
]

// ---- Slide 12 — (4/6) -------------------------------------------------------

#page()[
  #header[2 - Máquina CC com ][RMI compensada (4/6)]
  #subheader[Dimensionar depois os polos auxiliaries]
  #img("assets/image19.png", 2.76in, 1.74in, 8.16in, 5.61in)
]

// ---- Slide 13 — (5/6) FMM ----------------------------------------------------

#page()[
  #header[2 - Máquina CC com ][RMI compensada (5/6)]
  #subheader[FMM:]
  #img("assets/image20.png", 1.72in, 1.14in, 9.92in, 6.20in)
]

// ---- Slide 14 — (6/6) Indução magnética resultante ---------------------------

#page()[
  #header[2 - Máquina CC com ][RMI compensada (6/6)]
  #subheader[Indução magnética resultante, $B_"res"$]
  #img("assets/image22.svg", 2.50in, 1.83in, 8.02in, 5.52in)
]
