=begin
Create a function that takes any non-negative number as an argument and returns it with its digits in descending order. Descending order is when you sort from highest to lowest.

123 ➞ 321

1254859723 ➞ 9875543221

73065 ➞ 76530

You can expect non-negative numbers for all test cases.

=end

=begin

1. build frequency histogram with keys for chars 0-9
2. define blank charstring
3. loop thru keys '9' through '0'
  a. if value present in histo, add that many chars of type key to
      the char string
4. conversion of charstring to int

=end


def sort_decending(num)
  histogram = build_histo num
  sortstring = ''
  keys = %w[9 8 7 6 5 4 3 2 1 0]

  keys.each do |key|
    next if histogram[key] == 0
    sortstring += (key * histogram[key])
  end

  sortstring.to_i
end

def build_histo input
  chars = input.to_s.chars
  chars_hash = Hash.new(0)
  chars.each {|key| chars_hash[key] += 1}
  chars_hash
end

p build_histo 321

p sort_decending 88594739095783


