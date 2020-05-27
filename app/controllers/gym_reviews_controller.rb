class GymReviewsController < ApplicationController
  def show
    @gym_review = GymReview.find(params[:id])
  end

  def new
    @gym_review = GymReview.new
    @gyms = Gym.all
  end

  def create
    @gym_review = GymReview.create(gym_reveiw_params)
  end

  def update
    @gym_review = GymReview.find(params[:id])
  end

  def destroy
    @gym_review = GymReview.find(params[:id])
  end

  private

  def gym_reveiw_params
    params.require(:gym_review).permit(:gym_id, :member_id, :rating, :content)
  end
end