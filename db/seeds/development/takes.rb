sale_ids = [1,1,1, 2,2, 3,3,3,3, 4,4,4, 5,5,5,5,5, 6,6, 7,7,7, 8, 9,9, 10,10,10]

menu_ids = [2,2,30, 1,31, 9,9,32,32, 7,7,7, 10,10,33,33,42, 4,31, 11,12,3, 7, 2,45, 46,47,48]

numbers = [1,1,2, 2,2, 1,1,1,1, 1,1,1, 1,1,1,1,2, 3,3, 1,1,2, 1, 2,2, 1,1,1]

0.upto(27) do |cnt|
  Take.create!(
    sale_id: sale_ids[cnt],
    menu_id: menu_ids[cnt],
    number: numbers[cnt]
  )
end
