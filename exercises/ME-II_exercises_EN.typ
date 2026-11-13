#let autor = "Ricardo Luís"
#let instituicao = "ISEL"
#let ano = "2026"
#let titulo = "Exercises and Industrial Application Problems"
#let subtitulo = "Electric Machinery II"
#let github_user = "Ricardo-Luis"
#let github_repo = "me-2-oer"
#let github_subpath = "/tree/main/exercises"
#let github_raw_subpath = "/raw/main/exercises"
#let github_pdf_file = "ME-II_exercises_EN.pdf"
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
#text(10pt)[November #ano]

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

Artificial intelligence (AI) was used as a delegated tool to assist with the translation of this document from European Portuguese (PT-PT) into British English (EN-GB). The AI-generated translation was critically reviewed, edited and validated by the author, who retains full responsibility for the accuracy and final content of the translated text.

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


#pagebreak()


== Worked solution to an assessment test
\
#align(center)[*1st Test – 29 October 2026*]

#let recortar-pdf(path, topo: 0pt, base: 0pt, esq: 0pt, dir: 0pt, escala: 100%, ..args) = layout(size => {
  let img = image(path, ..args)
  let s = measure(img, ..size)
  let r(v, ref) = if type(v) == ratio { ref * v } else { v }
  let t = r(topo, s.height)
  let b = r(base, s.height)
  let e = r(esq, s.width)
  let d = r(dir, s.width)
  scale(escala, origin: top + left, reflow: true,
    block(
      width: s.width - e - d,
      height: s.height - t - b,
      clip: true,
      move(dx: -e, dy: -t, box(width: s.width, height: s.height, img)),
    ),
  )
})

#recortar-pdf("images/T1_EN.pdf", topo: 14%, base: 10%, esq: 8%, dir: 6%, width: 100%, escala: 117%)


#v(12pt)
  #rect(fill: luma(240),  height: 100%, width: 100%,stroke: (left: 0.25em))[
    *Worked solution:*\
    #block(
  width: 100%,
  inset: 8pt,
  stroke: (left: 2pt + luma(150)),
  text(size: 1em, style: "italic")[
    This solution is presented in an explanatory and detailed way, with the aim of helping to understand the reasoning. In a test, the solution may be more concise, provided that the procedure is clear and the results are justified.
  ]
)

#set par(hanging-indent: 1cm)
#v(12pt)   
*I-a)*#h(0.5em)
DC generator with compound excitation, long-shunt connection and cumulative flux:
#let url-drawio = "https://app.diagrams.net/#Uhttps%3A%2F%2Fraw.githubusercontent.com%2FRicardo-Luis%2Fme-2-oer%2Fmain%2Fexercises%2Fdraw%2FGCompoundCumulativeLongShunt_EN.drawio"

#figure(
  link(url-drawio)[
    #image("images/GCompoundCumulativeLongShunt.drawio_EN.pdf", width: 80%,
      alt: "Diagram of the long-shunt, cumulative compound DC generator")
  ],
  numbering: none,
  caption:[
    #text(size: 0.8em, style: "italic")[(Click on the figure to edit or reuse the diagram)]
  ],
)


#set par(hanging-indent: 1cm)
#v(12pt)    
*I-b)*#h(0.5em)


$U_0 = U_n = 400$~V

$E_0 approx U_0quad $, since $quad Delta U_r=(R_a + R_s) thin I_d quad$ is negligible. Thus: $space E_0 = 400$~V $space @ thin 1500$~rpm
#v(6pt)
Since the magnetic flux depends only on the excitation current, the speeds must be converted in order to consult $E_0(i)$, as follows:

#h(1cm)$E_0 = k thin phi.alt thin n quad ==> quad display(cases(
  400 = k thin phi.alt thin 1500,
  E_0^(1200) = k thin phi.alt thin 1200
)) quad ==> quad E_0^(1200) = 400 thin display(1200 / 1500) = 320$~V
#v(6pt)
At no load, the series flux is negligible, since: $space I_d thin N_s lt.triple I_d thin N_d$
#v(6pt)
Thus, consulting the magnetisation characteristic, $E_0(i)$, we have:

#h(1cm)$E_0^(1200) = 320thin "V" quad arrow.r.double.long^(E_0(i)) quad I_d = 0.4thin "A"$
#v(6pt)
The field rheostat of the shunt branch, $R_f$, is obtained as:

#h(1cm)$R_f = display(U_0 / I_d) - R_d = display(400 / 0.4) - 404 = 596thin Omega $


]


#v(12pt)
  #rect(fill: luma(240),  height: 100%, width: 100%,stroke: (left: 0.25em))[ 
#set par(hanging-indent: 1cm)
   
#v(6pt) 
*I-c)*#h(0.5em)

- *Interpoles* (commutating poles), on the GNA, between the main poles $arrow.r$ improve commutation with the brushes fixed on the GNA, preventing sparking.

- *Compensating windings*, in slots in the pole faces of the field poles $arrow.r$ cancel the armature MMF under the poles, eliminating the magnetic distortion and the consequent flux reduction.

#v(12pt) 
*I-d)*#h(0.5em)

Flat (level) regulation $(epsilon=0 thin %)$ under rated conditions $(U_n, I_n, n_n)$ $==> space U_0 = U (I_n)$  $"with" quad U=U_n quad$, since:
$quad epsilon=display((U_0-U)/U_n)thin 100$
#v(6pt)
$I_d = 0.4thin "A" quad$ , since from part b: $quad U_0=U_n quad @thin 1500$~rpm

#v(6pt)
Calculation of the rated current from the generator rating plate:

#h(1cm)$I_n = display(P_n / U_n) = display((100 dot 10^3) / 400) = 250thin "A" $

#v(6pt)
Armature current, $I_a$: $quad I_a = I_n + I_d = 250.4thin "A" quad "or simply" quad I_a approx I_n$
#v(6pt)
Calculation of the EMF on load, considering $quad Delta E = 0 quad$ and $quad Delta U_"esc" approx 0$:

#h(1cm)$E_0 = U + (R_a + R_s) thin I_a = 400 + (0.26 + 0.10) thin 250 = 490thin "V" quad @ quad 1500thin "rpm" $

#v(6pt)
Determination of the excitation current that represents the total magnetic flux (shunt + series), by consulting the magnetisation characteristic:

#h(1cm)$E_0^(1200) = 490 thin display( 1200 / 1500) = 392thin "V" quad ==>^(E_0(i)) quad I_"ex" = 0.8thin "A" $

#v(6pt)
From the sum of the shunt and series MMFs, the total MMF is given by:

#h(1cm)$N_d thin I_"ex" = N_d thin I_d+ N_s thin I_s, quad "with" quad I_s = I_a approx I_n$

#v(6pt)
Dividing all terms by $N_d$ and substituting, we have:

#h(1cm)$0.8 = 0.4 + display(N_s / N_d) thin 250 quad ==> quad display(N_d / N_s) = display(250 / 0.4) = 625$


#v(12pt) 
#par(first-line-indent: 0pt)[*II-a)*#h(0.5em)]

At no load, $quad P_u = 0 quad ==> quad P_d = P_"mec+Fe" = 1799thin "W"$
#v(6pt)
Since: $quad P_d = E' thin I_(a 0)quad$ and $quad E' = U - R_a thin I_(a 0)quad$, combining them gives:

#h(1cm)$P_d = U thin I_(a 0) - R_a thin I_(a 0)^2 quad <==> quad R_a thin I_(a 0)^2 - U thin I_(a 0) + P_d = 0 $
#v(12pt)
Alternatively, one could also take the approach: $space E' = U - R_i thin display(P_d/E')space $, and obtain $space E'$.

