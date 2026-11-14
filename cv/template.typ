// Wspólny szablon CV (PL/EN) — bez zewnętrznych pakietów.

#let accent = rgb("#0d7f74")
#let ink = rgb("#1f2933")
#let muted = rgb("#5f6b7a")
#let rule-color = rgb("#d9e2e1")
#let side-bg = rgb("#f2f6f6")
#let header-bg = rgb("#16222b")

#let sans = ("Adwaita Sans", "Noto Sans", "Liberation Sans", "DejaVu Sans")
#let mono = ("DejaVu Sans Mono", "Liberation Mono")

// Nagłówek sekcji: kapitaliki w kolorze akcentu + cienka linia
#let section(title) = {
  v(9pt, weak: true)
  block(below: 6pt, sticky: true)[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 6pt,
      align: horizon,
      text(size: 8.4pt, weight: "bold", fill: accent, tracking: 1.2pt, upper(title)),
      line(length: 100%, stroke: 0.6pt + rule-color),
    )
  ]
}

// Wpis: tytuł + data, podtytuł + miejsce, treść
#let entry(title, date: none, org: none, place: none, stack: none, body) = block(
  breakable: false,
  below: 12pt,
)[
  #grid(
    columns: (1fr, auto),
    row-gutter: 3pt,
    text(weight: "bold", size: 9.6pt, fill: ink, title),
    text(size: 8pt, fill: muted, font: mono, date),
    text(size: 8.6pt, fill: accent, weight: "medium", org),
    text(size: 8pt, fill: muted, style: "italic", place),
  )
  #v(1.5pt)
  #set list(marker: text(fill: accent, size: 7pt, baseline: 0.5pt)[▸], indent: 1pt, body-indent: 5pt, spacing: 4.2pt)
  #set par(leading: 0.48em)
  #body
  #if stack != none {
    v(1pt)
    text(size: 7.6pt, fill: muted)[#text(font: mono, fill: accent)[\$] #stack]
  }
]

// Pigułki z technologiami
#let pills(items) = {
  set par(leading: 0.5em)
  items
    .map(it => box(
      inset: (x: 4.5pt, y: 2.6pt),
      radius: 3pt,
      fill: white,
      stroke: 0.5pt + rule-color,
      text(size: 7.5pt, fill: ink, it),
    ))
    .join(h(3pt))
}

// Poziom języka: kropki
#let level(name, lvl, note) = block(below: 6pt)[
  #grid(
    columns: (1fr, auto),
    align: horizon,
    text(weight: "medium", name),
    {
      for i in range(5) {
        let f = if i + 1 <= lvl { accent } else if i + 0.5 <= lvl { accent.lighten(55%) } else { rule-color }
        box(circle(radius: 2.4pt, fill: f))
        if i < 4 { h(2pt) }
      }
    },
  )
  #v(-3pt)
  #text(size: 7.6pt, fill: muted, note)
]

#let side-heading(t) = block(above: 12pt, below: 5pt, text(
  size: 8pt,
  weight: "bold",
  fill: accent,
  tracking: 1.1pt,
  upper(t),
))

#let cv(
  name: "",
  position: "",
  tagline: none,
  contacts: (),
  lang: "pl",
  footer: none,
  side: [],
  body,
) = {
  set document(title: name + " — CV", author: name)
  set text(font: sans, size: 8.8pt, fill: ink, lang: lang)
  set par(justify: false, leading: 0.5em, spacing: 0.55em)
  show link: it => it

  let header-h = 30mm
  let side-w = 58mm

  set page(
    paper: "a4",
    margin: (top: header-h + 9mm, bottom: 13mm, left: 12mm, right: side-w + 9mm),
    background: context if here().page() == 1 {
      place(top + left, rect(width: 100%, height: header-h, fill: header-bg))
      place(top + right, dy: header-h, rect(width: side-w, height: 100% - header-h, fill: side-bg))
    },
    header: none,
    footer: if footer != none {
      set text(size: 6.2pt, fill: muted)
      block(width: 100% + side-w - 3mm, footer)
    },
    footer-descent: 4mm,
  )

  // Nagłówek (na pierwszej stronie)
  place(top + left, dx: -12mm, dy: -(header-h + 9mm), block(
    width: 210mm,
    height: header-h,
    inset: (x: 12mm),
  )[
    #set align(horizon)
    #grid(
      columns: (1fr, auto),
      align: (left + horizon, right + horizon),
      stack(
        spacing: 6pt,
        text(size: 24pt, weight: "bold", fill: white, tracking: -0.3pt, name),
        text(size: 10.5pt, fill: rgb("#64d8cb"), weight: "medium", tracking: 0.4pt, position),
        ..if tagline != none { (text(size: 8pt, fill: rgb("#b8c4cc"), tagline),) },
      ),
      {
        set text(size: 8pt, fill: rgb("#dbe3e8"))
        set par(leading: 0.62em)
        contacts.join(linebreak())
      },
    )
  ])

  // Kolumna boczna (na pierwszej stronie)
  place(top + right, dx: side-w + 9mm - 5mm, dy: 0mm, block(width: side-w - 10mm, { set align(left); side }))

  body
}
