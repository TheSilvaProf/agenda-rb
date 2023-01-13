



@agenda = [
    {nome: "Diego", telefone: "99993333"}
    {nome: "Fulano", telefone: "33339999"}
]

def todos_contatos
    @agenda.each do |Contato|
        puts "#{Contato[:nome]} - #{Contato[:telefone]}"

end

loop do

puts "1. Contatos\n2. Adicionar Contato\n3. Ver Contato\n4. Editar Contato\n5. Remover Contato\n0. Sair"
    codigo = gets.chomp.to_i
    puts "1. Contatos\n2. Adicionar Contato\n3. Ver Contato\n4. Editar Contato\n5. Remover Contato\n0. Sair"
    codigo = gets.chomp.to_i

    case
    when codigo == 0
        puts "Ateh Mais!"
        break
    when codigo == 1
        todos_contatos

    end

end

