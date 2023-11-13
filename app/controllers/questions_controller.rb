class QuestionsController < ApplicationController

  def ask
    # @questions = ["Hello there", "Can I go shopping?", "I am going to work"]
  end

  def answer

    @ask = params[:ask] # => user ask
    if @ask = @ask.include?("?")
       @answer = "Silly question, get dressed and go to work"
    elsif @ask = "I am going to work"
       @answer = "Great!"
    else
       @answer = "I don't care, get dressed and go to work"
    end

    # raise

    # doit lire la question posée depuis params et calcul la variable d'instance
    # @answer à afficher dans la vue
  end

end


# Si le message est I am going to work, le coach répondra Great!.
# Si le message contient un point d’interrogation ? à la fin, le coach répondra Silly question, get dressed and go to work!.
# Sinon, le coach répondra I don't care, get dressed and go to work!.
