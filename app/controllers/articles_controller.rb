class ArticlesController < ApplicationController

    def index
        @articles = Article.all
    end

    def new
        @article = Article.create(title: "Rails", body: "Rails is Awesome", status: "visible")
    end
end
