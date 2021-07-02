class Task < ApplicationRecord
  enum social_name: { Telegram: 0, Vkontakte: 1 }
  belongs_to :user
  
end
