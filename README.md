[![Build Status](https://travis-ci.org/henroca/math-comparison.svg?branch=master)](https://travis-ci.org/henroca/math-comparison)
[![Test Coverage](https://api.codeclimate.com/v1/badges/207b4ebd66bfb40aee05/test_coverage)](https://codeclimate.com/github/henroca/math-comparison/test_coverage)
[![Code Climate](https://codeclimate.com/github/codeclimate/codeclimate/badges/gpa.svg)](https://codeclimate.com/github/henroca/math-comparison)

# Math::Comparison

Uma bibliotéca em `Ruby` para comparar respostas matemática

## Instalação

Adicionar no `Gemfile`

```ruby
gem 'math-comparison'
```

E executar

    $ bundle

## Uso

Exemplo de uso: 

```ruby
comparator = Math::Comparison::Comparator.make '2x + 4', 'x + 2'
comparator.equal?
```

## Contribuir

Clonar o repositório e utilizar o `Docker` e `Docker Compose` e rodar os comandos:

`docker-compose up -d`

rodar teste:

`docker-compose exec math_comparison bundle exec rspec`

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
