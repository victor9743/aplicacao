class Recibo < ApplicationRecord
    belongs_to :fatura
    include ImageUploader::Attachment(:image)
end
