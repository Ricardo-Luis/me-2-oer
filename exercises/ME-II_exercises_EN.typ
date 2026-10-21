#let autor = "Ricardo Luís"
#let instituicao = "ISEL"
#let ano = "2026"
#let titulo = "Exercises and Industrial Application Problems"
#let subtitulo = "Electric Machinery II"
#let github_user = "Ricardo-Luis"
#let github_repo = "me-2-oer"
#let github_subpath = "/tree/main/exercises"
#let github_raw_subpath = "/raw/main/exercises"
#let github_pdf_file = "ME-II_exercises.pdf"
#let github_url = "https://github.com/" + github_user + "/" + github_repo + github_subpath
#let github_download = "https://github.com/" + github_user + "/" + github_repo + github_raw_subpath + "/" + github_pdf_file



// COVER:
#set page(paper: "a4",
          margin: (top: 3cm, bottom: 2cm, left:2.0cm, right: 2.0cm),
          numbering: none,
          number-align: center)

#set text(lang: "en")


#set align(center) 
#image("/images/logos/ISEL-logo-bk.png", height: 2.9cm) 

#set align(center) 
#text(14pt, font: "Chakra Petch")[Electrical Engineering BSc]


//#box(baseline: 34.2%, image("/images/logos/ISEL-logo-bk.png", width: 5cm)) #text(4mm, font: "Source Code Pro")[Licenciatura em Engenharia Eletrotécnica]

//#line(length: 100%,  start: (2cm, -1.07cm))

#set align(center) 
#text(22pt, font: "Source Code Pro", baseline: 4cm)[#subtitulo]

#set align(center + horizon) 
#text(20pt, font: "Cantarell")[*#titulo*]

#set align(center + bottom) 
#text(10pt)[October #ano]

//COVER|



#import "@preview/diverential:0.2.0": *

// Edition:
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
// TITLE PAGE
// ============================================================================

#page[
  #set align(center)
  #v(2cm)
  
  // Main title
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
  
 // OER information
 #set align(center)
 #set text(size: 11pt)
  
 *OPEN EDUCATIONAL RESOURCE (OER)*
  
 #v(1.5cm)

#set align(left)
  *Licence:* CC BY-SA 4.0 International\
  #link("https://creativecommons.org/licenses/by-sa/4.0/")
  
 #v(1cm)


*Author:* #autor\ 
*Institution:* #instituicao\
*Year:* #ano
  
#v(1cm)


  *GitHub repository:* #link(github_url)

  
  *Editor: * #link("https://typst.app")[Typst] (.typ source files available in the repository)
  
  #v(1.5cm)

  // AI tools section
  #set text(size: 11pt)
  

*AI Use Declaration:*

Artificial intelligence (AI) was used as a delegated tool to assist with the translation of this document from European Portuguese (PT-PT) into British English (EN-UK). The AI-generated translation was critically reviewed, edited and validated by the author, who retains full responsibility for the accuracy and final content of the translated text.

  #v(1.5cm)
  
// Citation section
  #set text(size: 12pt)
  
*How to cite this document:*

#raw(autor + ", \"" + titulo + "\", " +  subtitulo + ", open educational resource, " + instituicao + ", " + ano + ". [Online].\nAvailable: " + github_url)

]

#pagebreak(to: "odd")






//back cover|




//Preface:

#set page(
   header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) Exercises and Industrial Application Problems
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
#heading(outlined: true, bookmarked: true)[Preface]
\
\

//#show par: set block(spacing: 14pt)
#set text(12pt, font: "Liberation Serif" )
#set par(first-line-indent: 1.0cm, 
  leading: 12pt,
  justify: true
  )


This collection of exercises and industrial application problems is organised into three chapters:

#list(indent: 2cm,
  [DC machines],
  [Three-phase synchronous machines],
  [Electrical machine transients],
)
#v(6pt)
#h(1cm)
This document presents exercises of a more conceptual nature alongside industrial application problems, allowing students to progress from fundamental concepts to practical situations encountered in industry. In each chapter, the exercises or problems are numbered sequentially (Exercise 1, Exercise 2, ...), with their scope made clear by the context and problem statement itself.

The odd-numbered exercises are fully worked through, while the even-numbered exercises are proposed as work items, with only the numerical results given. The latter are primarily intended to be solved during theoretical-practical classes, adopting Problem-Based Learning as the teaching and learning methodology. In this way, discussion and critical analysis of the topics are encouraged, fostering the development of analytical thinking and problem-solving skills.

Among the worked exercises, some are solved analytically as an introduction to, or consolidation of, key concepts, while others are solved using the scientific computing language #link("https://julialang.org/")[`Julia`], through computational documents (_notebooks_) developed using the integrated development environment #link("https://plutojl.org/")[`Pluto.jl`]. The use of interactive _notebooks_ allows students to deepen their understanding of fundamental theoretical concepts and to develop essential skills for professional practice. In addition, this exploratory practice allows students to apply their knowledge to solve exercises interactively, to visualise and analyse results graphically, and to gain practical experience with engineering tools.

  \
  
  Lisbon, September 2025
#set align(right);
Ricardo Luís



#pagebreak()

//Preface|




//Blank page:
#set page(
  header: context [],
  footer: context []
)
#v(100%)    //quick way to insert a blank, unnumbered page
//Blank page|



// Or in a box with controlled width
//#align(right + horizon)
#set quote(block: true)
#show quote: set align(right + horizon)
//#show quote: set pad(x: 2.9cm)

#quote(attribution: [*John Dewey* (1859-1952)])[
_The real process of education should be\ the process of learning to think through\ the application of real problems._ 
\
\
\
]

//Preface|

//back-Preface:
#set page(
  header: context [],
  footer: context []
)
#v(100%)    //quick way to insert a blank, unnumbered page
//back-Preface|




// Contents:

#set page(
   header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) Exercises and Industrial Application Problems
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
#outline(title: "Contents", indent: 0.85cm)
#v(0%)

//#pagebreak(to: "odd")
// Contents|

#v(80%)

//back-SHEET:
#set page(
  header: context [],
  footer: context []
)



//#v(100%)    //quick way to insert a blank, unnumbered page
//back-SHEET|


//doc

#set page(
  header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) DC Machines
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

= DC Machines

