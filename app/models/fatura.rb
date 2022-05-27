class Fatura < ApplicationRecord
    include ImageUploader::Attachment(:image)
end
