class Customer < ActiveRecord::Base

  #Relational callbacks
  has_many :articles, dependent: :destroy  


  #transaction callbacks
   after_create_commit :log_user_saved_to_db
  after_update_commit :log_user_saved_to_db

  private
  def log_user_saved_to_db
    puts 'User was saved to database'
  end

  # after_touch do |user|
  #   puts "You have touched an object"
  # end
end
