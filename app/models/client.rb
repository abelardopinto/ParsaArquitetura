class Client < ActiveRecord::Base
  has_many :folders

  before_destroy :ensure_not_referenced_by_any_folder

  validates :user, :password, :presence => true
  validates :user, :password, :length => 4..50
  validates :user, :uniqueness => true

  private

  def ensure_not_referenced_by_any_folder
    if folders.count.zero?
      return true
    else
      errors.add(:base, 'folders present')
      return false
    end
  end
end
