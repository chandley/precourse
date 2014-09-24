require './Dict.rb'

#create state mapping

states = Dict.new(256)
Dict.set(states, 'Oregon', 'OR')
Dict.set(states, 'Florida', 'FL')

cities = Dict.new()
Dict.set(cities, 'FL', 'Jacksonville')
Dict.set(cities, 'OR', 'Portland')

Dict.list(states)
Dict.list(cities)


