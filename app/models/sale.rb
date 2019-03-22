class Sale < ApplicationRecord
  belongs_to :seat, optional: true
  has_many :takes, dependent: :destroy

  #スコープ

  scope :sale_price, -> {
    find_by_sql(['select date, seats.name, visitor, sum(price * number) as sum_price from sales join takes on sales.id = takes.sale_id join menus on takes.menu_id = menus.id join seats on sales.seat_id = seats.id group by sales.id;'])
  }

  scope :date_price, -> {
    find_by_sql(['select date(date) as days, seats.name, visitor, sum(price * number) as sum_price from sales join takes on sales.id = takes.sale_id join menus on takes.menu_id = menus.id join seats on sales.seat_id = seats.id group by date(sales.date);'])
  }

  scope :time_price, -> {
    find_by_sql(['select time(date) as time, visitor, sum(price * number) as sum_price from sales join takes on sales.id = takes.sale_id join menus on takes.menu_id = menus.id join seats on sales.seat_id = seats.id group by time(sales.date);'])
  }

  scope :table_price, -> {
    find_by_sql(['select seats.name, visitor, sum(price * number) as sum_price from sales join takes on sales.id = takes.sale_id join menus on takes.menu_id = menus.id join seats on sales.seat_id = seats.id group by seats.id;'])
  }

end
