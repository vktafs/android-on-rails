class Api::V1::TasksController < ApplicationController
  skip_before_filter :verify_authenticity_token,
    :if => Proc.new { |c| c.request.format == 'application/json' }

  respond_to :json

  def index
    render :text => '{
      "success":true,
      "info":"ok",
      "data":{
              "tasks":[
                        {"title":"Complete the app"},
                        {"title":"Complete the tutorial"}
                      ]
             }
      }'
  end
end