== Exercise 1
#v(12pt)
#h(1cm)
A six-pole DC machine has $360$ conductors in armature slots. Each magnetic pole has a pole arc of $20$~cm, a depth of $20$~cm and a magnetic flux density of $0.8$~T. With the rotor running at a speed of $1000$~rpm, determine the induced electromotive force, $E_0$, obtained if the machine has:
#v(6pt) 
#set enum(numbering: "a.1)", indent: 1cm, spacing: 20pt, )

+ a lap-wound armature winding;

+ a wave-wound armature winding.

#v(12pt)
  #rect(fill: luma(240), width: 100%, height: 59%, stroke: (left: 0.25em))[
    *Worked solution:* 
#set par(hanging-indent: 1cm)
    Let:\
    #set list(marker: [•], indent: 2cm, spacing: 0.5cm)
     - $2p=6$ poles;#h(0.5cm) $z=360$~conductors; 
     - $b=20$~cm (pole arc);#h(0.5cm) $l=20$~cm (depth)
     - $B=0.8$~T 

#v(10pt)
#h(1cm)Pole face area, $A_p$:

#h(1cm) $A_p=b space l= 0.2 times 0.2=0.04$~m#super([2])

#v(10pt)
The magnetic flux per pole, $phi.alt_p$, is then: 

#h(1cm) $phi.alt_p = B space A_p = 0.8 times 0.04=0.032$~Wb

#v(10pt)
With the speed in rpm, the armature constant, $k$,
is given by: #h(0.5cm)$k = display((z space p) / (60 space a))$

#v(10pt)
Thus, the induced electromotive force, $E_0$, in the armature winding is obtained: 

#v(10pt)
*a)*#h(0.5em)Lap winding, $a=p$ (number of brushes equal to number of poles):
    
#h(1cm)$​​E_0=k phi.alt_p n= display((360 times 3) /(60 times 3)) times 0.032 times 1000 = 192$~V

#v(16pt)
*b)*#h(0.5em)Wave winding, $a=1$ (only one pair of brushes):

#h(1cm)$​​E_0=k phi.alt_p n= display((360 times 3) /(60 times 1)) times 0.032 times 1000 = 576$~V
]

\
(Source: Adapted from exercise 5.5 in [Guru & Hızıroğlu, 2003])

//#pagebreak()
== Exercise 2
#v(12pt)
#h(1cm)
Consider the armature of a four-pole DC generator with a lap winding placed in $28$ slots with $10$ conductors in each. The magnetic flux per pole is $40$~mWb and the armature (rotor) speed is $1200$~rpm. The generator supplies a load, and the current in each conductor is $2$~A. What are the torque and power developed by the generator?

#v(12pt)
  #rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
    *Results:* 
#set par(hanging-indent: 1cm)
    $T_d=14.26$~Nm #h(0.5cm) ; #h(0.5cm)$P_d=1.79$~kW
  ]
\
(Source: Adapted from exercise 5.8 in [Guru & Hızıroğlu, 2003])



== Exercise 3
#v(12pt)
#h(1cm)
Consider a DC generator with $2p=6$ poles, a simple lap armature winding, i.e. $2a=6$ parallel paths, and $z=624$ active conductors uniformly distributed around the armature periphery.

The cross-sectional area of each armature conductor is $s=8$~mm#super[2], and carries a current density of $ J=3$~A.mm#super[-2].

The machine has a pole-arc-to-pole pitch ratio, $b slash tau = 2 slash 3$, and the armature has a diameter of $D=220$~mm.
#v(6pt) 

+ Determine the magnetomotive force (MMF) associated with the armature reaction, $​​\u{02131}_i$, along the geometric neutral axis;

+ Assuming that the machine is fitted with interpoles only, determine the number of turns to be placed on the interpoles;

+ Suppose the the machine is to have its $​​\u{02131}_i$ fully compensated: 
 + Calculate the number of turns to be placed in a compensating winding, assuming that 6 slots were opened in each main pole. Calculate the number of conductors to be placed in each slot; 
 + Size the number of turns to be placed on the interpoles after the compensating windings have been installed. 


#v(12pt)
  #rect(fill: luma(240), width: 100%, height: 99%, stroke: (left: 0.25em))[
    *Worked solution:* 
#set par(hanging-indent: 1cm)

Two solution approaches were used in this exercise:

#list(body-indent: 1em, indent: 3em, spacing: 20pt,
[- *numerical (computational) solution*: using the exercise data, a CAD (_Computer-Aided Design_) and CAE (_Computer-Aided Engineering_) model was built, applying the #link("https://en.wikipedia.org/wiki/Finite_element_method", [finite element method]) for the electromagnetic calculation. The _software_ used was #link("https://www.femm.info",[FEMM - Finite Element Method Magnetics]). The computational solutions make it possible to visualise and quantify the magnetic flux lines, helping to understand the armature magnetic reaction and its effects on the machine's operation;],
[*Analytical solution*: this is the main objective of this exercise, namely to compensate the Armature Magnetic Reaction (AMR), by calculating the magnetomotive forces involved.]
)

#let img(path, x, y, w, h) = place(top + left, dx: x, dy: y,
  image(path, width: w, height: h))

#scale(x: 50%, y: 50%, origin: top + left, reflow: true)[
  #box(width: 33.87cm, height: 2cm)[
    #place(top + left, dx: 0.74cm, dy: 2.8cm,
      block(width: 32.49cm, height: 2cm)[
        #text(size: 36pt, weight: "bold")[
          #h(1fr)field winding#h(1fr)+#h(1fr)armature field#h(1fr)=#h(1fr)resultant field
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
          #h(0.1fr)field winding#h(0.1fr)+#h(0.1fr)armature field#h(0.1fr)=#h(0.1fr)resultant field
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
          #h(0.5cm)MMF of the field winding and the armature reaction
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

$​\u{02131}_i=A space display(tau / 2 )$ #h(0.25cm) with: #h(0.25cm) $A=display((z space I)/(4 space a space p)) space display(1/tau) #h(0.25cm)$ or #h(0.25cm)$​\u{02131}_i=display((z space I) / (8 space a space p))$ #h(0.25cm), using this latter expression:
#v(15pt)

$​\u{02131}_i=display((z space I) / (8 space a space p) )= display((624 times 144)/(8 times 3 times 3))=1248 "A.cond"$

\
*b)*#h(0.5em) DC machine with *interpoles*:

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

