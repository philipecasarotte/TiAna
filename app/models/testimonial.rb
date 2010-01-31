class Testimonial < ActiveRecord::Base
  after_save :build_seo
  
  validates_presence_of :name, :email, :body
  
  has_permalink :name
  acts_as_seo
  
  default_scope :order => "created_at DESC, id DESC"
  
  protected
  def build_seo
    metatag.title = "Testimonial of #{self.name} about Ana Maria"
    metatag.keywords = "#{self.name}, #{self.email}, testimonials, ceriominal, in memorian, memories, history of Ana Maria"
    metatag.description = "#{self.body.summary 150}"
  end
end
