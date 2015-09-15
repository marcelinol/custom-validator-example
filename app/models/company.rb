class Company < ActiveRecord::Base
  validates :name, :site, presence: true
  validates :site, url_format: true
end
