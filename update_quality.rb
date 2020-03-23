require_relative 'awards/base'
require_relative 'awards/blue_compare'
require_relative 'awards/blue_distinction_plus'
require_relative 'awards/blue_first'
require_relative 'awards/blue_star'
def update_quality(awards)
  awards.each do |award|
    award.requalify
    award.expire
  end
end
