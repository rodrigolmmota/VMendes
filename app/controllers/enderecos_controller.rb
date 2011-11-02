class EnderecosController < InheritedResources::Base
	def create
		@cliente = Cliente.find(params[:cliente_id])
		@endereco = @cliente.enderecos.create(params[:endereco])
		redirect_to cliente_path(@cliente)
	end
	def destroy
		@cliente = Cliente.find(params[:cliente_id])
		@endereco = @cliente.enderecos.find(params[:id])
		@endereco.destroy
		redirect_to cliente_path(@cliente)
	end
end