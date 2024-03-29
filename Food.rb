class Food

    def initialize(grid_height, grid_width)
        @x = rand(grid_width)
        @y = rand(2..grid_height - 2)
    end

    def draw(size)
        Square.new(x: @x * size, y: @y * size, size: size - 1, color: "red")
    end

    def snake_eat_food?(x, y)
        @x == x && @y == y
    end

    def ate_food(grid_height, grid_width)
        @x = rand(grid_width)
        @y = rand(2..grid_height - 2)
    end

end