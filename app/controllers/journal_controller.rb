class JournalController < ApplicationController
  def index
    @entries = JournalEntry.all
  end

  def new
    @entry = JournalEntry.new
  end

  def edit
  end
end
