class TestimonialsController < ApplicationController
  def index
    @page = Page.find_by_permalink("testimonials")
    @metatag_object = @page
    @testimonials = Testimonial.all
  end
  
  def show
    @testimonial = Testimonial.find_by_permalink(params[:id])
    @metatag_object = @post
  end
  
  def create
    @testimonial = Testimonial.new(params[:testimonial]) unless params[:testimonial].blank?
    if @testimonial.save
      flash.now[:notice] = 'Your testimonial has been sent.'
    else
      flash.now[:error] =  "Your testimonial can't be sent."
    end
    @testimonials = Testimonial.all
    render :partial => "testimonials"
  end
end
