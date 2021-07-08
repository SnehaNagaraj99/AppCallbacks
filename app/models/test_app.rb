class TestApp < ActiveRecord::Base
 include ActiveModel::Validations
 include ActiveModel::Validations::Callbacks

  attr_accessor :name

  validates_length_of :name, maximum: 6

  before_validation :remove_whitespaces

  private

  def remove_whitespaces
    binding.pry
    name.strip!
  end
end
#end
