class NotesController < ApplicationController
  def index
    @notes = Note.all
    logger.info("@@@@@Notes: #{@notes.inspect}")
  end
  def new
    @note = Note.new
  end
 
  def create
    @note = Note.new(note_params)
    if @note.save
      flash[:success] = "You created..."
      redirect_to :back
    else
      flash[:error] = "could not create$"
      render "new"
    end
  end
  private
  def note_params
    params.require(:note).permit(:body)
  end
end
