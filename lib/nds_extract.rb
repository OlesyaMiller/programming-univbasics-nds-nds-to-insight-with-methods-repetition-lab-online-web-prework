require 'pry'
$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  # Write this implementation
  list_of_d = []
  column_index = 0 
  while column_index < source.length do 
    list_of_d.push(source[column_index][:name])
    column_index += 1 
  end 
  list_of_d
end

def total_gross(source)
  #binding.pry 
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  
  total = 0 
  index = 0 
  directors = list_of_directors(source)
  while index < directors.length do 
    totals_hash = directors_totals(source)
    total += totals_hash[directors[index]]
  index += 1   
  end
  total 
end








