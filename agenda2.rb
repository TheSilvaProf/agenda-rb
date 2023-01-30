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
        
    end
    puts agenda
end