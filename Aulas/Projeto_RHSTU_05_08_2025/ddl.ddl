-- Gerado por Oracle SQL Developer Data Modeler 24.3.1.351.0831
--   em:        2025-08-29 23:48:29 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE T_RHSTU_CONTATO_PACIENTE 
    ( 
     T_RHSTU_PACIENTE_ID_PACIENTE         NUMBER (9)  NOT NULL , 
     ID_CONTATO                           NUMBER (9)  NOT NULL , 
--  ERROR: Column name length exceeds maximum allowed length(30) 
     T_RHSTU_TIPO_CONTATO_ID_TIPO_CONTATO NUMBER (5)  NOT NULL , 
     NM_CONTATO                           VARCHAR2 (40)  NOT NULL , 
     NR_DDI                               NUMBER (3) , 
     NR_DDD                               NUMBER (3) , 
     NR_TELEFONE                          NUMBER (10) 
    ) 
;

COMMENT ON COLUMN T_RHSTU_CONTATO_PACIENTE.T_RHSTU_PACIENTE_ID_PACIENTE IS 'Esse atributo irá receber a chave primária do paciente. Esse número é sequencial e gerado automaticamente pelo sistema. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_CONTATO_PACIENTE.ID_CONTATO IS 'Esse atributo irá receber a chave primária do contato do paciente. Esse número é sequencial e inicia sempre com 1 a partir do id do paciente e é gerado automaticamente pelo sistema. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_CONTATO_PACIENTE.T_RHSTU_TIPO_CONTATO_ID_TIPO_CONTATO IS 'Esse atributo irá receber a chave primária do tipo do contato. Esse número é sequencial e gerado automaticamente pelo sistema. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_CONTATO_PACIENTE.NM_CONTATO IS 'Este atributo irá receber o nome do contato do paciente. Seu conteudo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_CONTATO_PACIENTE.NR_DDI IS 'Este atributo irá receber o número do DDI do telefone do contato do paciente. Seu conteudo é opcional.' 
;

COMMENT ON COLUMN T_RHSTU_CONTATO_PACIENTE.NR_DDD IS 'Este atributo irá receber o número do DDD  do telefone do contato do paciente. Seu conteudo é opcional.' 
;

COMMENT ON COLUMN T_RHSTU_CONTATO_PACIENTE.NR_TELEFONE IS 'Este atributo irá receber o número do telefone do contato do paciente. Seu conteudo é opcional.' 
;

ALTER TABLE T_RHSTU_CONTATO_PACIENTE 
    ADD CONSTRAINT T_RHSTU_CONTATO_PACIENTE_PK PRIMARY KEY ( ID_CONTATO, T_RHSTU_PACIENTE_ID_PACIENTE ) ;

CREATE TABLE T_RHSTU_EMAIL_PACIENTE 
    ( 
     ID_EMAIL                     NUMBER (9)  NOT NULL , 
     T_RHSTU_PACIENTE_ID_PACIENTE NUMBER (9)  NOT NULL , 
     DS_EMAIL                     VARCHAR2 (100)  NOT NULL , 
     TP_EMAIL                     VARCHAR2 (20)  NOT NULL , 
     ST_EMAIL                     VARCHAR2 (15)  NOT NULL 
    ) 
;

ALTER TABLE T_RHSTU_EMAIL_PACIENTE 
    ADD 
    CHECK (ST_EMAIL IN ('A', 'I')) 
;

COMMENT ON COLUMN T_RHSTU_EMAIL_PACIENTE.ID_EMAIL IS 'Esse atributo irá receber a chave primária do email do paciente. Esse número é sequencial e gerado automaticamente pelo sistema. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_EMAIL_PACIENTE.T_RHSTU_PACIENTE_ID_PACIENTE IS 'Esse atributo irá receber a chave primária do paciente. Esse número é sequencial e gerado automaticamente pelo sistema. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_EMAIL_PACIENTE.DS_EMAIL IS 'Esse atributo irá receber o email do paciente.  Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_EMAIL_PACIENTE.TP_EMAIL IS 'Esse atributo irá receber o tipo email do paciente.  Seu conteúdo é obrigatório e deve possuir os seguintes valores: Pessoal ou Profissional.' 
;

COMMENT ON COLUMN T_RHSTU_EMAIL_PACIENTE.ST_EMAIL IS 'Esse atributo irá receber o status do email do paciente.  Seu conteúdo é obrigatório e deve possuir os seguintes valores: Ativo ou Inativo.' 
;

ALTER TABLE T_RHSTU_EMAIL_PACIENTE 
    ADD CONSTRAINT T_RHSTU_EMAIL_PACIENTE_PK PRIMARY KEY ( ID_EMAIL ) ;

