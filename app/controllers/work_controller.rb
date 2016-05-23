class WorkController < ApplicationController
  def index
    render 'work/index', status: 200, formats: [:html]
  end
end
