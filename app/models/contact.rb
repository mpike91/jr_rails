class Contact < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["birthday", "created_at", "email", "id", "name", "updated_at"]
  end
end