CREATE TABLE T_RHSTU_ENDERECO_PACIENTE 
    ( 
     ID_ENDERECO                  NUMBER (9)  NOT NULL , 
     T_RHSTU_PACIENTE_ID_PACIENTE NUMBER (9)  NOT NULL , 
     NR_CEP                       NUMBER (9)  NOT NULL , 
     NM_LOGRADOURO                VARCHAR2 (80)  NOT NULL , 
     NR_LOGRADOURO                NUMBER (7) , 
     DS_COMPLEMENTO_NUMERO        VARCHAR2 (30) , 
     DS_PONTO_REFERENCIA          VARCHAR2 (50) , 
     NM_BAIRRO                    VARCHAR2 (60)  NOT NULL , 
     NM_CIDADE                    VARCHAR2 (60)  NOT NULL , 
     NM_ESTADO                    VARCHAR2 (45)  NOT NULL , 
     SG_ESTADO                    CHAR (2)  NOT NULL 
    ) 
;

COMMENT ON COLUMN T_RHSTU_ENDERECO_PACIENTE.ID_ENDERECO IS 'Esse atributo irá receber a chave primária do endereco do paciente. Esse número é sequencia e gerado automaticamente pelo sistema. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_ENDERECO_PACIENTE.T_RHSTU_PACIENTE_ID_PACIENTE IS 'Esse atributo irá receber a chave primária do paciente. Esse número é sequencial e gerado automaticamente pelo sistema. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_ENDERECO_PACIENTE.NR_CEP IS 'Esse atributo irá receber o número do CEP do endereco do paciente. Esse número deve ser correspondente a base do correio. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_ENDERECO_PACIENTE.NM_LOGRADOURO IS 'Esse atributo irá receber o logradouro do endereco do paciente.  Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_ENDERECO_PACIENTE.NR_LOGRADOURO IS 'Esse atributo irá receber o número do logradouro do endereco do paciente.  Seu conteúdo é opcional.' 
;

COMMENT ON COLUMN T_RHSTU_ENDERECO_PACIENTE.DS_COMPLEMENTO_NUMERO IS 'Esse atributo irá receber o complemeneto  do logradouro do endereco do paciente caso ele exista. Seu conteúdo é opcional.' 
;

COMMENT ON COLUMN T_RHSTU_ENDERECO_PACIENTE.DS_PONTO_REFERENCIA IS 'Esse atributo irá receber o ponto de referência  do logradouro do endereco do paciente.  Seu conteúdo é opcional.' 
;

COMMENT ON COLUMN T_RHSTU_ENDERECO_PACIENTE.NM_BAIRRO IS 'Esse atributo irá receber o nome do Bairro do endereco do paciente.  Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_ENDERECO_PACIENTE.NM_CIDADE IS 'Esse atributo irá receber o nome da Cidade do endereco do paciente.  Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_ENDERECO_PACIENTE.NM_ESTADO IS 'Esse atributo irá receber o nome do Estado  do endereco do paciente.  Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_ENDERECO_PACIENTE.SG_ESTADO IS 'Esse atributo irá receber a sigla do Estado  do endereco do paciente.  Seu conteúdo é obrigatório.' 
;

ALTER TABLE T_RHSTU_ENDERECO_PACIENTE 
    ADD CONSTRAINT T_RHSTU_ENDERECO_PACIENTE_PK PRIMARY KEY ( ID_ENDERECO ) ;

CREATE TABLE T_RHSTU_PACIENTE 
    ( 
     ID_PACIENTE        NUMBER (9)  NOT NULL , 
     NM_PACIENTE        VARCHAR2 (80)  NOT NULL , 
     NR_CPF             NUMBER (12)  NOT NULL , 
     NM_RG              VARCHAR2 (15)  NOT NULL , 
     DT_NASCIMENTO      DATE  NOT NULL , 
     FL_SEXO_BIOLÓGICO  CHAR (1)  NOT NULL , 
     DS_ESCOLARIDADE    VARCHAR2 (40)  NOT NULL , 
     DS_ESTADO_CIVIL    VARCHAR2 (25)  NOT NULL , 
     NM_GRUPO_SANGUINEO VARCHAR2 (6)  NOT NULL , 
     NR_ALTURA          NUMBER (3,2)  NOT NULL , 
     NR_PESO            NUMBER (4,1)  NOT NULL 
    ) 
;

ALTER TABLE T_RHSTU_PACIENTE 
    ADD CONSTRAINT CK_RHSTU_PACIENTE_SEXO 
    CHECK (FL_SEXO_BIOLÓGICO IN ('F', 'I', 'M')) 
;

ALTER TABLE T_RHSTU_PACIENTE 
    ADD CONSTRAINT " CK_RHSTU_ALTURA_PACIENTE" 
    CHECK (NR_ALTURA BETWEEN 0.1 AND 2.99) 
;

ALTER TABLE T_RHSTU_PACIENTE 
    ADD CONSTRAINT CK_RHSTU_PACIENTE_PESO 
    CHECK (NR_PESO BETWEEN 1 AND 800 OR NR_PESO IN (A, I)) 
;

COMMENT ON COLUMN T_RHSTU_PACIENTE.ID_PACIENTE IS 'Esse atributo irá receber a chave primária do paciente. Esse número é sequencial e gerado automaticamente pelo sistema. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_PACIENTE.NM_PACIENTE IS 'Esse atributo irá receber o nome completo do  paciente.  Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_PACIENTE.NR_CPF IS 'Esse atributo irá receber o número do  CPF paciente.  Seu conteúdo é obrigatório e será validado de acordo com regras de negócio.' 
;