#v(12pt)


]


#v(12pt)
  #rect(fill: luma(240),  height: 100%, width: 100%,stroke: (left: 0.25em))[ 
#set par(hanging-indent: 1cm)

#v(12pt)
#h(1cm)Substituting the data gives (quadratic formula): $quad display(cases(
  I_(a 0) = 6.0thin "A" quad quad space << I_n quad quad checkmark,
  I_(a 0) = 1298.3thin "A" space >>> I_n quad quad crossmark
))$
#v(12pt)

Calculation of the no-load speed, $n_0$, and of the loss torque, $T_"loss"$:

#h(1cm)$display(n_0 = (U - R_i thin I_(i 0)) / (k thin phi.alt) = (300 - 0.23 dot 6.0) / (189 / 1000) = 1580thin "rpm" )$
#v(6pt)
#h(1cm)$display(T_"loss" approx P_"mec+Fe" / omega_0 = 1799 / display((2 thin pi thin n_0) / 60) = 1799 / display((2 thin pi thin 1580) / 60) = 10.9thin "Nm" )$



#v(12pt) 
#par(first-line-indent: 0pt)[*II-b)*#h(0.5em)]

From the motor rating plate data, the rated current, $I_n$, is obtained:

#h(1cm)$display(I_n = P_n / (eta thin U_n) = (40 dot 10^3) / (0.82 dot 300) = 162.6thin "A" )$
#v(6pt)
The motor speed under rated conditions is given by:
 
#h(1cm)$display(n = (U - R_a thin I_n + Delta E(I_n)) / (k thin phi.alt)), quad "with" quad Delta U_"esc" = 0 $
#v(12pt)
#h(1cm)$display(n = (300 - 0.23 dot 162.6 + 49.25) / (189 / 1000) = 1650thin "rpm" )$
#v(6pt)
For the calculation of the motor shaft torque under rated conditions, we have: 

#h(1cm)#$display(T_"out" = P_n / omega)quad; quad omega= display((2 thin pi thin n) / 60) quad ==> quad T_"out" = display(40000 / display((2 thin pi thin 1650) / 60)) = 231.5thin "Nm" $



#v(12pt) 
#par(first-line-indent: 0pt)[*II-c)*#h(0.5em)]


#import "@preview/cetz:0.5.3"
#align(center)[
  #cetz.canvas({
    import cetz.draw: *

    // --- Actual powers (W) ---
    let P-ab = 48780.5
    let p-der = 900.5      // Joule losses in the shunt field
    let p-ind = 6081       // Joule losses in the armature
    let p-mec = 1799       // mechanical + iron losses
    // Check: P_d = 41799 W e P_u = 40000 W
    let P-d = P-ab - p-der - p-ind
    let P-u = P-d - p-mec

    // --- Scale: the initial band (P_ab) is H units thick ---
    let H = 2.0
    let k = H / P-ab
    let t-der = p-der * k
    let t-ind = p-ind * k
    let t-mec = p-mec * k

    // --- Geometry of the main band ---
    let y-topo = 2.8
    let b0 = y-topo - H        // base inicial (P_ab)
    let b1 = b0 + t-ind        // after armature losses
    let b2 = b1 + t-der        // after shunt losses (P_d)
    let b3 = b2 + t-mec        // after mechanical + iron losses (P_u)
    let (x1, x2, x3, x-fim) = (2.5, 5.5, 8.5, 11)
    let rin = 0.5              // inner radius of the branch curves
    let y-fim = b0 - 1.2       // vertical end of the branches

    // Gradient of the main band; each branch starts from the band colour at the point where it leaves
    // and goes to red at the arrow tip (a single gradient per branch)
    let cor-fluxo = gradient.linear(rgb("#2f6fb0"), rgb("#a9c9ea"))
    let cor-ramo(x0) = gradient.linear(
      cor-fluxo.sample(x0 / x-fim * 100%), rgb("#d9534f"), angle: 90deg,
    )

    // Loss branch: leaves the slice [ya, ya + t] of the band, curves downwards and ends in an arrow tip
    let ramo(x0, ya, t) = {
      let n = 14
      let cy = ya - rin
      let rout = rin + t
      let arco(r) = range(0, n + 1).map(i => {
        let th = 90deg * i / n
        (x0 + r * calc.sin(th), cy + r * calc.cos(th))
      })
      line(
        ..arco(rout),
        (x0 + rout, y-fim), (x0 + rout + 0.12, y-fim),
        (x0 + rin + t / 2, y-fim - 0.3),
        (x0 + rin - 0.12, y-fim), (x0 + rin, y-fim),
        ..arco(rin).rev(),
        close: true, fill: cor-ramo(x0), stroke: none,
      )
    }

    // Main band
    line(
      (0, y-topo), (x-fim, y-topo), (x-fim, b3), (x3, b3), (x3, b2), (x2, b2),
      (x2, b1), (x1, b1), (x1, b0), (0, b0),
      close: true, fill: cor-fluxo, stroke: none,
    )

    // Losses: armature, shunt, mechanical + iron
    ramo(x1, b0, t-ind)
    ramo(x2, b1, t-der)
    ramo(x3, b2, t-mec)

    // Powers written on the band, all at the same height
    let y-med = (y-topo + b0) / 2
    content((x1 / 2*0.5, y-med), text(fill: white, [$P_"in"$]))
    content(((x2 + x3) / 2, y-med), [$P_d$])
    content(((x3 + x-fim*1.11) / 2, y-med), [$P_"out"$])

    // Loss labels (centred on the branch)
    let y-leg = y-fim - 0.45
    content((x1 + rin + t-ind / 2, y-leg), [$p_J^"arm"$], anchor: "north")
    content((x2 + rin + t-ind / 2, y-leg), 
    [$p_J^"sh"$], anchor: "north")
    content((x3 + rin + t-mec / 2, y-leg), [$p_"(mec+Fe)"$], anchor: "north")
  })
]

#v(12pt)

#align(center)[
  #table(
    columns: 2,
    align: left+horizon,
    inset: 8pt,
    stroke: (x: 0.5pt, y: 0.5pt), rows: (24pt, 30pt, 40pt, 30pt),
    table.header([*Powers*], [*Losses*]),
    [$P_"in" = U thin I$], [$p_J^"arm" = R_a thin I_a^2$],
    [$P_d = E' thin I_a = T_("mi") thin omega quad quad quad quad$], [$p_J^"sh" = U thin I_d quad$ or $quad R_"ex" thin I_d^2 quad$ or $quad display(U^2 / R_"ex")$],
    [$P_"out" = T_"out" thin omega$], [$p_"(mec+Fe)" approx T_"loss" thin omega$],
  )
]

]


#v(12pt)
  #rect(fill: luma(240),  height: 65%, width: 100%,stroke: (left: 0.25em))[ 
#set par(hanging-indent: 1cm)


#v(12pt) 
*II-d)*#h(0.5em) Developed torque characteristic curves, $T_d=f(I)$, with: $space display(cases(U = "constant", R_f = "constant"))$
#v(12pt)

