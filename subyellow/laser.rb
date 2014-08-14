class Laser
    attr_reader :x, :y
   
    def initialize(player, window)
        @player = player
        @window = window
        @shooting = false
        @x = @player.x
        @y = @player.y
        @icon = Gosu::Image.new(@window, "tiro_subyellow.png", true)
    end
   
    def shoot
        @shooting = true
    end
   
    def update
        if @shooting
			@x = @x + 10
			if @x > @window.width
			 	@shooting = false
			end
        else
            @x = @player.x
            @y = @player.y
        end
    end
   
    def draw
        if @shooting
			@icon.draw(@x+15, @y+15, 4)
		else
			@icon.draw((@player.x+15),(@player.y+15),4)
		end
    end
   
end
