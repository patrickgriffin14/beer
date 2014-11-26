class LineItem < ActiveRecord::Base
  belongs_to :brew
  belongs_to :favourite
end
