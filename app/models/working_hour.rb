# frozen_string_literal: true

class WorkingHour < ApplicationRecord
  attr_accessor :mon_fr_from, :mon_fr_till, :sat_from, :sat_till, :sun_from, :sun_till

  belongs_to :dealer

  validates :mon_fr_from, :mon_fr_till, :sat_from, :sat_till, :sun_from, :sun_till,
            numericality: { only_integer: true }
end
