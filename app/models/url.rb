class Url < ApplicationRecord
  before_create :create_code
  validates :url, presence: true, length: { minimum: 7, maximum: 255 }
  validates :code, allow_nil: true, length: { is: 5 }

  private
   def create_code
      self.code  = SecureRandom.urlsafe_base64(5)
    end
end
