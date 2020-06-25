to_sort = [4,3,78,2,0,2]

def bubble_sort(numbers)
  sorted = false
  while sorted == false do
    changes = 0
    for i in 0...numbers.length - 1
      if numbers[i] > numbers[i+1]
        numbers[i], numbers[i+1] = numbers[i+1], numbers[i]
        changes += 1
      end
    end
    if changes == 0
      sorted =  true
    end
  end
  return numbers
end

print(bubble_sort(to_sort))
