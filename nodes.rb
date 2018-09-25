input2 = "2
4 2
1 2
1 3
1
3 1
2 3
2"
input = [2, 4, 2, 1, 2, 1, 3, 1, 3, 1, 2, 3, 2]

arrt = []
k = input2.each_line do |l|
    k = l.gsub(/\D/, ' ')
    j = k.split(" ")
    m = []
    j.each {|i| m << i.to_i}
    arrt << m
end
p arrt
#narri = []
#(1...n).each do |c|
#  narri << c if connected.include?(c) == false
#end
#ztr = "Unconnected: #{narri.to_s} and number of unconnected: #{narri.length}"
#arrz << ztr

def shortest_reach(array)
  t = array[0][0].to_i
  #p array
  arri = []
  #puts "There are #{t} test cases:"
  i = 0
  arrz = []
  connected = []
  arrh = []
  s = "     _____test case 0_____"
  arrz << s
  while i < array.length
    if array[i].length == 1
      hstr = "Here are connections as a hash.."
      arrz << hstr if i != 0
      arrz << arrh if i != 0
      arri << arrz if i != 0

      start = array[i][0].to_i
      sstr = "Start at #{start}"
      arrz << sstr if i != 0
      arrz << start if i != 0
      sstry = "These are the #{connected.length} connected nodes:"
      arrz << sstry if i != 0
      sstrs = "      ***end test case***     "
      arrz << connected if i != 0
      arrz << sstrs if i != 0

      arrz = [] if i != 0
      arrh = [] if i != 0
      connected = [] if i != 0
      n = array[i+1][0].to_i if i < array.length - 1
      m = array[i+1][1].to_i if i < array.length - 1
      s = "     ____test case #{arri.length.to_i}____"
      str = "There are #{n} nodes and #{m} edges"
      z = [n, m]
      arrz << s if i != 0
      arrz << arri.length
      arrz << str
      arrz << z if i
      i += 1
    end
    if array[i-1].length == 2
      a = array[i][0].to_i
      b = array[i][1].to_i
      h = Hash.new
      h[a] = b
      connected << a if connected.include?(a) == false
      connected << b if connected.include?(b) == false
    #  arrz << "node #{a} to node #{b}"
      arrh << h
    end
    i += 1
  end
  return arri
end

def ruby_nodes_simple(array)
    #arrz = shortest_reach(array)
    arrz = array
    arri = []

    x = 0
    while x < arrz.length
      arri << arrz[x] if x.odd? == true
      x += 1
    end
    x = 1
    missing = []
    while x < arri[1][0].to_i + 1
      if arri[4].include?(x) == false
        missing << x
        puts "#{x} is missing"
      end
      x += 1
    end
    arri << missing
    puts "0) Test Case Number          #{arri[0]}"
    puts "1) Nodes then Edges in array #{arri[1]}"
    puts "2) Array of Hashes           #{arri[2]}"
    puts "3) Starting Node is...       #{arri[3]}"
    puts "4) Connected nodes as array  #{arri[4]}"
    puts "5) Missing Numbers           #{arri[5]}"
    return arri
end

def shortest_node_route(array)
    start = array[3].to_i
    nodes = array[1][0]
    edges = array[1][1]
    x = 1
    while x <= nodes

      x += 1
    end

end

def ruby_nodes(array)
  puts "Welcome to Ruby Nodes:"
  #arri = shortest_reach(array)
  arri = array
  totalinput = arri.length
  puts "There are #{totalinput} test cases loaded"
  puts "Odd options describe; even options are the numbers"
  puts "0) Title"
  puts "1) Test Case Number"
  puts "2) Number of Nodes and Edges"
  puts "3) Nodes then Edges in array"
  puts "4) Connections as a Hash"
  puts "5) Array of Hashes"
  puts "6) Starting Node"
  puts "7) Starting Node as int"
  puts "8) These are the connected nodes"
  puts "9) Connected nodes as array"
  puts "10) Leave"
  l = arri[0]
  choice = ''
  while
    choice = gets.to_i
    break if choice == '0'
    choice = choice.to_i
    puts l[choice]

  end

  #l.length.times {|d| puts "#{d}..#{l[d]}"}
end
lrt = shortest_reach(arrt)
p lrt
l = lrt[0]
k = lrt[1]
#ruby_nodes(arrt)

#puts ruby_nodes_simple(l)
p ruby_nodes_simple(k)
