/******************************************************************************/
/****       Generated by IBExpert 2017.2.26.1 17/07/2017 10:16:47 AM       ****/
/******************************************************************************/

/******************************************************************************/
/****     Following SET SQL DIALECT is just for the Database Comparer      ****/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/****                               Domains                                ****/
/******************************************************************************/

CREATE DOMAIN D_CURRENCY AS
NUMERIC(15,4);

CREATE DOMAIN INDCODE AS
VARCHAR(10);



/******************************************************************************/
/****                              Generators                              ****/
/******************************************************************************/

CREATE GENERATOR GEN_INDUSTRIES_ID;
SET GENERATOR GEN_INDUSTRIES_ID TO 224;

CREATE GENERATOR G_HELPTABLEHELPPAGEGEN1;
SET GENERATOR G_HELPTABLEHELPPAGEGEN1 TO 4;



/******************************************************************************/
/****                                Tables                                ****/
/******************************************************************************/



CREATE TABLE ACCOUNTCALCS (
    INDICATORCOL  SMALLINT NOT NULL,
    TITLE         VARCHAR(60),
    TYPECOL       SMALLINT,
    FLAG          SMALLINT,
    CALC          SMALLINT,
    ARG1          SMALLINT,
    ARG2          SMALLINT,
    ARG3          SMALLINT,
    ARG4          SMALLINT,
    ARG5          SMALLINT,
    ARG6          SMALLINT
);

CREATE TABLE ACCOUNTS (
    CODE   SMALLINT NOT NULL,
    FLAG   SMALLINT,
    TITLE  VARCHAR(60)
);

CREATE TABLE ACTIVITY (
    INDUST_ID  INTEGER NOT NULL,
    COLIDX     SMALLINT NOT NULL,
    ACTIVITY   VARCHAR(25),
    UNITS      VARCHAR(25)
);

CREATE TABLE BUSINESS (
    BUSINESSID   INTEGER NOT NULL,
    NAME         VARCHAR(60),
    INDUST_ID    INTEGER NOT NULL,
    PERIODSTART  TIMESTAMP,
    PERIODEND    TIMESTAMP
);

CREATE TABLE BUSINESSDATA (
    BUSINESSID  INTEGER,
    ACCOUNT     SMALLINT NOT NULL,
    AMOUNT      D_CURRENCY
);

CREATE TABLE COMMENTS (
    INDUST_ID  INTEGER NOT NULL,
    COMMENT    BLOB SUB_TYPE 1 SEGMENT SIZE 80
);

CREATE TABLE HELPTABLE (
    HELPPAGE  INTEGER NOT NULL,
    HELPTEXT  BLOB SUB_TYPE 1 SEGMENT SIZE 80
);

CREATE TABLE INDUSTRIES (
    INDUST_ID      INTEGER NOT NULL,
    INDUSTRYCODE   INDCODE,
    NAME           VARCHAR(60),
    YEARPUBLISHED  SMALLINT,
    UNITDESC       VARCHAR(30),
    PAGENUM        INTEGER
);

CREATE TABLE KEYMONITOR (
    INDUST_ID  INTEGER NOT NULL,
    MEMO       BLOB SUB_TYPE 1 SEGMENT SIZE 80
);

CREATE TABLE MTABLE (
    INDUST_ID  SMALLINT NOT NULL,
    KEYCOL     VARCHAR(10) NOT NULL,
    TITLE      VARCHAR(35),
    FLAG       SMALLINT
);

CREATE TABLE STATISTICSTABLE (
    INDUST_ID     INTEGER NOT NULL,
    INDEXCOL      SMALLINT NOT NULL,
    INDICATORCOL  SMALLINT,
    HIGH          D_CURRENCY,
    LOW           D_CURRENCY,
    MEAN          D_CURRENCY,
    TYPECOL       SMALLINT,
    FLAG          SMALLINT,
    CALC          SMALLINT,
    ARG1          SMALLINT,
    ARG2          SMALLINT,
    ARG3          SMALLINT,
    ARG4          SMALLINT,
    ARG5          SMALLINT,
    ARG6          SMALLINT
);

CREATE TABLE SYSTEM (
    COMPANY        VARCHAR(60) NOT NULL,
    SERIALNUMBER   VARCHAR(15),
    NUMBERUSERS    SMALLINT,
    LICENCENUMBER  VARCHAR(30),
    LOOKUP_ID      INTEGER
);



/******************************************************************************/
/****                             Primary keys                             ****/
/******************************************************************************/

