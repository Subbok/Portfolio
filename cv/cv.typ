#import "template.typ": *

#show: cv.with(
  name: "Tomasz Kobus",
  position: "DevOps & MLOps Engineer",
  tagline: [Mgr inż. AI & Data Science · Częstochowa · zdalnie lub hybrydowo],
  lang: "pl",
  contacts: (
    link("mailto:tommkobuss@gmail.com")[tommkobuss\@gmail.com],
    [730 353 483],
    link("https://tomaszkobus.dev")[tomaszkobus.dev],
    link("https://github.com/Subbok")[github.com/Subbok],
    link("https://www.linkedin.com/in/tomasz-kobus/")[linkedin.com/in/tomasz-kobus],
  ),
  footer: [Wyrażam zgodę na przetwarzanie moich danych osobowych zawartych w CV na potrzeby procesu rekrutacji (RODO — Rozporządzenie UE 2016/679, art. 6 ust. 1 lit. a).],
  side: [
    #side-heading[O mnie]
    Inżynier na styku DevOps i MLOps. Piszę Kursor — system floty i rozliczeń dla firmy przewozowej — i prowadzę własną infrastrukturę na NixOS. Twórca CellForge, open-source notebook IDE w Rust. Kontrybutor InkWatchy.

    #side-heading[Główny stack]
    #pills(("NixOS", "Docker / Compose", "Linux", "Cloudflare Tunnels", "NVIDIA / CUDA", "GitHub Actions", "Prometheus / Grafana", "SSH hardening", "Python / Bash", "Git"))

    #side-heading[Programowanie]
    #pills(("Rust", "TypeScript / React", "PostgreSQL", "PyTorch", "Typst", "C++ / ESP32"))

    #side-heading[Języki]
    #level("Polski", 5, "ojczysty")
    #level("Angielski", 4.5, "C1 · Cambridge, 2022")

    #side-heading[Wykształcenie]
    #block(below: 7pt)[
      *mgr inż. Informatyka* \
      #text(size: 8pt)[AI i Data Science] \
      #text(size: 7.6pt, fill: muted)[Politechnika Częstochowska · 2025–2026]
    ]
    #block(below: 7pt)[
      *inż. Informatyka* \
      #text(size: 8pt)[Sieci komputerowe] \
      #text(size: 7.6pt, fill: muted)[Politechnika Częstochowska · 2020–2025]
    ]

    #side-heading[Inne]
    Prawo jazdy kat. B
  ],
)

#section[Doświadczenie]

#entry(
  [Logistyk / Informatyk],
  date: "07.2026 – teraz",
  org: [Probus Sp. z o.o.],
  place: [Żędowice],
)[
  - Planowanie i koordynacja międzynarodowych przewozów osób na trasach Polska – Niemcy
  - Bieżące wsparcie IT firmy
  - Rozwój i wdrażanie Kursora (Rust, React, PostgreSQL)
]

#entry(
  [Instruktor programowania],
  date: "2025 – 2026",
  org: [Giganci Programowania sp. z o.o.],
  place: [Częstochowa],
  stack: [Python, Docker, Linux, Veyon],
)[
  - Zajęcia z programowania dla dzieci 9–12 lat (Scratch, Python, Lua, Minecraft Education)
  - Utrzymanie floty 20 stanowisk (podział trener/student): setup, patching, monitoring Veyon
  - Wdrożenie i utrzymanie edukacyjnych serwerów Minecraft na własnej infrastrukturze
]

#entry(
  [Stażysta IT],
  date: "07.2024",
  org: [Eurobox Polska Sp. z o.o.],
  place: [Lubliniec],
  stack: [Python, Bash, Windows, Linux],
)[
  - Helpdesk, diagnostyka sprzętu i oprogramowania, automatyzacja zadań administracyjnych, konfiguracja stacji roboczych
]

#section[Projekty]

#entry(
  [Kursor — system floty i rozliczeń],
  date: "2026 – teraz",
  org: [Layershift · rozwój i utrzymanie],
  place: [produkcja],
  stack: [Rust (axum, sqlx), PostgreSQL, React, TypeScript, Typst, Docker, Cloudflare Tunnel],
)[
  - Flota, interwały serwisowe z konfigurowalnych reguł, rozliczenia kierowców (formularze mobilne, wydruki PDF w Typst) i wycena tras — zastąpił arkusze Excel
  - Integracje GPS i RCS, portal klienta z grafikiem i rezerwacjami (w przygotowaniu), moduły włączane licencją, w tym edycja JEST dla ekip terenowych
]

#entry(
  [Self-hosted infrastruktura serwerowa],
  date: "2023 – teraz",
  org: [Projekt własny],
  place: [produkcja 24/7],
  stack: [NixOS, Docker Compose, NVIDIA Container Toolkit, Prometheus, Grafana, btrfs],
)[
  - Host na NixOS (flake), usługi w Docker Compose, GPU NVIDIA; dostęp wyłącznie przez Cloudflare Tunnels, SSH na klucze, fail2ban
  - Monitoring z niezależnym drugim punktem na osobnym urządzeniu, btrfs z godzinnymi snapshotami
]

#entry(
  [CellForge — notebook IDE w Rust],
  date: "2025 – teraz",
  org: link("https://github.com/Subbok/CellForge")[github.com/Subbok/CellForge],
  place: [open source],
  stack: [Rust, React 19, TypeScript, Yjs CRDT, ZeroMQ, Typst, CUDA],
)[
  - Alternatywa dla JupyterLab — natywna implementacja protokołu Jupyter; 7 crate'ów (axum, tokio, zeromq-rs), 186+ testów
  - Współpraca w czasie rzeczywistym (Yjs CRDT), reaktywne wykonywanie z analizą zależności AST, hub z JWT i systemem pluginów
  - Eksport PDF przez Typst (\~50× szybciej niż LaTeX); CI/CD: GitHub Actions + GHCR, obraz z PyTorch + CUDA
]

#entry(
  [LLM Benchmark Pipeline — praca magisterska],
  date: "2025 – 2026",
  org: link("https://github.com/Subbok/llm-benchmark-thesis")[github.com/Subbok/llm-benchmark-thesis],
  place: [obroniona 2026],
  stack: [Python, PyTorch, CUDA, Ollama, OpenRouter, HuggingFace, tree-sitter],
)[
  - Ewaluacja 10 modeli LLM (6 komercyjnych + 4 lokalne) na 80 zadaniach: Pass\@1, CodeBLEU, BERTScore, G-Eval (LLM-as-a-Judge)
  - Ewaluacja na GPU z fallbackiem CPU, sandboxowane wykonywanie kodu, pipeline w Bash z zarządzaniem środowiskami conda
]

#entry(
  [InkWatchy — kontrybutor],
  date: "2024 – teraz",
  org: link("https://github.com/Szybet/InkWatchy")[github.com/Szybet/InkWatchy],
  place: [open source],
  stack: [C++, Arduino, ESP32],
)[
  - System i18n (EN/PL/DE/SK) dla firmware zegarka e-ink na ESP32 — 116+ kluczy, walidacja w czasie kompilacji
  - Przepisany moduł kalendarza (import z wielu URL, zdarzenia cykliczne, strefy czasowe), system QuickAlarm
]
