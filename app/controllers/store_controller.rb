class StoreController < ApplicationController
  skip_before_action :verify_authenticity_token

  # TODO: move this to a model
  STORE_ITEMS =
    [
      {
        title: 'Test 4',
        description: 'Whoa some other stuff working',
        price: '20.00'
      },
      {
        title: 'PS4',
        description: 'A pretty kickin\' game console',
        price: '450.00'
      }
    ].freeze

  def index
    @store_items = STORE_ITEMS
  end

  def store_items
    @store_items = STORE_ITEMS

    respond_to do |format| 
      format.json { render json: @store_items }
    end
  end


end
