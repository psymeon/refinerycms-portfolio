class PortfolioEntry < ActiveRecord::Base

  validates_presence_of :title

  # call to gems included in refinery.
  has_friendly_id :title, :use_slug => true
  acts_as_tree :order => 'position ASC'
  default_scope :order => 'position ASC'

  has_and_belongs_to_many :images

  alias_attribute :content, :body

  def image_ids=(ids)
    self.images.clear

    ids.reject{|id| id.blank? }.each do |image_id|
      image = Image.find(image_id.to_i) rescue nil
      self.images << image unless image.nil?
    end
  end

  def indented_title
    "#{"--" * self.ancestors.size} #{self.title}".chomp
  end

end
