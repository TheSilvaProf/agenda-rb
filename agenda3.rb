# coding: utf-8
puts "#######  BEM VINDO A AGENDA  #######"
puts ""
agenda = {
    Amanda: "0000-9999",
    Leticia: "9999-1111"
}

while (true)
    puts ""
    puts "1 - Adicionar."
    puts "2 - Atualizar."
    puts "3 - Exibir."
    puts "4 - Excluir."
    puts "5 - Sair."

    print "Escolha a opcao: "
    opcao = gets.chomp()
    puts ""
    case opcao
         
    when "1"
        print "Digite o nome do contato: "
        nome = gets.chomp()
        if agenda[nome.to_sym].nil?
            print "Digite o telefone: "
            telefone = gets.chomp()
            agenda[nome.to_sym] = telefone
        else
            puts "Este nome jah existe!"         
        end       
    when "2"
        print "Digite o nome a atualizar: "
        nome = gets.chomp()
        if agenda[nome.to_sym].nil?
            puts "O nome jah existe!"
        else
            puts "Digite o telefone: "            
            telefone = gets.chomp()
            agenda[nome.to_sym] = telefone
        end
    when "3"
        agenda.each do |nome, telefone|
            puts "NOME: #{nome} - TELEFONE: #{telefone}"
        end
    when "4"
        puts "Digite o nome a ser apagado: "
        nome = gets.chomp()
        if agenda[nome.to_sym].nil?
            puts "Este nome nao existe!"
        else
            agenda.delete(nome.to_sym)
            puts "#{nome} apagado com sucesso!"
        end
    when "5"
        break    
    else
        puts "Opcao invalida!"
        
    end
puts "#######  Tachauuu!  #######"
end