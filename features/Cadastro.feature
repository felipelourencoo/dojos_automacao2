#language: pt
#utf-8

@Cadastro
Funcionalidade: Executar um cadastro no OrangeHMR
  Eu como participante do dojo
  Quero me cadastrar no site OrangeHMR
  e efeturar um cadastro
  Para treinar meus conhecimentos em automacao

Esquema do Cenário: Cadastro no site OrangeHMR
  Dado que eu faça login no sistema
  E que esteja na página inicial do site Orange HMR
  Quando efetuar um cadastro dos empregados inserindo "<inicio>" "<meio>" "<fim>" "<usuario>" "<senhausu>"
  Então deverá aparecer mensagem de sucesso

Exemplos:
  |   inicio  |   meio     |   fim         |   usuario    |   senhausu  |
  |   Ted     |   Evelyn   |   Mosby       |   TedEvMos   |   1234      |
  |   Lily    |   Aldrin   |   Eriksen     |   LilAlErik  |   5678      |
  |   Robin   |   Charles  |   Scherbatsky |   RobChSky   |   9012      |
