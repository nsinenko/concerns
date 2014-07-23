class NotesController < ApplicationController
  before_action :set_note, only: [:update, :destroy]

  # POST /notes
  # POST /notes.json
  def create
    @project = Project.find(params[:project_id])
    @note = @project.notes.new(note_params)
    @note.date = DateTime.now
    @note.save
    redirect_to @project
  end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to @note, notice: 'Note was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @project = @note.project
    @note.destroy
    redirect_to @project
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.require(:note).permit(:project_id, :content, :date)
    end
end
