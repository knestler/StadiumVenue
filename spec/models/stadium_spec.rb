require 'rails_helper'

RSpec.describe Stadium do
  it {should have_many :teams}
  
end