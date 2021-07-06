class Dog
    attr_reader :name

    @@all = []

    def save
        self.class.all << self
    end

    def initialize(name)
        @name = name
        self.save
        name
    end

    def self.all
        @@all
    end

    def self.clear_all
        self.all.clear
    end

    def self.print_all
        self.all.each do |dog|
            puts dog.name
        end
    end

end