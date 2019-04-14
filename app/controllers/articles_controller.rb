class ArticlesController < ApplicationController
    skip_before_action :authenticate_user!, only: [:show]

    def new
    end

    def create
        @article = Article.new(article_params)
 
        @article.save
        redirect_to @article
    end

    def show
        @article = Article.find(params[:id])
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])

        if @article.update(article_params)
            redirect_to @article
        else
            render 'edit'
        end
    end

    def destroy
        @article = Article.find(params[:id]).destroy
        redirect_to root_url, alert: "Successfully deleted article!"
    end

    private

    def article_params
        params.require(:article).permit(:title, :description, :user_id)
    end
end
