=begin

  Create a function that takes a number as an argument. Add up all the numbers from 1 to the number you passed to the function. For example, if the input is 4 then your function should return 10 because 1 + 2 + 3 + 4 = 10.

  Examples
  4 ➞ 10

  13 ➞ 91

  600 ➞ 180300
  Notes
  Expect any positive number between 1 and 1000.

=end


def add_up(num)
  (1..num).inject(:+)
end
