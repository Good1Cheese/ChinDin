class PhrasesController < ApplicationController
  def index
    @s_value = params[:search]
    @phrases = Phrase.search(@s_value)
  end
end