COMMENT ON COLUMN T_RHSTU_PACIENTE.NM_RG IS 'Esse atributo irá receber o número do  RG  paciente.  Seu conteúdo é obrigatório e será validado de acordo com regras de negócio.' 
;

COMMENT ON COLUMN T_RHSTU_PACIENTE.DT_NASCIMENTO IS 'Esse atributo irá receber a data de nascimento do  paciente.  Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_PACIENTE.FL_SEXO_BIOLÓGICO IS 'Esse atributo irá receber a flag do sexo biológico de nascimento do Paciente. Os valores possíveis são (F)eminino ou (M)asculino ou (I)ndeinido. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_PACIENTE.DS_ESCOLARIDADE IS 'Esse atributo irá receber a Escolaridade do  paciente.  Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_PACIENTE.DS_ESTADO_CIVIL IS 'Esse atributo irá receber o Estado Civil  do  paciente.  Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_PACIENTE.NM_GRUPO_SANGUINEO IS 'Esse atributo irá receber o grupo sanguineo do  paciente.  Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_PACIENTE.NR_ALTURA IS 'Esse atributo irá receber a altura do  paciente.  Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_PACIENTE.NR_PESO IS 'Esse atributo irá receber o peso  do  paciente.  Seu conteúdo é obrigatório.' 
;

ALTER TABLE T_RHSTU_PACIENTE 
    ADD CONSTRAINT T_RHSTU_PACIENTE_PK PRIMARY KEY ( ID_PACIENTE ) ;

ALTER TABLE T_RHSTU_PACIENTE 
    ADD CONSTRAINT T_RHSTU_PACIENTE_NR_CPF_UN UNIQUE ( NR_CPF ) ;

CREATE TABLE T_RHSTU_PACIENTE_PLANO_SAUDE 
    ( 
     ID_PACIENTE_PS                     NUMBER (10)  NOT NULL , 
     T_RHSTU_PACIENTE_ID_PACIENTE       NUMBER (9)  NOT NULL , 
--  ERROR: Column name length exceeds maximum allowed length(30) 
     T_RHSTU_PLANO_SAUDE_ID_PLANO_SAUDE NUMBER (5)  NOT NULL , 
     NR_CARTEIRA_PS                     NUMBER (15) , 
     DT_INICIO                          DATE  NOT NULL , 
     DT_FIM                             DATE 
    ) 
;

COMMENT ON COLUMN T_RHSTU_PACIENTE_PLANO_SAUDE.ID_PACIENTE_PS IS 'Esse atributo irá receber a chave primária do plano de saúde do paciente. Esse número é sequencial e gerado automaticamente pelo sistema. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_PACIENTE_PLANO_SAUDE.T_RHSTU_PACIENTE_ID_PACIENTE IS 'Esse atributo irá receber a chave primária do paciente. Esse número é sequencial e gerado automaticamente pelo sistema. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_PACIENTE_PLANO_SAUDE.DT_INICIO IS 'Esse atributo irá receber a data de início para atendimento do plano de saúde do cliente aceito na RHSTU. Seu conteúdo é opcional.' 
;

COMMENT ON COLUMN T_RHSTU_PACIENTE_PLANO_SAUDE.DT_FIM IS 'Esse atributo irá receber a data de encerramento do plano de saúde aceito na RHSTU. Seu conteúdo é opcional.' 
;

--  ERROR: PK name length exceeds maximum allowed length(30) 
ALTER TABLE T_RHSTU_PACIENTE_PLANO_SAUDE 
    ADD CONSTRAINT T_RHSTU_PACIENTE_PLANO_SAUDE_PK PRIMARY KEY ( ID_PACIENTE_PS ) ;

CREATE TABLE T_RHSTU_PLANO_SAUDE 
    ( 
     ID_PLANO_SAUDE          NUMBER (5)  NOT NULL , 
     DS_RAZAO_SOCIAL         VARCHAR2 (70)  NOT NULL , 
     NM_FANTASIA_PLANO_SAUDE VARCHAR2 (80) , 
     DS_PLANO_SAUDE          VARCHAR2 (100)  NOT NULL , 
     NR_CNPJ                 NUMBER (14)  NOT NULL , 
     NM_CONTATO              VARCHAR2 (30) , 
     DS_TELEFONE             VARCHAR2 (30) , 
     DT_INICIO               DATE  NOT NULL , 
     DT_FIM                  DATE 
    ) 
;

COMMENT ON COLUMN T_RHSTU_PLANO_SAUDE.ID_PLANO_SAUDE IS 'Esse atributo irá receber a chave primária do plano de saúde. Esse número é sequencial e gerado automaticamente pelo sistema. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_PLANO_SAUDE.DS_RAZAO_SOCIAL IS 'Esse atributo irá receber Razão Social do plano de saúde aceito na RHSTU. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_PLANO_SAUDE.NM_FANTASIA_PLANO_SAUDE IS 'Esse atributo irá receber o nome Fantasia do plano de saúde aceito na RHSTU. Seu conteúdo é opcional.' 
;

