class SitenameController < ApplicationController
  def home
    #@sitename = Sitename.all
    @time = Time.now
    @files = Dir.glob('*')
  end

  def our_work

  end

  def order
  end

  def contacts
  end
end


