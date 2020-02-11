#create methods to make life easier.


def find_value_in_array(array, name)
  index = 0 
  r = nil
  while index < array.length do
    if array[index] == name
    r = array[index]
    end
  index += 1 
  end
  r
end


def names_array(data)
  array = data[:gender][:female].union(data[:gender][:male])
  array
end

def gender_hash(data, name)
  hash = data[:gender]
  g = [ ]
  hash.each_pair do |(key,value)| 
    x = find_value_in_array(value, name)
    if x 
      g.push("#{key}")
    end
  end
  g
end 

def color_hash(data, name)
  hash = data[:color]
  c = [ ]
  hash.each_pair do |(key,value)| 
    x = find_value_in_array(value, name)
    if x 
      c.push("#{key}")
    end
  end
  c
end 

def lives_hash(data, name)
  hash = data[:lives]
  l = [ ]
  hash.each_pair do |(key,value)| 
    x = find_value_in_array(value, name)
    if x 
      l.push("#{key}")
    end
  end
  l
end 


def nyc_pigeon_organizer(data)
  # write your code here!
  names = (names_array(data))
  hash = Hash[names.map do |n| [n,{}]
  end]
  hash.each_key do |key| 
    name = key
    hash[key][:gender] = gender_hash(data, name)
    hash[key][:lives] = lives_hash(data, name)
    hash[key][:color] =color_hash(data, name)
  end 
  hash
end



