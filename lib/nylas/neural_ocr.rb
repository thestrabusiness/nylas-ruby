# frozen_string_literal: true

module Nylas
  # Structure to represent a the Neural Optical Character Recognition object.
  # @see https://developer.nylas.com/docs/intelligence/optical-charecter-recognition/#ocr-response
  class NeuralOcr < File
    include Model
    self.resources_path = "/neural/ocr"
    allows_operations(listable: true)

    has_n_of_attribute :ocr, :string
    attribute :processed_pages, :integer

    inherit_attributes
  end
end
