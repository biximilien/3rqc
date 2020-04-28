class PagesController < ApplicationController

  def home

  end

  def ca
  end

  def about
    @images = Dir.chdir(Rails.root.join('app/assets/images')) do
      Dir.glob("carousel/*.png")
    end
  end

end
