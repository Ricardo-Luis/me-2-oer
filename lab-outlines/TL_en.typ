#let author = "Ricardo Luís"
#let institution = "ISEL"
#let year = "2026"
#let title = "Laboratory Work Outlines"
#let subtitle = "Electric Machinery II"
#let github_user = "Ricardo-Luis"
#let github_repo = "me-2-oer"
#let github_subpath = "/tree/main/lab-outlines"
#let github_raw_subpath = "/raw/main/lab-outlines"
#let github_pdf_file = "ME-II_Lab_Outlines_en.pdf"
#let github_url = "https://github.com/" + github_user + "/" + github_repo + github_subpath
#let github_download = "https://github.com/" + github_user + "/" + github_repo + github_raw_subpath + "/" + github_pdf_file


#set page(paper: "a4",
          margin: (top: 3cm, bottom: 2cm, left:2.5cm, right: 2.5cm),
          //numbering: "i/i",
          //number-align: (odd: right, //even: left)
          number-align: center
        )

#set text(lang: "en", region: "gb" )

#set align(center) 
#image("/images/logos/ISEL-logo-bk.png", height: 2.9cm) 

#set align(center) 
#text(14pt, font: "Chakra Petch")[BSc in Electrical Engineering]


#set align(center) 
#text(18pt, font: "Source Code Pro", baseline: 4cm)[#subtitle]

#set align(center + horizon) 
#text(20pt, font: "Cantarell")[*#title*]



#set align(center + bottom) 
#text(10pt)[September #year]



#pagebreak(to: "odd")


// Edition:


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
// TITLE PAGE
// ============================================================================

#page[
  #set align(center)
  #v(2cm)
  
// Main title
 #text(size: 18pt, weight: "bold")[
    #title
  ]
  
 #if subtitle != "" [
    #v(0.25cm)
    #text(size: 18pt)[
      #subtitle
    ]
 ]
  
 #v(0.5cm)
  
// OER information
 #set align(center)
 #set text(size: 11pt)

 *OPEN EDUCATIONAL RESOURCE (OER)*\
 *RECURSO EDUCACIONAL ABERTO (REA)*
 
  
 #v(0.5cm)

#set align(left)
*Licence:* CC BY-SA 4.0 International\
  #link("https://creativecommons.org/licenses/by-sa/4.0/")
  
 #v(0.25cm)


*Author:* #author\ 
*Institution:* #institution\
*Year:* #year
  
#v(0.25cm)


*GitHub repository:* #link(github_url)
  
*Editor: * #link("https://typst.app")[Typst] (source .typ files available in the repository)
  
  #v(0.75cm)

// AI tools section
  #set text(size: 11pt)
  
*AI Use Declaration* \

The author declares that specific tasks in the writing process were delegated to generative artificial intelligence tools, under strict human supervision, as set out below:

#h(0.5cm) • *Literature Review:* The task of _literature research and systematisation_ was delegated for the initial mapping and survey of bibliographic sources.

#h(0.5cm) • *Data Management:* The task of _data curation and organisation_ was delegated for the synthesis, summary and structuring of content, with the analysis strictly limited to the documents provided.

#h(0.5cm) • *Writing and Editing:* The task of _text review and editing_ was delegated to improve textual fluency, grammatical correctness and the stylistic quality of the manuscript.

#h(0.5cm) • *Translation:* The task of translation from European Portuguese (PT-PT) into British English (EN-GB) was delegated to produce an English version of the manuscript, while preserving its structure and content. The translated text was subsequently reviewed by the author to verify its linguistic accuracy, terminology and contextual appropriateness.

#v(0.15cm)
*Responsibility Statement:* The author assumes full editorial and scientific responsibility for the content presented.
#v(0.75cm)


// Citation section
  #set text(size: 12pt)
  
*How to cite this document:*

#raw(author + ", \"" + title + "\", " +  subtitle + ", open educational resource, " + institution + ", " + year + ". [Online].\nAvailable: " + github_url)

]

//
#pagebreak(to: "odd")

// ==============================================================


//Preface:

#set page(
   header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) TL Outlines
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
#heading(outlined: false, bookmarked: true)[Preface]

#set par(spacing: 14pt)
#set text(12pt, font: "Liberation Serif" )
#set par(first-line-indent: (
  amount : 1.0cm,
  all: true),
  leading: 12pt,
  justify: true
  )
 #v(18pt)
