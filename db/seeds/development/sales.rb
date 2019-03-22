seat_ids = [1, 4, 3, 2, 1, 6, 5, 2, 7, 5]

dates = [Time.parse("2019/1/1 17"), Time.parse("2019/1/15 19"), Time.parse("2019/1/25 18"), Time.parse("2019/2/1 20"), Time.parse("2019/2/15 18"), Time.parse("2019/2/15 21"), Time.parse("2019/2/28 20"), Time.parse("2019/3/3 18"), Time.parse("2019/3/3 20"), Time.parse("2019/3/15 21")]

visitors = [3, 1, 2, 4, 4, 2, 3, 1, 2, 5]

0.upto(9) do |cnt|
  Sale.create!(
    seat_id: seat_ids[cnt],
    date: dates[cnt],
    visitor: visitors[cnt]
  )
end
