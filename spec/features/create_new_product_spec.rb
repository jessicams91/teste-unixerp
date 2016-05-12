require 'rails_helper'

describe 'create new product', js: true do
  self.use_transactional_fixtures = false

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

  scenario 'but fails on blank' do
    visit new_product_path
    click_on 'Criar Product'

    expect(page).to have_content "Name não pode ficar em branco"
    expect(page).to have_content "Description não pode ficar em branco"
  end
end
