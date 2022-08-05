module ApplicationHelper
  def formatted_date(date)
    date.strftime('%d/%m/%Y %H:%M')
  end
end
