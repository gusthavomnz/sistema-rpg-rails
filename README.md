# Sistema RPG

Disciplina: **Tópicos Especiais de Banco de Dados**  
Stack: Ruby 3.3.11 · Rails 8.1 · MySQL · Active Record

## Setup

```bash
cd library
bundle install
```

Crie `.env` (não versionado) em `library/`:

```env
DB_USERNAME=root
DB_PASSWORD=sua_senha
DB_HOST=127.0.0.1
```

```bash
rails db:create
rails server
```

## Testes

```bash
rails test
```

## Popular banco

```bash
bin/rails db:seed
```

---

## Endpoints — Postman

**Base URL:** `http://localhost:3000`  
**Header (requests com body):** `Content-Type: application/json`

### Operações Avaliadas

#### 1. SELECT — todos os personagens
`GET /personagems`
```json
[{"id":1,"nome":"Arthas","nivel":10,"id_inventario_id":1},{"id":2,"nome":"Gandalf","nivel":15,"id_inventario_id":2}]
```

#### 2. SELECT — inventário com itens (duas tabelas)
`GET /inventarios/1`
```json
{"id":1,"capacidade_maxima":20,"euro":100,"items":[{"id":1,"id_inventario_id":1,"nome":"Espada Longa","tipo":"Arma","raridade":"Incomum","peso":"3.5"},{"id":2,"id_inventario_id":1,"nome":"Escudo de Ferro","tipo":"Armadura","raridade":"Comum","peso":"6.0"}]}
```

#### 3. INSERT simples — criar personagem
`POST /personagems` · Body:
```json
{"personagem": {"nome": "Legolas", "nivel": 8, "id_inventario_id": 1}}
```

#### 4. INSERT 1:N — criar item dentro de inventário
`POST /items` · Body:
```json
{"item": {"id_inventario_id": 1, "nome": "Poção de Vida", "tipo": "Consumível", "raridade": "Comum", "peso": 0.5}}
```

#### 5. UPDATE simples — atualizar personagem
`PATCH /personagems/1` · Body:
```json
{"personagem": {"nome": "Arthas", "nivel": 20}}
```

#### 6. DELETE simples — deletar personagem
`DELETE /personagems/1` → `204 No Content`

#### 7. DELETE N:N — remover vínculo personagem ↔ missão
`DELETE /personagem_missaos/3` → `204 No Content`
> Remove vínculo Gandalf → Matar o Dragão

---

### Scaffold (extras)

| Método | Endpoint | Body |
|--------|----------|------|
| GET | `/inventarios` | — |
| POST | `/inventarios` | `{"inventario": {"capacidade_maxima": 10, "euro": 30}}` |
| PATCH | `/inventarios/1` | `{"inventario": {"capacidade_maxima": 25, "euro": 150}}` |
| DELETE | `/inventarios/2` | — |
| GET | `/guerreiros` | — |
| POST | `/guerreiros` | `{"guerreiro": {"id_personagem_id": 1, "forca_base": 60, "tipo_arma_preferida": "Arco"}}` |
| PATCH | `/guerreiros/1` | `{"guerreiro": {"forca_base": 95, "tipo_arma_preferida": "Lança"}}` |
| DELETE | `/guerreiros/1` | — |
| GET | `/magos` | — |
| POST | `/magos` | `{"mago": {"id_personagem_id": 1, "mana_base": 150, "escola_magia": "Sombra"}}` |
| PATCH | `/magos/1` | `{"mago": {"mana_base": 400, "escola_magia": "Tempestade"}}` |
| DELETE | `/magos/1` | — |
| GET | `/ficha_de_statuses` | — |
| POST | `/ficha_de_statuses` | `{"ficha_de_status": {"id_personagem_id": 1, "vida": 90, "mana": 60, "forca": 50, "defesa": 35, "inteligencia": 40}}` |
| PATCH | `/ficha_de_statuses/1` | `{"ficha_de_status": {"vida": 150, "forca": 90}}` |
| DELETE | `/ficha_de_statuses/2` | — |
| GET | `/missaos` | — |
| POST | `/missaos` | `{"missao": {"titulo": "Explorar Dungeon", "descricao": "Mapear a masmorra", "raridade": "Incomum", "recompensa_xp": 250}}` |
| PATCH | `/missaos/1` | `{"missao": {"recompensa_xp": 750}}` |
| DELETE | `/missaos/2` | — |
| GET | `/personagem_missaos` | — |
| POST | `/personagem_missaos` | `{"personagem_missao": {"id_personagem_id": 2, "id_missao_id": 2}}` |
| GET | `/items` | — |
| PATCH | `/items/1` | `{"item": {"nome": "Espada Longa +1", "raridade": "Rara"}}` |
| DELETE | `/items/3` | — |

---

### Dados no banco (referência rápida)

| Tabela | IDs |
|--------|-----|
| inventarios | 1 (Arthas), 2 (Gandalf) |
| personagems | 1 (Arthas), 2 (Gandalf) |
| guerreiros | 1 → Arthas |
| magos | 1 → Gandalf |
| ficha_de_statuses | 1 (Arthas), 2 (Gandalf) |
| items | 1, 2 (inv=1 · Arthas), 3 (inv=2 · Gandalf) |
| missaos | 1 (Matar o Dragão), 2 (Escolta) |
| personagem_missaos | 1 (Arthas→Dragão), 2 (Arthas→Escolta), 3 (Gandalf→Dragão) |
