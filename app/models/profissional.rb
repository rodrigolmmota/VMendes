class Profissional < ActiveRecord::Base
	has_many :enderecos, :dependent => :destroy
end