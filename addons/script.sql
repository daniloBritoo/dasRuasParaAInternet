CREATE DATABASE projIndividual;
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
        
DROP TABLE aviso;