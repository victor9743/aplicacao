class Recibo < ApplicationRecord
    include ImageUploader::Attachment(:image)
end