ALTER TABLE ACCOUNTCALCS ADD PRIMARY KEY (INDICATORCOL);
ALTER TABLE ACCOUNTS ADD PRIMARY KEY (CODE);
ALTER TABLE ACTIVITY ADD CONSTRAINT PK_ACTIVITY PRIMARY KEY (INDUST_ID, COLIDX);
ALTER TABLE BUSINESS ADD PRIMARY KEY (BUSINESSID);
ALTER TABLE COMMENTS ADD CONSTRAINT PK_COMMENTS PRIMARY KEY (INDUST_ID);
ALTER TABLE HELPTABLE ADD PRIMARY KEY (HELPPAGE);
ALTER TABLE INDUSTRIES ADD CONSTRAINT PK_INDUSTRIES PRIMARY KEY (INDUST_ID);
ALTER TABLE KEYMONITOR ADD CONSTRAINT PK_KEYMONITOR PRIMARY KEY (INDUST_ID);
ALTER TABLE MTABLE ADD CONSTRAINT PK_MTABLE PRIMARY KEY (INDUST_ID, KEYCOL);
ALTER TABLE STATISTICSTABLE ADD CONSTRAINT PK_STATISTICSTABLE PRIMARY KEY (INDUST_ID, INDEXCOL);


/******************************************************************************/
/****                             Foreign keys                             ****/
/******************************************************************************/

ALTER TABLE ACTIVITY ADD CONSTRAINT FK_ACTIVITY FOREIGN KEY (INDUST_ID) REFERENCES INDUSTRIES (INDUST_ID) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE BUSINESS ADD CONSTRAINT FK_BUSINESS FOREIGN KEY (INDUST_ID) REFERENCES INDUSTRIES (INDUST_ID) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE BUSINESSDATA ADD CONSTRAINT BUSINESSDATAKEY0 FOREIGN KEY (BUSINESSID) REFERENCES BUSINESS (BUSINESSID) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE COMMENTS ADD CONSTRAINT FK_COMMENTS FOREIGN KEY (INDUST_ID) REFERENCES INDUSTRIES (INDUST_ID) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE KEYMONITOR ADD CONSTRAINT FK_KEYMONITOR FOREIGN KEY (INDUST_ID) REFERENCES INDUSTRIES (INDUST_ID) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE MTABLE ADD CONSTRAINT FK_MTABLE FOREIGN KEY (INDUST_ID) REFERENCES INDUSTRIES (INDUST_ID) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE STATISTICSTABLE ADD CONSTRAINT FK_STATISTICSTABLE FOREIGN KEY (INDUST_ID) REFERENCES INDUSTRIES (INDUST_ID) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE STATISTICSTABLE ADD CONSTRAINT STATISTICSTABLEKEY0 FOREIGN KEY (INDICATORCOL) REFERENCES ACCOUNTS (CODE) ON DELETE CASCADE ON UPDATE CASCADE;


/******************************************************************************/
/****                               Indices                                ****/
/******************************************************************************/

CREATE UNIQUE INDEX TITLEIDX1 ON ACCOUNTCALCS (TITLE, INDICATORCOL);
CREATE UNIQUE INDEX TITLEIDX2 ON ACCOUNTS (TITLE, CODE);
CREATE UNIQUE INDEX NAMEINDEX4 ON BUSINESS (NAME, BUSINESSID);
CREATE INDEX BUSINESSBUSINESSDATA5 ON BUSINESSDATA (BUSINESSID);
CREATE UNIQUE INDEX NAMEINDEX7 ON INDUSTRIES (NAME, INDUST_ID);
CREATE UNIQUE INDEX PAGENUM8 ON INDUSTRIES (PAGENUM);
CREATE INDEX ACCOUNTSSTATISTICS11 ON STATISTICSTABLE (INDICATORCOL);
CREATE INDEX NUMBERUSERS13 ON SYSTEM (NUMBERUSERS);


/******************************************************************************/
/****                               Triggers                               ****/
/******************************************************************************/



SET TERM ^ ;



/******************************************************************************/
/****                         Triggers for tables                          ****/
/******************************************************************************/



/* Trigger: GETNEXTG_HELPTABLEHELPPAGEGEN1 */
CREATE TRIGGER GETNEXTG_HELPTABLEHELPPAGEGEN1 FOR HELPTABLE
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
  NEW.HelpPage = GEN_ID(G_HelpTableHelpPageGen1, 1);
END
^

/* Trigger: INDUSTRIES_BI */
CREATE TRIGGER INDUSTRIES_BI FOR INDUSTRIES
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
  IF (NEW.INDUST_ID IS NULL) THEN
    NEW.INDUST_ID = GEN_ID(GEN_INDUSTRIES_ID,1);
END
^
SET TERM ; ^



/******************************************************************************/
/****                              Privileges                              ****/
/******************************************************************************/