#h(1cm)For a machine with interpoles:\

$​\u{02131}_"PA"=\u{02131}_"i"$ #h(0.25cm)since:#h(0.25cm) $​\u{02131}_"PA"=N_"PA" space I$ #h(0.25cm) , we obtain: #h(0.25cm) 
$N_"PA"=display((\u{02131}_"i")/(I))=display((1248)/(144))=8.67 "turns"$

\
To facilitate commutation, the next integer above is used, i.e. $9$ turns.

Thus, a corrected MMF is obtained for the interpoles, $\u{02131}'_"PA"$:

$\u{02131}'_"PA"=9 times 144=1296$ A.cond

\


*c)*#h(0.5em) Machine with compensated AMR (*interpoles and compensating windings*)

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
*c-1)*#h(0.5em) The *compensating windings* are sized first:

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
$​ \u{02131}_"EC"=A space display(b/2)$ #h(0.25cm) or #h(0.25cm) $​ \u{02131}_"EC"=\u{02131}_"i" space display(b/tau)$ #h(0.25cm) , using this latter expression since $display(b/tau)$ is known:

#v(7pt)

$\u{02131}_"EC"=\u{02131}_"i" space display(b/tau)=1248 times display(2/3)=832$ A.cond 

#v(7pt)

On the other hand, since $\u{02131}_"EC"= N_"EC" space I$, the number of turns of the compensating winding is obtained as: 

#v(7pt)

Thus,  #h(0.25cm) 
$N_"EC"=display((\u{02131}_"EC")/(I))=display((832)/(144))=5.78 "turns"$

#v(7pt)

Considering 6 slots per main pole, where the turns from 3 slots connect to the following pole and those from the other 3 slots connect to the preceding pole, $N'_"EC"=6$ turns are obtained, placing 2 turns in each slot.

#v(7pt)

Thus, a corrected MMF is obtained for the compensating windings, $\u{02131}'_"EC"$:

$\u{02131}'_"EC"= 6 times 144=864$ A.cond

\
]

    
#v(12pt)
  #rect(fill: luma(240), width: 100%, height: 99%, stroke: (left: 0.25em))[
     
#set par(hanging-indent: 1cm)

\
Example photograph of a machine with compensating windings (and interpoles) with 6 slots in the pole-shoe head and 2 turns per slot:

#let img(path, x, y, w, h) = place(top + left, dx: x, dy: y,
  image(path, width: w, height: h))
#scale(x: 60%, y: 60%, origin: top + left, reflow: true)[
  #box(width: 34cm, height: 34.05cm)[
    #img("femm/Lusonave_Enrol.Comp.DC.png", 1cm, 0cm, 26cm, 34cm)
  ]
]


//#figure(image("femm/Lusonave_Enrol.Comp.DC.png", height: 91%, width: 100%, fit: "cover"))


#align(center)[
  Photograph from refurbishment work on a DC machine.\ Image of the stator with interpoles and compensating windings (source: #link("http://lusonave.pt/")[Lusonave]).
]

]

#v(12pt)
  #rect(fill: luma(240), width: 100%, height: 100%, stroke: (left: 0.25em))[
     
#set par(hanging-indent: 1cm)

\

*c-2)* and then the *interpoles*:


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
To facilitate commutation, the next integer above is used, i.e. $3$ turns.

Thus, a corrected MMF is obtained for the interpoles, $\u{02131}'_"PA"$:

$\u{02131}'_"PA"=3 times 144=432$ A.cond

\
*Conclusion*: after fitting the compensating windings and the interpoles, a resultant MMF, $\u{02131}_R$, is obtained at the Geometric Neutral Lines (brush positions):

$\u{02131}_R=\u{02131}_i - \u{02131}'_"PEC" - \u{02131}'_"PA" = 1248-864-432=-48$ A.cond



#let img(path, x, y, w, h) = place(top + left, dx: x, dy: y,
  image(path, width: w, height: h))
#scale(x: 54.7%, y: 54.7%, origin: top + left, reflow: true)[
  #box(width: 33.87cm, height: 16.05cm)[
    #img("femm/image22.svg", 1cm, 0cm, 26.5cm, 18cm)
  ]
]



]




== Exercise 4
#v(12pt) 
#h(1cm)
An armature winding of a dynamo has $z=640$~conductors, wound as a simple lap winding, for a rated current of $100$~A and $2$ pole pairs.

+ Size the number of turns of the compensating windings, $N_"EC"$, and of the interpoles, $N_"PA"$, for full compensation of the armature magnetic reaction. Consider that the machine's field poles cover $70space.thin%$ of the total periphery, as seen from the rotor;

+ Resize $N_"EC"$ and $N_"PA"$ considering a simple wave armature winding.

#v(12pt)
  #rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
    *Results:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $N_"EC"=14$ turns; #h(2em) $N_"PA"=6$ turns\
    *b)*#h(0.5em) $N_"EC"=28$ turns; #h(2em) $N_"PA"=12$ turns\
  ]


  
== Exercise 5
#v(12pt) 
#h(1cm)A separately-excited DC generator $[220" V, " 12" A," 1500" rpm"]$ was tested at no-load and under load, at rated speed, yielding the following characteristics:

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

+ Determine the total internal voltage drop of this generator;

+ What is the critical resistance of a shunt-excited generator? What is its significance? How is it determined (approximately) in practice?

+ What is the field winding resistance, given that, when operating as a shunt generator, at rated speed, with no field rheostat, $U_0=294$~V;

+ Explain qualitatively the influence that varying the field rheostat has on the external characteristic of the shunt generator. Justify briefly;

+ Under the excitation conditions of part c), what should be done to obtain a no-load voltage of $336$~V?

#v(12pt)

#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
  *Worked solution to Exercise 5:* #h(5pt)\u{1F517} #show link: underline
  #link("https://ricardo-luis.github.io/me-2/Separ.Shunt.GEN.html")[interactive notebook] developed with #h(2pt)#box(baseline: 22%, height: 12pt, image("/images/logos/pluto.svg", alt: "Pluto")) #h(1pt) -- #h(1pt)#box(baseline: 23%, height: 18pt, image("/images/logos/julia.svg", alt: "Julia")).
]



