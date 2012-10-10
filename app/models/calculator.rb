class Calculator < ActiveRecord::Base
  attr_accessible :age, :name, :height, :weight, :gender

  def bmi
    bmi= (weight / (height * height)).round(2)
  end
  def rating
    result = case bmi
      when 0..20 then "underweight (under 20)"
      when 20..25 then "normal (between 20 and 25)"
      when 25..30 then "overweight (between 25 and 30)"
      when 30..40 then "massively overweight (between 30 and 40)"
      when 40..100 then "morbidly obese (over 40)"
      else "Invalid Score"
    end
  end
end
