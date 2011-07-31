class Setting < ActiveRecord::Base
  validates :caption, :presence => true, :uniqueness => true
#  before_save :adjust_value_type

  def converted_value
    if value.to_i.to_s == value
      return value.to_i
    end
    if value =~ %r{(\d{1,2})[/\-](\d{1,2})[/\-](\d{1,4}) (\d{1,2}):(\d{2})}
      return DateTime.new($3.to_i, $2.to_i, $1.to_i, $4.to_i, $5.to_i)
    end
    if value =~ %r{(\d{1,2})[/\-](\d{1,2})[/\-](\d{1,4})}
      return Date.new($3.to_i, $2.to_i, $1.to_i)
    end
    value # just a String
  end
end
