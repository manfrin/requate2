class GroupsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @groups = current_user.groups
  end

  def new

  end

  def create

  end

  def show
    @group = Group.find(params[:id])
  end
end
