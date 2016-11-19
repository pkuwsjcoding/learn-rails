class Owner 
    def name 
        name="shijin"
    end 
    
    def birthdate
        birthdate=Date.new(1982,10,13 )
    end 
    
    def countdown 
        todaydate=Date.today
        birthday=Date.new(todaydate.year,birthdate.month, birthdate.day)
        if birthday >= todaydate
            countdown=(birthday-todaydate).to_i
        else 
            countdown=(birthday.next_year-todaydate).to_i
        end 
    end 
end 