This document aims to guide the work groups in the practical classes of Electric Machinery II, providing guidance for preparing the experiments to be carried out in the Electrical Machines Laboratory (LME) and for preparing the corresponding technical reports.

The LME is intended to provide an environment for collaborative experimentation and reflective practice. Accordingly, the practical classes are structured to guide students in teamwork during experimental work, supported by technical competences in testing and safety procedures. Systematic observation and structured reflection on the results obtained are encouraged, leading students to analyse the data collected, draw on theoretical knowledge, decide on procedural adjustments, and implement the necessary modifications.
  
To this end, after the work groups have been formed at the beginning of the semester, the document "_Planeamento das Aulas Práticas, Opções de Entrega de Relatórios e Calendário Semanal_" should be consulted. It includes:
#set list(indent: 2cm)
- Laboratory Work Plan;
- Prerequisites and Preparation for Practical Classes;
- Report Submission via Moodle;
- Guidance on Report Submission Formats;
- Weekly Schedule of Practical Classes.
  #v(6pt)
  
Each Laboratory Work (TL) outline is structured as follows:
  - Learning objectives;
- Introduction to the TL;
- Sequence of experiments; 
- Considerations for observing and analysing results. 
#v(6pt)

This structure is intended to provide students with a clear understanding of the expectations and procedures for each TL, facilitating efficient learning and a productive laboratory experience. 
In addition, this document includes an appendix on the preparation of laboratory reports.
  
  
//In addition, this document includes two supporting appendices: one on technical safety aspects and another on the preparation of laboratory reports.

  \
  
  Lisbon, September 2026
#set align(right);
Ricardo Luís

#pagebreak()




//Blank page:
#set page(
  header: context [],
  footer: context []
)
#v(100%)    //expedient way of placing a blank page without numbering
//Blank page|






// Or in a box with controlled width
//#align(right + horizon)
#set quote(block: true)
#show quote: set align(right + horizon)
//#show quote: set pad(x: 2.9cm)

#quote(attribution: [*Herbert Simon* (1916-2001)])[
_Learning results from what the student does\ and thinks, and only from what the student does and thinks.\ The teacher can advance learning only\ by influencing what the student does and thinks._ 
\
\
]

//Preface|

//verso-Preface:
#set page(
  header: context [],
  footer: context []
)
#v(100%)    //expedient way of placing a blank page without numbering
//verso-Preface|

// Contents:

#set page(
   header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) TL Outlines
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
//#outline(title: "Contents")
#show outline.entry.where(level: 1): it => {
  v(12pt, weak: false)
  strong(it)
}


#set text(12pt, font: "TeX Gyre Termes")
#outline(title: "Contents", indent: 0.85cm)
#v(0%)

//#pagebreak(to: "odd", weak: false)
// Contents|



//doc:

#set page(
  header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) TL Outlines
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

// Decimal separator conversion disabled for English (UK): use ".".











//





#set page(
  header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
#h(1fr) DC Generators
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )


#set list(indent: 1cm)

= TL1: DC Generators



== Learning objectives
#v(6pt)

As a result of TL1 - DC Generators, the student is expected to acquire the ability to:

- Design and implement electrical circuits for DC generators;
- Operate DC generators with different types of excitation;
- Carry out tests to obtain the operating characteristic curves of DC generators;
- Distinguish the output-voltage regulation processes of a DC generator;
- Compare the characteristic curves of DC generators. 

== Introduction
#v(6pt)

DC machines are classified according to the type of excitation used in their electrical circuits. When operating as a DC generator, two main groups are distinguished:
- Separately or independently excited DC generator. The field circuit is supplied by a DC source;
- Self-excited DC generators. The generator field circuit(s) is/are supplied by the voltage produced by the armature.

For a complete analysis of the DC generator, its field and armature circuits, the following characteristic curves may be considered:
- Magnetisation or no-load characteristic;
- External characteristic;
- Regulation characteristic.

== Laboratory tests
#v(6pt)
#heading(level:3, outlined: false, bookmarked: true)[TL1.1: Separately excited DC generator]
#v(6pt)
- No-load test to characterise the field circuit at two different constant speeds; 
- Load test to characterise the armature circuit. Regulation of one operating point of the loaded generator. 

#v(6pt)
#heading(level:3, outlined: false, bookmarked: true)[TL1.2: External characteristics of self-excited generators]
#v(6pt)
- Load test of a self-excited generator. Suggestion: use the generator with shunt excitation;
- Verify and test the influence of the series winding on the operation of the self-excited generator. Suggestion: modify the previous arrangement for compound excitation; 


