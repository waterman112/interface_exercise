class Interface::ArticlesController < ActionController::Base
  def all_articles
    all_articles = Article.all.map do |article|
      {
        :title => article.title,
        :text => article.text
      }
    end

    render :json => { :result => all_articles }
  end

  def edit_article
    render :json => { :result => 'this is edit interface'}
  end

  def new_article
    render :json => { :result => 'this is new interface'}
  end
end
