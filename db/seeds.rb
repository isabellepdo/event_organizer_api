# This file has some data for system testing
event = Event.create(name: "Test Event");

array_lecture = [
  ['Diminuindo tempo de execução de testes em aplicações Rails enterprise', 60, false], 
  ['Reinventando a roda em ASP clássico', 45, false], 
  ['Apresentando Lua para as massas', 30, false], 
  ['Erros de Ruby oriundos de versões erradas de gems', 45, false],
  ['Erros comuns em Ruby', 45, false],
  ['Rails para usuários de Django', nil, true],
  ['Trabalho remoto: prós e cons', 60, false],
  ['Desenvolvimento orientado a gambiarras', 45, false],
  ['Aplicações isomórficas: o futuro (que talvez nunca chegaremos)', 30, false],
  ['Codifique menos, Escreva mais!', 30, false],
  ['Programação em par', 45, false],
  ['A mágica do Rails: como ser mais produtivo', 60, false],
  ['Ruby on Rails: Por que devemos deixá-lo para trás', 60, false],
  ['Clojure engoliu Scala: migrando minha aplicação', 45, false],
  ['Ensinando programação nas grotas de Maceió', 30, false],
  ['Ruby vs. Clojure para desenvolvimento backend', 30, false],
  ['Manutenção de aplicações legadas em Ruby on Rails', 60, false],
  ['Um mundo sem StackOverflow', 30, false],
  ['Otimizando CSS em aplicações Rails', 30, false]
]
array_lecture.each do |lecture_data|
  event.lectures.create(name: lecture_data[0], lecture_minutes: lecture_data[1], lightning: lecture_data[2])
end