== Analysis suggestions 
#v(6pt)
- What conditions are required for self-excitation in a DC generator?
- Determine the voltage drops of a DC generator;
- Compare the external characteristics of the DC generator for the different excitation types;
- Define a regulation characteristic for a DC generator.




#v(60%)

#pagebreak()

#set page(
  header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
#h(1fr) DC Motors
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )


= TL2: DC Motors
\

#set list(indent: 1cm)

== Learning objectives
#v(6pt)

As a result of TL2 - DC Motors, the student is expected to acquire the ability to:
- Design and implement electrical circuits for DC motors;
- Operate DC motors with different types of excitation;
- Carry out tests to obtain the operating characteristic curves of DC motors;
- Compare the characteristic curves of DC motors;
- Distinguish the speed-regulation processes of a DC motor;
- Regulate the speed of the DC motor using the Ward-Leonard system;
- Obtain an operating map of a DC motor under variable-speed operation. 

== Introduction
#v(6pt)

To characterise the operation of DC motors, characteristic curves are established relating quantities that allow the behaviour of a DC motor under steady-state operation to be assessed:

- *Speed characteristic*: $n=upright(f)(I)$, with $U$ and $R_c$ constant;
- *Torque characteristic*: $T=upright(f)(I)$, with $U$ and $R_c$ constant;
- *Mechanical characteristic*: $n=upright(f)(T)$ or $T=upright(f)(n)$, with $U$ and $  R_c$ constant.

These characteristic curves can be obtained experimentally by testing DC motors under variable-load operation, or derived theoretically when some quantities and parameters of the DC machine are known: $E_0=upright(f)(i_"exc"), U, I, R_i, R_s, display(N_s/N_d), Delta E(I_i)$.

\
The Ward-Leonard system provides a variable-speed drive with decoupled output quantities, speed and torque. In other words, this system allows speed and available torque to be controlled independently. In this experimental test, the DC motor quantities are obtained, allowing the electrical input power and useful mechanical power to be determined under variable-speed and variable-load operation. These data make it possible to represent an operating map of the machine, for example by plotting motor-efficiency contour lines (isolines) under variable-speed and variable-torque operation.


== Laboratory tests
#v(6pt)
#heading(level:3, outlined: false, bookmarked: true)[TL2.1: Shunt-excited motor _vs._ compound-excited motor]
#v(6pt)
- Load test of the shunt-excited DC motor; 
- Load test of the compound-excited DC motor (cumulative and differential);
- Verification of the DC motor runaway conditions.
#v(6pt)
#heading(level:3, outlined: false, bookmarked: true)[TL2.2: Series motor]
#v(6pt)
- Load test of a series-excited DC motor;
- Verification of the runaway conditions of the series motor.
#v(6pt)
#heading(level:3, outlined: false, bookmarked: true)[TL2.3: Ward-Leonard system]
#v(6pt)
- Test of a separately excited DC motor under variable-load operation, supplied by a variable-voltage DC source.
  

== Analysis suggestions 
#v(6pt)
- Under what circumstances can runaway occur in a DC motor?
- Compare the speed and torque characteristics of the DC motor for the different excitation types;
- Plot the mechanical characteristics, $n=upright(f)(T_u)$, of the DC motor in the Ward-Leonard system;
- Determine the efficiency map of a separately excited DC motor under variable-speed and variable-load operation, using the Ward-Leonard system test data.
#v(20%)





#pagebreak(to: "odd")

#set page(
  header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
#h(1fr) Stand-alone Synchronous Generator
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )




= TL3: Stand-alone Synchronous Generator


#set list(indent: 1cm)

== Learning objectives
#v(6pt)

On completion of the laboratory work, TL3 - Stand-alone Synchronous Generator, the student will be able to:
- Identify and distinguish between cylindrical-rotor and salient-pole synchronous generators;
- Design and implement electrical circuits for three-phase synchronous generators (SGs) operating on an islanded grid;
- Carry out tests to determine the per-phase equivalent-circuit parameters of cylindrical-rotor and salient-pole SGs;
- Operate SGs under autonomous operation under variable load conditions (current and $cos phi$):
- determine and interpret external operating characteristics;
- obtain voltage-regulation characteristics;
- understand the voltage- and frequency-regulation mechanisms. 
- Develop and interpret generator voltage phasor diagrams for different operating conditions.


