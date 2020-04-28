class PagesController < ApplicationController
  def home
    @images = Dir.chdir(Rails.root.join('app/assets/images')) do
      Dir.glob("carousel/*.png")
    end
  end

  def ca
  end


end
