class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres
  accepts_nested_attributes_for :artist
  extend  Slug::ClassMethods
  include Slug::InstanceMethods
end
