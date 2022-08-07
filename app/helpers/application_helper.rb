module ApplicationHelper
  def formatted_date(date)
    date.strftime('%d/%m/%Y %H:%M')
  end

  def formatted_date_without_hour(date)
    date.strftime('%d/%m/%Y')
  end

  def formatted_date_only_year(date)
    date.strftime('%Y')
  end
end