== Exercise 6
#v(12pt)
#h(1cm)A shunt-excited generator has the following no-load (magnetisation) characteristic, at $1500$~rpm:

#table(columns: 11, 
  stroke: none, 
  column-gutter: 12pt,
  align: (right),
  [$i$[A]], [$0$], [$0.1$], [$0.2$], [$0.3$], [$0.4$], [$0.6$], [$0.8$], [$1.0$], [$space.quad$], [$R_a=2.0 space Omega$],
  [$E$[V]], [$20$], [$120$], [$200$], [$235$], [$250$], [$270$], [$285$], [$300$], [$space.quad space.quad$], [$R_d=300 space Omega$]
)
Consider that the generator is fitted with interpoles and compensating windings.
#v(6pt) 

+ With the generator driven at $1500$~rpm, determine the value of the field rheostat to obtain the operating point $(35" A" semi  180" V")$;

+ Determine the generator drive speed required for the machine operate under the same conditions as in part a), without a field rheostat;

+ Under the conditions of part a) ($1500$~rpm and field rheostat), determine the equivalence ratio $(N_s slash N_d)$, to obtain the operating point  $(35" A" semi  " "200" V")$. Consider that the series field winding has a resistance of $0.5 space Omega$.

#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Results:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $​​150 space Omega$; #h(2em)
    *b)*#h(0.5em) $1389$~rpm; #h(2em)
    *c)*#h(0.5em) $​​0.39 slash 35$ #h(2em) 
  ]


== Exercise 7
#v(12pt)
#h(1cm)A long-shunt compound generator, with cumulative (additive) series field flux, has the following characteristics:

#table(columns: 5, column-gutter: 10pt,stroke: none, align: left,
[$P=8.75$~kW], [$U=250$~V], [$R_d=223 space Omega$], [$R_a=1.3 space Omega$], [$R_s=0.1 space Omega$], 
[$n=1500$~rpm], [$n_("mag")=1500$~rpm], [$N_d=2000$ turns], [$N_s=50$ turns], [$E_0=$ f$(I_"exc")$:]
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
Also consider a switch connected in parallel with the series field winding, as show in the following electric diagram:


#figure(image("/images/Compound_Dynamo.png", width: 44%))

#v(6pt) 

+ Calculate the no-load voltage with no field rheostat. Explain whether the state of the switch influences the generator no-load voltage;

+ With the switch open, calculate the voltage drop due to the armature reaction, knowing that flat (level) regulation is obtained under rated conditions;

+ With the switch closed, explain qualitatively the generator external characteristic. What is the variation of the operating point on the external characteristic, for a given load resistance, in the following situations:

  + an increase in drive speed;

  + a decrease in the shunt-field rheostat.

#v(12pt)

#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
  *Worked solution to Exercise 7:* #h(5pt)\u{1F517} #show link: underline
  #link("https://ricardo-luis.github.io/me-2/Compound.GEN.html")[interactive notebook] developed with #h(2pt)#box(baseline: 22%, height: 12pt, image("/images/logos/pluto.svg", alt: "Pluto")) #h(1pt) -- #h(1pt)#box(baseline: 23%, height: 18pt, image("/images/logos/julia.svg", alt: "Julia")).
]




== Exercise 8
#v(12pt)
#h(1cm)Consider a series generator with $5$ turns$slash$pole, whose magnetisation characteristic passes through the following points, at $1200$~rpm:

#align(center)[
  #table(columns: 5, column-gutter: 20pt,
stroke: none,
align: right,
[$\u{02131}$~[Ae]], [$0$], [$200$], [$600$], [$1000$], 
[$E_0$~[V]], [$5$], [$120$], [$160$], [$170$]
)
]

It is known that the rotational losses are $1200$~W, $R_a=0.2 space Omega$ and $R_s=0.05 space Omega$.
#v(6pt) 

+ Determine the voltage drop due to the armature reaction, when supplying a $1 space Omega$ load, at $120$~A;

+ Consider that the armature reaction results in a flux loss of $5space.thin %$. Will it be possible to obtain a voltage of $150$~V, at the same current? Justify;

+ An attempt was made to operate this series dynamo on a $3 space Omega$ load, but this was not possible. Comment on the situation;

+ Determine the current value corresponding to maximum efficiency.

#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Results:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $​​10$~V ; #h(2em)
    *d)*#h(0.5em) $69.3$~A
  ]

\
== Exercise 9
#v(12pt)
#h(1cm)The external characteristics of two shunt-excited dynamos, rated at $220$~V, $110$~kW, and connected in parallel, are known:

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

+ How would the two machines share a current of $1500$~A? What is the voltage?

+ What happens for small loads, close to zero? $0 < I <250$~A

+ Complete: \ #h(0.5cm) “Under overload, the machine with $"________________"$ regulation supplies $"________________"$ current”.

#v(12pt)

#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
  *Worked solution to Exercise 9:* #h(5pt)\u{1F517} #show link: underline
  #link("https://ricardo-luis.github.io/me-2/Parallel.GEN.html")[interactive notebook] developed with #h(2pt)#box(baseline: 22%, height: 12pt, image("/images/logos/pluto.svg", alt: "Pluto")) #h(1pt) -- #h(1pt)#box(baseline: 23%, height: 18pt, image("/images/logos/julia.svg", alt: "Julia")).
]




== Exercise 10
#v(12pt)
#h(1cm)Two identical shunt-excited dynamos have the following magnetisation characteristic at $1500$~rpm: 

#align(center)[#table(
  columns: 6, 
  stroke: none, 
  column-gutter: 18pt,
  align: (right),
  [$i$~[A]], [$0.0$], [$0.2$], [$0.6$], [$1.0$], [$1.4$], [$E$~[V]], [$20$], [$200$], [$220$], [$240$], [$260$],
)]

#h(1cm)The armature resistance is $0.4 space Omega$ and the field winding resistance is $150 space Omega$; each also has a field rheostat connected, with a maximum value of $300 space Omega$.

The two machines are connected in parallel, supplying a load $(100" A," 200" V")$, with *dynamo~A* running at $1500$~rpm.

#v(6pt) 

