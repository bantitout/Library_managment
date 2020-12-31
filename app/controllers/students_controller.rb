class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :edit, :update, :destroy]
  
    def index
      @students = Student.all
    end
  
    def show
      @book_ragisters = BookRagister.where(student_id: @student.id).paginate(page: params[:page],per_page: 2).order("created_at DESC")
    end
  
    def new
      @student = Student.new
     
    end
  
    def edit
    end
  
    def create
      @student = Student.new(student_params)
  
      respond_to do |format|
        if @student.save
          format.html { redirect_to @student, notice: 'Student was successfully created.' }
          format.json { render :show, status: :created, location: @student }
        else
          format.html { render :new }
          format.json { render json: @student.errors, status: :unprocessable_entity }
        end
      end
    end
  
    def update
      respond_to do |format|
        if @student.update(student_params)
          format.html { redirect_to @student, notice: 'Student was successfully updated.' }
          format.json { render :show, status: :ok, location: @student }
        else
          format.html { render :edit }
          format.json { render json: @student.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @student.destroy
      respond_to do |format|
        format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    def active
      @student = Student.find(params[:id])
      respond_to do |format|
        if @student.defaulter?
          @student.update(defaulter: false)
          format.js
        end
      end
    end

    def deactive
      @student = Student.find(params[:id])
      respond_to do |format|
        if @student.defaulter? == false
          @student.update(defaulter: true)
          format.js
        end
      end
    end

    private
      def set_student
        @student = Student.find(params[:id])
      end

      def student_params
        params.require(:student).permit(:student_name, :class1, :defaulter)
      end
  end
  