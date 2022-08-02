class Musclegroup < ActiveRecord::Base
has_many :exercise
belongs_to :gymbro
end