+ Initially *dynamo~B* is unloaded. Determine the field rheostat of *dynamo~A*;
+ Determine the short-circuit current of *dynamo~A*;
+ *Dynamo~A* supplies $75$~A of the total load. How should one proceed so that *dynamo B* supplies the rest? Show the calculations.


#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Results:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $​​R_f^"A"=50 space Omega$ ; #h(2em)
    *b)*#h(0.5em) $50$~A \  
    *c)*#h(0.5em) Adjusting only on the field rheostat results in $R_f^"B" > R_f^"máx"$, so the speed must also be adjusted. For example, considering $R_f^"B"=50 space Omega$, $1312.5$~rpm is obtained.
    ]

== Exercise 11
#v(12pt)

#h(1cm)Consider a shunt generator driven at constant speed, supplying a load resistance $R_u=7 space Omega$.
A lead-acid battery is occasionally connected to this circuit for charging, according to the following electrical circuit:

#figure(image("/images/battery.png", width: 55%))

External characteristic of the generator:
#align(center)[#table(
  columns: 8, 
  stroke: none, 
  column-gutter: 18pt,
  align: (right),
  [$I_G$~[A]], [$0.0$], [$10$], [$20$], [$30$], [$40$], [$50$],[$60$], [$U_G$~[V]], [$312$], [$300$], [$284$], [$262$], [$234$], [$200$], [$160$]
)]

#h(1cm)The battery consists of $100$ cells in series and is charged whenever its SOC (State Of Charge) reaches $25space.thin %$ (approximately $1.95$~V/cell). The internal resistance of each battery cell is $8$~m$Omega$. 

Determine the operating voltage of the circuit when the battery is connected (generator + load $R_u$), the generator current, $I_G$, the current in the load, $I_u$, and the initial battery charging current, $I_b$. 

#v(12pt)
  #rect(fill: luma(240), width: 100%, height: 23%, stroke: (left: 0.25em))[
    *Worked solution:* 
#set par(hanging-indent: 1cm)

The battery open-circuit voltage, $E_b$, for SOC$=25space.thin %$, is given by:\

#h(1cm) $E_b=100 times 1.95=195$~V

The internal resistance of the battery, $R_b$, with its cells in series:

#h(1cm) $R_b=100 times 8times 10^"-3"=0.8 space Omega$

The battery charging equation, $U_b="f"thin (I_b)$, is given by:

#h(1cm)$U_b=E_b+R_b 
 thin I_b  space <=> space U_b=195+0.8 
 thin I_b$

 ]

#rect(fill: luma(240), width: 100%, height: 100%, stroke: (left: 0.25em))[ 
#set par(hanging-indent: 1cm)

#v(6pt)
#h(1cm)The following graph shows:

#set list(marker: [--],indent: 2cm)

- the generator external characteristic, $U_G="f" thin (I_G)$
- the load-resistor line, $U_u="f" thin (I_u)$
- the battery charging line, $U_b="f"thin (I_b)$

#v(6pt)

#h(1cm)The generator loads (the load resistor and the battery) must be combined in order to determine the operating point of the generator and of the loads.


#figure(image("/images/battery_graph1.svg", width: 80%))

#v(6pt)
#h(1cm)The combined load must reflect the operation of the circuit, that is:

#set list(marker: [--], indent: 2cm)

- the voltages across each branch are equal: #h(0.5cm)$U=U_G=U_u=U_b$
- the generator supplies the load resistor and the battery: #h(0.5cm)$I=I_G approx I_u+I_b$

#v(6pt)
#h(1cm)*Note:* The generator field current, $I_d$, is much smaller than the generator armature current and the load currents, so it is neglected in the graph:

#h(1cm)$I_d << {I_b, I_u, I_G}$ 

#v(12pt)
The following graph illustrates the graphical determination of the combined load characteristic, $U_c="f" space(I)$, with $I=I_b+I_u$, corresponding to the combined loads. Since the sum of two straight lines is another straight line, only $2$ voltage levels need to be considered to obtain $2$ points on the combined load characteristic. Thus:

]

  #rect(fill: luma(240), width: 100%, height: 100%, stroke: (left: 0.25em))[ 
#set par(hanging-indent: 1cm)


#set list(marker: [--], indent: 2cm, spacing: 16pt)

- the green point was obtained by choosing the voltage level corresponding to the battery being disconnected, i.e. $E_b$. In this situation, $I_b=0$ and therefore $I=I_u$
- the red point was obtained by choosing the voltage level at which the load-resistor and battery lines intersect, i.e. $I_u=I_b$. At this voltage level, the red point is placed at the abscissa corresponding to twice the current.

#v(10pt)
#h(1cm)Joining the points (green and red) gives the combined load characteristic:

#h(1cm)$U_c="f" space(I)$


#figure(image("/images/battery_graph2.svg", width: 74%))

#v(6pt)
#h(1cm)The intersection of the combined load characteristic with the external characteristic of the DC generator
defines the operating point of the circuit: $(I_G; U)=(47.4space.thin"A"; 209space.thin"V")$.

#figure(image("/images/battery_graph3.svg", width: 74%))

]

#rect(fill: luma(240), width: 100%, height: 45%, stroke: (left: 0.25em))[ 
#set par(hanging-indent: 1cm)

#v(6pt)
#h(1cm)On the other hand, from the operating voltage, $U=209$~V, the load lines of the load resistance and of the battery are consulted to obtain the respective current values, $I_u$ and $I_b$, supplied by the generator:

#h(1cm)$I_u=29.9$~A
#h(1cm) ; #h(1cm)$I_b=17.5$~A


#v(6pt)
As an alternative to the graphical determination of the combined load characteristic, since it corresponds to the sum of two straight lines, it can be determined analytically. Given that:
#v(6pt)
#h(1cm)
$U_c=U_b=U_u$~~ and that ~~$I=I_b+I_u$~~ then:
#v(10pt)
#h(1cm)$I=display((U_c-E_b) / R_b + display(U_c) / R_u)$

#v(10pt)
Rearranging the previous equation the combined load line (load resistance + battery), $quad quad U_c="f" space(I)$:

#v(6pt)
#h(1cm)$U_c = display((R_u) /(R_u+R_b) E_b + display((R_u R_b) /(R_u+R_b)) I)$

]

 == Exercise 12
