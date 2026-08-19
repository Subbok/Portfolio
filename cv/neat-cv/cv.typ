#import "@preview/neat-cv:0.7.0": (
  contact-info, cv, email-link, entry as neat-entry, item-pills,
  item-with-level, publications, side, social-links,
)

// Ciaśniejszy odstęp między wpisami niż domyślny w szablonie (block above: 1em)
#let entry(..args) = {
  v(-0.4em)
  neat-entry(..args)
}

#set text(lang: "pl")

#show: cv.with(
  author: (
    firstname: "Tomasz",
    lastname: "Kobus",
    email: "tommkobuss@gmail.com",
    address: [Częstochowa, Polska],
    phone: "730 353 483",
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
)

#side[
  = O mnie
  Inżynier na styku DevOps i MLOps. Prowadzę produkcyjną infrastrukturę 30+ kontenerów Docker 24/7 z GPU passthrough. Twórca CellForge — open-source notebook IDE w Rust. Kontrybutor InkWatchy.

  = Kontakt
  #contact-info()

  Otwarty na pracę w Częstochowie lub zdalnie.

  #social-links()

  = Języki
  #item-with-level("Polski", 5, subtitle: "Ojczysty")
  #item-with-level("Angielski", 4.5, subtitle: "C1 Cambridge, 2022")

  = Główny stack
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

  = Inne
  #item-pills((
    "Rust",
    "TypeScript / React",
    "PyTorch",
    "C++ / ESP32",
    "Nginx",
    "MariaDB / Postgres",
  ))

]

= Doświadczenie zawodowe

#entry(
  title: "Logistyk / Informatyk",
  date: "07.2026 – teraz",
  institution: "Probus Sp. z o.o.",
  location: "Żędowice",
)[
  - Planowanie i koordynacja międzynarodowych przewozów osób na trasach Polska – Niemcy
  - Ogólne wsparcie IT — bieżąca pomoc techniczna dla firmy
]

#entry(
  title: "Instruktor Programowania",
  date: "2025 – 2026",
  institution: "Giganci Programowania sp. z o.o.",
  location: "Częstochowa",
)[
  - Prowadzenie zajęć z programowania dla dzieci 9-12 lat (Scratch, Python, Lua, Minecraft Education)
  - Zarządzanie flotą stanowisk edukacyjnych (S0-S19, podział trener/student) — setup, patching, Veyon classroom monitoring
  - Deployment i utrzymanie edukacyjnych serwerów Minecraft na self-hosted infrastrukturze
  - _Stack: Python, Docker, Linux, Veyon_
]

#entry(
  title: "Stażysta IT",
  date: "07.2024",
  institution: "Eurobox Polska Sp. z o.o.",
  location: "Lubliniec",
)[
  - Helpdesk i diagnostyka sprzętowa/programowa, automatyzacja zadań administracyjnych (autostart aplikacji), konfiguracja stacji roboczych
  - _Stack: Python, Bash, Windows, Linux_
]

= Projekty

#entry(
  title: "Self-hosted infrastruktura serwerowa",
  date: "2023 – teraz",
  institution: "Projekt osobisty",
  location: "Produkcja 24/7 · 99.92% uptime",
)[
  - 30+ skonteneryzowanych serwisów na Xeon E5-2680v4 + Quadro RTX 4000 + 2 TB storage (ekwiwalent \~\$500+/mc w AWS)
  - Docker Compose z YAML anchors, izolowanymi sieciami i health checkami; zero-trust expose przez Cloudflare Tunnels
  - Self-hosted cloud (Nextcloud, Home Assistant, Jellyfin + \*arr, Next.js + Postgres) + monitoring (Uptime Kuma, Watchtower, custom Flask power-monitor)
  - SSH hardening (fail2ban, key-only auth), btrfs snapshoty; _Stack: Docker Compose, Cloudflare Tunnels, NVIDIA Container Toolkit, Pelican, Nginx_
]

#entry(
  title: "CellForge — Notebook IDE w Rust",
  date: "2025 – teraz",
  institution: "github.com/Subbok/CellForge",
  location: "Open Source",
)[
  - Alternatywa dla JupyterLab w Rust + React — natywna implementacja Jupyter messaging protocol
  - Backend: 7 crates Rust (axum + tokio + zeromq-rs), 186+ testów; real-time collaboration przez Yjs CRDT (shared editing, remote cursors, per-notebook kernel sharing)
  - PDF export przez Typst (\~50× szybciej niż LaTeX), reactive execution z AST dependency analyzer, hub mode z JWT auth i plugin system
  - CI/CD: GitHub Actions + GHCR, pre-built image Python 3.12 + PyTorch + CUDA; _Stack: Rust, React 19, TypeScript, Yjs CRDT, ZeroMQ, Typst, CUDA_
]

#entry(
  title: "LLM Benchmark Pipeline — Praca Magisterska",
  date: "2025 – 2026",
  institution: "github.com/Subbok/llm-benchmark-thesis",
  location: "Obroniona 2026",
)[
  - Wielowymiarowa ewaluacja 10 modeli LLM (6 komercyjnych + 4 lokalne) na 80 zadaniach — 800 wywołań
  - 4 metryki: Pass\@1 (unit tests), CodeBLEU (AST + dataflow), BERTScore (RoBERTa-large), G-Eval 1-100 (LLM-as-a-Judge)
  - Modele: Claude Opus 4.6, GPT-5.2, Gemini 3.1 Pro, Grok 4, DeepSeek V3.2, KIMI K2.5 + lokalne (Qwen2.5, Gemma3, Mistral-Nemo, Llama3.2 przez Ollama)
  - GPU-accelerated ewaluacja (CUDA/PyTorch) z fallbackiem CPU, sandboxowane wykonywanie kodu, master pipeline Bash z conda env management; _Stack: Python, Bash, PyTorch, CUDA, Ollama, OpenRouter API, HuggingFace, tree-sitter_
]

#entry(
  title: "InkWatchy — kontrybutor open source",
  date: "2024 – teraz",
  institution: "github.com/Szybet/InkWatchy",
  location: "Open Source",
)[
  - Kompletny system i18n (EN/PL/DE/SK) dla firmware zegarka e-ink ESP32 — 116+ kluczy z walidacją compile-time, zero narzutu runtime
  - Przepisany moduł kalendarza (multi-URL import, zdarzenia cykliczne, strefy czasowe), system QuickAlarm; _Stack: C++, Arduino, ESP32_
]

= Wykształcenie

#entry(
  title: "Informatyka — Sztuczna Inteligencja i Data Science (mgr inż.)",
  date: "2025 – 2026",
  institution: "Politechnika Częstochowska",
  location: "Częstochowa",
  [Praca: _"Porównanie wybranych dużych modeli językowych pod kątem generowania odpowiedzi tekstowych i kodu"_ (obroniona 2026). Kursy: Widzenie Komputerowe, Systemy Rekomendacyjne, NLP, Deep Learning, Architektury Obliczeniowe dla AI.],
)

#entry(
  title: "Informatyka — Sieci Komputerowe (inż.)",
  date: "2020 – 2025",
  institution: "Politechnika Częstochowska",
  location: "Częstochowa",
  [Praca: _"Porównanie firmware drukarek 3D — Marlin vs Klipper"_. Kursy: Bezpieczeństwo Systemów Komputerowych, Zarządzanie Infrastrukturą Datacenter, Sieci Bezprzewodowe, Administracja Sieciowymi SO, Systemy Wbudowane.],
)
