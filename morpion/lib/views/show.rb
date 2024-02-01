class Show
    def initialize(board)
        @board = board
        @symbol_player1 = "X"
        @symbol_player2 = "O"
    end

    def symbolize_cells(cell_value)
        
        if cell_value == 0
            return " "
        elsif cell_value == 1
            return "X"
        else
            return "O"
        end
    end

    def display
        array_symbol = []
        @board.cells.each do |cell|
            array_symbol.push(symbolize_cells(cell.value))
        end

        puts "|-A-|-B-|-C-|"
        puts "| #{array_symbol[0]} | #{array_symbol[1]} | #{array_symbol[2]} |"
        puts "|---|---|---|"
        puts "| #{array_symbol[3]} | #{array_symbol[4]} | #{array_symbol[5]} |"
        puts "|---|---|---|"
        puts "| #{array_symbol[6]} | #{array_symbol[7]} | #{array_symbol[8]} |"
        puts "|---|---|---|"
    end
end