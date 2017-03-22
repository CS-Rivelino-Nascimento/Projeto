class Venda < ApplicationRecord
  belongs_to :Produto
  belongs_to :Cliente
end
