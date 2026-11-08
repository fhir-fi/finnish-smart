# REVERSE_ENGINEERING_REPORT — finnish-smart

## A. Diagnóstico geral

### Arquitetura identificada
Implementation Guide (IG) FHIR baseada em SUSHI para o mecanismo SMART App Launch na Finlândia. Estrutura:

- `sushi-config.yaml`: configuração do SUSHI (id, canonical, name, version, fhirVersion, dependências, recursos, páginas, parâmetros, menu)
- `input/fsh/*.fsh`: definições de perfis FHIR em FSH (Patient, Observation, Medication, etc.)
- `input/fsh/*.json`: exemplos de CapabilityStatement, AuditEvent
- `input/pagecontent/*.md`: páginas do IG (index, conformance, examples, downloads, versions)
- `input/includes/*.html`: fragmentos HTML (footer, profile-list-generator)
- `ig.ini`: configuração do IG publisher (template)
- `Dockerfile`, `docker-compose.yml`: ambiente de build (Node.js, fsh-sushi, Java, Ruby/Jekyll)
- `.github/workflows/build.yml`: CI para build e publish no GitHub Pages (branch master)
- `.github/workflows/pr-verification.yml`: CI para verificação de PR (branch master)

### Tecnologias e dependências
- SUSHI / fsh-sushi (FHIR Shorthand)
- FHIR R4 (fhirVersion: 4.0.1)
- Node.js, fsh-sushi, openjdk-17, ruby-full, jekyll, bundler
- Dependências SUSHI: `hl7.fhir.fi.base: latest`, `hl7.fhir.uv.ipa: latest`, `hl7.fhir.uv.smart-app-launch: latest`
- Não há testes automatizados para FSH/StructureDefinitions

### Estado de manutenção
Último commit: `f9f3ef3 fix: correct workflow name from 'Node.js CI' to 'FHIR IG Build & Publish'`. Branch default upstream: `master`. Repositório: `https://github.com/fhir-fi/finnish-smart`. Histórico ativo (v45 PRs mergados, v2.0.0-rc3, etc.).

### Mecanismos de testes existentes
Nenhum teste automatizado encontrado para perfis FSH ou StructureDefinitions. Não há pasta `test/`, nenhum script de validação de FSH.

### Limitações da investigação
- SUSHI/fsh-sushi não instalado; build do IG não executado.
- REA 6.7.0 não operacional neste ambiente; análise estática apenas.

## B. Problemas encontrados

| ID | Título | Severidade | Status | Localização |
|----|--------|------------|--------|-------------|
| REA-finnish-001 | Sem testes automatizados para FSH/StructureDefinitions | P3 | CONFIRMADO | raiz do repo |
| REA-finnish-002 | Dependências SUSHI fixadas como `latest` (builds não reproduzíveis) | P3 | CONFIRMADO | `sushi-config.yaml:19-21` |
| REA-finnish-003 | Workflows apontam apenas para `master` | P3 | CONFIRMADO | `.github/workflows/*.yml` |

### Detalhes dos problemas confirmados

**REA-finnish-001 (P3, CONFIRMADO)**: Não há testes automatizados para validar os perfis FHIR definidos em FSH (patient.fsh, observation.fsh, medication.fsh, etc.) nem as StructureDefinitions geradas. Não há pasta `test/` nem script de validação.

**REA-finnish-002 (P3, CONFIRMADO)**: `sushi-config.yaml:19-21` declara todas as dependências como `latest`:
- `hl7.fhir.fi.base: latest`
- `hl7.fhir.uv.ipa: latest`
- `hl7.fhir.uv.smart-app-launch: latest`

Isso torna os builds não reproduzíveis — uma nova versão de qualquer dependência pode quebrar o IG silenciosamente.

**REA-finnish-003 (P3, CONFIRMADO)**: Ambos os workflows (build.yml, pr-verification.yml) filtram apenas `branches: [master]`. Se o branch default mudar ou se houver trabalho em outras branches, a CI não será executada.

## C. Problemas recorrentes
Nenhum issue recorrente público encontrado para este repositório (verificado via histórico de commits e merges).

## D. Erros não documentados
Todos os itens da seção B são problemas não documentados anteriormente pelo projeto.

## E. Performance
O build do IG é feito via Docker/IG Publisher. Não há operações de runtime sensíveis a performance (é um build estático de documentação).

## F. Melhorias técnicas
- Adicionar testes de validação de FSH/StructureDefinitions (REA-finnish-001)
- Fixar versões das dependências SUSHI em vez de `latest` (REA-finnish-002)
- Considerar incluir outras branches nos workflows de CI (REA-finnish-003)
- Verificar consistência de `releaseLabel` vs `releaselabel` (usado `releaseLabel` corretamente — sem problema)

## G. Plano de execução
Todas as correções são independentes e de baixo risco:
1. REA-finnish-001 — adicionar testes FSH (médio esforço)
2. REA-finnish-002 — fixar versões de dependências (baixo esforço)
3. REA-finnish-003 — ajustar branches dos workflows (baixo esforço)

## H. Resultado esperado
Builds reproduzíveis, validação automatizada de perfis FHIR, CI mais abrangente.

**Ferramentas usadas:** git, gh, PowerShell/terminal, inspeção estática.  
**Limitação:** SUSHI não instalado; build do IG não executado.  
**Ambiente:** Windows, PowerShell 5.1, `C:\Users\User\finnish-smart` (clone do fork, branch `fix/documentation-fixes`, upstream default `master`).
