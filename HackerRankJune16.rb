class Person
  attr_accessor :age

  def initialize(initialAge = 0)
    if initialAge < 0
      puts "Age is not valid, setting age to 0."
      initialAge = 0
    end
    @age = initialAge
  end

  def yearPasses()
    @age += 1
  end

  def amIOld()
    puts "You are young." if @age < 13
    puts "You are a teenager." if @age >= 13 && @age < 18
    puts "You are old." if @age >= 18
  end
end

#Graph Question: It is required to calculate the shortest distance from start position (Node S) to all of the other nodes in the graph.

#The first line contains T , denoting the number of test cases.
#First line of each test case has two integers N , denoting the number of nodes in the graph and M, denoting the number of edges in the graph.
#The next  lines each consist of two space separated integers XY , where  X and Y denote the two nodes between which the edge exists.
#The last line of a testcase has an integer S, denoting the starting position.

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
      arrz << arrh if i != 0
      arri << arrz if i != 0
      start = array[i][0].to_i
      sstr = "Start at #{start}"
      arrz << sstr if i != 0
      sstry = "These are the #{connected.length} connected nodes:"
      arrz << sstry if i != 0
      sstrs = "      ***end test case***     "
      arrz << connected.to_s if i != 0
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
      arrz << z if i
      arrz << str
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

def ruby_nodes(array)
  puts "Welcome to Ruby Nodes:"
  arri = shortest_reach(array)
  puts "There are #{arri.length} test cases loaded"
end


ruby_nodes(arrt)
#l = shortest_reach(arrt)
#l.length.times {|d| puts l[d]}
#k = l[0]
#k.length.times {|d| puts "#{d}..#{k[d]}"}
#l[1].length.times {|d| puts "#{d}..#{k[d]}"}