== Introduction
#v(6pt)

The steady-state analysis of an SG operating on an islanded power grid is based on two main analytical tools:
- *per-phase equivalent circuit*;
- *per-phase voltage phasor diagram*.

To implement these tools, a detailed characterisation of the field (rotor) and armature (stator) circuits is required. The machine electrical parameters are therefore determined from the following experimental tests:
- No-load test of the generator at rated speed to obtain the magnetisation characteristic, $E_0=upright(f)(I_"exc")$;
- Short-circuit test of the generator at rated speed to obtain the short-circuit characteristic, $I_"cc"=upright(f)(I_"exc")$;
- Slip test to identify the rotor type of the synchronous machine (cylindrical or salient pole);
- Measurement of the resistance of the stator windings.

#v(12pt)
Load tests of the SG under variable load and different power factors allow characteristic curves of its behaviour under stand-alone  operation to be obtained:

- *External characteristic*: $U=upright(f)(I)$, with speed, $I_"exc"$ and $cos phi$ constant;
- *Voltage-regulation characteristic*: $I_"exc"=upright(f)(I)$, with $U$, speed and $cos phi$ constant.

These characteristic curves allow the model(s) considered for analysing the behaviour of the SG under different types of load to be validated by comparing theoretical and experimental results.


== Laboratory tests
#v(6pt)

#heading(level:3, outlined: false, bookmarked: true)[TL3.1: Cylindrical-rotor _vs._ salient-pole synchronous machine]
#v(6pt)
- No-load and short-circuit tests;
- Slip test;
- Measurement of the resistance of the stator windings.

#v(6pt)
#heading(level:3, outlined: false, bookmarked: true)[TL3.2: External characteristics]
#v(6pt)
- Load tests of the SG with resistive and reactive loads:
- obtaining the external characteristics;
- obtaining the voltage-regulation characteristics;
- observation of generator voltage and frequency regulation.


== Analysis suggestions 
#v(6pt)
- Develop the per-phase equivalent circuit of the SG using the cylindrical-rotor model and determine the theoretical external characteristics;
- Compare the theoretical results with the external characteristics obtained experimentally;
- Under constant load current and rated-voltage conditions, draw voltage phasor diagrams for different power-factor scenarios;
- Establish the relationship between the phasor diagrams obtained and their respective voltage-regulation characteristics, comparing and discussing the observed results;
- Using the practical example of a diesel generating set (also known as a diesel generator set), assess the need for and operation of voltage and speed governors during autonomous operation on an islanded grid.


//#pagebreak(to: "odd")



#set page(
  header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) TL Outlines
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
#h(1fr) Synchronous Machine on the Power Grid
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )


  

= TL4: Synchronous Machine on the Power Grid


#set list(indent: 1cm)


== Learning objectives
#v(6pt)

After completing the laboratory work, TL4 - Synchronous Machine on the Power Grid, the student will be able to:
- Understand the functions of the Three-Phase Synchronous Machine (SM) on the power grid;
- Design and implement circuit diagrams for the SM for operation on the power grid;
- Carry out the procedures for connecting the SM to the power grid and operate it in all four operating quadrants (as a generator, motor and synchronous condenser);
- Experimentally obtain and interpret V-curves (Mordey curves) of a SM;
- Synchronise and operate three-phase synchronous generators in parallel on an islanded grid, ensuring load sharing between generators with constant voltage and frequency;
- Develop and interpret SM voltage phasor diagrams on the power grid under different operating conditions.

#v(12pt)
== Introduction
#v(6pt)

This work analyses the operation of the SM connected to an power grid, where it can operate in three modes: generator, motor and synchronous condenser. The laboratory AC grid is considered to be an infinite bus, implying constant voltage and frequency. Thus, in tests TL4.1 and TL4.2, active (generator), mechanical (motor) and reactive (generator/motor/condenser) power are adjusted, while the SM voltage and rotor speed remain constant. This static stability is ensured by the magnetic coupling between the rotor and the rotating field, since the stator windings connected to the power grid are subject to the same voltage and frequency.\
In test TL4.3, the electrical network is formed by generators operating in parallel and supplying an inductive (RL) load, thereby configuring an islanded grid. This test seeks to answer two main questions:
 - How can voltage and frequency be kept constant when the active and/or reactive load is varied, while preserving load sharing between the generators?
 - How can active and reactive load sharing between the generators be adjusted, while keeping voltage and frequency constant?
 #v(6pt)
  TL4 provides practical and theoretical understanding of SM operation on power grids, enabling students to apply concepts of synchronism, management and load sharing in real-world power generation and operation contexts.



