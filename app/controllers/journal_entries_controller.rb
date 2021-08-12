class JournalEntriesController < ApplicationController
  def create
    @entry = JournalEntry.new(journal_entry_params)
    if @entry.save
      redirect_to :root
    else
      @food = Food.all.map { |food| [food.product, food.id] }
      render 'journal/new'
    end
  end

  def update
    @entry = JournalEntry.find(params[:id])
    if @entry.update(journal_entry_params)
      redirect_to :root
    else
      @food = Food.all.map { |food| [food.product, food.id] }
      render 'journal/edit'
    end
  end

  def destroy
    @entry = JournalEntry.find(params[:id])
    @entry.destroy
    redirect_to :root
  end

  private def journal_entry_params
    params.require(:journal_entry).permit([:food_id, :amount, :date])
  end
end
