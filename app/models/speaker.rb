class Speaker < ApplicationRecord

    validates :name, presence: true
    validates :company, presence: true
    validates :position, presence: true

    has_many :schedules, dependent: :destroy

    validate :profile_photo_validation

    has_one_attached :profile_photo

    # validate :logo_validation

    def profile_photo_validation
      if profile_photo.attached?
        if profile_photo.blob.byte_size > 1000000
            profile_photo.purge
            errors[:base] << 'Too big'
        elsif !profile_photo.blob.content_type.starts_with?('image/')
            profile_photo.purge
            errors[:base] << 'Wrong format'
        end
      else
        errors[:base] << 'Must upload a file'
      end
    end
end
