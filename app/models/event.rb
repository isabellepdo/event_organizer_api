class Event < ApplicationRecord
  has_many :tracks, class_name:'Track', dependent: :destroy
end