COMMENT ON COLUMN T_RHSTU_PLANO_SAUDE.DS_PLANO_SAUDE IS 'Esse atributo irá receber a descrição do  plano de saúde aceito na RHSTU. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_PLANO_SAUDE.NR_CNPJ IS 'Esse atributo irá receber o numero do CNPJ do plano de saúde aceito na RHSTU. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_PLANO_SAUDE.NM_CONTATO IS 'Esse atributo irá receber o nome  do contato dentro do plano de saúde aceito na RHSTU. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_PLANO_SAUDE.DS_TELEFONE IS 'Esse atributo irá receber os dados do telefone para contato no plano de saúde aceito na RHSTU. Seu conteúdo é opcional.' 
;

COMMENT ON COLUMN T_RHSTU_PLANO_SAUDE.DT_INICIO IS 'Esse atributo irá receber a data de início para atendimento do plano de saúde aceito na RHSTU. Seu conteúdo é opcional.' 
;

COMMENT ON COLUMN T_RHSTU_PLANO_SAUDE.DT_FIM IS 'Esse atributo irá receber a data de encerramento do plano de saúde aceito na RHSTU. Seu conteúdo é opcional.' 
;

ALTER TABLE T_RHSTU_PLANO_SAUDE 
    ADD CONSTRAINT T_RHSTU_PLANO_SAUDE_PK PRIMARY KEY ( ID_PLANO_SAUDE ) ;

CREATE TABLE T_RHSTU_TELEFONE_PACIENTE 
    ( 
     T_RHSTU_PACIENTE_ID_PACIENTE NUMBER (9)  NOT NULL , 
     ID_TELEFONE                  NUMBER (9)  NOT NULL , 
     NR_DDI                       NUMBER (3)  NOT NULL , 
     NR_DDD                       NUMBER (3)  NOT NULL , 
     NR_TELEFONE                  NUMBER (10)  NOT NULL , 
     TP_TELEFONE                  VARCHAR2 (20)  NOT NULL , 
     ST_TELEFONE                  VARCHAR2 (15)  NOT NULL 
    ) 
;

--  ERROR: Column T_RHSTU_TELEFONE_PACIENTE.ST_TELEFONE check constraint name length exceeds maximum allowed length(30) 

ALTER TABLE T_RHSTU_TELEFONE_PACIENTE 
    ADD 
    CHECK (ST_TELEFONE IN ('A', 'I')) 
;

COMMENT ON COLUMN T_RHSTU_TELEFONE_PACIENTE.T_RHSTU_PACIENTE_ID_PACIENTE IS 'Esse atributo irá receber a chave primária do paciente. Esse número é sequencial e gerado automaticamente pelo sistema. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_TELEFONE_PACIENTE.ID_TELEFONE IS 'Esse atributo irá receber a chave primária do telefone do paciente. Esse número é sequencial iniciando com 1 a partir do id do paciente e é  gerado automaticamente pelo sistema. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_TELEFONE_PACIENTE.NR_DDI IS 'Este atributo irá receber o número do DDI do telefone do  paciente. Seu conteudo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_TELEFONE_PACIENTE.NR_DDD IS 'Esse atributo irá receber o número do DDD do telefone paciente.  Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_TELEFONE_PACIENTE.NR_TELEFONE IS 'Esse atributo irá receber o número do telefone do  DDD do telefone paciente.  Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_TELEFONE_PACIENTE.TP_TELEFONE IS 'Esse atributo irá receber o tipo do  telefone  do telefone paciente.  Seu conteúdo é obrigatório e os valores possiveis são: Comercial, Residencial, Recado e Celular' 
;

COMMENT ON COLUMN T_RHSTU_TELEFONE_PACIENTE.ST_TELEFONE IS 'Esse atributo irá receber o status do telefone do paciente.  Seu conteúdo é obrigatório e deve possuir os seguintes valores: Ativo ou Inativo.' 
;

ALTER TABLE T_RHSTU_TELEFONE_PACIENTE 
    ADD CONSTRAINT T_RHSTU_TELEFONE_PACIENTE_PK PRIMARY KEY ( ID_TELEFONE, T_RHSTU_PACIENTE_ID_PACIENTE ) ;

CREATE TABLE T_RHSTU_TIPO_CONTATO 
    ( 
     ID_TIPO_CONTATO NUMBER (5)  NOT NULL , 
     NM_TIPO_CONTATO VARCHAR2 (80)  NOT NULL , 
     DT_INICIO       DATE  NOT NULL , 
     DT_FIM          DATE 
    ) 
;

COMMENT ON COLUMN T_RHSTU_TIPO_CONTATO.ID_TIPO_CONTATO IS 'Esse atributo irá receber a chave primária do tipo do contato. Esse número é sequencial e gerado automaticamente pelo sistema. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_TIPO_CONTATO.NM_TIPO_CONTATO IS 'Este atributo irá  receber o nome  do tipo de contato (Mãe, Pai, Prima(o), Irmã(o), Amiga(o), Colega de trabalho) entre outros. Seu conteudo é obrigatório.
' 
;

