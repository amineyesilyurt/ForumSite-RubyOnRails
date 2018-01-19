class AnketsController < ApplicationController

before_action :find_anket, only: [:show, :edit, :update, :destroy]

def index
    @posts= Anket.all.order("created_at DESC")
end

def create 
      @anket = current_user.ankets.build(anket_params)

      if @anket.save
        redirect_to @anket
      else 
        render 'new'
      end  
end

def edit
end

def show
end

def update
    if @anket.update(anket_params)
    redirect_to @anket
    else
    render 'edit'
    end    
end

def destroy
    @anket.destroy
    redirect_to root_path
end

private

def find_anket
    @post = Anket.find(params[:id])
end   

def anket_params
    params.require(:anket).permit( :cinsiyet, :egitim, :dogum, :user,:kelime) 
end 

end
