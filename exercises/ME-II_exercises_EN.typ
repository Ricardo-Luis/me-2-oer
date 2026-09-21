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
#text(10pt)[September #ano]

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
This document presents exercises of a more conceptual nature alongside industrial application problems, allowing students to progress from fundamental concepts to practical situations encountered in industry. Each exercise or problem is numbered sequentially (Exercise 1, Exercise 2, ...), with its scope made clear by the context and problem statement itself.

The odd-numbered exercises are fully worked through, while the even-numbered exercises are proposed as work items, with only the solutions given. The latter are primarily intended to be solved during theoretical-practical classes, adopting Problem-Based Learning as the teaching and learning methodology. In this way, discussion and critical analysis of the topics are encouraged, fostering the development of analytical thinking and problem-solving skills.

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
    *Answers:* 
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
    *Answers:* 
#set par(hanging-indent: 1cm)
    *a)*#h(0.5em) $N_"EC"=14$ turns; #h(2em) $N_"PA"=6$ turns\
    *b)*#h(0.5em) $N_"EC"=28$ turns; #h(2em) $N_"PA"=12$ turns\
  ]


  
