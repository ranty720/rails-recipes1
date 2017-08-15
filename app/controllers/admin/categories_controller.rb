class Admin::CategoriesController < ApplicationController

  def index
       @categories = category.all
     end

     def edit
       @category = category.find(params[:id])
     end

     def update
       @category = category.find(params[:id])

       if @category.update(category_params)
         redirect_to admin_categories_path
       else
         render "edit"
       end
     end

     protected

     def category_params
       params.require(:category)
     end

end
