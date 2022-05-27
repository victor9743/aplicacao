class Fatura < ApplicationRecord
    has_many :recibo
    #belongs_to :usuario
    include ImageUploader::Attachment(:image)
end
