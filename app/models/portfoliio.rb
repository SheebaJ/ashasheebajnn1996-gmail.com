class Portfoliio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image
    
    def self.c_programming
        where(subtitle: "C programing")
    end

    # or
    # scope :c_programming, -> { where(subtitle: 'C programing') }
end
