# frozen_string_literal: true

class Api::V1::Filters::DealersController < ApplicationController
  def index
    options = Dealer.all.select(:id, :legal_name).map { |i| { id: i.id, name: i.legal_name } }
    options.unshift(id: 0, name: 'Все дилеры') unless options.empty?

    render json: { mark: { type: 'SELECT', text: 'Дилер', options: options } }
  end
end
