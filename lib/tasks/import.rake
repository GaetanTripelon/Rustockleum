require 'roo'

namespace :import do
  desc "This task will import products from excel sheet and insert them in products table"
  task import: :environment do
    sheet = Roo::Spreadsheet.open('lib/data.xlsx')

    (2..sheet.last_row).each do |row|
      record = sheet.row(row)
      product = Product.create(
        reference: record[0],
        libelle: record[1],
        description: record[2],
        contenu: record[3],
        contenu_unit: record[4],
        ean: record[5],
        cdt: record[6],
        public_price: record[7],
        unit_price: record[8],
        catalogue: record[9],
        gamme: record[10],
        stock: record[11],
        datasheet: record[12],
        safetysheet: record[13]
      )
      puts product.reference
      puts product.libelle
      puts product.description
      puts product.contenu
      puts product.contenu_unit
      puts product.ean
      puts product.cdt
      puts product.public_price
      puts product.unit_price
      puts product.catalogue
      puts product.gamme
      puts product.stock
      puts product.datasheet
      puts product.safetysheet
    end
  end
end
