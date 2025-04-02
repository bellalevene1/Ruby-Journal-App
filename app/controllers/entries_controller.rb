class EntriesController < ApplicationController
    def index
      @entries = Entry.all
    end
  
    def new
      @entry = Entry.new
    end
  
    def create
      @entry = Entry.new(entry_params)
      if @entry.save
        redirect_to root_url, notice: "Entry created successfully!"
      else
        render :new
      end
    end
  
    def destroy
      Entry.find(params[:id]).destroy
      redirect_to root_url, notice: "Entry deleted."
    end
  
    def show
      @entry = Entry.find(params[:id])
    end
  
    def edit
      @entry = Entry.find(params[:id])
    end
  
    def update
      @entry = Entry.find(params[:id])
      if @entry.update(entry_params)
        redirect_to root_url, notice: "Entry updated successfully!"
      else
        render :edit
      end
    end
  
    private
  
    def entry_params
      params.require(:entry).permit(:name, :link, :description, images: [])
    end
  end
  