COMMENT ON COLUMN T_RHSTU_TIPO_CONTATO.DT_INICIO IS 'Este atributo irá  receber a data de início de validade do tipo do contato. Seu conteudo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_TIPO_CONTATO.DT_FIM IS 'Este atributo irá  receber a data de término  de validade do tipo do contato. Seu conteudo é obrigatório.' 
;

ALTER TABLE T_RHSTU_TIPO_CONTATO 
    ADD CONSTRAINT T_RHSTU_TIPO_CONTATO_PK PRIMARY KEY ( ID_TIPO_CONTATO ) ;

CREATE TABLE T_RHSTU_UNID_HOSPITALAR 
    ( 
     ID_UNID_HOSPITAL          NUMBER (9)  NOT NULL , 
     NM_UNID_HOSPITALAR        VARCHAR2 (80)  NOT NULL , 
     NM_RAZAO_SOCIAL_UNID_HOSP VARCHAR2 (80)  NOT NULL , 
     DT_FUNDACAO               DATE , 
     SG_ESTADO                 CHAR (2)  NOT NULL , 
     NM_ESTADO                 VARCHAR2 (45)  NOT NULL , 
     NM_CIDADE                 VARCHAR2 (60)  NOT NULL , 
     NM_BAIRRO                 VARCHAR2 (60)  NOT NULL , 
     NM_LOGRADOURO             VARCHAR2 (150)  NOT NULL , 
     NR_LOGRADOURO             NUMBER (7) , 
     DS_COMPLEMENTO_NUMERO     VARCHAR2 (30) , 
     DS_PONTO_REFERENCIA       VARCHAR2 (50) 
    ) 
;

COMMENT ON COLUMN T_RHSTU_UNID_HOSPITALAR.ID_UNID_HOSPITAL IS 'Esse atributo irá receber a chave primária da Unidade Hospitalar. Esse número é sequencia e gerado automaticamente pelo sistema. Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_UNID_HOSPITALAR.SG_ESTADO IS 'Esse atributo irá receber a sigla do Estado  do enderecoda Unidade Hospitalar.  Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_UNID_HOSPITALAR.NM_ESTADO IS 'Esse atributo irá receber o nome do Estado  do endereco da Unidade Hospitalar.  Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_UNID_HOSPITALAR.NM_CIDADE IS 'Esse atributo irá receber o nome da Cidade da Unidade Hospitalar.  Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_UNID_HOSPITALAR.NM_BAIRRO IS 'Esse atributo irá receber o nome do Bairro do endereco da Unidade Hospitalar.  Seu conteúdo é obrigatório.' 
;

COMMENT ON COLUMN T_RHSTU_UNID_HOSPITALAR.NR_LOGRADOURO IS 'Esse atributo irá receber o número do logradouro do endereco da Unidade Hospitalar.  Seu conteúdo é opcional.' 
;

COMMENT ON COLUMN T_RHSTU_UNID_HOSPITALAR.DS_COMPLEMENTO_NUMERO IS 'Esse atributo irá receber o complemeneto  do logradouro do endereco da Unidade Hospitalar caso ele exista. Seu conteúdo é opcional.' 
;

COMMENT ON COLUMN T_RHSTU_UNID_HOSPITALAR.DS_PONTO_REFERENCIA IS 'Esse atributo irá receber o ponto de referência  do logradouro do endereco da Unidade Hospitalar.' 
;

ALTER TABLE T_RHSTU_UNID_HOSPITALAR 
    ADD CONSTRAINT T_RHSTU_UNID_HOSPITALAR_PK PRIMARY KEY ( ID_UNID_HOSPITAL ) ;

CREATE TABLE T_STU_CONSULTA 
    ( 
--  ERROR: Column name length exceeds maximum allowed length(30) 
     T_RHSTU_UNID_HOSPITALAR_ID_UNID_HOSPITAL NUMBER (9)  NOT NULL , 
     NR_CONSULTA                              NUMBER  NOT NULL , 
     T_RHSTU_PACIENTE_ID_PACIENTE             NUMBER (9)  NOT NULL , 
     T_STU_MEDICO_CD_MEDICO                   NUMBER  NOT NULL , 
     DT_HR_CONSULTA                           DATE  NOT NULL , 
     NR_CONSULTORIO                           NUMBER (5)  NOT NULL 
    ) 
;

ALTER TABLE T_STU_CONSULTA 
    ADD CONSTRAINT T_STU_CONSULTA_PK PRIMARY KEY ( NR_CONSULTA, T_RHSTU_UNID_HOSPITALAR_ID_UNID_HOSPITAL ) ;

CREATE TABLE T_STU_CONSULTA_FORMA_PAGTO 
    ( 
     ID_CONSULTA_FORMA_PAGTO                                 NUMBER  NOT NULL , 
--  ERROR: Column name length exceeds maximum allowed length(30) 
     T_STU_CONSULTA_T_RHSTU_UNID_HOSPITALAR_ID_UNID_HOSPITAL NUMBER (9)  NOT NULL , 
     T_STU_CONSULTA_NR_CONSULTA                              NUMBER  NOT NULL , 
--  ERROR: Column name length exceeds maximum allowed length(30) 
     T_RHSTU_PACIENTE_PLANO_SAUDE_ID_PACIENTE_PS             NUMBER (10)  NOT NULL , 
--  ERROR: Column name length exceeds maximum allowed length(30) 
     T_STU_FORMA_PAGAMENTO_ID_FORMA_PAGTO                    NUMBER  NOT NULL , 
     DT_CADASTRO                                             DATE  NOT NULL , 
     DT_PAGTO_CONSULTA                                       DATE , 
     ST_PAGTO_CONSULTA                                       CHAR (1)  NOT NULL 
    ) 
