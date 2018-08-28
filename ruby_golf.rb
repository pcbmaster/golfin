require 'pry'

#Hole 1 - Sum an array
def sum_array(a)
  c=0
  a.map{|b|c+=b}
  puts(c)
end

sum_array([1,2,3]);

#Hole 2 - Rock Paper Scissors
def rps()
  puts("pick: 0 - rock, 1 - paper, 2 - scissors")
  u=gets
  c=rand(3)
  case u
  when c
    e = 2
  when 1 
    e = c == 2 ? 1 : 0 
  when 2 
    e = c == 0 ? 1 : 0 
  else 
    e = c == 1 ? 1 : 0 
  end #ignore
  puts("winner: 2 is tie, 1 is win, 0 is loss")
  puts(e)
end

rps()

#Hole 3 - Fizz Buzz
def fb()
  n = rand(101)
  case true
    when n % 5 < 1 && n % 3  < 1
      puts "fizzbuzz"
    when n % 3 < 1
      puts "fizz"
    when n % 5 < 1 
      puts "buzz"
    else 
      puts n
  end #ignore
end

fb()

#Hole 4 - Multiples
def m(n, v)
  a = []
  m = v / n + 1
  m.times {|b| n * (m-=1)}
  puts a
end

m(3, 40)

#Hole 5 - Caesar Cipher
def cipher(s, o)
  for a in 0..s.length-1
    s[a] =  ((s[a].ord - 97 + o) % 25 + 97).chr
  end #ignore
  puts(s)
end

cipher("hello", 3)

#Hole 6 - substring counter
def counter(a)
  puts "#{a[1]} -> #{a[0]} - #{a[0].scan(/#{a[1]}/).length}"
end

counter(["buttbuttbuttbuttbuttbuttbutt","butt"])

#Hole 7 - Mixed Pairs

def pairs(a)
  puts "#{a.flatten.shuffle.each_slice(2).to_a}"
end

pairs([['Q', '3'], ['L', 'B']])

#Hole 8 - Love Test

def lovetest(f, s) 
  a = f.scan(/\w/) 
  b = s.scan(/\w/)
  c = 0
  a.uniq.each{ |d| b.uniq.each { |e| c += 1 if d == e } } 
  puts "chr tot #{(a + b).length}"
  puts "in common #{c}"
  puts "ans #{(a + b).length / c}"
end

lovetest("Ruby on Snails", "Ruby on Rails")

#Hole 9 - Shopping List

def shoppinglist(a)
  b = {}
  a.uniq.sort.each_with_index { |c, d| b[d] = c }
  puts b
end

shoppinglist(['.22LR', 'Spam', 'Hoppe\'s No. 9', 'Cat Food']) 