== Laboratory tests


#heading(level:3, outlined: false, bookmarked: true)[TL4.1: Connection to the power grid and operation in all four quadrants]
#v(6pt)
- Synchronisation of the generator with the power grid;
- Operation of the SM in all four operating quadrants, including unity power factor and operation as a synchronous condenser. 

#v(6pt)
#heading(level:3, outlined: false, bookmarked: true)[TL4.2: Mordey curves]
#v(6pt)
- Repeat the TL4.1 assembly and the synchronisation process with the power grid;
- Fix the *Active Power*: To obtain a specific V-curve, the active power supplied by the generator to the power grid must be kept constant. This condition is ensured by fixing the mechanical input power at the generator shaft;
- *Adjustable variable*: The field/excitation current is gradually changed;
- *V-curves*: These consist of recording the *line current* as a function of the *field current*, mapped independently for each constant active-power level.


#v(6pt)
#heading(level:3, outlined: false, bookmarked: true)[TL4.3: Parallel operation of generators on an islanded grid]
#v(6pt)
- Synchronisation (parallel operation) between three-phase synchronous generators;
- Frequency and voltage regulation _vs._ active and reactive load sharing.


#v(12pt)
== Analysis suggestions 
#v(6pt)

- Consider the synchronisation conditions of the synchronous generator with the power grid or between generators. For example, what could be the implications of synchronising the voltages between the generator and the grid without checking the phase sequence? 
- Develop simplified phasor diagrams to explain SM operation in all four quadrants, assuming the cylindrical-rotor model and stator resistance, $R approx 0$;
- Use SM phasor diagrams to verify different operating points on the machine V-curves;
- Analyse the SM V-curves, interpreting them in terms of active/mechanical, reactive and apparent power components;
- In parallel operation of generators on an islanded grid, analyse the voltage- and frequency-regulation processes in response to load variations;
- In parallel operation of generators on an islanded grid, assess the load-sharing processes between generators while keeping the voltage and frequency of the grid constant;
- Analyse the operation of the SM as a synchronous condenser in the tests performed.




//#pagebreak(to: "odd")


#set page(
  header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) Transients in Electrical Machines
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )



= TL5: Transients in Electrical Machines

#set list(indent: 1cm)

#v(16pt)
== Learning objectives
#v(16pt)

As a result of the laboratory work, TL5 - Transients in Electrical Machines, the student is expected to be able to:

- Distinguish the transient regimes of the electrical machines under study (DC machine and three-phase synchronous machine), examining their physical behaviour and experimental results in specific tests;
- Determine the mechanical parameters of an electrical machine from a deceleration test; 
- Obtain the parameters characterising the dynamic regime of a three-phase short circuit applied to an unloaded synchronous generator.




#v(16pt)
== Introduction
#v(10pt)

This work provides an introduction to the dynamic behaviour of the electrical machines analysed during the laboratory activities.\
Thus, in this laboratory work, the DC motor is used as an example to obtain its mechanical equation, through no-load tests to determine the mechanical losses, $p_"mec"$, and a deceleration test to obtain the mechanical parameters. The motor mechanical equation, as part of the machine's mathematical model, is fundamental for simulating and optimising its performance, and as a basis for more advanced studies in electrical machines and control systems.\
The analysis of the transient regime of a three-phase short circuit applied to a synchronous generator is fundamental for the sizing of protection equipment, such as circuit breakers and relays. This study makes it possible to ensure that the devices can withstand and interrupt high fault currents, thereby safeguarding the integrity and safety of the power system in which the synchronous machine is integrated.

#pagebreak()

== Laboratory tests
#v(6pt)
#heading(level:3, outlined: false, bookmarked: true)[DC machine]
#v(6pt)
- No-load test of the DC motor (using shunt or independent excitation) to separate mechanical and magnetic losses, $p_"(mec+Fe)"$;
- Deceleration test of the DC motor to determine the mechanical parameters: moment of inertia, $J$, dynamic friction coefficient, $K_d$, and static friction coefficient, $K_e$.

#v(6pt)
#heading(level:3, outlined: false, bookmarked: true)[Salient-pole synchronous machine]
#v(6pt)
- No-load test of the generator at rated voltage, subjected to a three-phase short circuit.

#v(30pt)
== Analysis suggestions 
#v(16pt)

