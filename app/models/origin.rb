class Origin

    @@all = []

    attr_accessor :continent, :country

    def initialize(continent, country)
        @continent = continent
        @country = country
        self.class.all.push(self)
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select{|animal| animal.origin == self}
    end

    def zoos
        animals.map{|animal| animal.zoo}.uniq
    end

    def animal_number
        animals.size
    end

    def self.find_by_continent(continent_to_find)
        arr = []
        all.each{|origin| 
            if origin.continent == continent_to_find
                arr.push(origin.country)
            end
        }
        arr

        #all.map{|origin| origin.continent == continent_to_find}
    end

    def self.most_animals
=begin
        most = 0
        the_most_origin = nil
        all.each{|origin|
            if origin.animal_number > most
                most = origin.animal_number
                the_most_origin = origin
            end
        }
        the_most_origin
=end
        origin_numbers = all.map{|origin| origin.animal_number}
        all.find{|origin| origin.animal_number == origin_numbers.max}

    end



end
