# Library — Sistema RPG

Disciplina: **Tópicos Especiais de Banco de Dados**  
Stack: Ruby 3.3.11 · Rails 8.1.3 · MySQL · Active Record

## Setup

```bash
bundle install
```

Crie `.env` (não versionado) com suas credenciais MySQL:

```env
DB_USERNAME=root
DB_PASSWORD=sua_senha
DB_HOST=127.0.0.1
```

```bash
rails db:create
rails server          # http://localhost:3000
```

## Testes

```bash
rails test
```
