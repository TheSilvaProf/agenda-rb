puts "******* BEM VINDO A SUA AGENDA ********"

agenda = {
    Anna: "1111-1111",
    Pedro: "1111-2222"
}

while true
    puts ""
    puts "[1] Adicionar"
    puts "[2] Atualizar"
    puts "[3] Exibir"
    puts "[4] Excluir"
    puts "[5] Sair"
    
    print "Escolha uma opcao: "
    escolha = gets.chomp()
    puts ""

    case escolha
    when "1" 
        print "Insira o nome do contato: "
        nome = gets.chomp()
        if agenda[nome.to_sym].nil?
            print "Insira o telefone: "
            telefone = gets.chomp()
            agenda[nome.to_sym] = telefone
        else
            puts "Este nome jah existe!"
        end
    when "2" 
        puts "Insira o nome que desja atualizar: "
        nome = gets.chomp()
        if agenda[nome.to_sym].nil?
            puts "Este nome nao existe!"
        else
            print "Insira o telefone: "
            telefone = gets.chomp()
            agenda[nome.to_sym] = telefone
        end
    when "3"
        agenda.each do |nome, telefone|
            puts "Nome: #{nome} - Telefone: #{telefone}"
        end
    when "4"
        puts "Digite o nome a ser apagado: "
        nome = gets.chomp()
        if agenda[nome.to_sym].nil?
            puts "Este nome nao existe!"
        else
            agenda.delete(nome.to_sym)
            puts "#{nome} foi deletado."
        end
    when "5"
        break    
    else
        puts "Ops, opcao invalida!"
    end
end
puts " ********  BRIGADUUU  ******** "
