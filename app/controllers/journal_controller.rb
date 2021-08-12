class JournalController < ApplicationController
  def index
    @entries = JournalEntry.all
  end

  def new
    @entry = JournalEntry.new
    @food = Food.all.map { |food| [food.product, food.id] }
  end

  def edit
    @entry = JournalEntry.find(params[:id])
    @food = Food.all.map { |food| [food.product, food.id] }
  end
end