;

ALTER TABLE T_STU_CONSULTA_FORMA_PAGTO 
    ADD CONSTRAINT CK_RHSTU_PACIENTE_PAGAMENTO 
    CHECK (ID_CONSULTA_FORMA_PAGTO IN (A, C, P)) 
;

ALTER TABLE T_STU_CONSULTA_FORMA_PAGTO 
    ADD CONSTRAINT T_STU_CONSULTA_FORMA_PAGTO_PK PRIMARY KEY ( ID_CONSULTA_FORMA_PAGTO ) ;

CREATE TABLE T_STU_FORMA_PAGAMENTO 
    ( 
     ID_FORMA_PAGTO NUMBER  NOT NULL , 
     NM_FORMA_PAGTO VARCHAR2 (60)  NOT NULL , 
     DS_FORMA_PAGTO VARCHAR2 (500) , 
     ST_FORMA_PAGTO CHAR (1)  NOT NULL 
    ) 
;

--  ERROR: Column T_STU_FORMA_PAGAMENTO.ST_FORMA_PAGTO check constraint name length exceeds maximum allowed length(30) 

ALTER TABLE T_STU_FORMA_PAGAMENTO 
    ADD 
    CHECK (ST_FORMA_PAGTO IN ('A', 'I')) 
;

ALTER TABLE T_STU_FORMA_PAGAMENTO 
    ADD CONSTRAINT T_STU_FORMA_PAGAMENTO_PK PRIMARY KEY ( ID_FORMA_PAGTO ) ;

CREATE TABLE T_STU_MEDICAMENTO 
    ( 
     ID_MEDICAMENTO           NUMBER  NOT NULL , 
     NM_MEDICAMENTO           VARCHAR2 (50)  NOT NULL , 
     DS_DETALHADA_MEDICAMENTO VARCHAR2 (4000) , 
     NR_CODIGO_BARRAS         NUMBER  NOT NULL 
    ) 
;

ALTER TABLE T_STU_MEDICAMENTO 
    ADD CONSTRAINT T_STU_MEDICAMENTO_PK PRIMARY KEY ( ID_MEDICAMENTO ) ;

CREATE TABLE T_STU_MEDICO 
    ( 
     CD_MEDICO        NUMBER  NOT NULL , 
     NM_MEDICO        VARCHAR2 (90)  NOT NULL , 
     NR_CRM           NUMBER (10)  NOT NULL , 
     DS_ESPECIALIDADE VARCHAR2 (50)  NOT NULL 
    ) 
;

ALTER TABLE T_STU_MEDICO 
    ADD CONSTRAINT T_STU_MEDICO_PK PRIMARY KEY ( CD_MEDICO ) ;

CREATE TABLE T_STU_PRESCICAO_MEDICA 
    ( 
     ID_PRESCRICAO_MEDICA                                    NUMBER  NOT NULL , 
--  ERROR: Column name length exceeds maximum allowed length(30) 
     T_STU_CONSULTA_T_RHSTU_UNID_HOSPITALAR_ID_UNID_HOSPITAL NUMBER (9)  NOT NULL , 
     T_STU_CONSULTA_NR_CONSULTA                              NUMBER  NOT NULL , 
--  ERROR: Column name length exceeds maximum allowed length(30) 
     T_STU_MEDICAMENTO_ID_MEDICAMENTO                        NUMBER  NOT NULL , 
     DS_POSOLOGIA                                            VARCHAR2 (150)  NOT NULL , 
     DS_VIA                                                  VARCHAR2 (40)  NOT NULL , 
     DS_OBSERVACAO_USO                                       VARCHAR2 (100) , 
     QT_MEDICAMENTO                                          NUMBER (10,4) 
    ) 
;

ALTER TABLE T_STU_PRESCICAO_MEDICA 
    ADD CONSTRAINT T_STU_PRESCICAO_MEDICA_PK PRIMARY KEY ( ID_PRESCRICAO_MEDICA ) ;

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE T_RHSTU_CONTATO_PACIENTE 
    ADD CONSTRAINT T_RHSTU_CONTATO_PACIENTE_T_RHSTU_PACIENTE_FK FOREIGN KEY 
    ( 
     T_RHSTU_PACIENTE_ID_PACIENTE
    ) 
    REFERENCES T_RHSTU_PACIENTE 
    ( 
     ID_PACIENTE
    ) 
;

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE T_RHSTU_CONTATO_PACIENTE 
    ADD CONSTRAINT T_RHSTU_CONTATO_PACIENTE_T_RHSTU_TIPO_CONTATO_FK FOREIGN KEY 
    ( 
     T_RHSTU_TIPO_CONTATO_ID_TIPO_CONTATO
    ) 
    REFERENCES T_RHSTU_TIPO_CONTATO 
    ( 
     ID_TIPO_CONTATO
    ) 
