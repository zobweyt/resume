#set page(paper: "a4", margin: 1.25cm)

#set text(font: "New Computer Modern", lang: "ru", size: 10pt)

#set par(justify: true, leading: 0.5em)

#show link: it => text(fill: rgb("#3333FF"))[#it]

#show heading: it => block(width: 100%, below: 0.6em, above: 1.2em)[
  #set text(weight: "regular", size: 11pt)
  #smallcaps(it.body)
  #v(-0.75em)
  #line(length: 100%, stroke: 1pt)
]

#align(center)[
  #text(size: 19pt, weight: "bold")[Газиев Никита] \
  #v(-0.5em)
  #link("mailto:zobweyt@gmail.com")[zobweyt\@gmail.com] |
  #link("https://github.com/zobweyt")[github.com/zobweyt] |
  #link("https://t.me/zobweyt")[t.me/zobweyt]
]

== Образование

#let education(institution, degree, location, date) = block(width: 100%)[
  *#institution* #h(1fr) #location
]

== Навыки

*Языки*: JavaScript, TypeScript, HTML5, CSS3 (SASS, LESS, TailwindCSS, UnoCSS), Go, Python, SQL, Typst, LaTeX \
*Frontend*: React (Next.js, Zustand), SolidJS (Solid Start), Angular (Taiga UI), Astro, Zod, Valibot, SSR, Figma \
*Backend*: Node.js, Bun, Deno, ElysiaJS, FastAPI, Pydantic, Jinja2, Alembic, SQLAlchemy, SQLite, PostgreSQL, Redis \
*DevOps*: Linux, Docker, Nginx, Nix, Git, GitHub Actions, GitLab CI/CD, Grafana, Prometheus \
*Тестирование*: Storybook, Vitest, Playwright, pytest \

== Опыт

#let work(company, role, location, date, bullets) = block(width: 100%)[
  *#role* #h(1fr) #date \
  #v(-0.4em)
  #bullets
]

== Проекты

#let project(name, date, tech_stack, link_text, bullets) = block(width: 100%)[
  *#name* | _ #tech_stack _ #h(1fr) #date \
  #v(-0.6em)
  #text(size: 9pt)[#link("https://" + link_text)[#link_text]]
  #v(-0.4em)
  #bullets
]

#project(
  "Силушка",
  "2025",
  "TypeScript, SolidJS, TailwindCSS, IndexedDB, Playwright, Vitest, Valibot, Modular Forms",
  "github.com/zobweyt/silushka",
  [
    - Разработал клиентское фитнес-приложение с архитектурой Feature-Sliced Design (FSD)
    - Настроил локальное хранение данных в IndexedDB и LocalStorage
    - Создал интерфейсы форм через Modular Forms с декларативной валидацией на базе Valibot
    - Реализовал геймификацию: анимации, магазин, баланс монет, достижения и динамические реакции аватара
    - Покрыл ключевые пользовательские сценарии E2E-тестами на Playwright и юнит-тестами на Vitest
    - Сверстал семантический интерфейс с поддержкой стандартов доступности WAI-ARIA
  ],
)

== Достижения

#let achievement(title, role, year) = [
  *#title*, #role #h(1fr) #year \
]

#achievement("Международная олимпиада по промышленной разработке PROD", "победитель, лучшая команда", 2025)
#achievement("Национальная технологическая олимпиада, автоматизация бизнес-процессов", "призёр", 2025)
#achievement("Хакатон Международной олимпиады по промышленной разработке PROD", "лучшая команда", 2025)
#achievement("Хакатон HSE Vibe Hack", "лучшая команда", 2025)
