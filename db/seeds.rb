puts "Destroying lists..."
List.destroy_all

puts "Creating lists..."

List.create([
    { name: 'Lista de Compras', author: 'Vitor Navarro' },
    { name: 'Tarefas do Trabalho', author: 'Maria Santos' },
    { name: 'Projetos da Faculdade', author: 'Carlos Oliveira' },
    { name: 'Lista de Tarefas', author: 'João Silva' },
    { name: 'Compras Mensais', author: 'Ana Oliveira' },
    { name: 'Projetos Pessoais', author: 'Pedro Rodrigues' },
    { name: 'Lista de Livros', author: 'Mariana Ferreira' }
  ])

lista_compras = List.find_by(name: 'Lista de Compras')
tarefas_trabalho = List.find_by(name: 'Tarefas do Trabalho')
projetos_faculdade = List.find_by(name: 'Projetos da Faculdade')
lista_tarefas = List.find_by(name: 'Lista de Tarefas')
compras_mensais = List.find_by(name: 'Compras Mensais')
projetos_pessoais = List.find_by(name: 'Projetos Pessoais')
lista_livros = List.find_by(name: 'Lista de Livros')

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

lista_tarefas.items.create!([
    { title: 'Estudar para a prova de matemática', description: 'Revisar álgebra linear e cálculo' },
    { title: 'Enviar relatório para o chefe', description: 'Finalizar relatório e enviar por e-mail' },
    { title: 'Agendar reunião com a equipe', description: 'Marcar reunião para discutir projetos futuros' }
  ])
  
  compras_mensais.items.create!([
    { title: 'Arroz', description: 'Comprar um pacote de arroz de 5kg' },
    { title: 'Feijão', description: 'Comprar um pacote de feijão preto' },
    { title: 'Frutas', description: 'Comprar maçãs, bananas e laranjas' }
  ])
  
  projetos_pessoais.items.create!([
    { title: 'Desenvolver aplicativo mobile', description: 'Iniciar o desenvolvimento do aplicativo utilizando Flutter' },
    { title: 'Aprender fotografia', description: 'Pesquisar cursos e técnicas de fotografia' },
    { title: 'Escrever artigo para o blog', description: 'Escolher um tema e escrever um artigo de qualidade' }
  ])
  
  lista_livros.items.create!([
    { title: '1984', description: 'Romance distópico escrito por George Orwell' },
    { title: 'O Senhor dos Anéis', description: 'Trilogia de fantasia escrita por J.R.R. Tolkien' },
    { title: 'Orgulho e Preconceito', description: 'Romance clássico de Jane Austen' }
  ])

puts "Finished!"