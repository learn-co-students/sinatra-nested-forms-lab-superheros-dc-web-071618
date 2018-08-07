class Superhero
    attr_accessor :name, :power, :bio
    @@name = "name"
    @@motto = "motto"
    @@all = []
    def initialize(name:, power:, bio:)
        @name = name
        @power = power 
        @bio = bio
        @@all << self 
    end

    def self.name=(name)
        @@name = name 
    end
    
    def self.name 
        @@name 
    end
    
    def self.motto=(motto)
        @@motto = motto
    end

    def self.motto 
        @@motto 
    end

    def self.all 
        @@all 
    end
end