;

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE T_RHSTU_EMAIL_PACIENTE 
    ADD CONSTRAINT T_RHSTU_EMAIL_PACIENTE_T_RHSTU_PACIENTE_FK FOREIGN KEY 
    ( 
     T_RHSTU_PACIENTE_ID_PACIENTE
    ) 
    REFERENCES T_RHSTU_PACIENTE 
    ( 
     ID_PACIENTE
    ) 
;

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE T_RHSTU_ENDERECO_PACIENTE 
    ADD CONSTRAINT T_RHSTU_ENDERECO_PACIENTE_T_RHSTU_PACIENTE_FK FOREIGN KEY 
    ( 
     T_RHSTU_PACIENTE_ID_PACIENTE
    ) 
    REFERENCES T_RHSTU_PACIENTE 
    ( 
     ID_PACIENTE
    ) 
;

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE T_RHSTU_PACIENTE_PLANO_SAUDE 
    ADD CONSTRAINT T_RHSTU_PACIENTE_PLANO_SAUDE_T_RHSTU_PACIENTE_FK FOREIGN KEY 
    ( 
     T_RHSTU_PACIENTE_ID_PACIENTE
    ) 
    REFERENCES T_RHSTU_PACIENTE 
    ( 
     ID_PACIENTE
    ) 
;

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE T_RHSTU_PACIENTE_PLANO_SAUDE 
    ADD CONSTRAINT T_RHSTU_PACIENTE_PLANO_SAUDE_T_RHSTU_PLANO_SAUDE_FK FOREIGN KEY 
    ( 
     T_RHSTU_PLANO_SAUDE_ID_PLANO_SAUDE
    ) 
    REFERENCES T_RHSTU_PLANO_SAUDE 
    ( 
     ID_PLANO_SAUDE
    ) 
;

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE T_RHSTU_TELEFONE_PACIENTE 
    ADD CONSTRAINT T_RHSTU_TELEFONE_PACIENTE_T_RHSTU_PACIENTE_FK FOREIGN KEY 
    ( 
     T_RHSTU_PACIENTE_ID_PACIENTE
    ) 
    REFERENCES T_RHSTU_PACIENTE 
    ( 
     ID_PACIENTE
    ) 
;

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE T_STU_CONSULTA_FORMA_PAGTO 
    ADD CONSTRAINT T_STU_CONSULTA_FORMA_PAGTO_T_RHSTU_PACIENTE_PLANO_SAUDE_FK FOREIGN KEY 
    ( 
     T_RHSTU_PACIENTE_PLANO_SAUDE_ID_PACIENTE_PS
    ) 
    REFERENCES T_RHSTU_PACIENTE_PLANO_SAUDE 
    ( 
     ID_PACIENTE_PS
    ) 
;

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE T_STU_CONSULTA_FORMA_PAGTO 
    ADD CONSTRAINT T_STU_CONSULTA_FORMA_PAGTO_T_STU_CONSULTA_FK FOREIGN KEY 
    ( 
     T_STU_CONSULTA_NR_CONSULTA,
     T_STU_CONSULTA_T_RHSTU_UNID_HOSPITALAR_ID_UNID_HOSPITAL
    ) 
    REFERENCES T_STU_CONSULTA 
    ( 
     NR_CONSULTA,
     T_RHSTU_UNID_HOSPITALAR_ID_UNID_HOSPITAL
    ) 
;

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE T_STU_CONSULTA_FORMA_PAGTO 
    ADD CONSTRAINT T_STU_CONSULTA_FORMA_PAGTO_T_STU_FORMA_PAGAMENTO_FK FOREIGN KEY 
    ( 
     T_STU_FORMA_PAGAMENTO_ID_FORMA_PAGTO
    ) 
    REFERENCES T_STU_FORMA_PAGAMENTO 
    ( 
     ID_FORMA_PAGTO
    ) 
;

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE T_STU_CONSULTA 
    ADD CONSTRAINT T_STU_CONSULTA_T_RHSTU_PACIENTE_FK FOREIGN KEY 
    ( 
     T_RHSTU_PACIENTE_ID_PACIENTE
    ) 
    REFERENCES T_RHSTU_PACIENTE 
    ( 
     ID_PACIENTE
    ) 
;

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE T_STU_CONSULTA 
    ADD CONSTRAINT T_STU_CONSULTA_T_RHSTU_UNID_HOSPITALAR_FK FOREIGN KEY 
    ( 
     T_RHSTU_UNID_HOSPITALAR_ID_UNID_HOSPITAL
    ) 
    REFERENCES T_RHSTU_UNID_HOSPITALAR 
    ( 
     ID_UNID_HOSPITAL
    ) 
;

ALTER TABLE T_STU_CONSULTA 
    ADD CONSTRAINT T_STU_CONSULTA_T_STU_MEDICO_FK FOREIGN KEY 
    ( 
     T_STU_MEDICO_CD_MEDICO
    ) 
    REFERENCES T_STU_MEDICO 
    ( 
     CD_MEDICO
    ) 
