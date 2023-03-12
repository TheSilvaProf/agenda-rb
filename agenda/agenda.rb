puts "############## AGENDA ###############"
puts
@agenda = [
    {nome: "Fabio", telefone: "1111-2222"},
    {nome: "Sheila", telefone: "2222-2222"}]

def todos_contatos()
    @agenda.each do |contato|
    puts "#{contato[:nome]} - #{contato[:telefone]}"
    end
    puts "-----------------------------------------"
    puts
end

def adicionar_contato()
    print "Nome: "
    nome = gets.chomp()
    print "Telefone: "
    telefone = gets.chomp()

    @agenda << {nome: nome, telefone: telefone}
puts
end

def ver_contato()
    print "Digite o nome que deseja: "
    nome = gets.chomp()
    @agenda.each do |contato|
        if contato[:nome].downcase.include?(nome.downcase)
            puts "#{contato[:nome]} - #{contato[:telefone]}"
            break
        end
    end
puts "----------------------------------------------------"
puts
end

def editar_contato()
    print "Digite o nome a editar: "
    nome = gets.chomp()

    @agenda.each do |contato|
        if contato[:nome].downcase.include?(nome.downcase)
            print "Nome para editar (para manter o mesmo, digite ENTER): "
            nome_salvo = contato[:nome]

            contato[:nome] = gets.chomp()
            contato[:nome] = contato[:nnome].empty? ? nome_salvo : contato[:nome]

            print "Telefone para editar (para manter o mesmo, digite ENTER): "
            telefone_salvo = contato[:telefone]

            contato[:telefone] = gets.chomp()
            contato[:telefone] = contato[:telefone].empty? ? telefone_salvo : contato[:telefone]
        end
    end
end

def remover_contato()
    print "Digite o nome a remover: "
    nome = gets.chomp()

    @agenda.each do |contato|
        if contato[:nome].downcase.include?(nome.downcase)
            indice = @agenda.index(contato)
            @agenda.delete_at(indice)
            break            
        end
    end    
end

loop do
    
puts "1. Contatos\n2. Adicionar Contato\n3. Ver Contato\n4. Editar Contato\n5. Remover Contato\n0. Sair\0"
    codigo = gets.to_i

    case 
    when codigo == 0
        puts
        puts "Tchauuuuú!"
        break        
    when codigo == 1
        todos_contatos()
    when codigo == 2
        adicionar_contato()
    when codigo == 3
        ver_contato()
    when codigo == 4
        editar_contato()
    when codigo == 5
        remover_contato()         
    else
        puts "Função inexistente!"
        puts "----------------------------------------"
    end
end
