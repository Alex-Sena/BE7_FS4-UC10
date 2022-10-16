INSERT INTO Usuarios VALUES ('Danox','Senha123');
INSERT INTO Classes VALUES ('Monge','Descrição do Monge');
INSERT INTO Habilidades VALUES ('Recuperar a vida');
INSERT INTO Personagens VALUES ('BitBug',2,2);
INSERT INTO ClassesHabilidades VALUES (2,2), (2,3); 

INSERT INTO Usuarios VALUES ('Afonso','Senha1234');
INSERT INTO Classes VALUES ('Barbaro','Descrição do Barbaro');
INSERT INTO Habilidades VALUES ('Lança Mortal'),('Escudo Supremo');
INSERT INTO Personagens VALUES ('Deu Bug',1,1);
INSERT INTO ClassesHabilidades VALUES (1,1), (1,2);


SELECT * FROM Usuarios;
SELECT * FROM Classes;
SELECT * FROM Habilidades;
SELECT * FROM Personagens;
SELECT * FROM ClassesHabilidades
	
DELETE FROM PERSONAGENS