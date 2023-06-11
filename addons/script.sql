se projIndividual;
CREATE TABLE projIndividual.usuario(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    email VARCHAR(50),
    senha VARCHAR(45),
    tipo VARCHAR(20)
);

SELECT * FROM projIndividual.usuario;


SELECT count(id) from projIndividual.usuario WHERE tipo = 'nova_guarda';
SELECT count(id) from projIndividual.usuario WHERE tipo = 'Ambos';
SELECT count(id) from projIndividual.usuario WHERE tipo = 'velha_guarda';
CREATE TABLE projIndividual.aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	tipo VARCHAR(45),
    urlImg VARCHAR(1000),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);
SELECT (SELECT count(id) from projIndividual.usuario WHERE tipo = 'nova_guarda' ) as nova,
		(SELECT count(id) from projIndividual.usuario WHERE tipo = 'ambos') as ambos,
        (SELECT count(id) from projIndividual.usuario WHERE tipo = 'velha_guarda') as velha,
        (select count(id) from usuario) as total	
	FROM projIndividual.usuario limit 1;
    
select
count(id) ID,
tipo Generos
    from usuario
        group by tipo;
        
select * from aviso;

SELECT u.nome, a.fk_usuario, (SELECT count(id) FROM aviso ORDER BY fk_usuario) as qntd FROM usuario u JOIN aviso a ON a.fk_usuario = u.id;
SELECT u.nome nomeUsuario, count(a.id) as qntdPosts FROM usuario u JOIN aviso a ON a.fk_usuario = u.id GROUP BY u.id ORDER BY qntdPosts desc limit 3;

INSERT INTO projIndividual.usuario (nome, email, senha, tipo)
VALUES
    ('João Silva', 'joao.silva@example.com', '123456', 'nova_guarda'),
    ('Maria Santos', 'maria.santos@example.com', 'abcdef', 'velha_guarda'),
    ('Pedro Almeida', 'pedro.almeida@example.com', 'qwerty', 'Ambos'),
    ('Ana Costa', 'ana.costa@example.com', 'password', 'nova_guarda'),
    ('Lucas Oliveira', 'lucas.oliveira@example.com', 'abc123', 'velha_guarda'),
    ('Carla Mendes', 'carla.mendes@example.com', '987654', 'Ambos'),
    ('Marcos Pereira', 'marcos.pereira@example.com', 'senha123', 'nova_guarda'),
    ('Fernanda Lima', 'fernanda.lima@example.com', 'abcd1234', 'velha_guarda'),
    ('Rafaela Castro', 'rafaela.castro@example.com', 'p@ssw0rd', 'Ambos'),
    ('Gustavo Souza', 'gustavo.souza@example.com', '12qwaszx', 'nova_guarda');
