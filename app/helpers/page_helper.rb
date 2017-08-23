module PageHelper

  def self.get_page(page_counter)
    # what about 2 weeks at at time
    case page_counter
      when 0
        min_date = 1.hour.from_now.strftime("%Y-%m-%d")
        max_date = 1.day.from_now.strftime("%Y-%m-%d")
      when 1
        min_date = 2.days.from_now.strftime("%Y-%m-%d")
        max_date = 3.days.from_now.strftime("%Y-%m-%d")
      when 2
        min_date = 2.months.from_now.strftime("%Y-%m-%d")
        max_date = 3.months.from_now.strftime("%Y-%m-%d")
      when 3
        min_date = 3.months.from_now.strftime("%Y-%m-%d")
        max_date = 4.months.from_now.strftime("%Y-%m-%d")
      when 4
        min_date = 4.months.from_now.strftime("%Y-%m-%d")
        max_date = 5.months.from_now.strftime("%Y-%m-%d")
      when 5
        min_date = 5.months.from_now.strftime("%Y-%m-%d")
        max_date = 6.months.from_now.strftime("%Y-%m-%d")
    end
    return min_date, max_date
  end

  def self.days_away(number)
    if number == 0
      min_date = 1.hour.from_now.strftime("%Y-%m-%d")
      max_date = 1.day.from_now.strftime("%Y-%m-%d")
    else
      min_date = number.days.from_now.strftime("%Y-%m-%d")
      max_date = (number + 1).days.from_now.strftime("%Y-%m-%d")
    end
    return min_date, max_date
  end
end