#v(12pt)
#h(1cm)A series motor with an armature resistance of $0.8 space Omega$ and a field winding resistance of $0.4 space Omega$ was run as a dynamo:

#set list(marker: [--], indent: 1cm)

- Separately excited at $50$~A and driven at $1500$~rpm, it produced $230$~V at the open-circuit terminals; 
- With series excitation, delivering $50$~A at the same speed, it produced $150$~V.
#v(6pt)
Knowing that the mechanical and magnetic losses, $p_("(mec+Fe)")$, are $400$~W, calculate:

#v(6pt) 

+ The speed when it draws $50$~A as a series motor from a $220$~V supply;

+ The mechanical torque it delivers to the load under these conditions;

+ Sketch qualitatively the torque and speed characteristics of this motor. Explain the effect of introducing a field rheostat on these characteristics.

#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Results:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $1174$~rpm ; #h(2em)
    *b)*#h(0.5em) $61.8$~Nm
    ]


#v(30%)
== Exercise 13
#v(12pt)
#h(1cm)Consider a DC motor with the following nameplate ratings: $17$~kW, $250$~V, $1200$~rpm, $eta=85space.thin%$.

#table(columns: 2, column-gutter: 6pt, stroke: none, align: left,
[The following parameters are also known:], table.cell(rowspan: 6)[#image("/images/noLoad.png", width: 103%)], 
[],
[$E_0=f(I_("exc")) space space$, ~$n=1200$~rpm],
[$R_a=0.6 space Omega$],[$R_s=0.1 space Omega space.quad$, ~$30$~ turns],
[$R_d=200 space Omega space.quad$, ~$3000$ turns]
)

#v(6pt) 

+ With the motor shunt-excited, determine the value of the field rheostat under rated conditions $(U_n, I_n, n_n)$;

+ Using the field rheostat calculated in the previous part, determine the speed, torque and mechanical characteristics of this motor (shunt excitation);

+ Repeat for cumulative and differential compound, long-shunt excitation. Plot the characteristics on the same graphs for comparison;

+ Determine the characteristic curves with the shunt circuit disconnected (series motor). Plot the characteristics on the same graphs for comparison;

+ Consider the motor with separate excitation, $U_("exc")=240$~V, with the field rheostat calculated in part a). Explain how the  speed characteristic changes in the following situations:

  + an increase in armature voltage;
  + a decrease in the field rheostat;
  + an increase in the additional resistance.

#v(12pt)

#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
  *Worked solution to Exercise 13:* #h(5pt)\u{1F517} #show link: underline
  #link("https://ricardo-luis.github.io/me-2/DCmotors.html")[interactive notebook] developed with #h(2pt)#box(baseline: 22%, height: 12pt, image("/images/logos/pluto.svg", alt: "Pluto")) #h(1pt) -- #h(1pt)#box(baseline: 23%, height: 18pt, image("/images/logos/julia.svg", alt: "Julia")).
]



== Exercise 14
#v(12pt) 
#h(1cm) A shunt-excited motor has the following characteristics:

#table(columns: 6, align: left, column-gutter: 26pt, stroke: none,
[], [], [$U_n=220$~V], [$I_n=42$~A], [$n_n=1500$~rpm], [$R_a=0.34 space Omega$]
)

#v(6pt) 

+ In the no-load test the following values were obtained: #table(columns: 5, align: left, column-gutter: 26pt, stroke: none,
[], [$U=220$~V], [$n=1600$~rpm], [$I_a=3$~A], [$I=4.6$~A]
) Calculate the loss torque;

+ Obtain the speed equation, $n="f"space(I_a)$ ;

+ Size a stepped starting rheostat such that: $40$~A $<= I_("start")<=65$~A .

#v(12pt)
  #rect(fill: luma(240), height: 9.5%, width: 100%,stroke: (left: 0.25em))[
    *Results:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $3.92$~Nm #h(2em)
    *b)*#h(0.5em) $n("rpm")=display(frac( hyph 100, 37.4))(I_a-3)+1600$ 
    
    *c)*#h(0.5em) Resistances between the 6 contacts $(Omega)$: $1.30$; $0.80$; $0.49$; $0.30$; $0.15$. Rheostat: $3.04space Omega$ .
    ]


== Exercise 15
#v(12pt) 
#h(1cm)A series motor rated at $12$~kW, $250$~V, $1400$~rpm, with an efficiency of $80space.thin%$ and a maximum speed of $2400$~rpm, has the following magnetic characteristic obtained at $1500$~rpm:

#align(center)[
  #table(columns: 9, column-gutter: 12pt,
stroke: none,
align: right,
[$I_("exc")$ (A)], [$10$], [$20$], [$30$], [$40$],  [$50$], [$60$], [$70$], [$80$],
[$E_0$ (V)], [$80$], [$140$], [$190$], [$225$], [$250$], [$270$], [$285$], [$295$]
)
]

Knowing that the armature resistance is $0.35space Omega$ and the field resistance is $0.1space Omega$, calculate:
#v(6pt) 
+ The mechanical and iron losses, $p_"(mec+Fe)"$;

+ The minimum current the motor can draw;

+ The voltage drop due to armature reaction at full load;

+ The motor power corresponding to maximum efficiency;

+  Explain qualitatively the effect of the field rheostat on the speed characteristic of the series motor;

+ Explain qualitatively the effect of the field rheostat on the torque characteristic of the series motor.

#v(12pt)

#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
  *Worked solution to Exercise 15:* #h(5pt)\u{1F517} #show link: underline
  #link("https://ricardo-luis.github.io/me-2/SeriesMotor.html")[interactive notebook] developed with #h(2pt)#box(baseline: 22%, height: 12pt, image("/images/logos/pluto.svg", alt: "Pluto")) #h(1pt) -- #h(1pt)#box(baseline: 23%, height: 18pt, image("/images/logos/julia.svg", alt: "Julia")).
]


== Exercise 16
#v(12pt) 
#h(1cm) A series motor supplied at $250$~V has an armature resistance of $0.2space Omega$ and a field winding resistance of $0.15space Omega$. This field winding has a field rheostat of $0.1space Omega$ fitted with a switch.
#v(6pt) 

