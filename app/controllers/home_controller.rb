class HomeController < ApplicationController
  def index
  	@banks=Bank.all
  	@rounds = Round.all
  	@bank_offers = BankOffer.all
  	@rounds = Round.all
  end
end
