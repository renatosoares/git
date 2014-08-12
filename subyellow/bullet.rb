class Bullet
    attr_reader :x, :y, :alive
   
    def initialize(window)
        @window = window
        @icon = Gosu::Image.new(@window, 'tubarao_a.png', true)
        @x =- rand(200)
        @y = rand(@window.height - 500)
        @alive = true
    end
   
    def update(laser)
        @x = @x + 3
        if @x > @window.width
            @x = 0
            @y = rand(@window.height)   
        end
        hit_by?(laser)
    end
   
    def draw
        @icon.draw(@x, @y, 5)
    end
   
    def hit_by?(laser)
        if Gosu::distance(laser.y, laser.x, @y, @x) < 20
            @alive = false
        end
    end
   
end