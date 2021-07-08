class Article < ActiveRecord::Base

  after_destroy :log_destroy_action

  def log_destroy_action
    puts 'Article destroyed'
  end



  
  # after_save_commit :log_user_saved_to_db

  # private
  # def log_user_saved_to_db
  #   puts 'User was saved to database'
  # end


  # validates :title, presence: true

  # before_save :call_before_save
  # after_save :call_after_save
  # around_save :call_around_save

  # before_create :call_before_create
  # after_create :call_after_create
  # around_create :call_around_create

  # private

  # def call_before_create
  #   puts 'before article is create'
  # end

  # def call_after_create
  #   puts 'after article is create'
  # end

  # def call_around_create
  #   puts 'in around article create'
  #   yield # Article saved
  #   puts 'out around article create'
  # end
end

