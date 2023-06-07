require 'roo'

namespace :import do
  desc "This task will import products from excel sheet and insert them in products table"
  task import: :environment do
    sheet = Roo::Spreadsheet.open('lib/data.xlsx')

    (2..sheet.last_row).each do |row|
      record = sheet.row(row)
      product = Product.create(
        reference: record[0],
        description: record[1],
        contenu: record[2],
        contenu_unit: record[3],
        ean: record[4],
        cdt: record[5],
        public_price: record[6],
        unit_price: record[7],
        stock: record[8],
        datasheet: record[9],
        msds: record[10]
      )
      puts product.reference
      puts product.description
      puts product.contenu
      puts product.contenu_unit
      puts product.ean
      puts product.cdt
      puts product.public_price
      puts product.unit_price
      puts product.stock
      puts product.datasheet
      puts product.msds
    end
  end
end
