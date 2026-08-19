// Grafika og:image (1200×630) dla podglądów linków — kompilacja:
//   typst compile og-image.typ og-image.png --format png --ppi 72
#set page(width: 1200pt, height: 630pt, margin: 0pt, fill: rgb("#0a0a0e"))
#set text(font: "Fira Sans", fill: rgb("#e0e0e0"))

// Subtelne poświaty jak na stronie (hero-glow)
#place(top + right, dx: 180pt, dy: -180pt, circle(
  radius: 340pt,
  fill: gradient.radial(rgb("#64d8cb").transparentize(82%), rgb("#0a0a0e").transparentize(100%)),
))
#place(bottom + left, dx: -160pt, dy: 160pt, circle(
  radius: 320pt,
  fill: gradient.radial(rgb("#0066cc").transparentize(80%), rgb("#0a0a0e").transparentize(100%)),
))

// Cienka linia akcentu u dołu
#place(bottom, rect(width: 100%, height: 6pt, fill: gradient.linear(rgb("#64d8cb"), rgb("#0066cc"))))

#place(horizon + left, dx: 90pt, block[
  #box(
    stroke: 1pt + rgb("#64d8cb").transparentize(50%),
    radius: 6pt,
    inset: (x: 14pt, y: 8pt),
    text(font: "Hack", size: 17pt, fill: rgb("#64d8cb"), tracking: 2pt)[DEVOPS · MLOPS],
  )

  #v(26pt)
  #text(size: 88pt, weight: "bold", fill: white)[Tomasz Kobus]

  #v(10pt)
  #text(font: "Hack", size: 30pt, fill: rgb("#9ca3af"))[DevOps & MLOps Engineer]

  #v(30pt)
  #text(size: 21pt, fill: rgb("#8b95a5"))[
    Mgr inż. AI & Data Science · 30+ serwisów 24/7 · GPU tooling · Open Source
  ]

  #v(36pt)
  #text(font: "Hack", size: 20pt, fill: rgb("#64d8cb"))[tomaszkobus.dev]
  #h(18pt)
  #text(font: "Hack", size: 20pt, fill: rgb("#6b7280"))[· github.com/Subbok]
])
