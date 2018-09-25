#A palindrome is a word that's the same when it's read forward and backwards. "racecar" is a palindrome because it's the same when read backwards. "frank" is not a palindrome because "knarf" is not the same as "frank"!

#This text file has 10,000 names and only one is a palindrome. Write a script to find the palindrome!

def palindrome
  docarry = []
  answer = ''
  file='D:\Dev\Ruby\codequizzes\names.txt'
  content = File.readlines(file, "r")
  text = content.join
  text.each_line do |line|
    docarry << line
  end
  x = 0
  while x < docarry.length
    a = docarry[x].to_s
    b = a.reverse
    a = a.split
    b = b.split

    answer = a if a == b && b == a
    x += 1
  end
  return answer
end

#MMMMMMMMMMMMMMMMMMMMMMMMCDXCVIII
def roman_numeral(numeral)
  str = numeral
  total = 0
  x = 0
  while x < str.length
    add = 0
    add += 1000 if str[x] == "M"
    add += 400 if str[x] == "C" && str[x+1] == "D"
  #  add += 500 if str[x] == "D" && str[x-1] != "C"
    add += 400 if str[x] == "D" && str[x-1] == "C"

    add += 100 if str[x] == "X" && str[x+1] != "C"
    add += 90 if str[x] == "X" && str[x+1] == "C"
    add += 50 if str[x] == "L" && str[x-1] != "X"
    add += 40 if str[x] == "L" && str[x-1] == "X"
    add += 10 if str[x] == "X" && str[x-1] != "I"
    add += 9 if str[x] == "X" && str[x-1] == "I"
    add += 5 if str[x] == "V" && str[x-1] != "I"
    add += 4 if str[x] == "V" && str[x-1] == "I"
    add += 1 if str[x] == "I"
    if add == 400 || add == 90 || add == 40 || add == 9 || add == 4
      x += 1
    end
    x += 1
    total += add
    p total
    p x
  end
  return total
end

p roman_numeral("MMMMMMMMMMMMMMMMMMMMMMMMCDXCVIII")
