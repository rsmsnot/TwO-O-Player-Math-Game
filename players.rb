class Player
    attr_accessor :name, :lives

    def initialize(name)
        @name = name
        @lives = 3
    end

    def still_alive?
        @lives > 0
    end

end

