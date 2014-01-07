require 'spec_helper'

describe Product do
  #Arrange necessary preconditions and inputs
  let!(:review) { create(:review) }
  subject { zombie }


  it 'must have content' do 
    review.comment = ""
    review.should be_valid
  end

 


end