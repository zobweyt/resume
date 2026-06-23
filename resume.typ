#set page(paper: "a4", margin: 1.25cm)

#set text(font: "New Computer Modern", lang: "ru", size: 10pt)

#set par(justify: true, leading: 0.5em)

#show link: it => text(fill: rgb("#3333FF"))[#it]

#show heading: it => block(below: 0.6em, above: 1.2em)[
  #set text(weight: "regular", size: 11pt)
  #smallcaps(it.body)
  #v(-0.75em)
  #line(length: 100%, stroke: 1pt)
]

#align(center)[
  #text(size: 23pt, weight: "bold")[#smallcaps("Газиев Никита")] \
  #v(-0.25em)
  #link("mailto:zobweyt@gmail.com")[zobweyt\@gmail.com] |
  #link("https://github.com/zobweyt")[github.com/zobweyt] |
  #link("https://t.me/zobweyt")[t.me/zobweyt]
]

== Образование

#let education(institution, degree, location, date) = block()[
  *#institution* #h(1fr) #location \
  _ #degree _ #h(1fr) #date
]

#education(
  "Международная школа смешанного обучения (МШСО)",
  "Среднее общее образование",
  "Москва",
  "2021--2026"
)

#education(
  "Учи.Дома, Федеральный проект «Код будущего» (Минцифры РФ)",
  "Python Pro --- промышленная разработка (144 ак.ч.)",
  "Онлайн",
  "2022"
)

== Навыки

#let skill(category, items) = [
  *#category*: #items \
]

#skill("Языки", "JavaScript, TypeScript, HTML5, CSS3 (SASS, LESS, TailwindCSS, UnoCSS), Python, SQL, Typst, LaTeX")
#skill("Frontend", "React (Next.js, Zustand), SolidJS (Solid Start), Angular (Taiga UI), Astro, Zod, Tanstack Query, Figma")
#skill("Backend", "Node.js, Bun, Deno, ElysiaJS, FastAPI, Pydantic, Jinja2, Alembic, SQLAlchemy, SQLite, PostgreSQL, Redis")
#skill("DevOps", "Linux, Docker, Docker Compose, Nginx, Nix, Git, GitHub Actions, GitLab CI/CD, Grafana, Prometheus")
#skill("Тестирование", "Storybook, Vitest, Playwright, pytest")

== Проекты

#let project(name, date, tech_stack, link_text, bullets) = block()[
  *#name* | _ #tech_stack _ #h(1fr) #date \
  #v(-0.6em)
  #text(size: 9pt)[#link("https://" + link_text)[#link_text]]
  #v(-0.4em)
  #bullets
]

#project(
  "Pay Me More",
  "2025",
  "TypeScript, React, Mantine, Tanstack Query, Rsbuild, Biome, Zod, PostCSS, Docker Compose",
  "github.com/zobweyt/pay-me-more",
  [
    - В команде разработал UI сервиса на базе ИИ для оценки зарплат и генерации рекомендаций по резюме
    - Добавил Drag-and-Drop функциональность для загрузки и парсинга резюме из PDF файла
    - Реализовал отзывчивый UX с обработкой долгих ИИ-запросов и отменой предыдущих по необходимости
    - Создал интерфейс авторизации, личного кабинета и внедрил систему сохранения истории оценок
    - Использовал Tanstack Query для кэширования сетевых запросов и Zod для валидации всех форм
    - Сверстал интерфейс на Mantine с поддержкой динамических тем (светлая/тёмная/системная)
    - Настроил мониторинг производительности и метрик удовлетворенности через Grafana и Prometheus
  ],
)

#project(
  "Squady",
  "2025",
  "TypeScript, React, Recharts, Next.js, Motion, Maskito, MDX, Docker Compose, shadcn",
  "github.com/rapid-integration/squady",
  [
    - Разработал UI платформы формирования команд и управления проектами для хакатонов и олимпиад
    - Спроектировал интерактивный дашборд управления командой и гибкие фильтры поиска контента
    - Добавил плавные анимации интерфейса для улучшения пользовательского опыта (UX)
    - Настроил MDX для создания интерактивной онлайн-документации сервиса
    - Настроил контейнеризацию всей многокомпонентной системы через Docker и Docker Compose
  ],
)

#project(
  "BookIT",
  "2025",
  "TypeScript, SolidJS, Solid Router, TailwindCSS, Vite, Valibot, Modular Forms",
  "github.com/Central-University-IT-prod/2025-final-command-team-27-bookit",
  [
    - В команде разработал интерфейс приложения для бронирования помещений в коворкинге
    - Добавил динамическое отображение занятости мест на интерактивную карту помещений
    - Реализовал бронирование в 2 клика для авторизованных пользователей
    - Создал админ-панель для корректирования информации о пользователях и их прав доступа
    - Подключил интерактивные графики и бизнес-метрики коворкинга через Grafana в админ-панель
    - Разработал клиентский модуль генерации и сканирования QR-кодов для мгновенной верификации бронирований
  ],
)

#project(
  "Силушка",
  "2025",
  "TypeScript, SolidJS, TailwindCSS, IndexedDB, Playwright, Vite, Vitest, Valibot, Modular Forms",
  "github.com/zobweyt/silushka",
  [
    - Разработал клиентское фитнес-приложение на архитектуре Feature-Sliced Design (FSD)
    - Настроил локальное хранение данных в IndexedDB и LocalStorage
    - Создал интерфейсы больших форм через Modular Forms с декларативной валидацией на базе Valibot
    - Реализовал геймификацию: анимации, магазин, баланс монет, достижения и динамические реакции аватара
    - Покрыл ключевые пользовательские сценарии E2E-тестами на Playwright и unit-тестами на Vitest
    - Сверстал семантический интерфейс по стандартам доступности WAI-ARIA
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
