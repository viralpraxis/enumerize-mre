# frozen_string_literal: true

class Theme < ApplicationRecord
  extend Enumerize

  jsonb_accessor :data, menu_variant: [:string, default: "default"]

  enumerize :menu_variant, in: %w[default accent contrast]
end
