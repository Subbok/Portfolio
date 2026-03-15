#import "@preview/neat-cv:0.7.0": (
  contact-info, cv, email-link, entry, item-pills, item-with-level,
  publications, side, social-links,
)

#set text(lang: "pl")

#show: cv.with(
  author: (
    firstname: "Tomasz",
    lastname: "Kobus",
    email: "tommkobuss@gmail.com",
    address: [Częstochowa, Polska],
    phone: "730 353 483",
    position: ("DevOps Engineer", "Site Reliability Engineer"),
    website: "https://tomaszkobus.dev",
    github: "Subbok",
    linkedin: "tomasz-kobus",
  ),
  profile-picture: image("profile.png"),
  accent-color: rgb("#0066cc"),
  header-color: rgb("#35414d"),
  body-font-size: 9.7pt,
  side-width: 3.5cm,
)

#side[
  = O mnie
  Utrzymuję produkcyjną infrastrukturę 16+ kontenerów Docker 24/7. Kontrybutor open source (InkWatchy). Szukam roli DevOps/SRE z naciskiem na CI/CD i monitoring.

  = Kontakt
  #contact-info()

  Otwarty na pracę w Częstochowie lub zdalnie.

  #social-links()

  = Języki
  #item-with-level("Polski", 5, subtitle: "Ojczysty")
  #item-with-level("Angielski", 4.5, subtitle: "C1 Cambridge, 2022")

  = Technologie
  #item-pills((
    "Docker / Compose",
    "Linux (Debian/Arch)",
    "Python / Bash",
    "Git / GitHub",
    "Cloudflare Tunnels",
    "Nginx",
    "CI/CD (GitHub Actions)",
    "Uptime Kuma",
  ))

  = Inne
  #item-pills((
    "Rust",
    "C++ / Arduino",
    "Svelte",
    "SSH Hardening",
    "MariaDB",
    "ESP32",
  ))

]

= Doświadczenie zawodowe

#entry(
  title: "Trener Programowania",
  date: "04.2025 – teraz",
  institution: "Giganci Programowania sp. z o.o.",
  location: "Częstochowa",
)[
  - Prowadzenie zajęć z programowania dla dzieci 9-12 lat (Scratch, Python, Lua, Minecraft Education)
  - Zarządzanie serwerem edukacyjnym Minecraft na własnej infrastrukturze Docker
  - Zarządzanie szkolnymi laptopami — organizacja plików, wdrażanie narzędzi, rozwiązywanie problemów
  - _Stack: Python, Docker, Linux_
]

#entry(
  title: "Stażysta IT",
  date: "07.2024",
  institution: "Eurobox Polska Sp. z o.o.",
  location: "Lubliniec",
)[
  - Wsparcie techniczne (helpdesk), diagnostyka i rozwiązywanie problemów sprzętowych/programowych
  - Automatyzacja zadań administracyjnych (autostart aplikacji), konfiguracja stacji roboczych
  - _Stack: Python, Bash, Windows, Linux_
]

= Projekty

#entry(
  title: "Infrastruktura Self-Hosted",
  date: "2023 – teraz",
  institution: "Projekt osobisty",
  location: "Produkcja 24/7",
)[
  - 16+ kontenerów Docker na Ubuntu Server (Jellyfin, Nextcloud, JupyterHub GPU, Pelican Panel, Uptime Kuma, Guacamole)
  - Usługi webowe przez Cloudflare Tunnels (zero-trust), serwery gier na portach publicznych
  - Automatyzacja deploymentu (docker-compose), migracja Pterodactyl → Pelican Panel
  - _Stack: Docker Compose, Cloudflare Tunnels, Nginx, MariaDB_
]

#entry(
  title: "LLM Benchmark Pipeline — Praca Magisterska",
  date: "2025 – teraz",
  institution: "github.com/Subbok",
  location: "GitHub",
)[
  - Pipeline do porównania 10 modeli LLM na zadaniach tekstowych i kodowych
  - Automatyczne zbieranie odpowiedzi (Ollama + OpenRouter API), ewaluacja wieloma metrykami (CodeBLEU, BERTScore, G-Eval)
  - _Stack: Python, Bash, PyTorch, CUDA, Ollama_
]

#entry(
  title: "InkWatchy — kontrybutor open source",
  date: "2024 – teraz",
  institution: "github.com/Subbok",
  location: "GitHub",
)[
  - Framework i18n (EN/PL/DE/SK) dla firmware zegarka e-ink na ESP32. PRs zmergowane do głównego repo.
  - _Stack: C++, Arduino, ESP32_
]

= Wykształcenie

#entry(
  title: "Informatyka — AI i Data Science (mgr)",
  date: "2025 – teraz",
  institution: "Politechnika Częstochowska",
  location: "Częstochowa",
  [Praca: _"Porównanie wybranych dużych modeli językowych pod kątem generowania odpowiedzi tekstowych i kodu"_. Nierelacyjne bazy danych, uczenie maszynowe, analiza danych, AI.],
)

#entry(
  title: "Informatyka — Sieci Komputerowe (inż.)",
  date: "2020 – 2025",
  institution: "Politechnika Częstochowska",
  location: "Częstochowa",
  [Praca: _"Porównanie firmware drukarek 3D — Marlin vs Klipper"_. Projektowanie, konfiguracja i administracja sieci, diagnostyka systemów.],
)