;

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE T_STU_PRESCICAO_MEDICA 
    ADD CONSTRAINT T_STU_PRESCICAO_MEDICA_T_STU_CONSULTA_FK FOREIGN KEY 
    ( 
     T_STU_CONSULTA_NR_CONSULTA,
     T_STU_CONSULTA_T_RHSTU_UNID_HOSPITALAR_ID_UNID_HOSPITAL
    ) 
    REFERENCES T_STU_CONSULTA 
    ( 
     NR_CONSULTA,
     T_RHSTU_UNID_HOSPITALAR_ID_UNID_HOSPITAL
    ) 
;

--  ERROR: FK name length exceeds maximum allowed length(30) 
ALTER TABLE T_STU_PRESCICAO_MEDICA 
    ADD CONSTRAINT T_STU_PRESCICAO_MEDICA_T_STU_MEDICAMENTO_FK FOREIGN KEY 
    ( 
     T_STU_MEDICAMENTO_ID_MEDICAMENTO
    ) 
    REFERENCES T_STU_MEDICAMENTO 
    ( 
     ID_MEDICAMENTO
    ) 
;





CREATE TABLE T_RHSTU_MEDICO_CONTATO
  (
  CD_MEDICO        NUMBER  NOT NULL,
  ID_CONTATO       NUMBER(3) NOT NULL,
  TP_CONTATO       VARCHAR2(30) NOT NULL,
  DS_CONTATO       VARCHAR2(40) NOT NULL,
  ST_CONTATO       CHAR(1) NOT NULL,
  CONSTRAINT PK_MEDICO_CONTATO PRIMARY KEY (CD_MEDICO, ID_CONTATO),
  CONSTRAINT FK_RHSTU_MEDICO_CONTATO FOREIGN KEY (CD_MEDICO) REFERENCES T_RHSTU_MEDICO(CD_MEDICO)
  )
;
COMMENT ON COLUMN T_RHSTU_MEDICO_CONTATO.CD_MEDICO IS 'Esse atributo irá receber a chave primária do Médico. Esse número é sequencial e gerado automaticamente pelo sistema. Seu conteúdo é obrigatório.' 
;
COMMENT ON COLUMN T_RHSTU_MEDICO_CONTATO.ID_CONTATO  IS 'Esse atributo irá formar a chave primária junto com o CD_MEDICO. Esse número é formado por 3 números. Seu conteúdo é obrigatório.' 
;
COMMENT ON COLUMN T_RHSTU_MEDICO_CONTATO.TP_CONTATO  IS 'Esse atributo irá receber o tipo de contato. Esse número é do tipo VARCHAR2, podendo receber 4 valores Telefone 
Fixo, Telefone Celular, email, Telefone Contato. Seu conteúdo é obrigatório.' 
;
COMMENT ON COLUMN T_RHSTU_MEDICO_CONTATO.DS_CONTATO  IS 'Esse atributo irá receber uma descrição do TP_CONTATO. Esse atributo é do tipo VARCHAR2. Seu conteúdo é obrigatório.' 
;
COMMENT ON COLUMN T_RHSTU_MEDICO_CONTATO.ST_CONTATO  IS 'Esse atributo irá receber o status do contato. Esse atributo pode receber dois valores  (A)tivo e (I)nativo são válidos. Seu conteúdo é obrigatório.' 
;

ALTER TABLE T_RHSTU_MEDICO_CONTATO
    ADD CONSTRAINT T_RHSTU_MEDICO_CONTATO PRIMARY KEY ( CD_MEDICO ) ;

ALTER TABLE T_RHSTU_MEDICO_CONTATO
    ADD 
    CHECK (TP_CONTATO IN ('Telefone 
Fixo', ' Telefone Celular', 'email', 'Telefone Contato')) 
;   


ALTER TABLE T_RHSTU_MEDICO_CONTATO
    ADD 
    CHECK (ST_CONTATO IN ('A', 'I')) 
;

ALTER TABLE T_RHSTU_MEDICO_CONTATO MODIFY TP_CONTATO VARCHAR2(50);

ALTER TABLE T_RHSTU_MEDICO_CONTATO ADD DT_CADASTRO DATE;

ALTER TABLE T_RHSTU_MEDICO_CONTATO MODIFY DT_CADASTRO NOT  NULL;

ALTER TABLE T_RHSTU_MEDICO_CONTATO DROP COLUMN DT_CADASTRO; 

INSERT INTO T_RHSTU_MEDICO (CD_MEDICO, NM_MEDICO, NR_CRM, DS_ESPECIALIDADE) VALUES (1, 'LEANDRO', 1234567890, 'GERAL');

INSERT INTO T_RHSTU_MEDICO_CONTATO (CD_MEDICO, ID_CONTATO, TP_CONTATO, DS_CONTATO, ST_CONTATO) VALUES (1, 1, 'Telefone celular', '11999998888', 'A');
COMMIT;

-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            15
-- CREATE INDEX                             0
-- ALTER TABLE                             38
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                  25
-- WARNINGS                                 0
