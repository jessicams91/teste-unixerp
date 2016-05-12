require 'rails_helper'

describe 'User creates new order', js: true do
  self.use_transactional_fixtures = false

  # after(:each) do
  #   User.delete(User.all) if User.last
  #   Customer.delete(Customer.all) if Customer.last
  #   Order.delete(Order.all) if Order.last
  # end

  scenario 'with one color and size' do
    size = build(:size)
    color = size.color
    product = color.product

    visit new_product_path

    fill_in 'product[name]', with: product.name
    fill_in 'product[description]', with: product.description
    click_on 'Add Color'
    fill_in 'Color', with: color.name
    click_on 'Add Size'
    fill_in 'Size', with: size.name
    fill_in 'Quantity', with: size.quantity

    click_on 'Criar Product'

    expect(page).to have_content product.name
    expect(page).to have_content product.description
    expect(page).to have_content color.name
    expect(page).to have_content size.name
    expect(page).to have_content size.quantity
  end
end