#import "@preview/cetz:0.5.3"
#align(center)[
  #cetz.canvas({
    import cetz.draw: *
    let seta = (end: ">", fill: black, scale: 0.9)
    let curva(k, b, xmax, ..estilo) = line(
      ..range(0, 41).map(i => {
        let x = xmax * i / 40
        (x, k * x / (1 + b * x))
      }),
      ..estilo,
    )

    // Axes
    line((0, 0), (0, 5.5), mark: seta)
    line((0, 0), (7.3, 0), mark: seta)
    content((-0.4, 5), [$T_d$])
    content((6.5, -0.45), [$I approx I_a$])

    // Characteristic without ΔE (linear, dashed)
    line((0, 0), (6.05, 5.47), stroke: (dash: "dashed"))
    line((8, 1.65), (9, 1.65), stroke: (dash: "dashed"))
    content((10.2, 1.70), [without $Delta E$])

    // Characteristics with ΔE, for increasing values of R_c
    curva(0.9, 0.07, 6.0)
    line((8, 1), (9, 1), stroke: 0.85pt)
    content((9.94, 1.05), [with $Delta E$])
    content((8.74, 2.6), [Legend:])
    curva(0.7, 0.10, 6.0)
    curva(0.5, 0.12, 6.0)
    

    // Arrow for increasing R_c
    line((1.8, 2.7), (3.1, 0.5), mark: seta)
    content((1.9, 3.2), [$R_f arrow.tr$])

    // Vertical at I and operating points
    line((4, 0), (4, 4.3), stroke: (dash: "dotted"))
    content((4, -0.4), [$I$])
    for y in (3.63, 2.82, 2.00, 1.35) {
      circle((4, y), radius: 0.05, fill: black, stroke: none)
    }
  })
]

#v(12pt)
#h(1cm)Justification of the developed torque characteristics:

#h(1cm)$T_d = k thin phi.alt_0 thin I_a quad$ with $quad k thin phi.alt_0=$ constant $space==>space$ linear characteristic $("without" Delta E)$
#v(6pt)
#h(1cm)$T_d = k thin phi.alt thin I_a quad$ with $quad k thin phi.alt < k thin phi.alt_0$, decreasing as the current $I_a$ increases $==>$ non-linear characteristic $("with" Delta E)$
#v(12pt)
or: $quad display(T_d = E'_0 / omega thin I_a) quad ("without" Delta E) quad$ _vs._ $quad display(T_d = E' / omega thin I_a quad) ("with" Delta E), quad$ where: $space E' < E'_0$
#v(12pt)
Effect of increasing $R_f$ on the developed torque characteristics:

#h(1cm)$R_f arrow.tr.filled quad ==> quad I_d arrow.br.filled quad ==> quad phi.alt arrow.br.filled quad ==> quad T_d arrow.br.filled$



]


#v(42pt)





== Bibliography

\
#list(indent: 1cm,
  [[Guru & Hiziroğlu, 2003]: Bhag S. Guru, Hüseyin R. Hiziroğlu, Electric Machinery and Transformers, 3#super("rd") Ed., Oxford University Press, 2003.]
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
    #h(1fr) Three-Phase Synchronous Machines
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )
#counter(page).update(33)



 
= Three-Phase Synchronous Machines


== Exercise 1
#v(12pt) 
#h(1cm) 
A three-phase synchronous alternator, $390$~kVA, $1250$~V, $50$~Hz, $750$~rpm, delta-connected, gives the following results in the open-circuit (no-load) and short-circuit tests:

#v(6pt)
#align(center)[
  #table(columns: 8
  , column-gutter: 20pt,
stroke: none,
align: right,
[$I_f$ (A):], [$0.0$],[$11.5$], [$15.0$], [$20.0$], [$23.5$],  [$29.0$], [$33.5$], [$E_0$ (V):], [$91$],[$1010$], [$1235$], [$1460$], [$1560$], [$1640$], [$1660$], 
[$I_"sc"$ (A):], [$12$], [$144$], [$185$], [$242$], [$284$], [$347$], [$400$])
]

#v(6pt)
The resistance measured at the terminals of the armature winding is $0.144 space Omega$. Determine:
#v(12pt)

+ The per-phase resistance of the alternator armature winding, considering a skin-effect correction factor of $1.2$;

+ The line voltage, for rated current and an field current of $33.5$~A, considering a load power factor of $0.9$ lagging;

+ The external characteristic of the three-phase synchronous alternator, with a field current of $33.5$~A, for power factors of $0.9$ lagging, unity and $0.9$ leading;

+ The alternator field current required  to supply a three-phase induction motor at a voltage of $1$~kV, knowing that the motor develops a power of $150$~kW with a power factor of $0.832$ and an efficiency of $90thin%$.
#v(6pt)
#h(1.5cm) (*Note:* Assume that the synchronous impedance, $overline(Z)_s)$, is the same as that obtained in the previous part)

\
(Source: Adapted from problem 9 in [Malea & Balaguer, 2004])



#v(12pt)

#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
  *Worked solution to Exercise 1:* #h(5pt)\u{1F517} #show link: underline
  #link("https://ricardo-luis.github.io/me-2/StandAloneSynGen.html")[interactive _notebook_] developed with #h(2pt)#box(baseline: 22%, height: 12pt, image("/images/logos/pluto.svg", alt: "Pluto")) #h(1pt) -- #h(1pt)#box(baseline: 23%, height: 18pt, image("/images/logos/julia.svg", alt: "Julia")).
]


#pagebreak()
== Exercise 2
#v(12pt) 
#h(1cm) 
A four-pole, cylindrical-rotor, three-phase synchronous alternator, with its stator windings connected in delta, is used to supply an isolated electrical network with balanced loads. The alternator is equipped with operational speed and field-current regulators which maintain the frequency and voltage constant, respectively. Nameplate ratings: $72$~kVA, $400$~V, $50$~Hz, $cos phi=0.83thin("lead")$. The data from the no-load test, short-circuit test and resistance measurements are known:

#v(6pt)
#align(center)[
  #table(columns: 9
  , column-gutter: 16pt,
stroke: none,
align: right,
[$I_f$ (A):], [$0.0$],[$1.0$], [$2.0$], [$3.0$], [$4.0$],  [$5.0$], [$6.0$], [$quad R_"J-K"=1
00thin Omega$], [$E_0$ (V):], [$15$],[$202$], [$370$], [$460$], [$480$], [$491$], [$500$], [],
[$I_"sc"$ (A):], [$2$], [$27$], [$51$], [$76$], [$101$], [$125$], [$150$], [$quad R_"U-V"=0.6thin Omega$])
]

#v(6pt)


+ Draw and determine the parameters of the per-phase equivalent circuit of this machine for a field current of $5$~A;

+ Consider a synchronous reactance, $X_s=7.9thin Omega\/"phase"$. Determine the electromotive force and the load angle, $overline(E)_0=E_0 thin angle thin delta$, for the alternator operating under rated conditions;

+ Determine the efficiency and the mechanical torque under rated conditions, knowing that the rotational losses are $1015$~W;

+ Suppose that the field-current regulator has failed. Consequently, the field current remains constant at the value specified in part b). Qualitatively analyse what happens to the network voltage if the power factor, $cos phi$, decreases, assuming that the stator current, $I$, remains constant. Justify, presenting side-by-side phasor diagrams (for the initial condition and after the decrease in $cos phi$). For simplicity, take $R_s=0space Omega$.

#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Answers:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $E_0=491$~V; $quad overline(Z)_s=0.9+"j"thin 6.74space Omega$#h(2em)
    *b)*#h(0.5em) $​​460.4thin angle 66.9degree$~~V\ 
    *c)*#h(0.5em) $​​83.7 thin%$; $quad 448.8$~Nm 
    ]


== Exercise 3
#v(12pt) 
#h(1cm) 
A synchronous generator, Y-connected, $2300$~V, $1000$~kVA, $0.8$ lagging power factor, $60$~Hz, $2$ poles, has a synchronous reactance of $1.1space Omega$ and an armature resistance of $0.15space Omega$. At $60$~Hz, the friction and windage losses are $24$~kW and the core losses are $18$~kW.\
The field winding is supplied by a DC voltage of $200$~V, the maximum value of $I_f$ being $10$~A. The open-circuit test of this alternator is shown in the following figure:

