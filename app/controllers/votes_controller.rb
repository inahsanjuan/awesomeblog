class VotesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    micropost.votes.create(user_id: current_user.id)
    redirect_to request.referrer || root_path
  end

  def destroy
  	vote = Vote.find(params[:id])
  	vote.destroy
    redirect_to request.referrer || root_path
  end
end
