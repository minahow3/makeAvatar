class User < ApplicationRecord
    has_many :part_sets
    has_and_belongs_to_many :parts
end
