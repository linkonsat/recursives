
require 'pry-byebug'
def collatz(n, steps)

    if (n == 1)
        return [n,steps]
    elsif (n.even?)
        n = n / 2
        steps += 1
        collatz(n, steps)
    elsif (n.odd?)
        steps += 1
        n = 3 * n  + 1
        collatz(n,steps)
    end 
end

def factorial(n,sum)
   binding.pry
    if (n == 1)
        return sum
    elsif sum == 0
        sum = n * (n - 1)
        n -= 1
        factorial(n,sum)
    else
        n -= 1
        sum = sum * n
        factorial(n,sum)

    end
end

def beers(n)
    if (n == 0)
        return "No more beers on the wall :("
    else
        puts "there are #{n} beers of bottles on the wall!"
        beers(n -= 1)
    end
end

def fibonacci(n)
    array = [0,1]
    i = 0
    while array[i + 1] < n 
        binding.pry
    array.push(array[i] + array[i + 1])
    i += 1
    end
     array
end

def fibonacci_recursive(n,start)
    start = start
    if (start[start.length - 1] > n)
        p start
    else
        fibonacci_recursive(n,start.push(start[start.length-2] + start[start.length-1]))
    end
    end


def merge_sort_recursive(list)
    new_list = list
    split_list = [list.slice(0,list.length/2),list.slice(list.length/2,list.length)]
    combined_list = []
    if (combined_list.length != 0)
        return new_list
    elsif (combined_list.length == 0)

      sorted_list_left = left_side(split_list[0])
      sorted_list_right = right_side(split_list[1])
    end
end

def left_side(left_side)
    binding.pry
  sorted_list_left = []
  first = 0
  second = 0
  if (sorted_list_left.length == 0)
  while left_side[first] != nil 
  if (left_side[first+1] != nil)
    sorted_list_left.push(left_side.slice(first,first+2))
    first += 2
  else
    sorted_list_left.push(left_side[first])
    first += 2
    left_side(sorted_list_left)
  end
  end
  else

  end
  binding.pry
end

def right_side(right_side)
    sorted_list_right =[]
  first = 0
  second = 0
  if (sorted_list_right.length == 0)
  while left_side[first] != nil
    if (left_side[i+1]!= nil)
        sorted_list_right.push(right_side.slice(first,first+2))
        first += 2
    else
        sorted_list_right.push(right_side[first])
        first += 2
        right_side(sorted_list_right)
    end
  end 
  else

  end
end
p merge_sort_recursive([5,2,1,3,6,4])

