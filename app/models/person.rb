class Person < ActiveRecord::Base
  validates :name, :email, :personal_site,  presence: true
  validates :email, uniqueness: true
  validates :personal_site, url_format: true
end