+ Assume the switch is open. Under these conditions, the motor delivers a shaft torque of $25$~Nm, running at $800$~rpm and drawing a current of $10$~A.\ Calculate the efficiency, $eta space (%)$, the electromagnetic torque, $T_d$, and the mechanical and magnetic losses, $p_"(mec+Fe)"$;

+ Assume the switch is closed. What are the new values of current drawn and speed when the electromagnetic torque doubles? State the assumptions made;

+ Sketch qualitatively the shaft torque characteristic of this motor. Explain what happens to it when the supply voltage is varied. Justify.

#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Results:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $83.8space.thin%$ ; $space.quad 29.4$~Nm ; $space.quad 370.6$~W #h(2em)
    *b)*#h(0.5em) $22.4$~A ; $space.quad 888$~~rpm
    ]


== Exercise 17
#v(12pt) 
#h(1cm) A shunt motor with the following nameplate ratings: $45$~kW, $500$~V, $100$~A, $1600$~rpm, has an armature resistance of $0.33$~$Omega$ and will use reverse current braking (plugging), from its rated operating condition.

#v(6pt)
Knowing that the initial braking current must be limited to $150$~A, calculate:

#v(6pt) 

+ The useful (shaft) torque, $T_u$, and the back electromotive force, $E'$, at full load;

+ The value of the braking resistance;

+ Analyse qualitatively the torque developed at the instant the motor stops. What happens from that instant onwards?

+ Consider dynamic (rheostatic) braking. Calculate the initial braking current using the braking resistance found above, starting from the rated operating condition.


#v(12pt)
  #rect(fill: luma(240), height: 90%, width: 100%,stroke: (left: 0.25em))[
    *Worked solution:* 
#set par(hanging-indent: 1cm)

*a)*#h(0.5em) The shaft torque is obtained from the nameplate ratings:

#h(1cm)$T_u = display(P_u) / (display(2 thin pi thin n_n) / display(60))=display(45thin 000)/(display(2 thin pi thin 1600) / display(60))=268.6$~Nm

#v(6pt)
Calculation of $E'$:
#h(1cm)$E'=U-R_a thin I_n=500-0.33 times 100=467$~V

#v(12pt)
*b)*#h(0.5em) The following figure shows the circuit diagram of the shunt motor fitted with a DPDT (Double Pole, Double Throw) switch for the *reverse current braking (plugging)* manoeuvre: 

#figure(image("/images/MshuntDPDT.png", width: 76%), gap:16pt) 

#v(6pt)
#h(1cm) When the DPDT switches to perform reverse current braking (position 2), the negative armature terminal is connected to the positive terminal of the DC supply, while the positive motor terminal is connected to the negative terminal of the supply through a braking resistance, $R_"brk"$.

Thus, going round the power loop, the following equation is obtained:

#h(1cm) $-U-E'+(R_a + R_"brk") thin I_"brk"=0 quad => quad I_"brk"=display(U+E')/ display(R_a + R_"brk")$

#v(6pt)
Note that the braking current, $I_"brk"$, flows in the opposite direction to the motor current with the DPDT in position 1. Therefore, the torque developed during braking opposes the rotor motion, forcing the speed, $omega$, to decrease.

As the speed, $omega$, decreases, the back electromotive force, $E'$, decreases and consequently the current and the torque during the DC motor braking operation also decrease. 


Rearranging the previous expression to obtain the braking resistance, $R_"brk"$, gives:


#h(1cm)$R_"brk"=display(U+E')/ display(I_"brk")-R_a=display(500+467)/ display(150)-0.33=6.12space Omega$

]

#v(12pt)
  #rect(fill: luma(240), height: 100%, width: 100%,stroke: (left: 0.25em))[
    
#set par(hanging-indent: 1cm)



*c)*#h(0.5em) Relating the developed torque, $T_d$, to the speed, $omega$, we obtain successively:

#h(1cm) $T_d=K thin phi.alt thin I_a quad$

Particularising for the torque developed during braking, $T_d_"brk"$, considering $I_"brk"$:

#h(1cm) $T_d_"brk"= K thin phi.alt thin(display(U+E')/ display(R_a + R_"brk")) wide$ since: $wide E'= K thin phi.alt thin omega$

#v(12pt)
#h(1cm) $T_d_"brk"= display(K thin phi.alt thin U)/ display(R_a + R_"brk") + display( (K thin phi.alt)^2 thin omega)/ display(R_a + R_"brk") quad$, when: $quad omega=0 space => space T_d_"brk"= display(K thin phi.alt thin U)/ display(R_a + R_"brk")$

#v(6pt)
Analysing the previous expression, the second term decreases during the braking manoeuvre until it becomes zero when: $omega=0$.

However, the first term remains constant. Therefore, immediately after the speed reaches zero, if no action is taken, the motor starts will start rotating in the opposite direction. An automatic control must therefore disconnect the motor from the DC supply as soon as its speed reaches zero.

#v(12pt)
*d)*#h(0.5em) *Dynamic (or rheostatic) braking* consists of disconnecting the motor armature circuit from the DC supply and connecting it across a braking resistance. The DC machine will now operate as a separately excited generator (constant flux) supplying the braking resistance. Since there is no prime mover driving the "generator", the speed falls sharply within a few moments.

The electrical diagram in the following figure uses an SPDT (_Single Pole, Double Throw_) switch for the dynamic braking manoeuvre:

#figure(image("/images/MshuntSPDT.png", width: 76%), gap:16pt) 

#h(1cm)Analysing the flow of the braking current (with the SPDT switch in position $2$), at the start of the braking operation, we obtain:

#h(1cm)$I_"brk"=display(E')/ display(R_a+R_"brk")= display(467)/ display(0.33+6.12)=72.4$~A


]    
    

== Exercise 18
#v(12pt) 
#h(1cm) A separately excited DC motor, $10$~kW, $250$~V, with an efficiency of $88space.thin%$, is supplied by a Ward Leonard system, shown in the following schematic
diagram of its operating principle:

#figure(image("/images/WardLeonard_ex14.png", width: 70%), )

The magnetisation characteristics of the generator and the motor, obtained at $1200$~rpm, are known:


