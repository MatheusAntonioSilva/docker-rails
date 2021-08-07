## Checks de Bancos de Dados

Aplicação construida para validação de aula de docker/kubernates.
---

Está APP é composta por um docker-compose com mysql e uma api em rails. Seu dockerfile foi contruido em cima da imagem do `ruby:3.0.2`

--- 

### Instalação e Setup da Aplicação

- Execute os comandos a baixo após clonar o projeto
- Crie uma pasta `data` para salvar os dados do `mongo`: `mkdir data && cd data && mkdir mongodb && cd mongodb && mkdir database`

```
docker-compose build
docker-compose up
docker-compose exec app bash
rake db:create
rake db:migrate
rake db:seed
```

### Comportamento

- Para validar se o serviço do mysql está integrado com aplicação basta acessar após execução dos comandos acima
```ruby
http://0.0.0.0:3000/checks
```

