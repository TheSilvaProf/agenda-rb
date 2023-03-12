@agenda = [
    {nome: "Fabio", telefone: "1111-2222"},
    {nome: "Sheila", telefone: "2222-2222"}]

def todos_contatos()
    @agenda.each do |contato|
    puts "#{contato[:nome]} - #{contato[:telefone]}"
    end
    puts "-----------------------------------------"
end

def adicionar_contato()
    print "Nome: "
    nome = gets.chomp()
    print "Telefone: "
    telefone = gets.chomp()

    @agenda << {nome: nome, telefone: telefone}    
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