- Analyse the mechanical transient of the DC motor, obtaining: 
 - the torque associated with mechanical losses, $T_p$;
 - the mechanical parameters $(J, K_d, K_e)$ and their validation, estimating the deceleration speed curve, $omega(t)$, through the natural damping of the tested machine.
#v(12pt)
- Analyse the envelope of the three-phase short-circuit current of the generator, determining:
 - the subtransient, transient and steady-state short-circuit currents $(I''_"cc", I'_"cc", I_"cc")$;
 - the maximum short-circuit current of the generator due to the DC component;
 - the subtransient, transient and steady-state synchronous reactances $(X''_d, X'_d, X_d)$;
 - the subtransient, transient and armature (stator) time constants $(T''_d, T'_d, T_a)$.


//#pagebreak(to: "odd")

/*


#set page(
  header: [
    #set text(9pt, font: "Source Code Pro")
    #upper()[ISEL\\LEE\\ME II]
    #h(1fr) TL Outlines
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
#h(1fr) Technical Safety Aspects
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )



= APPENDIX A: Technical Safety Aspects







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
#h(1fr) Laboratory Report
  ],
  numbering: none,
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ], 
  )




= APPENDIX: Laboratory Report


== Scope
#set list(indent: 0.75cm)

#heading(level:3, outlined: false, bookmarked: true)[Report Objective]
#v(6pt)

The laboratory report is an essential document that records and interprets the results of experimental tests. It aims to document the experimental process systematically and rigorously, presenting the methodology used, the results obtained, their critical analysis and the conclusions relevant to the work carried out, @i-Barrass1995, @i-Alley1998.
#v(6pt)

#heading(level:3, outlined: false, bookmarked: true)[Academic and Professional Importance]
#v(6pt)

- Develops technical and scientific communication skills;
- Trains methods for recording and analysing data;
- Promotes critical thinking and the ability to interpret results;
- Prepares students for professional engineering practice.

== Structure
#v(6pt)
The report should be between 15–25 pages (depending on the number of practical classes), aiming for synthesis and objectivity in the development of the content. The recommended structure includes the following elements, @i-alley2025lab:
#v(6pt)
#set enum(indent: 0.5cm, body-indent: 0.25cm, spacing: 14pt)

1. *Title*: presented on the title page, along with other elements such as: institution, degree programme, course unit, working group, and date. 
2. *Introduction*: intended to present the context of the work (background) and establish the objectives. \
  2.1 *Background*\   
  2.2 *Objectives*
3. *Experimental Procedures*: essential for describing how the work was carried out, providing sufficient detail to allow replication (conduct of the work/test). To illustrate the methodologies used, circuit diagrams and the materials and equipment used should be included, clearly identifying the machine under test. \
  3.1 *Circuit Diagram(s)*\
  3.2 *Materials and Equipment*\
  3.3 *Test Procedure* (per test)
4. *Experimental Results*: presents data and observations objectively (generally using tables and figures), without interpretation at this stage.
5. *Analysis of Results*: discussion is essential for interpreting the results, relating them to the objectives, background, and, where appropriate, to other studies or expected theoretical behaviour.
6. *Conclusions*: presents the key findings, linking them back to the work objectives.

#v(6pt)
These elements may also be included in the report structure, depending on its size and complexity: Contents, Lists of abbreviations/symbols/figures/tables/glossary, Summary/_Abstract_, References and Appendices...


== Technical Writing
#v(6pt)
Technical writing should be clear, objective and precise, facilitating communication between specialists. The following are essential guidelines, @i-Barrass1995, @i-Alley1998:
#v(6pt)
- *Objectivity*: Be direct and avoid colloquial or ambiguous language.
- *Clarity*: Use short sentences and avoid overly long sentences. Prefer the active voice ("The group carried out...").
- *Organisation*: Maintain a logical and sequential structure, with descriptive headings and hierarchical numbering.
- *Impersonality*: Avoid personal opinions and use impersonal language ("It was observed that...").
- *Legibility*: Use appropriate fonts and sizes, uniform margins and consistent spacing.
- *Terminology*: Use correct technical terminology and define all acronyms and symbols at first occurrence.
- *Electrical Schematics*: Ensure correct use of standardised symbols in accordance with IEC 60617, @iec60617. This compliance is essential for precise and universal technical communication.
- *Figures and Tables*: Number and caption all figures and tables, preferably indicating SI units, @BIPM_2024.
- *Review*: Check the text to eliminate spelling, grammatical and formatting errors.
- *References*: Cite all sources consulted, following one of the international or national standards commonly used in engineering (IEEE, ISO 690 or NP 405).
 

== Technical Tools 
#v(6pt)
When writing technical documents and laboratory reports, the appropriate choice of computational tools promotes efficiency, reproducibility and technical rigour. Work groups are encouraged to select the tools they consider most suitable for their specific context. Some FOSS (_Free and Open Source Software_) tools compatible with the main operating systems (Linux, macOS and Windows) are suggested below.

#show link: underline

#v(12pt)
#align(center, block[
Table 1 - FOSS tools for producing technical documents
])

//#set align(center)
//#text(11pt)[Table 1 - FOSS tools for producing technical documents]

#import "@preview/metalogo:1.2.0": LaTeX

#table(
  columns: 3,
 align: (horizon + left),
  table.header(
[*Category*], [*Tool*], [*Description*]),
     
  table.cell(
rowspan: 4, align: (horizon + left), [*Writing,\ Editing and\ Formatting*]
  ),
[#link("https://www.onlyoffice.com/")[OnlyOffice],\ #link("https://www.libreoffice.org/")[LibreOffice]], [Word processors for documents, with support for advanced formatting and compatibility],
[#link("https://typst.app/")[Typst]], [Modern alternative to #LaTeX, with simplified syntax and automatic typesetting for technical documents],
[#link("https://www.overleaf.com/")[Overleaf]], [Online collaborative platform for editing #LaTeX, version control and scientific document templates],
  [#link("https://www.texstudio.org/")[TeXstudio],\ #link("https://www.tug.org/texworks/")[TeXworks],\ #link("https://www.xm1math.net/texmaker/")[TeXmaker]], [Text editors for writing #LaTeX documents],
  
  table.cell(
rowspan: 4, align: (horizon + left), [*Spreadsheet / Results\ Graphs*]
  ),
[#link("https://www.onlyoffice.com/")[OnlyOffice],\ #link("https://www.libreoffice.org/")[LibreOffice]], [Their spreadsheets are compatible alternatives to Microsoft Excel],
[#link("https://labplot.org/")[LabPlot]], [Scientific data analysis and visualisation with advanced 2D/3D graphs and statistical tools],
[#link("http://www.gnumeric.org/")[Gnumeric]], [Lightweight and precise spreadsheet, standalone installation without the need for a complete _office suite_],

[#link("http://www.gnuplot.info/")[gnuplot]], [Command-line utility for creating 2D/3D graphs and visualising mathematical functions and data],
    
  table.cell(
rowspan: 3, align: (horizon + left), [*Technical\ Drawing*]
  ),
[#link("https://librecad.org/")[LibreCAD],\ #link("https://www.qcad.org/en/")[QCAD]], [2D computer-aided design (CAD) applications using the DXF format as their base format],
[#link("https://www.drawio.com/")[draw.io]], [Drawings such as schematics, diagrams and flowcharts, with libraries to facilitate creation, with export to SVG, PNG, JPEG, PDF, _etc._],
[#link("https://www.drawio.com/")[QElectroTech]], [Electrical and electronic schematics, control and automation, and other engineering areas with an extensive component library],
  table.cell(
rowspan: 2, align: (horizon + left) , [*Textual\ Graphical\ Description\ Languages *]
  ),
[#link("https://cetz-package.github.io/")[CeTZ]], [Typst library for vector illustrations, schematics and diagrams],
[#link("https://tikz.net/")[TikZ]], [#LaTeX library for vector illustrations, schematics and diagrams],

  table.cell(
rowspan: 4, align: (horizon + left), [*Scientific\ Computing and\ Numerical\ Analysis*]
  ),
[#link("")[Octave]], [Programming language compatible with MATLAB syntax, used for numerical computing and data visualisation],
[#link("https://julialang.org/")[Julia]], [High-performance dynamic programming language, ideal for scientific computing, numerical analysis and engineering applications],
[#link("https://www.python.org/")[Python]], [Language and libraries (NumPy, SciPy, SymPy) for numerical and symbolic computation and scientific simulations],
[#link("https://www.scilab.org/")[Scilab]], [Programming environment for numerical computation with tools for data analysis, visualisation and simulation, similar to MATLAB and Simulink],
)

#v(12pt)
=== Computational _Notebooks_ as an Integrated Environment
#v(6pt)
For multidisciplinary projects and technical reports, the use of computational _notebooks_ (e.g. Jupyter, Pluto, Google Colab, LabPlot) may be considered as an integrated environment for development, analysis and documentation. In these environments, code, text, mathematical equations, visualisations and tables can be combined, facilitating reproducibility of results and the preparation of clear and complete technical reports. An example of a laboratory report on electrical machines in _notebook_ format can be found at @luis2025notebooks. 


#v(6pt)
=== Real-Time Collaborative Work
#v(6pt)
Among the recommended tools, the following platforms stand out for enabling real-time collaborative work, with simultaneous editing by multiple users, version history and access control:

- Typst (Typst documents)\
- Overleaf (LaTeX documents)\
- OnlyOffice, #link("https://cryptpad.fr/")[CryptPad] (documents, spreadsheets, ...)
- Draw.io (drawings, schematics, diagrams, flowcharts)
- #link("https://colab.google/")[Google Colab] (hosted Jupyter Notebook service that requires no setup and provides access to computing resources through the programming languages Python, Julia and R)

#v(6pt)
=== Generative Artificial Intelligence 
#v(6pt)
Generative Artificial Intelligence (GenAI) can support the writing and review of reports, but its integration should be carried out with *responsibility*, *transparency* and *critical judgement*, @Holmes2024-lt-en, @COHEN2025111646 @soc15010006.
#v(6pt)
- *Work with GenAI, not through it*
- Use it for: grammatical and spelling review, checking or suggesting the report structure, clarifying concepts, initial organisation of ideas or _brainstorming_;
- Avoid using it to: write entire sections of the report, interpret experimental results, replace your critical analysis or draw scientific conclusions;
- Do not lose writing practice: editing generated text does not replace the practice of writing;
- Practise critical thinking: challenge, question and always validate the results.
#v(6pt)
- *Transparency*
- Always declare the use of GenAI, specifying which tasks were delegated to it (e.g. review, summary, grammar checking). Examples of statements:
    
“The linguistic review of this report was supported by GenAI. The final content was validated and is assumed by the authors.”

"GenAI was used to clarify technical terminology. Interpretation of the results is the responsibility of the authors."
  
- Check and cite the information obtained, using credible sources.
#v(6pt)
- *Ethical Considerations*
- Integrity: always declare its use and maintain academic fairness;
 - Ask yourself: "Does this help me learn, or does it replace my thinking?"
 - Protect personal data and respect copyright.
#v(6pt)
- *Authorship and Responsibility*
- The report should reflect your/your group's understanding and critical reflection;
- GenAI does not replace the authorship or academic responsibility of the student(s), particularly regarding the originality, validity and integrity of the work.



== Summary
#v(6pt)
Technical writing in engineering requires clarity, rigour and organisation. The use of appropriate technical tools, the integration of _notebooks_ as an integrative environment, real-time collaborative work and the responsible use of artificial intelligence contribute to the quality, reproducibility and transparency of technical reports. Always prioritise autonomy, critical reflection and academic ethics.



//#pagebreak(to: "odd")

//References without header:
#set page(
  header: context [],
  footer: context [
    #set align(center)
    #set text(9pt, font: "Libertinus Math")
    #counter(page).display("1")
    ],
)





  
 
= References
#v(12pt)
#show bibliography: set par(leading: 1em, spacing: 2em)
#bibliography("ref.bib", title: none, style: "ieee")



// ============================================================================
// BACK COVER (last page)
// ============================================================================


#pagebreak(to: "even")



//contra-capa sem header nem footer:
#set page(
  header: context [],
  footer: context [],
)




// Import package to generate QR codes
#import "@preview/codetastic:0.2.2": qrcode

#page[
  // QR code and information in the bottom-left corner
  #place(
    bottom + left,
    dx: 0cm,
    dy: -1cm,
    [
      #set align(left)
      
// Layout with QR code on the left and information on the right
      #grid(
        columns: (2.5cm, 1fr),
        column-gutter: 0.01cm,
        
        // Left column - QR code
        align(left + bottom)[
          #qrcode(github_download, width: 2.5cm)
        ],
        
// Right column - Basic information
        align(left + horizon)[
          #text(size: 11pt, weight: "bold")[
            OER/REA | CC BY-SA 4.0
          ]
          
          #v(0.1cm)
          
          #text(size: 11pt)[
            #author | #institution | #year
          ]
        ]
      )
    ]
  )
]


// To view the download address:
//#raw(github_download)
