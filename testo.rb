#puts "hello"
#p "hi"

arri = []

def test
  x = 0
  while x < 10
    p x
    x += 1

  end

end

#p test

a = 0
#p 0.methods

b = "dog"
letters = b.split("")
#p letters

def letter_count(str)
  counts = Hash.new(0)

  str.each_char do |char|
    counts[char] += 1 unless char == " "
  end
  counts
end

p letter_count("doggo")

def bubble_sort(arr)
  sorted = false
  until sorted
    sorted = true
    (arr.count - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = false
      end
    end
  end

  arr
end

a = "221"
b = a.to_i
p b
x = 0
while x < 3
  puts "yes" if a[x].to_i.even?
  puts "no" if a[x].to_i.odd? 
  x += 1
end
