require 'spec_helper'

describe Product do
  #Arrange necessary preconditions and inputs
  let!(:product) { create(:product) }
  subject { zombie }


it 'must have a description' do 
  product.description = ""
  product.should_not be_valid
end






  # Example spec
  it "must have a name" do
    #Act on the object of the method under spec
    product.name = ""

    #Assert that the expected results have occurred
    product.should_not be_valid
  end


# we use "describe <class>" to start writing tests


  # we then write examples (specifications) in our describe block using an it-do-end syntax
  it "must have a name" do
    
    # we instantiate a product object and assign it to "product"
    product = Product.new

    ## we can use "should" to expect a value
    product.name.should == nil

    ## we can use "should_not" to expect any except a value
    product.name.should_not == "something" 

    #be_valid runs the predicate matcher be_valid which is going to call the ActiveRecord valid? method
    product.should_not be_valid
  end



  it "must have a price" do 
    product.price_in_cents

    expect product.price_in_cents.should_not == 0
  end

  it "must have a price that is an integer" do 
    product.price_in_cents
    expect product.price_in_cents.is_a? Integer
  end

  it "should format the price" do
    
    test_val = product.price_in_cents.to_f / 100
    expect product.formatted_price == test_val

  end


  # it "can have many reviews" do 
    
  # end


  # it "can list users that have reviewed it without duplicates" do 

  # end




end

# #An example from class
#  describe 'POST create' do
#     it 'should create a new product' do
#       post :create, product: {title: "a title", description: "description"}
#       expect(Product.all.length).to eq(1)
#     end
#   end