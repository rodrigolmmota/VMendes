class Cliente < ActiveRecord::Base
	has_many :enderecos, :dependent => :destroy
end
