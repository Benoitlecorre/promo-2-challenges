require 'open-uri'
require 'json'

def generate_grid(grid_size)
  #TODO: generate random grid of letters
  ('a'..'z').to_a[0..grid_size]
end

def run_game(attempt, grid, start_time, end_time)
  #TODO: runs the game and return detailed hash of result
end
