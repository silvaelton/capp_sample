## Requsitos

- PostgreSQL
- Rails 4.2.1


## Conhecimentos utilizados

- RubyOnRails 4
- Pattern MVC
- PostgreSQL
- Heroku
- Amazon S3
- Emissão de boleto bancário
- Rails UJS (nested_form)


## Primeiros passos

1. Execute `bundle install`
2. Configure initialize/carrierwave.rb (envio de arquivos para Amazon)
3. Configure o config/database.yml com os dados do seu banco.
2. Execute `rake db:create`
3. Execute `rake db:migrate`
4. Execute `rake db:seed`
5. Execute `rails s`


## Visão Geral - Negócio

A aplicação é dividida em dois escopos.

1. Portal

O portal pode ser acessado pela raíz da aplicação `http://localhost:3000/`, nele será listado todos os concursos, suas páginas, interações e etc.

Rotas do portal em `engines/portal/config/routes.rb`

2. Módulo de gestão

O módulo de gestão pode ser acessado através da url `http://localhost:3000/gestao`, nele está contido todas as informações reference a gestão dos concursos.


Para acessar, por padrão o usuário e senha são

email: `homolog@homolog.com`
senha: `123456789`

Você poderá trocar essas informações em `config/db/seed.rb`


## Visão Geral - Rails

1. A aplicação utiliza `rails engines`, todas a engines estão montadas em `/engines`, para mais detalhes [Rails engines doc](http://guides.rubyonrails.org/engines.html)

2. Para emissão de boletos a aplicação utiliza `gem brcobranca`, atualmente somente emissão pelo BB está configurada.

3. Arquivos de modelagem estão em `/doc`, a modelagem foi gerada através do StarUML (Alguns campos da modelagem podem estar em ordem errada ou não estarem presentes, a aplicação muda constantemente com regras de diferentes dependendo do concurso)

4. A aplicação esta configurada para boot no Heroku.

5. A `gem carrierwave` está configurada para envio de arquivos para o Amazon S3. Necessário configurar

6. A pasta `views/layouts` contém o layout base da aplicação.

7. Diversas validações de data foram removidas, pois a diferença entre regras de negócio tornava impossível a manutenção.

8. Tudo que tiver relação com o `portal` estará em `engines/portal`, como facilitador, observe o arquivo `engines/portal/config/routes.rb` para você entender o fluxo da aplicação.


## Observações

1. A Aplicação está rodando por algum tempo e já realizou dois concursos com regras de negócio completamente diferentes, com isso esta aplicação é muito mutável e adaptavél em alguns contextos. Poderá ser necessário que você realize modificações para que ela se adapte a sua regra de negócio.

2. Esta aplicação esta sendo migrada para MySQL com isso existe alguns recursos que serão desativados.

3. Esta aplicação esta sendo migrada para o ambiente da HostGator, com isso existe alguns recursos que serão desativados.

4. A aplicação é muito simples, mas possui regras de negócio que tornam ela complexa de ser aplicada normalmente. Mas com um pouco de conhecimento em RubyonRails será facilmente corrigida para sua regra de negócio.