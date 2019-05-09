#1.A a
SELECT * FROM livro 
JOIN tipo ON livro.idTipo = tipo.idTipo 
WHERE tipo.nome = "BANCO DE DADOS"

#1.A b
SELECT * FROM livro 
JOIN tipo ON livro.idTipo = tipo.idTipo 
JOIN tipo_has_area ON tipo.idTipo=tipo_has_area.idTipo 
JOIN area ON tipo_has_area.idArea = area.idArea 
WHERE area.nome = "Computacao"

#1.A c
SELECT * FROM livro 
JOIN tipo ON livro.idTipo = tipo.idTipo 
JOIN tipo_has_area ON tipo.idTipo=tipo_has_area.idTipo 
JOIN area ON tipo_has_area.idArea = area.idArea 
WHERE area.nome = "Medicina"

#1.A d
SELECT * FROM livro WHERE idEditora = {idDaEditoria}

##################################################################

#1.B a
SELECT * FROM gravacao 
JOIN musica ON gravacao.idMusica = musica.idMusica 
JOIN gravacao_has_cantor ON gravacao.idGravacao = gravacao_has_cantor.idGravacao 
WHERE gravacao.idMusica = {ID DA musica}

#1.B b
SELECT * FROM musica 
JOIN musica_has_compositor ON musica_has_compositor.idMusica = musica.idMusica 
JOIN compositor ON musica_has_compositor.idCompositor 
WHERE musica.idMusica = {id}

#1.B c
SELECT * FROM gravacao 
JOIN musica ON gravacao.idMusica = musica.idMusica 
JOIN gravacao_has_cantor ON gravacao.idGravacao = gravacao_has_cantor.idGravacao 
JOIN album ON musica.idAlbum = album.idAlbum 
JOIN album_has_distribuicao ON album.idAlbum = album_has_distribuicao.idAlbum 
JOIN distribuicao ON album_has_distribuicao.idDistribuicao = idDistribuicao 
WHERE gravacao_has_cantor.idCantor = {ID DO CANTOR}

#1.B d
SELECT * FROM compositor 
JOIN musica_has_compositor ON compositor.idCompositor = musica_has_compositor.idCompositor 
JOIN musica ON musica.idMusica = musica_has_compositor.idMusica 
WHERE idCompositor = {id} 

#1.B e
SELECT gravacao.idMusica FROM cantor 
JOIN gravacao_has_cantor ON cantor.idCantor = gravacao_has_cantor.idCantor 
JOIN gravacao ON gravacao.idGravacao = gravacao_has_cantor.idGravacao 
JOIN musica ON gravacao.idMusica = musica.idMusica
WHERE cantor.idCantor = {id}

#1.B f
SELECT * FROM musica 
JOIN album ON musica.idAlbum = album.idAlbum 
WHERE musica.idAlbum = {id}

#1.B g
SELECT * FROM album 
JOIN album_has_distribuicao ON album.idAlbum = album_has_distribuicao.idAlbum
JOIN distribuicao ON album_has_distribuicao.idDistribuicao = distribuicao.idDistribuicao
WHERE album.idAlbum = {id}


#########################################################################

#2
#Inserts OS
INSERT INTO OrdemServico(descrOS,dtOS) VALUES ('teste 11111111 descricao do grupo','2014-04-10');
INSERT INTO OrdemServico(descrOS,dtOS) VALUES ('teste 22222222 descricao do grupo','2014-05-10');

#inserts tipoServico
INSERT INTO TipoServico(descrTipoServico,precoServico) VALUES('PRESTACAO SERVICO 001', '150');
INSERT INTO TipoServico(descrTipoServico,precoServico) VALUES('PRESTACAO SERVICO 002', '160');
INSERT INTO TipoServico(descrTipoServico,precoServico) VALUES('PRESTACAO SERVICO 003', '160');

#inserts Serivocs na OS
INSERT INTO OS_TipoServico(codTipoServico,nroOS) VALUES(1,1);
INSERT INTO OS_TipoServico(codTipoServico,nroOS) VALUES(2,1);
INSERT INTO OS_TipoServico(codTipoServico,nroOS) VALUES(3,1);

INSERT INTO OS_TipoServico(codTipoServico,nroOS) VALUES(1,2);
INSERT INTO OS_TipoServico(codTipoServico,nroOS) VALUES(2,2);
INSERT INTO OS_TipoServico(codTipoServico,nroOS) VALUES(3,2);
## fim inserts

#2a
SELECT precoCobrado FROM OS_TipoServico WHERE OS_TipoServico.nroOS = 1 AND OS_TipoServico.codTipoServico = 1;

#2b
SELECT precoCobrado FROM OS_TipoServico WHERE OS_TipoServico.nroOS = 1 AND OS_TipoServico.codTipoServico = 2;

#2c
SELECT precoCobrado FROM OS_TipoServico WHERE OS_TipoServico.nroOS = 2 AND OS_TipoServico.codTipoServico = 1;

#2d
SELECT precoCobrado FROM OS_TipoServico WHERE OS_TipoServico.nroOS = 2 AND OS_TipoServico.codTipoServico = 2;

