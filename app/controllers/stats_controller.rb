class StatsController < ApplicationController

  def stats  #it knows to look for a view call stats
  end

  def data  #this parses the json request. then it goes to the ajax file
    data = [
            { y: 'Books', a: Book.count },
            { y: 'Recipes', a: Recipe.count },
            { y: 'Ingredients', a: Ingredient.count}
    ]
    render :json  => data
  end

end
