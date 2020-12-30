class BookRagistersController < ApplicationController
  before_action :set_book_ragister, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [ :index, :show ]

  def index
    @book_ragisters = BookRagister.paginate(page: params[:page],per_page: 2).order("created_at DESC")
  end
  
  def show
  end

  def new
    @book_ragister = BookRagister.new
  end

  def edit
  end

  def create
    @book_ragister = BookRagister.new(book_ragisters_params)

    respond_to do |format|
      if @book_ragister.save
        format.html { redirect_to @book_ragister, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book_ragister }
      else
        format.html { render :new }
        format.json { render json: @book_ragister.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @book_ragister.update(book_ragisters_params)
        format.html { redirect_to @book_ragister, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_ragister }
      else
        format.html { render :edit }
        format.json { render json: @book_ragister.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @book_ragister.destroy
    respond_to do |format|
      format.html { redirect_to book_ragisters_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_book_ragister
      @book_ragister = BookRagister.find(params[:id])
    end
    def book_ragisters_params
      params.require(:book_ragister).permit(:book_id,:student_id,:library_id,:assign_date,:due_date,:return_date)
    end
  end
  