#figure(image("/images/Open-circuit_Voltage_Alternator.png", width: 65%), )

+ What field current is required for the alternator to have a line-to-line voltage to be $2300$~V, when the alternator runs at no load?

+ What is the electromotive force (EMF) generated by this machine under rated operating conditions?

+ What field current is required to obtain the rated voltage when the alternator is operating under rated conditions?

+ What power and torque are required to drive this alternator under rated conditions?

+ Obtain the P$thin$--$thin$Q diagram of this alternator;

+ Under rated conditions, obtain the external characteristic, $U="f"(I)$, for: \ $cos phi=0.8$ lagging; $cos phi=0.8$ leading; $cos phi=1$.

+ For an EMF of $2500$~V, determine the external characteristic, $U="f"(I)$, for: \ $cos phi=0.8$ lagging; $cos phi=0.8$ leading; $cos phi=1$.

\
(Source: Adapted from problem 5.2 in [Chapman, 2005])

#v(12pt)

#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
  *Worked solution to Exercise 3:* #h(5pt)\u{1F517} #show link: underline
  #link("https://ricardo-luis.github.io/me-2/CurvesSynGen.html")[interactive _notebook_] developed with #h(2pt)#box(baseline: 22%, height: 12pt, image("/images/logos/pluto.svg", alt: "Pluto")) #h(1pt) -- #h(1pt)#box(baseline: 23%, height: 18pt, image("/images/logos/julia.svg", alt: "Julia")).
]

== Exercise 4
#v(12pt) 
#h(1cm) 
A $3~$ synchronous machine, $5$~kVA, $208$~V, $4$ poles, $60$~Hz, with Y-connected stator, has a negligible stator resistance and a synchronous reactance of $8Omega\/$phase.\
The machine is operated as an alternator connected to a $3~$, $208$~V -- $60$~Hz electrical grid.

+ Determine the EMF and the load angle when the machine delivers its rated power (kVA) at a power factor of $0.8$~lagging. Draw the voltage phasor diagram for these conditions;

+ Calculate the stator current, power factor and reactive power supplied by the machine if the field current increases by $20thin%$. Draw the corresponding voltage phasor diagram;

+  With the field current of part a), the mechanical power of the prime mover is gradually increased. What is the steady-state stability limit?\ What are the corresponding values of stator current, power factor and reactive power at the condition of maximum power transfer? Draw the phasor diagram.
\
(Source: Example 6.3 in [Sen, 1989])
#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Answers:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $​​206.8thin angle 25.4degree$~~V#h(2em)
    *b)*#h(0.5em) $​​17.8thin angle -51.6degree$~~A; #h(1em) $0.62("lag")$; #h(1em) $5.0$~kVAr\
    *c)*#h(0.5em) $​​29.9thin angle 30.1degree$~~A; #h(1em) $0.87space ("lead")$; #h(1em) $5.4$~~kVAr
    ]

== Exercise 5
#v(12pt) 
#h(1cm) 
Consider the Huntorf thermal power plant with compressed-air energy storage (CAES -- _Compressed-Air Energy Storage_), which uses a high-speed cylindrical-rotor synchronous machine that can operate as an alternator, a motor or a synchronous compensator.\ The plant is connected to the electrical grid at $15$~kV -- $50$~Hz and the synchronous machine has the following parameters: Y-connection, $X_s=0.34space Omega\/$phase, $R_a approx 0space Omega space $ and rotational losses, $space p_"rot"=3.2$~MW (assumed constant in all operating modes).\ 
#pagebreak()
*Plant Operating Modes*

The plant operates in three modes, enabled by two  Synchro-Self-Shifting (SSS) clutches, [SSS gears, 2025], which allow the turbine and the compressor to be coupled to or decoupled from the main shaft:
-   *Generation mode (alternator):* Compressed air is heated by burning natural gas and expanded through the turbine, which drives the alternator to generate electricity.
-   *Storage mode (motor):* The machine operates as a motor and drives the compressor to store high-pressure air in underground reservoirs (salt caverns).

-   *Synchronous compensator mode:* Both clutches are disengaged and the machine runs at no load, focusing on reactive power management to support the grid.

#let url-drawio = "https://app.diagrams.net/#Uhttps%3A%2F%2Fraw.githubusercontent.com%2FRicardo-Luis%2Fme-2-oer%2Fmain%2Fexercises%2Fdraw%2FCAES_plant_EN.drawio"

#figure(
  link(url-drawio)[
    #image("images/CAES_plant_EN.png", width: 80%,
      alt: "Huntorf CAES thermal power plant")
  ],
  numbering: none,
  caption:[
    #text(size: 1em)[Simplified operating diagram of the Huntorf CAES thermal power plant, Germany. Adapted from [EERA, 2013]]])



#v(6pt)
*Part 1: Alternator mode (power generation) -- Peak period*\
#h(1cm) (In this mode, the turbine clutch is engaged.) The mechanical power supplied by the turbine to the machine shaft is $321$~MW. The synchronous machine supplies power to the grid at a lagging power factor of $0.88$. Determine:
#v(6pt)
+  the active power supplied to the electrical grid and the line current;
+  the per phase electromotive force and the load angle;
+ Draw the voltage phasor diagram, indicating the powers on the $Q(delta), P(delta)$ and $P(phi), Q(phi)$ axes.
#v(6pt)
*Part 2: Synchronous motor mode (energy storage) -- Off-peak period*\
#h(1cm) (In this mode, the compressor clutch is engaged.) The mechanical power required to drive the compressor is $60$~MW. The machine draws power from the grid and is operated over-excited to inject reactive power into the grid, at a power factor of $0.70$. Determine:
#v(6pt)
+ the active power drawn from the electrical grid and the line current;
+ the perphase electromotive force and the load angle;
+ Draw the voltage phasor diagram, indicating the powers on the $Q(delta), P(delta)$ and $P(phi), Q(phi)$ axes.
#v(6pt)
*Part 3: Synchronous compensator mode -- Ancillary services*\
#h(1cm) (In this mode, both SSS clutches are  disengaged)
#v(6pt)
+  Starting from the generator mode, as defined in Part 1, describe the procedures required to operate the machine as a *synchronous reactor*;
+ Starting from the motor mode, as defined in Part 2, describe the procedures required to operate the machine as a *synchronous condenser*;
+  If the power station is configured to supply $72$~MVAr of inductive reactive power to the electrical grid, determine the required back electromotive force and load angle. Draw the corresponding voltage phasor diagram, indicating the powers on the $Q(delta), P(delta)$ and $P(phi), Q(phi)$ axes.

#v(12pt)
  #rect(fill: luma(240), width: 100%,height: 28%, stroke: (left: 0.25em))[
    *Worked solution (Part 1):* 
#set par(hanging-indent: 1cm)
    *a)*\
    As an alternator, since the stator Joule losses are neglected $(R approx 0)$, the active power supplied to the electrical grid, $P$, is given by:\
    #h(2em)$P=P_"turbine"-p_"rot"=321-3.2=317.8$~MW
    #v(6pt)
    In turn, considering the power factor, the line current, $I_L$, is obtained from:\
    #v(6pt)
    #h(2em)$I_L=display(P/(sqrt(3)thin U_L thin cos phi))=display((317.8 times 10^6) / (sqrt(3) times 15 times 10^3 times 0.88))=13.90$~kA
  ]


#v(12pt)
  #rect(fill: luma(240), width: 100%,height: 71%, stroke: (left: 0.25em))[  
