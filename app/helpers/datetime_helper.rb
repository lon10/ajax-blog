module DatetimeHelper
  def convert_date(datetime)
    datetime.strftime('%d.%m.%Y')
  end
end
