essa feature é responsável por mostrar as reviews e notas dos filmes
dentro do aplicativo "opinei"
add

Feature: Mostrar reviews e nota_
    As a usuário comum
    I want to ver review de outro usuário sobre um filme e a nota dada por ele
    So that eu possa ler a opinião de um usuário sobre um filme

Scenario: o usuário quer acessar uma review e a nota de um filme
    Given o usuário "David_Oscar" está logado no sistema
    And o usuário está na página "resultados da busca" para o filme "A lista de Schindler"
    When seleciona o filme "A lista de Schindler"
    Then ele é redirecionado para a pagina "filme_schindler"
   And é exibido no sistema uma lista com a reviews e notas do filme

Scenario: o usuário quer acessar as reviews e as notas que outro usuário postou
    Given o usuário "David_Oscar" está logado no sistema
    And o usuário está na página de "resultados da busca" para o usuário "Quinhas_Ab"
    When seleciona o resultado do usuário "Quinhas_Ab"
    Then ele é redirecionado para a pagina "usuario_quinhas_ab"
    And é exibido no sistema uma lista com a reviews e notas publicadas por "Quinhas_Ab"