#set par(hanging-indent: 1cm)
    \
    *b)*\
    With the stator windings star-connected, the following per-phase quantities apply:

    #h(2em)$overline(I)=I_L angle phi quad$ with: $quad phi=-arccos(0.88)= -28.4 degree quad$ and $quad overline(U)=display(U_L/sqrt(3)) angle 0 degree$

    #v(6pt)
    Thus, $overline(E)_0$ is given by:

    #h(2em)$overline(E)_0=E_0 angle delta=overline(U)+"j"X_s overline(I)=(display((15times 10^3) / sqrt(3)) angle 0 degree) + "j"thin 0.34 thin (13.90 times 10^3 angle -28.4 degree)$
    
    #h(3.1cm)$=11.67 thin angle 20.9 degree$~~kV
    
 \
    *c)*\


#import "@preview/cetz:0.5.3"
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
  content((Eph+4deg, 0.5*E), $overline(E)_0$)
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
    *Worked solution (Part 2):* 
#set par(hanging-indent: 1cm)
    *a)*\
    As a motor, since the stator Joule losses are neglected $(R approx 0)$, the active power drawn from the electrical grid, $P$, is given by:\
    #h(2em)$P=P_"compressor"+p_"rot"=60+3.2=63.2$~MW
    #v(6pt)
    In turn, considering the power factor, the line current, $I_L$, is obtained from:\
    #v(6pt)
    #h(2em)$I_L=display(P/(sqrt(3)thin U_L thin cos phi))=display((63.2 times 10^6) / (sqrt(3) times 15 times 10^3 times 0.70))=3475$~A
  ]

  #rect(fill: luma(240), width: 100%,height: 61%, stroke: (left: 0.25em))[
#set par(hanging-indent: 1cm)
    \
    *b)*\
    The overexcited motor, $(E'_0 cos delta >U)$, requires the current to be capacitive (leading), so:

    #h(2em)$phi=arccos(0.70)= 45.6 degree quad$

    #v(6pt)
    Thus, $overline(E)'_0$ is given by:
    
    #h(2em)$overline(E)'_0=E'_0 angle delta=overline(U)-"j"X_s overline(I)=(display((15times 10^3) / sqrt(3)) angle 0 degree) - "j"thin 0.34 thin (3475 thin angle 45.6 degree)$
    
    #h(3.1cm)$=9.54 thin angle -5.0 degree$~~kV


     \
    *c)*\


#import "@preview/cetz:0.5.3"
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
    *Worked solution (Part 3):* 
#set par(hanging-indent: 1cm)
    *a)*\
    Starting from operation as an overexcited alternator (Part 1), the machine must be made to "float" on the electric grid, i.e. making: $quad P->0 quad$ and $quad Q->0$.\ To do so, the mechanical power of the turbine must be reduced, by reducing the mechanical torque supplied by the turbine to the alternator. As a result:\

    #h(2em)$P_"turbine" arrow.br.filled quad => quad delta arrow.br.filled quad => quad P arrow.br.filled space "and" space Q \u{2B08} ("slightly"); quad "until" quad P=0$

    Simultaneously, the field current of the alternator must be adjusted to reduce the reactive power until it is zero:

    #h(2em)$I_"exc" arrow.br.filled  quad => quad Q arrow.br.filled quad "until" quad Q=0$
    #v(6pt)
    As soon as there is no power flow between the synchronous machine and the electrical grid, the turbine-alternator clutch is automatically opened (or decoupled).

  ]
  
#rect(fill: luma(240), width: 100%,height: 99%, stroke: (left: 0.25em))[
   
#set par(hanging-indent: 1cm)

\
    Since the synchronous machine remains electrically connected to the grid, it now behaves as a synchronous motor at no load (synchronous compensator).
    In this mode it draws a low current, essentially to supply its rotational losses, $P=P_"rot"$.

    As a synchronous compensator, to act in synchronous reactor mode, it must absorb an inductive (lagging) current. To do so, the synchronous machine must be under-excited, reducing the field current until the desired reactive power value is obtained.

    Thus, the synchronous compensator will draw inductive current, which means that it will be producing capacitive reactive power for the electrical grid.
    
    \
    *b)*\
    Starting from operation as an over-excited motor (Part 2), it is enough to reduce the mechanical torque that the compressor exerts on the shaft of the synchronous machine until it is zero, leaving the motor at no load (synchronous compensator). Thus:\

    #h(2em)$P_"compressor" arrow.br.filled quad => quad |delta| arrow.br.filled quad => quad |P| arrow.br.filled space "and" space Q\u{2B08} ("slightly"); quad "until" quad P=0$

    As soon as there is no mechanical power transmission (zero mechanical torque) from the synchronous motor to the compressor, the compressor-motor clutch is automatically opened (or decoupled).
    
    For operation as a synchronous condenser, the synchronous compensator must be over-excited (as it already was in Part 2), to draw capacitive current. Thus, it is only necessary to readjust the excitation current to the required reactive power value. 
    
    Consequently, and as an example, increasing the excitation current increases the capacitive current drawn by the machine, which allows it to produce more inductive reactive power for the electrical grid: 
    
    #h(2em)$I_"exc"  \u{2B08}quad => quad E'_0\u{2B08} quad => I ("cap") \u{2B08} quad => Q  \u{2B08}$
    #v(6pt)


     \
    *c)*\
    For the synchronous compensator to produce $72$~MVAr of inductive reactive power for the grid, it must draw capacitive current, acting as a capacitor bank (synchronous condenser mode). Thus, the apparent power required for the synchronous condenser to operate is given by:

    #h(2em)$overline(S)=p_"rot"- "j"thin Q=3.2 - "j"thin 72$~~MVA

    Since: $quad overline(S)=3 thin overline(U) thin overline(I)^* quad$ with: $quad U, I quad$ the voltage and current per phase. Thus:
  ]

#rect(fill: luma(240), width: 100%,height: 47%, stroke: (left: 0.25em))[
#set par(hanging-indent: 1cm)
    \
    #h(2em)$overline(I)=(display(overline(S) / (3 thin overline(U))))^*=(display((p_"rot" - "j"thin Q) / (3 thin U angle 0 degree)))^* =(display(((3.2-"j"thin 72)times 10^6) / (3 thin display(15 times 10^3)/ display(sqrt(3)) angle 0 degree)))^*=2774 thin angle 87.5 degree$~~A

    #v(6pt)
    Thus, $overline(E)'_0$ is given by:
    
    #h(2em)$overline(E)'_0=E'_0 angle delta=overline(U)-"j"X_s overline(I)=(display((15times 10^3) / sqrt(3)) angle 0 degree) - "j"thin 0.34 thin (2774 thin angle 87.5 degree)$
    
    #h(3.1cm)$=9.6 thin angle -0.25 degree$~~kV
    
    #v(6pt)
    #underline[Phasor diagram]:
    
#import "@preview/cetz:0.5.3"
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
  
    

== Exercise 6
#v(12pt) 
#h(1cm) 
The synchronous machine of *Exercise 4* is now used as a synchronous motor supplied from a $3~$, $208$~V -- $60$~Hz network. The field current is adjusted to obtain unity power factor when the machine draws $3$~kW from the grid.

+ Determine the back electromotive force (back EMF) and the load angle. Draw the voltage phasor diagram under these conditions;

+ Determine the maximum torque the motor can develop if the field current is kept constant and the load applied to the shaft is gradually increased.

\
(Source: Example 6.4 in [Sen, 1989])
#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Answers:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $​​137.3 thin angle -29.0degree$~~V#h(2em)
    *b)*#h(0.5em) $​​32.8$~Nm    
    ]



