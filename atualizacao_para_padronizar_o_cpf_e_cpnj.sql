--Padronizando as tabelas do banco utilizando a Função que criei

--Atualização da tabela [tb_Requerente]
update [tb_Requerente] set [ds_CPF_CNPJ] = [dbo].[f_Mascara_CPF_CNPJ]([ds_CPF_CNPJ])
where [dbo].[tb_Requerente].ds_CPF_CNPJ = [dbo].[f_Mascara_CPF_CNPJ]([ds_CPF_CNPJ])
go


--Atualização da tabela [dbo].[tb_Pessoa]
update [dbo].[tb_Pessoa] set [ds_CPF] = [dbo].[f_Mascara_CPF_CNPJ]([ds_CPF])
where [dbo].[tb_Pessoa].[ds_CPF] = [dbo].[f_Mascara_CPF_CNPJ]([ds_CPF])
go


--Atualização da tabela [dbo].[tb_Cliente]
update [dbo].[tb_Cliente] set [ds_CPF] = [dbo].[f_Mascara_CPF_CNPJ]([ds_CPF])
where [dbo].[tb_Cliente].[ds_CPF] = [dbo].[f_Mascara_CPF_CNPJ]([ds_CPF])
go


--Atualização da tabela [dbo].[tb_Herdeiro]
update [dbo].[tb_Herdeiro] set [ds_CPF] = [dbo].[f_Mascara_CPF_CNPJ]([ds_CPF])
where [dbo].[tb_Herdeiro].[ds_CPF] = [dbo].[f_Mascara_CPF_CNPJ]([ds_CPF])
go
