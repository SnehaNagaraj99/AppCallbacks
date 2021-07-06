class Person < ActiveRecord::Base
include ActiveModel::Validations
  include ActiveModel::Validations::Callbacks

  attr_accessor :name, :status

  validates_presence_of :name

  after_validation :set_status

  private

  def set_status
    self.status = errors.empty?
  end
end