\
== Exercise 7
#v(12pt) 
#h(1cm) 
Consider a synchronous alternator with $X_s=4space Omega$ and $R approx 0space Omega$, operating on an infinite-power bus: $U=200space"V/phase"$ and $f=50space"Hz"
$.

+ Draw the phasor diagrams corresponding to the combinations of the following active and reactive powers: #align(center)[
  #table(columns: 6, align: center, column-gutter: 20pt, stroke: none,
[$0$], [$5$], [$10$], [$15$], [$20$], [kW, kVAr]
)]

+ Plot the V-curves, also known as Mordey curves, for the required power levels.
#v(12pt)

#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
  *Worked solution to Exercise 7:* #h(5pt)\u{1F517} #show link: underline
  #link("https://ricardo-luis.github.io/me-2/Vcurves.html")[interactive _notebook_] developed with #h(2pt)#box(baseline: 22%, height: 12pt, image("/images/logos/pluto.svg", alt: "Pluto")) #h(1pt) -- #h(1pt)#box(baseline: 23%, height: 18pt, image("/images/logos/julia.svg", alt: "Julia")).
]

== Exercise 8
#v(12pt) 
#h(1cm) 
Consider a cylindrical-rotor synchronous machine, $2$ poles, $20$~MVA, $6$~kV$-50$~Hz, #box($cos phi = 0.8$)~ (lagging), Y-connected stator windings of negligible resistance and $X_s=1.1$~pu. The synchronous machine is connected to a $6$~kV$-50$~Hz electrical grid and has the operating map represented by the V-curves in the following figure: 

#figure(image("/images/curvas v_pu.png", width: 65%),)

Determine in per-unit (pu) values:

+ the active and apparent power at operating point $4$ and the corresponding load angle;

+ Which points form an optimum-excitation line? Justify;

+ at points $1$ and $3$, the active and reactive powers and the load angles, as an alternator. Present side by side the voltage phasor diagrams of points $1$ and $3$, indicating the respective powers;

+ the rotational losses of the machine. Justify.

+ the mechanical torque corresponding to point $8$, operating as a synchronous motor. Present the corresponding voltage phasor diagram;

+ Select, with justification, the point corresponding to synchronous condenser operation and draw its voltage phasor diagram.

#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Answers:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $Q_4=0$~pu; #h(0.5em) $​​P_4=plus.minus 0.6$~pu; #h(0.5em) $delta_4=plus.minus 33.4degree$#h(2em) 
    *b)*#h(0.5em) optimum excitation: $6-​​8 - 2 - 4$ #h(2em)\
    *c)*#h(0.5em) $P_1=P_3=0.25$~pu; #h(1em) $delta_1=21.5degree$; #h(0.5em)  $delta_3=10.6degree$; #h(1em) $Q_1=0.27$~pu (leading); #h(0.5em)\ #h(1.5em)$Q_3=0.43$~pu (lagging) #h(2em)\
    *d)*#h(0.5em) $p_"rot"=0.05$~pu #h(2em) 
    *e)*#h(0.5em) $T_"mec"=0.2$~pu #h(2em) 
    *f)*#h(0.5em) synchronous condenser: $7$
    ]


    == Exercise 9
#v(12pt) 
#h(1cm) 
A three-phase synchronous machine, $5$~MVA, $11$~kV, with Y-connected stator windings, has a synchronous reactance of $10space Omega\/$phase and a negligible armature resistance. The machine is connected to an $11$~kV$-60$~Hz busbar and operates as a synchronous compensator. Neglect the mechanical losses.

+ Determine the stator current at the optimum-excitation point. Draw the phasor diagram;

+ Determine the stator current and the power factor if the field current is increased by $50thin%$. Draw the phasor diagram;

+ Likewise, for a decrease of $50thin%$. Draw the phasor diagram.

\
(Source: Example 6.6 in [Sen, 1989])
#v(12pt)
  #rect(fill: luma(240), width: 100%,height: 100%, stroke: (left: 0.25em))[
    *Worked solution:* 
#set par(hanging-indent: 1cm)
    *a)* 
    
    With no losses to consider and since this is a synchronous compensator $(P=0)$, the current will be zero at the optimum excitation point $(Q=0, space "or" space cos phi=1)$, hence $I=0$~A.

    #v(6pt)
#h(1cm)    #underline[Phasor diagram]:
    
    
#import "@preview/cetz:0.5.3"
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
    
    Assuming a linear magnetic circuit (the magnetisation characteristic being unknown), a $50thin%$ increase in the excitation current produces the same increase in the electromotive force, $overline(E)_0$. Thus, starting from the previous situation, $(overline(E)_0^'=overline(U))$, we have:

    #h(2em) $E_0^'=1.5thin U$

    As a synchronous compensator, neglecting losses, the load angle is zero, $delta=0degree.$


#v(6pt)
#h(1cm)#underline[Phasor diagram]:

#import "@preview/cetz:0.5.3"
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
    
    Using similar reasoning to the previous part, we have:       $quad E_0^'=0.5thin U quad$ and $quad delta=0degree.$

    \
    #underline[Phasor diagram]:
#import "@preview/cetz:0.5.3"
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


== Exercise 10
#v(12pt) 
#h(1cm) 
Consider a three-phase synchronous alternator, $20$~MVA, $11$~kV, with star-connected stator windings of negligible resistance. The synchronous alternator has the following magnetisation characteristic at rated speed:

#align(center)[
  #table(columns: 11, column-gutter: 4pt,
stroke: none,
align: right,
[$I_f$ (A)], [$60$], [$80$], [$100$], [$120$],  [$140$], [$160$], [$180$], [$200$], [$220$], [$240$], 
[$E_0$ (V)], [$7 772$], [$8 827$], [$9 611$], [$10 214$], [$10 694$], [$11 085$], [$11 409$], [$11 683$], [$11 917$], [$12 119$])
]

The alternator is connected to an $11$~kV infinite-power busbar, supplying a power of $20$~MW at unity power factor. For an field current of $200$~A, determine:\

#set par(hanging-indent: -3.5em) // Define o recuo deslocado

+ The synchronous reactance of the alternator;\
  \
  Consider a second three-phase synchronous alternator, with identical rated characteristics, connected in parallel with the first alternator to the $11$ kV infinite-power busbar and carrying the same field current. If the two alternators together supply a power of $36$~MW, shared equally between them, at a power factor of $0.9$~lagging, calculate:

+ The induced EMF in each three-phase synchronous alternator and the total current supplied to the electrical grid;\ 
  \
  If the per phase EMF of one of the alternators operating in parallel is reduced by $10thin%$, while the mechanical torque applied by the turbine to each alternator and the overall power factor are kept constant, determine:

+ The induced EMF in the other three-phase synchronous alternator required to meet the stated operating conditions;

+ The currents supplied to the grid and the power factor of each alternator.

#set par(hanging-indent: 0em) // 
\
(Source: Adapted from problem 10 in [Malea & Balaguer, 2004])

#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Answers:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $2.16space Omega$; #h(2em)
    *b)*#h(0.5em) $7618 thin angle 15.5 degree$~~V;#h(0.5em)$2099 thin angle -25.8degree$~~A;#h(2em)
    *c)*#h(0.5em) $8385 thin angle 14.1 degree$~~V#h(2em)\
    *d)*#h(0.5em) $949$~A; #h(0.5em)$0.996space("lag")$; #h(1em)$1254$~A;#h(0.5em)$0.753space("lag")$
    ]



