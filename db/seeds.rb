# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Create events
Event.first_or_create({
  name: "Fim de Semana Secreto",
  description: "Um evento exclusivo para membros selecionados, oferecendo atividades únicas e experiências memoráveis.",
  budget: 80,
  slug: "fim-de-semana-secreto",
  creator_user_id: 1
})
Event.first_or_create({
  name: "Jantar de Amigos de Faculdade",
  description: "Reunião anual dos amigos da faculdade para relembrar os bons tempos e criar novas memórias juntos.",
  budget: 30,
  slug: "jantar-de-amigos-de-faculdade",
  creator_user_id: 1
}),
Event.first_or_create({
  name: "Aniversário da Avó",
  description: "Celebração especial para comemorar o aniversário da avó com toda a família reunida.",
  budget: 50,
  slug: "aniversario-da-avo",
  creator_user_id: 1
})
