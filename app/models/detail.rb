class Detail < ActiveRecord::Base
	has_many :programs, :dependent => :destroy
	belongs_to :category
	#validates :when, :what, presence: true
	accepts_nested_attributes_for :programs, :allow_destroy =>true
end