== Exercise 11
#v(12pt) 
#h(1cm)
A salient-pole synchronous alternator, $12$~MVA, delta-connected, $eta=91%$, is part of a cogeneration process at a pulp and paper mill and is connected to an $13.8$~kV$-50$~Hz infinite-power busbar. The following parameters are known: $X_d=34Omega\/$phase; $X_q=16space Omega\/$phase and $R approx 0 space Omega$.

+ Qualitatively draw the voltage phasor diagram at full load and $cos phi = 0.81$ (leading), showing how the direct and quadrature axes are determined and the corresponding current components along these axes;

+ Determine the electromotive force phasor under these operating conditions;

+ Keeping the excitation current constant, determine the static stability limit of this alternator and the corresponding developed power;

+ Qualitatively:
    - How to proceed to set this synchronous machine to operate as a synchronous condenser in this installation, starting from the operating point described;
    - Present the phasor diagram of the new operating point of the synchronous machine.

 
    
#v(12pt)
  #rect(fill: luma(240), width: 100%, height: 99%, stroke: (left: 0.25em))[
    *Worked solution:* 
#set par(hanging-indent: 1cm)


*a)*

#import "@preview/cetz:0.5.3"
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

Voltage and current phasors per phase (equivalent circuit), $overline(U)_f$ and $overline(I)_f$:
#v(6pt)
#h(2em) $​​I_n=display(S_n /(sqrt(3) U_n)) = display((12 times 10^6) /(sqrt(3) dot 13.8 times 10^3)) = 502$~A
#h(2em) phase angle: $phi=arccos(0.81)=35.9degree$
#v(10pt)
#h(4em) Stator in $Delta$:#h(1em) $U_f=U_n$ ; #h(1em)  $I_f=display(I_n/sqrt(3))$ #h(1cm) 
#v(10pt)
#h(4em) Phasors:#h(1em)  
$overline(U)_"f"=13.8 angle 0 degree$ kV#h(2em)  $overline(I)_"f"=display(502/sqrt(3)) thin angle 35.9 degree$~~A 
#v(12pt)
Effective EMF phasor, $overline(E)$:\
#h(2em) $overline(E)=overline(U)_f + j X_q  overline(I)_f = (13.8 times 10^3 angle 0 degree)+j 16 (display(502/sqrt(3)) angle 35.9 degree)= 11.7 thin angle 18.7 degree$~~kV
#v(12pt)
Current phasor along the direct axis, $overline(I)_d$:\
#v(6pt)
#h(2em) $overline(I)_d = I sin(phi-delta) angle (delta+90degree) = display(502/sqrt(3))sin(35.9degree- 18.7degree) thin angle (18.7degree + 90 degree)$\ 
#h(2em) $overline(I)_d = 85.7 angle 108.7 degree$~~A

#v(12pt)
EMF phasor, $overline(E)_0$:\
#h(2em) $overline(E)_0=overline(E) + j (X_d-X_q)  overline(I)_d = (11.7 times 10^3 angle 18.7 degree)+j (34-16) (85.7 thin angle 108.7 degree)$\
#h(2em) $overline(E)_0 = 10.16 thin angle 18.7 degree$~~kV

]

#rect(fill: luma(240), width: 100%, height: 100%, stroke: (left: 0.25em))[
#set par(hanging-indent: 1cm)
\
*c)*#h(0.5em) \
$"Static stability limit: " arrow.r.double display((upright(d)P_d)/(upright(d)delta)) &= 0 arrow.l.r.double \
display((3 thin U E_0)/X_d)cos delta_"lim" + display((3 thin U^2 (X_d-X_q))/(X_d X_q)) cos (2 delta_"lim") &= 0 arrow.l.r.double\
display((3 dot 13.8 times 10^3 dot 10.16 times 10^3)/34)cos delta_"lim" + display((3 thin  (13.8 times 10^3)^2 (34-16))/(34 dot 16)) cos (2 delta_"lim") &= 0 arrow.r.double\
delta_"lim" &= 55.8 degree$

With: $I_"exc"="constant" arrow.r.double E_0="constant"$

#v(12pt)
Substituting into $P_d (delta)$ with $delta=delta_"lim"$:
#v(12pt)
$P_d^"max" &= display((3 U E_0)/X_d) sin delta_"lim" + display((3U^2(X_d-X_q))/(2 X_d X_q)) sin (2 delta_"lim") \
&= display((3 dot 13.8 times 10^3 dot 10.16 times 10^3)/34) sin (55.8degree) + display((3 thin  (13.8 times 10^3)^2 (34-16))/(2 dot 34 dot 16)) sin (2 dot 55.8degree) \
&approx 19space"MW"$


\
*d)*#h(0.5em)Procedure for operating as a synchronous condenser:

#h(2.5em)1st : $(T_"mec" arrow.br.filled$ #h(0.5em)until#h(0.5em) $delta=0)$#h(0.5em)and#h(0.5em)$(I_"exc" arrow.tr.filled$#h(0.5em)until#h(0.5em) $overline(E)_0=overline(U))$ $arrow.r.double$  machine "floating" on the network, i.e. $(Q=0, P=0)$

#h(2.5em)2nd : Decouple the turbine from the alternator $arrow.r.double$ synchronous motor at no load

#h(2.5em)3rd : $(I_"exc" arrow.tr.filled$#h(0.5em)until#h(0.5em) $Q "desired")$, overexcited mode $arrow.r.double$ synchronous condenser 

\
Voltage phasor diagram of the salient-pole synchronous condenser:

\
#import "@preview/cetz:0.5.3"
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

    

== Exercise 12
#v(12pt) 
#h(1cm) 
A three-phase synchronous motor with four salient poles and a star-connected stator is operating on a $208$~V infinite bus, at $cos phi = 0.8thin ("lagging")$, drawing $40$~A.\

It is known that: $f=50$~Hz; $X_d=2.7space Omega\/$phase; $X_q=1.7space Omega\/$phase; $R=0space Omega$.

+  Qualitatively draw the corresponding voltage phasor diagram, showing how the direct and quadrature axes are determined and the current components along these axes;

+ Determine the back electromotive force phasor, $overline(E)_0^'$, under the stated operating conditions;

+ Calculate the maximum torque developed by this machine;

+ Qualitatively draw the developed-torque characteristic of this motor.

#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Answers:* 
#set par(hanging-indent: 1cm)
    *b)*#h(0.5em) $94.5 thin angle -34.5 degree$~~V;#h(2em)
    *c)*#h(0.5em) $95.8$~Nm
    ]


== Exercise 13
#v(12pt) 
#h(1cm) 
A $3~$ salient-pole synchronous machine, $50$~MVA, $11$~kV$-60$~Hz, with Y-connected stator windings, has reactances: $X_d=0.8$~pu and $X_q=0.4$~pu. The machine operates as a synchronous motor at full load with a power factor of $0.8$ lagging. The mechanical losses are $0.15$~pu.\
Neglect the armature Joule losses.

+ Determine $X_d$ and $X_q$ in $Omega$;

+ Determine the EMF in pu;

+ Determine the powers developed (in pu) due to the excitation EMF and due to the reluctance effect of the rotor;

+ If the field current is reduced to zero, does the machine remain in synchronism? Justify;

+ If the shaft load is removed and the field current is reduced to zero, determine the value of the stator current (in pu) and the power factor. Draw the machine voltage phasor diagram for this operating condition.

#v(12pt)

#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
  *Worked solution to Exercise 13:* #h(5pt)\u{1F517} #show link: underline
  #link("https://ricardo-luis.github.io/me-2/SalientPoleSyncMotor.html")[interactive _notebook_] developed with #h(2pt)#box(baseline: 22%, height: 12pt, image("/images/logos/pluto.svg", alt: "Pluto")) #h(1pt) -- #h(1pt)#box(baseline: 23%, height: 18pt, image("/images/logos/julia.svg", alt: "Julia")).
]





