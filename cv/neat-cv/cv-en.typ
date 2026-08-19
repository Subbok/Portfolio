#import "@preview/neat-cv:0.7.0": (
  contact-info, cv, email-link, entry as neat-entry, item-pills,
  item-with-level, publications, side, social-links,
)

// Ciaśniejszy odstęp między wpisami niż domyślny w szablonie (block above: 1em)
#let entry(..args) = {
  v(-0.4em)
  neat-entry(..args)
}

#set text(lang: "en")

#show: cv.with(
  author: (
    firstname: "Tomasz",
    lastname: "Kobus",
    email: "tommkobuss@gmail.com",
    address: [Częstochowa, Poland],
    phone: "+48 730 353 483",
    position: ("DevOps & MLOps Engineer",),
    website: "https://tomaszkobus.dev",
    github: "Subbok",
    linkedin: "tomasz-kobus",
  ),
  profile-picture: image("profile.png"),
  accent-color: rgb("#0066cc"),
  header-color: rgb("#35414d"),
  body-font-size: 9.2pt,
  side-width: 3.5cm,
  paper-size: "a4",
  gdpr: true,
)

#side[
  = About
  Engineer at the intersection of DevOps and MLOps. I run a production infrastructure of 30+ Docker containers 24/7 with GPU passthrough. Creator of CellForge — an open-source notebook IDE in Rust. InkWatchy contributor.

  = Contact
  #contact-info()

  Open to DevOps / MLOps roles — remote or hybrid.

  #social-links()

  = Languages
  #item-with-level("Polish", 5, subtitle: "Native")
  #item-with-level("English", 4.5, subtitle: "C1 Cambridge, 2022")

  = Core Stack
  #item-pills((
    "Docker / Compose",
    "Linux (Debian/Arch)",
    "Cloudflare Tunnels",
    "NVIDIA / CUDA",
    "GitHub Actions",
    "SSH Hardening",
    "Python / Bash",
    "Git",
  ))

  = Other
  #item-pills((
    "Rust",
    "TypeScript / React",
    "PyTorch",
    "C++ / ESP32",
    "Nginx",
    "MariaDB / Postgres",
  ))

]

= Work Experience

#entry(
  title: "Logistics & IT Specialist",
  date: "since 07.2026",
  institution: "Probus Sp. z o.o.",
  location: "Żędowice",
)[
  - Planning and coordinating international passenger transport on Poland–Germany routes
  - General IT support — day-to-day technical assistance across the company
]

#entry(
  title: "Programming Instructor",
  date: "2025 – 2026",
  institution: "Giganci Programowania sp. z o.o.",
  location: "Częstochowa",
)[
  - Taught programming classes for kids aged 9-12 (Scratch, Python, Lua, Minecraft Education)
  - Managed a fleet of educational workstations (S0-S19, trainer/student split) — setup, patching, Veyon classroom monitoring
  - Deployed and maintained educational Minecraft servers on self-hosted infrastructure
  - _Stack: Python, Docker, Linux, Veyon_
]

#entry(
  title: "IT Intern",
  date: "07.2024",
  institution: "Eurobox Polska Sp. z o.o.",
  location: "Lubliniec",
)[
  - Helpdesk and hardware/software diagnostics, automation of administrative tasks (application autostart), workstation setup
  - _Stack: Python, Bash, Windows, Linux_
]

= Projects

#entry(
  title: "Self-hosted server infrastructure",
  date: "2023 – present",
  institution: "Personal project",
  location: "Production 24/7 · 99.92% uptime",
)[
  - 30+ containerized services on a Xeon E5-2680v4 + Quadro RTX 4000 + 2 TB storage (\~\$500+/mo AWS equivalent)
  - Docker Compose with YAML anchors, isolated networks and health checks; zero-trust exposure via Cloudflare Tunnels
  - Self-hosted cloud (Nextcloud, Home Assistant, Jellyfin + \*arr, Next.js + Postgres) + monitoring (Uptime Kuma, Watchtower, custom Flask power-monitor)
  - SSH hardening (fail2ban, key-only auth), btrfs snapshots; _Stack: Docker Compose, Cloudflare Tunnels, NVIDIA Container Toolkit, Pelican, Nginx_
]

#entry(
  title: "CellForge — Notebook IDE in Rust",
  date: "2025 – present",
  institution: link("https://github.com/Subbok/CellForge")[github.com/Subbok/CellForge],
  location: "Open Source",
)[
  - JupyterLab alternative in Rust + React — native implementation of the Jupyter messaging protocol
  - Backend: 7 Rust crates (axum + tokio + zeromq-rs), 186+ tests; real-time collaboration via Yjs CRDT (shared editing, remote cursors, per-notebook kernel sharing)
  - PDF export via Typst (\~50× faster than LaTeX), reactive execution with an AST dependency analyzer, hub mode with JWT auth and a plugin system
  - CI/CD: GitHub Actions + GHCR, pre-built image with Python 3.12 + PyTorch + CUDA; _Stack: Rust, React 19, TypeScript, Yjs CRDT, ZeroMQ, Typst, CUDA_
]

#entry(
  title: "LLM Benchmark Pipeline — Master's Thesis",
  date: "2025 – 2026",
  institution: link("https://github.com/Subbok/llm-benchmark-thesis")[github.com/Subbok/llm-benchmark-thesis],
  location: "Defended 2026",
)[
  - Multi-dimensional evaluation of 10 LLMs (6 commercial + 4 local) across 80 tasks — 800 model calls
  - 4 metrics: Pass\@1 (unit tests), CodeBLEU (AST + dataflow), BERTScore (RoBERTa-large), G-Eval 1-100 (LLM-as-a-Judge)
  - Models: Claude Opus 4.6, GPT-5.2, Gemini 3.1 Pro, Grok 4, DeepSeek V3.2, KIMI K2.5 + local (Qwen2.5, Gemma3, Mistral-Nemo, Llama3.2 via Ollama)
  - GPU-accelerated evaluation (CUDA/PyTorch) with CPU fallback, sandboxed code execution, master Bash pipeline with conda env management; _Stack: Python, Bash, PyTorch, CUDA, Ollama, OpenRouter API, HuggingFace, tree-sitter_
]

#entry(
  title: "InkWatchy — open source contributor",
  date: "2024 – present",
  institution: link("https://github.com/Szybet/InkWatchy")[github.com/Szybet/InkWatchy],
  location: "Open Source",
)[
  - Complete i18n system (EN/PL/DE/SK) for an ESP32 e-ink smartwatch firmware — 116+ keys with compile-time validation, zero runtime overhead
  - Rewrote the calendar module (multi-URL import, recurring events, timezones), QuickAlarm system; _Stack: C++, Arduino, ESP32_
]

= Education

#entry(
  title: "Computer Science — Artificial Intelligence & Data Science (M.Sc. Eng.)",
  date: "2025 – 2026",
  institution: "Częstochowa University of Technology",
  location: "Częstochowa",
  [Thesis: _"Comparative evaluation of selected large language models on text and code generation tasks"_ (defended 2026). Coursework: Computer Vision, Recommender Systems, NLP, Deep Learning, AI Computational Architectures.],
)

#entry(
  title: "Computer Science — Computer Networks (B.Eng.)",
  date: "2020 – 2025",
  institution: "Częstochowa University of Technology",
  location: "Częstochowa",
  [Thesis: _"Comparison of 3D printer firmware — Marlin vs Klipper"_. Coursework: Computer System Security, Datacenter Infrastructure Management, Wireless Networks, Network OS Administration, Embedded Systems.],
)
