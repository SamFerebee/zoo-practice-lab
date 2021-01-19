class Zoo

    attr_accessor :name
    attr_reader :address

    @@all = []
 
    def initialize(name, address)
        @name = name
        @address = address
        self.class.all.push(self)
    end

    def self.all
        @@all
    end

    def all_animals
        Animal.all.select{|animal| animal.zoo == self}
    end

    def all_animal_species
        all_animals.map{|animal| animal.species}.uniq
    end

    def self.find_by_name(name_to_find)
        all.find{|zoo| zoo.name == name_to_find}
    end

    def origins 
        all_animals.map{|animal| animal.origin}.uniq
    end


end

