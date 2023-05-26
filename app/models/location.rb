class Location < ActiveRecord::Base
    has_many :clients
end