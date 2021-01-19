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

    def self.animals
        

end
