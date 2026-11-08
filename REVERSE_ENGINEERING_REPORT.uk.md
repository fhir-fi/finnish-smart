# REVERSE_ENGINEERING_REPORT — finnish-smart

## A. Загальний діагноз

### Виявлена архітектура
Інструкція щодо впровадження (IG) FHIR на основі SUSHI для механізму SMART App Launch у Фінляндії. Структура:

- `sushi-config.yaml`: конфігурація SUSHI (id, canonical, name, version, fhirVersion, залежності, ресурси, сторінки, параметри, меню)
- `input/fsh/*.fsh`: визначення профілів FHIR у FSH (Patient, Observation, Medication тощо)
- `input/fsh/*.json`: приклади CapabilityStatement, AuditEvent
- `input/pagecontent/*.md`: сторінки IG (index, conformance, examples, downloads, versions)
- `input/includes/*.html`: HTML-фрагменти (footer, profile-list-generator)
- `ig.ini`: конфігурація видавця IG (template)
- `Dockerfile`, `docker-compose.yml`: середовище збірки (Node.js, fsh-sushi, Java, Ruby/Jekyll)
- `.github/workflows/build.yml`: CI для збірки та публікації на GitHub Pages (гілка master)
- `.github/workflows/pr-verification.yml`: CI для верифікації PR (гілка master)

### Технології та залежності
- SUSHI / fsh-sushi (FHIR Shorthand)
- FHIR R4 (fhirVersion: 4.0.1)
- Node.js, fsh-sushi, openjdk-17, ruby-full, jekyll, bundler
- Залежності SUSHI: `hl7.fhir.fi.base: latest`, `hl7.fhir.uv.ipa: latest`, `hl7.fhir.uv.smart-app-launch: latest`
- Немає автоматизованих тестів для FSH/StructureDefinitions

### Стан підтримки
Останній коміт: `f9f3ef3 fix: correct workflow name from 'Node.js CI' to 'FHIR IG Build & Publish'`. Галтьова гілка upstream: `master`. Репозиторій: `https://github.com/fhir-fi/finnish-smart`. Активна історія (45 PR mergedy, v2.0.0-rc3 тощо).

### Існуючі механізми тестування
Автоматизованих тестів не виявлено для профілів FSH або StructureDefinitions. Немає теки `test/` та скрипта валідації FSH.

### Обмеження дослідження
- SUSHI/fsh-sushi не встановлений; збірку IG не виконано.
- REA 6.7.0 не працює в цьому середовищі; лише статичний аналіз.

## B. Виявлені проблеми

| ID | Заголовок | Severity | Статус | Локація |
|----|-----------|----------|--------|----------|
| REA-finnish-001 | Немає автоматизованих тестів для FSH/StructureDefinitions | P3 | CONFIRMED | корінь проєкту |
| REA-finnish-002 | Залежності SUSHI закріплені як `latest` (збірки невідтворювані) | P3 | CONFIRMED | `sushi-config.yaml:19-21` |
| REA-finnish-003 | CI workflows цілься лише на `master` | P3 | CONFIRMED | `.github/workflows/*.yml` |

### Деталі підтверджених проблем

**REA-finnish-001 (P3, CONFIRMED)**: Немає автоматизованих тестів, що валідують профілі FHIR, визначені у FSH (patient.fsh, observation.fsh, medication.fsh тощо), ani згенеровані StructureDefinitions. Немає теки `test/` або скрипта валідації.

**REA-finnish-002 (P3, CONFIRMED)**: `sushi-config.yaml:19-21` оголошує всі залежності як `latest`:
- `hl7.fhir.fi.base: latest`
- `hl7.fhir.uv.ipa: latest`
- `hl7.fhir.uv.smart-app-launch: latest`

Це робить збірки невідтворюваними — нова версія будь-якої залежності може тихо ламати IG.

**REA-finnish-003 (P3, CONFIRMED)**: Обидва workflow (build.yml, pr-verification.yml) фільтрують лише `branches: [master]`. Якщо гałтьова гілка зміниться або робота відбуватиметься в інших гілках, CI не запуститься.

## C. Повторювані проблеми
Повторювалися публічні проблеми для цього репозиторію не знайдено (перевірено через історію комітів та злиття).

## D. Недокументовані помилки
Усі пункти розділу B — це проблеми, що раніше не були задокументовано проєктом.

## E. Продуктивність
Збірку IG виконується через Docker/IG Publisher. Немає операцій продуктивності під час виконання (статична збірка документації).

## F. Технічні вдосконалення
- Додати тести валідації FSH/StructureDefinitions (REA-finnish-001)
- Закріпити версії залежностей SUSHI замість `latest` (REA-finnish-002)
- Розглянути включення інших гілок у workflow CI (REA-finnish-003)
- Перевірити консистентність `releaseLabel` vs `releaselabel` (використовується `releaseLabel` правильно — проблеми немає)

## G. План виконання
Усі правки є незалежними та низькоризичними:
1. REA-finnish-001 — додати тести FSH (середнє зусилля)
2. REA-finnish-002 — закріпити версії залежностей (низьке зусилля)
3. REA-finnish-003 — налагодити гілки workflow (низьке зусилля)

## H. Очікуваний результат
Відтворювані збірки, автоматизована валідація профілів FHIR, ширше pokrittya CI.

**Інструменти:** git, gh, PowerShell/термінал, статичний аналіз коду.  
**Обмеження:** SUSHI не встановлений; збірку IG не виконано.  
**Середовище:** Windows, PowerShell 5.1, `C:\Users\User\finnish-smart` (клонフォрку, гілка `fix/documentation-fixes`, галтьова гілка upstream `master`).

Переклад технічний, виконаний автоматизовано; рекомендується перегляд носієм мови перед використанням якнормативного посилання.
