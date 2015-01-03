# Exam Setting Controller
class ExamSettingController < ApplicationController
  def index
    authorize! :read, GradingLevel
  end

  def ranklevel
    @rank_levels = @course.ranking_levels.order('prioriy ASC')
    @rank_lev1 = @course.ranking_levels.find(params[:id])
  end

  def new
    @courses ||= Course.all
    authorize! :read, ClassDesignation
  end

  def newrank
    @courses ||= Course.all
    authorize! :read, RankingLevel
  end

  def setting
    @course = Course.shod(params[:id])
    @class_des = ClassDesignation.new
    @class_dess ||= @course.class_designations
    @class_des1 = @course.class_designations.build
    authorize! :create, @class_des
  end

  def settingrank
    @course = Course.shod(params[:id])
    @rank_lev = RankingLevel.new
    @rank_levels ||= @course.ranking_levels
    @rank_lev1 = @course.ranking_levels.build
    authorize! :create, @rank_lev
  end

  def create
    @course = Course.shod(params[:id])
    @class_dess ||= @course.class_designations
    @class_des1 = @course.class_designations.new(params_class)
    create_flash
  end

  def create_flash
    if @class_des1.save
      flash[:notice] = t('create_class')
    else
      flash[:notice] = t('not_create_class')
    end
  end

  def createrank
    @course = Course.shod(params[:course_id])
    @rank_levels = @course.ranking_levels.order('prioriy ASC')
    @rank_lev1 = @course.ranking_levels.new(params_rank)
    @max_rank = RankingLevel.maximum('prioriy')
    unless @max_rank.nil?
      @max_rank = 0.to_i
    end
    @rank_lev1.prioriy = @max_rank + 1.to_i
    if @rank_lev1.save
      flash[:notice] = t('create_rank')
    else
      flash[:notice] = t('not_create_rank')
      render 'newrank'
    end
  end

  # def unless_solve
  #   return if @max_rank.nil?
  #   @max_rank = 0.to_i
  #   @rank_lev1.prioriy = @max_rank + 1.to_i
  # end

  # def createrank_flash(rank_lev1)
  #   if rank_lev1.save
  #     flash[:notice] = t('create_rank')
  #   else
  #     flash[:notice] = t('not_create_rank')
  #     render 'newrank'
  #   end
  # end

  # def increase_priority
  #   @course = Course.shod(params[:id])
  #   ranklevel
  #   selected = params[:index].to_i - 1.to_i
  #   previous = 0.to_i
  #   temp = nil
  #   @course.increase_order(@rank_levels, selected, previous, temp)
  #   @rank_levels = @course.ranking_levels.order('prioriy ASC')
  #   authorize! :create, @rank_lev1
  # end

  # def decrease_priority
  #   @course = Course.shod(params[:id])
  #   ranklevel
  #   selected = params[:index].to_i + 1.to_i
  #   next_pri = 0.to_i
  #   temp = nil
  #   @course.decrease_order(@rank_levels, selected, next_pri, temp)
  #   @rank_levels = @course.ranking_levels.order('prioriy ASC')
  #   authorize! :create, @rank_lev1
  # end

  def increase_priority
    @course = Course.find(params[:id])
    @rank_levels = @course.ranking_levels.order('prioriy ASC')
    @rank_lev1 = @course.ranking_levels.find(params[:format])
    selected = params[:index].to_i - 1.to_i
    previous = 0.to_i
    temp = nil
    @rank_levels.each do |p|
      if (selected == previous)
        temp = p
      end
      if (selected + 1.to_i == previous)
        current = p.prioriy
        previous_pri = temp.prioriy
        p.update(prioriy: nil)
        temp.update(prioriy: current)
        p.update(prioriy: previous_pri)
       end
      previous = previous + 1.to_i
    end
    @rank_levels = @course.ranking_levels.order('prioriy ASC')
    authorize! :create, @rank_lev1
  end

  def decrease_priority
    @course = Course.find(params[:id])
    @rank_levels = @course.ranking_levels.order('prioriy ASC')
    @rank_lev1 = @course.ranking_levels.find(params[:format])
    selected = params[:index].to_i + 1.to_i
    next_pri = 0.to_i
    temp = nil
    @rank_levels.each do |p|
      if (selected - 1.to_i == next_pri)
        temp = p
      end
      if (selected == next_pri)
        current = p.prioriy
        next_priority = temp.prioriy
        p.update(prioriy: nil)
        temp.update(prioriy: current)
        p.update(prioriy: next_priority)
      end
      next_pri = next_pri + 1.to_i
    end
    @rank_levels = @course.ranking_levels.order('prioriy ASC')
    authorize! :create, @rank_lev1
  end

  def destroy
    @course = Course.shod(params[:id])
    authorize! :delete, @class_des1
    @class_dess ||= @course.class_designations
    @class_des1 = @course.class_designations.find(params[:class_des])
    destroy_flash
  end

  def destroy_flash
    if @class_des1.destroy
      flash[:notice] = t('del_class')
      redirect_to new_exam_setting_path
    else
      flash[:notice] = t('not_del_class')
    end
  end

  def destroy_rank
    @rank_lev1 = RankingLevel.shod(params[:id])
    #authorize! :delete, @ranking_levels
    @course = @rank_lev1.course
    @rank_levels = @course.ranking_levels.order('prioriy ASC')
    destroy_rank_flash(@rank_lev1)
  end

  def destroy_rank_flash(rank_lev1)
    if rank_lev1.destroy
      flash[:notice] = t('del_rank')
      redirect_to newrank_exam_setting_index_path
    else
      flash[:notice] = t('not_del_rank')
      render 'newrank'
    end
  end

  def edit
    @course = Course.shod(params[:id])
    @class_des1 = @course.class_designations.find(params[:class_des])
    authorize! :update, @class_des1
  end

  def update
    @course = Course.shod(params[:course_id])
    @class_dess ||= @course.class_designations
    @class_des1 = @course.class_designations.shod(params[:class_des])
    update_flash
  end

  def update_flash
    if @class_des1.update(params_class)
      flash[:notice] = t('update_class')
    else
      flash[:notice] = t('not_update_class')
    end
  end

  def edit_rank
    @course = Course.shod(params[:id])
    @rank_lev1 = @course.ranking_levels.shod(params[:course_id])
    authorize! :update, @rank_lev1
  end

  def update_rank
    @course = Course.shod(params[:course_id])
    ranklevel
    if @rank_lev1.update(params_rank)
      flash[:notice] = t('update_rank')
    else
      flash[:notice] = t('not_update_rank')
    end
  end

  def select
    @course = Course.shod(params[:course][:id])
    @class_dess ||= @course.class_designations
    authorize! :read, @class_dess.first
  end

  def selectrank
    @course = Course.shod(params[:course][:id])
    @rank_levels = @course.ranking_levels.order('prioriy ASC')
  end

  private

  def params_class
    params.require(:class_designation).permit(:name, :marks)
  end

  private

  def params_rank
    params.require(:ranking_level).permit!
  end
end
