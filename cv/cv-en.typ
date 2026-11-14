#import "template.typ": *

#show: cv.with(
  name: "Tomasz Kobus",
  position: "DevOps & MLOps Engineer",
  tagline: [M.Sc. Eng. AI & Data Science · Częstochowa, Poland · remote or hybrid],
  lang: "en",
  contacts: (
    link("mailto:tommkobuss@gmail.com")[tommkobuss\@gmail.com],
    [+48 730 353 483],
    link("https://tomaszkobus.dev")[tomaszkobus.dev],
    link("https://github.com/Subbok")[github.com/Subbok],
    link("https://www.linkedin.com/in/tomasz-kobus/")[linkedin.com/in/tomasz-kobus],
  ),
  footer: [I consent to the processing of my personal data contained in this CV for the purposes of the recruitment process (GDPR — Regulation (EU) 2016/679, Art. 6(1)(a)).],
  side: [
    #side-heading[About]
    Engineer at the intersection of DevOps and MLOps. I build Kursor, a fleet and settlement system for a passenger transport company, and run my own NixOS infrastructure. Creator of CellForge, an open-source notebook IDE in Rust. InkWatchy contributor.

    #side-heading[Core stack]
    #pills(("NixOS", "Docker / Compose", "Linux", "Cloudflare Tunnels", "NVIDIA / CUDA", "GitHub Actions", "Prometheus / Grafana", "SSH hardening", "Python / Bash", "Git"))

    #side-heading[Programming]
    #pills(("Rust", "TypeScript / React", "PostgreSQL", "PyTorch", "Typst", "C++ / ESP32"))

    #side-heading[Languages]
    #level("Polish", 5, "native")
    #level("English", 4.5, "C1 · Cambridge, 2022")

    #side-heading[Education]
    #block(below: 7pt)[
      *M.Sc. Eng. Computer Science* \
      #text(size: 8pt)[AI & Data Science] \
      #text(size: 7.6pt, fill: muted)[Częstochowa Univ. of Technology · 2025–2026]
    ]
    #block(below: 7pt)[
      *B.Eng. Computer Science* \
      #text(size: 8pt)[Computer Networks] \
      #text(size: 7.6pt, fill: muted)[Częstochowa Univ. of Technology · 2020–2025]
    ]

    #side-heading[Other]
    Driving licence cat. B
  ],
)

#section[Experience]

#entry(
  [Logistics & IT Specialist],
  date: "07.2026 – now",
  org: [Probus Sp. z o.o.],
  place: [Żędowice],
)[
  - Planning and coordinating international passenger transport on Poland – Germany routes
  - Day-to-day IT support across the company
  - Developing and deploying Kursor (Rust, React, PostgreSQL)
]

#entry(
  [Programming Instructor],
  date: "2025 – 2026",
  org: [Giganci Programowania sp. z o.o.],
  place: [Częstochowa],
  stack: [Python, Docker, Linux, Veyon],
)[
  - Programming classes for kids aged 9–12 (Scratch, Python, Lua, Minecraft Education)
  - Maintained a fleet of 20 workstations (trainer/student split): setup, patching, Veyon monitoring
  - Deployed and maintained educational Minecraft servers on self-hosted infrastructure
]

#entry(
  [IT Intern],
  date: "07.2024",
  org: [Eurobox Polska Sp. z o.o.],
  place: [Lubliniec],
  stack: [Python, Bash, Windows, Linux],
)[
  - Helpdesk, hardware and software diagnostics, automation of administrative tasks, workstation setup
]

#section[Projects]

#entry(
  [Kursor — fleet and settlement system],
  date: "2026 – now",
  org: [Layershift · development and maintenance],
  place: [production],
  stack: [Rust (axum, sqlx), PostgreSQL, React, TypeScript, Typst, Docker, Cloudflare Tunnel],
)[
  - Fleet, service intervals from configurable rules, driver settlements (mobile forms, PDF printouts via Typst) and route pricing — replaced a set of Excel sheets
  - GPS and RCS integrations, client portal with schedule, reservations and GPS, licence-enabled modules incl. the JEST edition for field crews
]

#entry(
  [Self-hosted server infrastructure],
  date: "2023 – now",
  org: [Personal project],
  place: [production 24/7],
  stack: [NixOS, Docker Compose, NVIDIA Container Toolkit, Prometheus, Grafana, btrfs],
)[
  - NixOS host (flake), services in Docker Compose, NVIDIA GPU; access only through Cloudflare Tunnels, key-only SSH, fail2ban
  - Monitoring with an independent second point on a separate device, btrfs with hourly snapshots
]

#entry(
  [CellForge — notebook IDE in Rust],
  date: "2025 – now",
  org: link("https://github.com/Subbok/CellForge")[github.com/Subbok/CellForge],
  place: [open source],
  stack: [Rust, React 19, TypeScript, Yjs CRDT, ZeroMQ, Typst, CUDA],
)[
  - JupyterLab alternative with a native Jupyter protocol implementation; 7 crates (axum, tokio, zeromq-rs), 186+ tests
  - Real-time collaboration (Yjs CRDT), reactive execution with AST dependency analysis, hub mode with JWT and a plugin system
  - PDF export via Typst (\~50× faster than LaTeX); CI/CD: GitHub Actions + GHCR, image with PyTorch + CUDA
]

#entry(
  [LLM Benchmark Pipeline — Master's thesis],
  date: "2025 – 2026",
  org: link("https://github.com/Subbok/llm-benchmark-thesis")[github.com/Subbok/llm-benchmark-thesis],
  place: [defended 2026],
  stack: [Python, PyTorch, CUDA, Ollama, OpenRouter, HuggingFace, tree-sitter],
)[
  - Evaluation of 10 LLMs (6 commercial + 4 local) on 80 tasks: Pass\@1, CodeBLEU, BERTScore, G-Eval (LLM-as-a-Judge)
  - GPU-accelerated evaluation with CPU fallback, sandboxed code execution, Bash pipeline with conda environment management
]

#entry(
  [InkWatchy — contributor],
  date: "2024 – now",
  org: link("https://github.com/Szybet/InkWatchy")[github.com/Szybet/InkWatchy],
  place: [open source],
  stack: [C++, Arduino, ESP32],
)[
  - i18n system (EN/PL/DE/SK) for an ESP32 e-ink smartwatch firmware — 116+ keys with compile-time validation
  - Rewrote the calendar module (multi-URL import, recurring events, timezones), QuickAlarm system
]