== Bibliography
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
    #h(1fr) Electrical Machine Transients
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )
#counter(page).update(53)


= Electrical Machine Transients



== Exercise 1
#v(12pt) 
#h(1cm) Analyse separately the following two three-phase synchronous alternators, each star-connected to an infinite bus of $6$~kV --~$50$~Hz.
Each alternator initially supplies $1 "MW"$ at $cos phi = 1$.

#align(center)[
  #table(columns: 3, column-gutter: 12pt, row-gutter: 8pt,
stroke: none,
align: (right, center, center),
[], [*Alternator 1*], [*Alternator 2*], 
[Synchronous machine:], [cylindrical rotor],  [salient poles], [Rated power:], [$5$~MVA], [$5$~MVA], 
[Reactances/phase:], [$X_s=12.75thin Omega$], [$X_d=12.75thin Omega$; $X_q=display(X_d/2)$ ], 
[Losses:], [negligible], [negligible],
[EMF/phase:], [$E_0=3.675$~kV], [$E_0=3.675$~kV],)
]

#v(6pt)
#h(1cm)Suppose that a fault occurs in the turbine governor, causing the mechanical power, $P_"mec"$, to increase suddenly from $1$~MW to a new constant value, $P_"mec" > 1$~MW.
The infinite bus keeps the frequency and the voltage constant, absorbing the excess active power and any variation in reactive power.

Using the equal-area criterion, determine the maximum permissible disturbance for each alternator while keeping the synchronous machine stable. Discuss the differences between the alternators.

#v(12pt)

#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
  *Worked solution to Exercise 1:* #h(5pt)\u{1F517} #show link: underline
  #link("https://ricardo-luis.github.io/me-2/EqualArea.html")[interactive _notebook_] developed with #h(2pt)#box(baseline: 22%, height: 12pt, image("/images/logos/pluto.svg", alt: "Pluto")) #h(1pt) -- #h(1pt)#box(baseline: 23%, height: 18pt, image("/images/logos/julia.svg", alt: "Julia")).
]



== Exercise 2

#h(1cm)A three-phase cylindrical-rotor synchronous motor, $800$~kW, $X_s=1.2$~pu, connected to an infinite-power electrical grid at $6.6$~kV~--~$50$~Hz, drives the main line of a polypropylene film extruder.

In steady state, the motor draws a power of $560$~kW at unity power factor $(Q approx 0)$. Neglect Joule and rotational losses.

Suddenly the film tears in the stretching oven, causing the mechanical load on the motor shaft to drop instantaneously from $560$~kW to $0$~kW (the motor is left at no load).

Assuming that the field current remains constant, determine:

+ the initial load angle, $delta_0$;

+ the maximum angle reached by the rotor during the transient, $delta_"máx"$;

+ Justify whether the motor remains in synchronism or loses it, using the equal-area criterion.
*Note:* It is not necessary to calculate the areas numerically. Obtain the answer by simple inspection of the accelerating and decelerating areas, without any integration (use only the physical interpretation).


#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Answers:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $-40.0 degree quad$;#h(2em)
    *b)*#h(0.5em) $40.0 degree$
    ]




== Exercise 3
#v(12pt) 
#h(1cm) Consider a separately excited DC motor on which two tests were carried out:

 #list(indent: 2cm,
    [No-load test to separate the mechanical and magnetic losses;],[Deceleration (run-down) test to determine the mechanical parameters.]
  )

#v(12pt)
*No-load test*  (armature voltage and current at constant speed = $1500$~rpm)

#align(center)[
  #table(columns: 15, column-gutter: 6pt,
stroke: none,
align: right,
[(V)], [$220$], [$210$], [200], [$190$], [$180$],  [$170$], [$160$], [$151$], [$140$], [$130$], [$121$], [$110$], [100], [$91$],
[(mA)], [$2720$], [$2730$], [$2740$], [$2780$], [$2816$], [$2870$], [$3036$], [$3080$], [$3180$], [$3353$], [$3492$], [$3730$], [$4010$], [$4335$])
]

#v(12pt)
*Deceleration test* (vertical scale: $1500$~rpm <> $5.8$~div):

#figure(image("/images/DesaccTest.png", width: 83%), )

\
+ Determine the mechanical losses of this motor, given that the armature resistance is $R_a=0.834 thin Omega$;
+ Determine the mechanical parameters of this motor (moment of inertia, viscous and static friction coefficients).

#v(12pt)

#rect(fill: luma(240), width: 100%, stroke: (left: 0.25em))[
  #set par(hanging-indent: 0cm)
  *Worked solution to Exercise 3:* #h(5pt)\u{1F517} #show link: underline
  #link("https://ricardo-luis.github.io/me-2/DecelerationTest.html")[interactive _notebook_] developed with #h(2pt)#box(baseline: 22%, height: 12pt, image("/images/logos/pluto.svg", alt: "Pluto")) #h(1pt) -- #h(1pt)#box(baseline: 23%, height: 18pt, image("/images/logos/julia.svg", alt: "Julia")).
]


== Exercise 4
#v(12pt) 
#h(1cm) Consider two DC machines connected according to the electrical diagram in the following figure:

#v(6pt)
#figure(image("/images/motor-generator_DCgroup.png", width: 100%))

#v(6pt)
The shunt-excited generator, *G*, supplies the load resistance, *Ru*, and is driven at $1250$~rpm by a separately excited motor, *M*, which has the following magnetisation characteristic:

#align(center)[
  #table(columns: 10, column-gutter: 12pt,
stroke: none,
align: right,
[$i$ (A)], [$0$], [$0.2$], [$0.4$], [$0.6$],  [$0.8$], [$1.0$], [$1.2$], [1.4], table.cell(colspan: 1, [$n_("mag")=1000$~rpm]), 
[$E$ (V)], [$15$], [$75$], [$130$], [$170$], [$200$], [$220$], [$235$], [250])
]

#v(6pt)
+ Write down the equations modelling the dynamic operation of the DC motor;

+ Consider the motor supplied at a voltage of $295$~V and a current of $50$~A. Assuming that the flux is constant, calculate the load torque applied to the motor under these conditions, given that the system (motor + load) has the following mechanical parameters:#table(columns: 3, column-gutter: 50pt,
stroke: none,
align: right,
[$J=0.4$~kgm#super([2])], [$K_d=0.07$~Nm/rad.s#super([-1])], [$K_e=3.5$~Nm])

+ Suppose that the motor is operating under the following conditions: #table(columns:3, align: center,stroke: none, column-gutter: 50pt, [$T_d=100$~Nm], [$T_l=80$~Nm], [$n=2250$~rpm])

#v(12pt)

 #pad(x: 1.4cm)[
  #table(columns:2,align:right, row-gutter: 2pt, stroke: none, table.cell(colspan: 1, [Determine the value of $space display(("d" omega)/("d" t))space$ when:]),[1$)space ->$ switch 1 is opened;], [], [2$) space ->$  switch 2 is opened.])]

#v(12pt)
  #rect(fill: luma(240), width: 100%,stroke: (left: 0.25em))[
    *Answers:* 
#set par(hanging-indent: 1cm)
    *b)*#h(0.5em) $​92.3$~Nm;#h(2em)
    *c-1)*#h(0.5em) $-250$~rads#super([-2]) ; #h(2em) *c-2)*#h(0.5em) $200$~rads#super([-2])
    ]






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
            OER/REA | CC BY-SA 4.0
          ]
          
          #v(0.1cm)
          #h(-20pt)
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