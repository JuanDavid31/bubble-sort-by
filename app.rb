def bubble_sort(array)
  limit = array.length

  while limit > 0 do
    i = 0
    while i < limit - 1 do
      first = i
      second = i + 1

      if array[first] > array[second]
        first_element = array[first]
        second_element = array[second]
        array[first] = second_element
        array[second] = first_element
      end

      i += 1
    end

    limit -= 1
  end

  array
end

def bubble_sort_by(array)
  limit = array.length

  while limit > 0 do
    i = 0
    while i < limit - 1 do
      first = i
      second = i + 1

      first_element = array[first]
      second_element = array[second]
      sort_block = yield first_element,second_element

      if sort_block > 0
        array[first] = second_element
        array[second] = first_element
      end

      i += 1
    end

    limit -= 1
  end

  array
end
