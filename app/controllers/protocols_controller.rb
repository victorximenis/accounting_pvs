class ProtocolsController < ApplicationController
  before_action :authenticate_user!

  def index
    @protocols = Protocol.all
  end

  def new
    @protocol = Protocol.new
  end

  def edit
    @protocol = Protocol.find(params[:id])
  end

  def show
    @protocol = Protocol.find(params[:id])
  end

  def create
    @protocol = Protocol.new(protocol_params)
    @protocol.user = current_user
    if @protocol.save
      redirect_to @protocol, notice: "Protocolo salvo com sucesso!"
    else
      render action: :new
    end
  end

  def update
    @protocol = Protocol.find(params[:id])
    if @protocol.update(protocol_params)
      redirect_to @protocol, notice: "Protocolo atualizado com sucesso!"
    else
      render action: :edit
    end
  end

  def destroy
    @protocol = Protocol.find(params[:id])
    if @protocol.delete
      redirect_to protocols_path, notice: "Protocolo removido com sucesso!"
    else
      redirect_to protocols_path, notice: "Erro ao remover protocolo!"
    end
  end

  private

  def protocol_params
    params.require(:protocol).permit(:title, :description, :approved, :protocol_attachment)
  end

end
