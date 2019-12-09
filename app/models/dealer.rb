# frozen_string_literal: true

class Dealer < ApplicationRecord
  has_one :address, dependent: :destroy
  has_one :working_hour

  has_many :dealer_cars
  has_many :users

  has_many_attached :xmls

  validates :code, :legal_name, :trade_name, presence: true
  validates :official_dealer, :used_car_saling, inclusion: { in: [true, false] }
end
