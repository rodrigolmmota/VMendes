class Endereco < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :profissional
end