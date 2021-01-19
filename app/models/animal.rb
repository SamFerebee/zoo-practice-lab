class Animal

    
    @@all = []
    attr_accessor :name, :zoo, :origin
    attr_reader :species

    def initialize(species, name)
        @species = species
        @name = name
        self.class.all.push(self)
    end

    def self.all
        @@all
    end

    def self.clear
        all.clear
    end

end
