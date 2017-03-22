json.extract! venda, :id, :quantidade, :valor, :data, :valor_unitario, :situacao, :Produto_id, :Cliente_id, :created_at, :updated_at
json.url venda_url(venda, format: :json)
