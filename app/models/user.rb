class User < ActiveRecord::Base
    has_many :posts
    has_many :comments
    validates :name, presence: true, length:{minimum:2}
end