#table(columns: 12, rows: 2, align: center + horizon, column-gutter: 4.5pt, stroke: none, table.hline(start:0, end: 12, stroke: 0.5pt), table.vline(start: 0, end: 2, stroke: 0.5pt), table.vline(x: 12, start: 0, stroke: 0.5pt),
underline[Generator:], [], [$i($A$)$], [$0.0$], [$0.4$], [$0.8$], [$1.2$], [$1.6$], [$2.0$], [], [$R_a=0.8space.thin Omega$], [$R_d=120space.thin Omega$], [], [], [$E($V$)$], [$12$], [$110$],[$200$],[$260$],[$290$],[$310$], [], [$U_("exc")=240$~V], [$Delta E=0$~V], table.hline(start:0, end: 12, stroke: 0.5pt)
)

#table(columns: 12, rows: 2, align: center + horizon, column-gutter: 7.7pt, stroke: none, table.hline(start:0, end: 12, stroke: 0.5pt), table.vline(start: 0, end: 2, stroke: 0.5pt), table.vline(x: 12, start: 0, stroke: 0.5pt),
underline[Motor:], [], [$i($A$)$], [$0.0$], [$0.4$], [$0.8$], [$1.2$], [$1.6$], [], [], [$R_a=1.6space.thin Omega$], [$R_d=150space.thin Omega$], [], [], [$E($V$)$], [$10$], [$105$],[$190$],[$240$],[$265$],[], [], [$U_("exc")=240$~V], [$Delta E=0$~V], table.hline(start:0, end: 12, stroke: 0.5pt)
)
#v(12pt) 

+  Calculate the motor speed and the electromagnetic torque at full load, with:\ $R_f^" gen"=180space.thin Omega$ and $R_f^" mot"=50space.thin Omega$ ;  

+ Using the Ward Leonard system, adjust the motor speed to $1100$~rpm at half load. Calculate the value of the field rheostat for this condition;

+ When the generator field current reaches its maximum value, how can the speed of the DC motor be increased? Justify;

+ State the advantages of replacing the Ward Leonard system with an electronic variable-speed drive.

#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Results:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $455$~rpm ; $space.quad 87$~Nm #h(2em)
    *b)*#h(0.5em) $53space.thin Omega$
    ]

\
\
== Exercise 19
#v(12pt) 
#h(1cm) Consider a DC motor supplied from an electronic Ward-Leonard system, as shown in the following figure:


#table(columns: 2, rows: 13, column-gutter: 6pt, stroke: none, align: (center, left),  table.cell(rowspan: 13, [#image("/images/WardLeonard_ex15.png", width: 80%)], align: center), [],[],[$P_n=5$~kW],[],[],[$T_n=30$~Nm],[],[],[$I_n=40$~A],[],[],[$R_a=0.8space.thin Omega$]
)

The magnetisation characteristic of the machine, obtained at $2000$~rpm, is also known:

#align(center)[
  #table(columns: 8, column-gutter: 12pt,
stroke: none,
align: right,
[$I_f$ (A)], [$0$], [$0.25$], [$0.50$], [$0.75$],  [$1.00$], [$1.25$], [$1.50$], 
[$E_0$ (V)], [$20$], [$160$], [$210$], [$235$], [$250$], [$260$], [$265$])
]

+ Determine the voltage applied to the motor armature under rated conditions;

+ Consider the motor operating under the following conditions: $U_a=195$~V; $n=1400$~rpm. Now suppose that, using the "Speed reference" command of the electronic variable-speed drive, the armature voltage is suddenly changed to $155$~V. Calculate the machine current at the immediately after the change. What has happened? Justify.


#v(12pt)
  #rect(fill: luma(240),  height: 30%, width: 100%,stroke: (left: 0.25em))[
    *Worked solution:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) Using the rated values provided, the rated speed is obtained from:

#h(1cm)$omega=display(P_n/T_n) quad$ combined with: $quad omega=display(2 thin pi thin n) / display(60) quad$, we have: 
#v(10pt)
#h(1cm)$n=display(P_n/T_n) thin display(60/(2 thin pi))=display(5000/30) thin display(60/(2 thin pi))=1592$~rpm

#v(12pt)
On the other hand, for $I_f=1$~A $=> space K thin phi.alt=display(250/2000)$~V$\/$rpm

#v(12pt)

Using the speed equation:
$quad n=display(U_a-R_a thin I_n) / display(K thin phi.alt) quad$, with: $quad Delta E=0 space$, we obtain:
#v(6pt)
#h(1cm)$1592=display(U_a-0.8 times 40) / display(250\/2000) quad => space U_a= 231$~V

]

#v(12pt)
  #rect(fill: luma(240),  height: 50%, width: 100%,stroke: (left: 0.25em))[ 
#set par(hanging-indent: 1cm)
    #h(1cm)*b)*#h(0.5em) For the specified conditions: $U_a=195$~V; $n=1400$~rpm, the motor operating current, $I$, is:
#v(6pt)  
#h(1cm)$n=display(U_a-R_a thin I) / display(K thin phi.alt) space <=> space 1400=display(195-0.8 thin I) / display(250\/2000) space => I=25$~A

#v(12pt) 
When the supply voltage changes suddenly, $(U_a=195$~V $->155$~V$)$, the speed still remains the same (slow dynamics of a mechanical system _vs._ an electrical system), and the current changes to a new value, given by $I'$:
#v(6pt)  
#h(1cm)$n=display(U_a-R_a thin I') / display(K thin phi.alt) space <=> space 1400=display(155-0.8 thin I') / display(250\/2000) space => I'=-25$~A

#v(12pt) 
With the sudden change in voltage, $U_a$, the back electromotive force becomes $E'>U_a$, reversing the direction of the current. In other words, a braking process has started, in which the current, $I'$, will follow the evolution of $E'$, being restored to its previous value, $(I=25$~A$)$, once the speed stabilises.

If the electronic variable-speed drive supports bidirectional current, *regenerative braking* occurs: the current is returned to the electrical supply during the braking as long as $space E'>U_a$.

  ]


#v(5%)

== Bibliography

\
#list(indent: 1cm,
  [[Guru & Hiziroğlu, 2003]: Bhag S. Guru, Hüseyin R. Hiziroğlu, Electric Machinery and Transformers, 3#super("rd") Ed., Oxford University Press, 2003.]
)
  


 
