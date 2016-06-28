class ReviewScheduledTasksController < ApplicationController
  before_action :set_review_scheduled_task, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /review_scheduled_tasks
  # GET /review_scheduled_tasks.json
  def index
    @review_scheduled_tasks = ReviewScheduledTask.all
  end

  # GET /review_scheduled_tasks/1
  # GET /review_scheduled_tasks/1.json
  def show
  end

  # GET /review_scheduled_tasks/new
  def new
    @review_scheduled_task = ReviewScheduledTask.new
  end

  # GET /review_scheduled_tasks/1/edit
  def edit
  end

  # POST /review_scheduled_tasks
  # POST /review_scheduled_tasks.json
  def create
    @review_scheduled_task = ReviewScheduledTask.new(review_scheduled_task_params)

    respond_to do |format|
      if @review_scheduled_task.save
        format.html { redirect_to @review_scheduled_task, notice: 'Review scheduled task was successfully created.' }
        format.json { render :show, status: :created, location: @review_scheduled_task }
      else
        format.html { render :new }
        format.json { render json: @review_scheduled_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /review_scheduled_tasks/1
  # PATCH/PUT /review_scheduled_tasks/1.json
  def update
    respond_to do |format|
      if @review_scheduled_task.update(review_scheduled_task_params)
        format.html { redirect_to @review_scheduled_task, notice: 'Review scheduled task was successfully updated.' }
        format.json { render :show, status: :ok, location: @review_scheduled_task }
      else
        format.html { render :edit }
        format.json { render json: @review_scheduled_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /review_scheduled_tasks/1
  # DELETE /review_scheduled_tasks/1.json
  def destroy
    @review_scheduled_task.destroy
    respond_to do |format|
      format.html { redirect_to review_scheduled_tasks_url, notice: 'Review scheduled task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review_scheduled_task
      @review_scheduled_task = ReviewScheduledTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_scheduled_task_params
      params.require(:review_scheduled_task).permit(:date, :task_id, :start, :end, :observation, :comment_to_day, :user_id)
    end
end
