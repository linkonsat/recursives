
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
    if (combined_list.length > 2)
        return new_list
    elsif (combined_list.length == 0)
     
      combined_list.push(left_side(split_list[0],0,[]))
      combined_list.push(right_side(split_list[1],0,[]))
  
    end
    binding.pry
    if (combined_list.length == 2)
       combined_list.replace(final_sort(combined_list.flatten,0,[]))
    end
end

def left_side(left_side,count,results)
 #psuedocode so first we need to decide our base case
 #The idea is we compare our elements and if any of them of our out of replace we need to call the function
 #so we have count which should equal half the length of the array or length -1
 count = count
 sorted_list = left_side
results = results
 if (count == 0)
 sorted_list.each_with_index do |item, index|
    if (item != nil && sorted_list[index+1] != nil)
    sorted_list[index..index + 1] = sorted_list[index] < sorted_list[index+1] ? [[sorted_list[index],sorted_list[index + 1]]] : [[sorted_list[index+1],sorted_list[index]]]
    end

    if (sorted_list[index+1] == nil)
        sorted_list[index] = [sorted_list[index]]
    end
    end
  end
  if (count != left_side.flatten.length)
     i = 0

    
     while i < left_side.length do
      block_item = sorted_list.flatten[count]
      if (left_side[i][0] != nil && left_side[i][0] < block_item && results.count(left_side[i][0]) < left_side.flatten.count(left_side[i][0]))
        if (results.any?(left_side[i][0]))
            results.insert(results.index(left_side[i][0]),sorted_list[i][0])
        else 
            results.push(left_side[i][0])
        end
      end
      if (left_side[i][1] != nil && left_side[i][1] < block_item && results.count(left_side[i][1]) < left_side.flatten.count(left_side[i][1]))
        if (results.any?(left_side[i][1]))
                results.insert(results.index(left_side[i][1]),sorted_list[i][0])
        else
            results.push(left_side[i][1])
            end
      end
      i += 1
      
    end

    if (count == left_side.flatten.length - 1)
        left_side.flatten.count(left_side.flatten.max).times do
        results.push(left_side.flatten.max)
        end
    end
        count +=1
        left_side(sorted_list,count,results)

  end
results
end

def right_side(left_side,count,results)
  
 #psuedocode so first we need to decide our base case
 #The idea is we compare our elements and if any of them of our out of replace we need to call the function
 #so we have count which should equal half the length of the array or length -1
 count = count
 sorted_list = left_side
results = results

 if (count == 0)
 sorted_list.each_with_index do |item, index|
    #Now we know this split with occur since count starts off at 0
    #here we split up the array, after it's split up we wantt o call merge sort again
    #we also need to protect against a nil value so we need a conditional
    if (item != nil && sorted_list[index+1] != nil)

    sorted_list[index..index + 1] = sorted_list[index] < sorted_list[index+1] ? [[sorted_list[index],sorted_list[index + 1]]] : [[sorted_list[index+1],sorted_list[index]]]
    end
    end
  end
  if (count != left_side.flatten.length)
     #in this scenario we want to use a loop to compare the first element to the second
     #starting from the first item we go through each item
     #we add 1 to count each time and use that as a index position
     # if it's smaller we know it needs to go ahead and that item length is increased by one
     # we can thus delete the spot when a match is found after we insert the item so we would insert the delete at the index position + 1
     #keep recursively calling this method until count == array.length
     i = 0
     while i < left_side.length do
      block_item = sorted_list.flatten[count]
      if (left_side[i][0] < block_item && results.count(left_side[i][0]) < left_side.flatten.count(left_side[i][0]))
        if (results.any?(left_side[i][0]))
            results.insert(results.index(left_side[i][0]),sorted_list[i][0])
        else 
            results.push(left_side[i][0])
        end
      end
      if (left_side[i][1] < block_item && results.count(left_side[i][1]) < left_side.flatten.count(left_side[i][1]))
        if (results.any?(left_side[i][1]))
                results.insert(results.index(left_side[i][1]),sorted_list[i][0])
        else
            results.push(left_side[i][1])
            end
      end
      i += 1
      
    end

    if (count == left_side.flatten.length - 1)
        left_side.flatten.count(left_side.flatten.max).times do
        results.push(left_side.flatten.max)
        end
    end
        count +=1
        right_side(sorted_list,count,results)

  end
results

end

def final_sort(left_side,count,results)
    count = count
    sorted_list = left_side
   results = results
    if (count == 0)
    sorted_list.each_with_index do |item, index|
       if (item != nil && sorted_list[index+1] != nil)
       sorted_list[index..index + 1] = sorted_list[index] < sorted_list[index+1] ? [[sorted_list[index],sorted_list[index + 1]]] : [[sorted_list[index+1],sorted_list[index]]]
       end
   
       if (sorted_list[index+1] == nil)
           sorted_list[index] = [sorted_list[index]]
       end
       end
     end
     if (count != left_side.flatten.length)
        i = 0
   
  
        while i < left_side.length do

         block_item = sorted_list.flatten[count]
         if (left_side[i][0] != nil && left_side[i][0] < block_item && results.count(left_side[i][0]) < left_side.flatten.count(left_side[i][0]))
           if (results.any?(left_side[i][0]))
               results.insert(results.index(left_side[i][0]),sorted_list[i][0])
           else 
               results.push(left_side[i][0])
           end
         end
         if (left_side[i][1] != nil && left_side[i][1] < block_item && results.count(left_side[i][1]) < left_side.flatten.count(left_side[i][1]))
           if (results.any?(left_side[i][1]))
                   results.insert(results.index(left_side[i][1]),sorted_list[i][1])
           else
               results.push(left_side[i][1])
               end
         end
         i += 1
         
       end
   
       if (count == left_side.flatten.length - 1)
           left_side.flatten.count(left_side.flatten.max).times do
           results.push(left_side.flatten.max)
           end
       end
           count +=1
           final_sort(sorted_list,count,results)
   
     end
   results
end
p merge_sort_recursive([5,2,1,3,6,4,3,5,7,8,3,5,99,2,1])

