puts "Destroying lists..."
List.destroy_all

puts "Creating lists..."

List.create([
    { name: 'Lista de Compras', author: 'Vitor Navarro' },
    { name: 'Tarefas do Trabalho', author: 'Maria Santos' },
    { name: 'Projetos da Faculdade', author: 'Carlos Oliveira' }
  ])

lista_compras = List.find_by(name: 'Lista de Compras')
tarefas_trabalho = List.find_by(name: 'Tarefas do Trabalho')
projetos_faculdade = List.find_by(name: 'Projetos da Faculdade')

lista_compras.items.create!([
    { title: 'Leite', description: 'Comprar um litro de leite' },
    { title: 'Pão', description: 'Comprar um pacote de pão' },
    { title: 'Ovos', description: 'Comprar uma dúzia de ovos' }
])
  
tarefas_trabalho.items.create!([
    { title: 'Preparar apresentação', description: 'Fazer apresentação do progresso dessa sprint' },
    { title: 'Reunião com PO', description: 'Discutir requisitos do projeto e regras de negócio' },
    { title: 'Implementar pagamento Pix', description: 'Fazer implementação da integração com a API do PIX' }
])

projetos_faculdade.items.create!([
{ title: 'Estudar para a prova de IA', description: 'Deep Learning, IA fraca x IA forte e Data Science' },
{ title: 'Preparar apresentação pôster TCC', description: 'Analisar qual a melhor forma de falar sobre a implementação da API' },
{ title: 'Terminar tarefa de teoria da computação', description: 'Finalizar exercícios 5 e 6 da lista' },
])

puts "Finished!"