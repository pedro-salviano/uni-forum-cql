/*
 * File: script.cql
 * Project: trabalho3
 * Create Date: Sunday, 23rd February 2025
 * Author: Pedro Salviano (pedrosalviano@estudante.ufscar.br)
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	---------------------------------------------------------
 */

//Criar keyspace para desenvolvimento do trabalho (equivalente à database de bancos relacionais)
CREATE KEYSPACE trab3 WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

// Ativar/usar keyspace criado
USE trab3;

// Criar tabela post para registro das mensagens postadas
CREATE TABLE post(
    message_id UUID,
    user_id UUID,
    user_name TEXT,
    user_age INT,
    topic TEXT,
    body TEXT,
    timestamp TIMESTAMP,
    PRIMARY KEY(topic, user_id, timestamp)
);

// Popular tabela
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 123e4567-e89b-12d3-a456-426614174000, 'alice_smith', 22, 'Matemática', 'Preciso de ajuda com cálculo diferencial.', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 987f1234-e89b-12d3-a456-426614174111, 'bob_jones', 24, 'Matemática', 'Eu posso ajudar! Qual é a sua dúvida?', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 123e4567-e89b-12d3-a456-426614174000, 'alice_smith', 22, 'Matemática', 'Estou com dificuldade em integrais triplas.', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 654d7890-e89b-12d3-a456-426614174222, 'carol_lee', 21, 'Programação', 'Dicas para aprender Python mais rápido?', '2025-02-23 13:56:50.664000+0000');
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 456a7891-e89b-12d3-a456-426614174333, 'dave_miller', 23, 'História', 'Recomendações de livros sobre Roma Antiga.', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 789b1234-e89b-12d3-a456-426614174444, 'eva_clark', 20, 'Filosofia', 'Discussão sobre ética kantiana.', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 321c4567-e89b-12d3-a456-426614174555, 'frank_wright', 25, 'Engenharia', 'Dúvidas sobre circuitos elétricos.', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 963f8527-e89b-12d3-a456-426614174666, 'grace_davis', 22, 'Economia', 'Qual livro introdutório recomendam?', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 741d2589-e89b-12d3-a456-426614174777, 'harry_wilson', 23, 'Literatura', 'Análise de "1984" de George Orwell.', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 852e3694-e89b-12d3-a456-426614174888, 'irene_lopez', 21, 'Química', 'Experimentos simples para entender equilíbrio químico.', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 159a7532-e89b-12d3-a456-426614174999, 'jack_martin', 24, 'Administração', 'Gestão de tempo: como melhorar?', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 8ea295d7-5cad-4bf5-a1d9-2a70a8bf7d02, 'zack_young', 26, 'Psicologia', 'A influência do meio ambiente no comportamento humano.', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 654d7890-e89b-12d3-a456-426614174222, 'carol_lee', 21, 'Programação', 'Quais são os melhores cursos gratuitos de Python?', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 741d2589-e89b-12d3-a456-426614174777, 'harry_wilson', 23, 'Literatura', 'Livros clássicos que todo mundo deveria ler?', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 456a7891-e89b-12d3-a456-426614174333, 'dave_miller', 23, 'História', 'Influência do Império Romano na atualidade.', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 963f8527-e89b-12d3-a456-426614174666, 'grace_davis', 22, 'Economia', 'Como funciona a inflação?', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 321c4567-e89b-12d3-a456-426614174555, 'frank_wright', 25, 'Engenharia', 'Alternativas ao uso de silício na computação.', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 159a7532-e89b-12d3-a456-426614174999, 'jack_martin', 24, 'Administração', 'Como ser mais produtivo no trabalho remoto?', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 852e3694-e89b-12d3-a456-426614174888, 'irene_lopez', 21, 'Química', 'Diferença entre ligação covalente e iônica.', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 8ea295d7-5cad-4bf5-a1d9-2a70a8bf7d02, 'zack_young', 26, 'Psicologia', 'Como a psicologia cognitiva influencia a IA?', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 654d7890-e89b-12d3-a456-426614174222, 'carol_lee', 21, 'Programação', 'Estruturas de dados mais usadas em desenvolvimento.', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 789b1234-e89b-12d3-a456-426614174444, 'eva_clark', 20, 'Filosofia', 'A relação entre existencialismo e absurdismo.', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 963f8527-e89b-12d3-a456-426614174666, 'grace_davis', 22, 'Economia', 'Impacto da taxa Selic na economia brasileira.', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 741d2589-e89b-12d3-a456-426614174777, 'harry_wilson', 23, 'Literatura', 'Escritores contemporâneos promissores.', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 456a7891-e89b-12d3-a456-426614174333, 'dave_miller', 23, 'História', 'Como foi a transição do feudalismo para o capitalismo?', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 852e3694-e89b-12d3-a456-426614174888, 'irene_lopez', 21, 'Química', 'O que são catalisadores e como funcionam?', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 321c4567-e89b-12d3-a456-426614174555, 'frank_wright', 25, 'Engenharia', 'Quais são os desafios da computação quântica?', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 159a7532-e89b-12d3-a456-426614174999, 'jack_martin', 24, 'Administração', 'Como liderar equipes de forma eficaz?', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 8ea295d7-5cad-4bf5-a1d9-2a70a8bf7d02, 'zack_young', 26, 'Psicologia', 'Teorias da motivação e sua aplicação no dia a dia.', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 987f1234-e89b-12d3-a456-426614174111, 'bob_jones', 24, 'Matemática', 'Como usar transformadas de Fourier?', toTimestamp(now()));
INSERT INTO post (message_id, user_id, user_name, user_age, topic, body, timestamp) VALUES
    (uuid(), 123e4567-e89b-12d3-a456-426614174000, 'alice_smith', 22, 'Programação', 'Hey Carol, para aprender python recomendo o livro Entendendo Algoritmos do Bhargava.', toTimestamp(now()));

// Procurar mensagem específica postada, usando a definição de consulta esperada do trabalho ("As mensagens devem ser consultadas rapidamente por usuário e data."), considerando o particionamento por tópico;
SELECT * FROM post WHERE topic = 'Programação' AND user_id = 654d7890-e89b-12d3-a456-426614174222 AND timestamp = '2025-02-23 13:56:50.664000+0000';

// Criar indíce e fazer consulta com agregação por usuário e tópico, para obter frequência das mensagens
SELECT user_id, user_name, topic, COUNT(*) as qtd_mensagens_no_topico FROM post GROUP BY topic, user_id;

// Indíce será criado para efeito de demonstração e consulta utilizando o indíce
CREATE INDEX idx_user_age ON post(user_age);
SELECT * FROM post WHERE user_age = 20;