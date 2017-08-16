class Binnacle < ApplicationRecord
  belongs_to :user
  belongs_to :farming

  has_attached_file :foto1
  validates_attachment_content_type :foto1, content_type: /\Aimage\/.*\z/

  has_attached_file :foto2
  validates_attachment_content_type :foto2, content_type: /\Aimage\/.*\z/

  has_attached_file :foto3
  validates_attachment_content_type :foto3, content_type: /\Aimage\/.*\z/

end
