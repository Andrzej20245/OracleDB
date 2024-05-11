--------------------------------------------------------
--  File created - pi�tek-maja-10-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence KATEGORIE_PRODUKTOW_SEQ
--------------------------------------------------------


   CREATE SEQUENCE  "SPRZEDAWCA"."KATEGORIE_PRODUKTOW_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  CYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence KLIENCI_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRZEDAWCA"."KLIENCI_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  CYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence POZYCJE_ZAMOWIENIA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRZEDAWCA"."POZYCJE_ZAMOWIENIA_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  CYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PRODUKTY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRZEDAWCA"."PRODUKTY_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  CYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ZAMOWIENIA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SPRZEDAWCA"."ZAMOWIENIA_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  CYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table KATEGORIEPRODUKTOW
--------------------------------------------------------

  CREATE TABLE "SPRZEDAWCA"."KATEGORIEPRODUKTOW" 
   (	"KATEGORIAID" NUMBER(*,0) DEFAULT "SPRZEDAWCA"."KATEGORIE_PRODUKTOW_SEQ"."NEXTVAL", 
	"NAZWA" VARCHAR2(255 BYTE), 
	"OPIS" CLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("OPIS") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 262144 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table KLIENCI
--------------------------------------------------------

  CREATE TABLE "SPRZEDAWCA"."KLIENCI" 
   (	"KLIENTID" NUMBER(*,0) DEFAULT "SPRZEDAWCA"."KLIENCI_SEQ"."NEXTVAL", 
	"IMIE" VARCHAR2(255 BYTE), 
	"NAZWISKO" VARCHAR2(255 BYTE), 
	"EMAIL" VARCHAR2(255 BYTE), 
	"ADRES" CLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("ADRES") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 262144 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table POZYCJEZAMOWIENIA
--------------------------------------------------------

  CREATE TABLE "SPRZEDAWCA"."POZYCJEZAMOWIENIA" 
   (	"POZYCJAZAMOWIENIAID" NUMBER(*,0) DEFAULT "SPRZEDAWCA"."POZYCJE_ZAMOWIENIA_SEQ"."NEXTVAL", 
	"ZAMOWIENIEID" NUMBER(*,0), 
	"PRODUKTID" NUMBER(*,0), 
	"ILOSC" NUMBER(*,0), 
	"CENAZASZTUKE" NUMBER(10,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUKTY
--------------------------------------------------------

  CREATE TABLE "SPRZEDAWCA"."PRODUKTY" 
   (	"PRODUKTID" NUMBER(*,0) DEFAULT "SPRZEDAWCA"."PRODUKTY_SEQ"."NEXTVAL", 
	"NAZWA" VARCHAR2(255 BYTE), 
	"CENA" NUMBER(10,2), 
	"KATEGORIAID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ZAMOWIENIA
--------------------------------------------------------

  CREATE TABLE "SPRZEDAWCA"."ZAMOWIENIA" 
   (	"ZAMOWIENIEID" NUMBER(*,0) DEFAULT "SPRZEDAWCA"."ZAMOWIENIA_SEQ"."NEXTVAL", 
	"KLIENTID" NUMBER(*,0), 
	"DATAZAMOWIENIA" DATE, 
	"STATUS" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View WIDOKPRODUKTOWIKATEGORII
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "SPRZEDAWCA"."WIDOKPRODUKTOWIKATEGORII" ("PRODUKTID", "NAZWAPRODUKTU", "CENA", "NAZWAKATEGORII", "LICZBAZAMOWIEN") AS 
  SELECT 
p.ProduktID,
p.Nazwa AS NazwaProduktu,
p.Cena,
kp.Nazwa AS NazwaKategorii,
COUNT(z.ZamowienieID) AS LiczbaZamowien
FROM 
Produkty p
JOIN 
KategorieProduktow kp ON p.KategoriaID = kp.KategoriaID
LEFT JOIN 
PozycjeZamowienia pz ON p.ProduktID = pz.ProduktID
LEFT JOIN 
Zamowienia z ON pz.ZamowienieID = z.ZamowienieID
GROUP BY 
p.ProduktID, p.Nazwa, p.Cena, kp.Nazwa
;
--------------------------------------------------------
--  DDL for View WIDOKZAMOWIEN
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "SPRZEDAWCA"."WIDOKZAMOWIEN" ("ZAMOWIENIEID", "DATAZAMOWIENIA", "STATUS", "PELNEIMIE", "NAZWAPRODUKTU", "ILOSC", "CENAZASZTUKE", "WARTOSCPOZYCJI") AS 
  SELECT 
z.ZamowienieID,
z.DataZamowienia,
z.Status,
k.Imie || ' ' || k.Nazwisko AS PelneImie,
p.Nazwa AS NazwaProduktu,
pz.Ilosc,
pz.CenaZaSztuke,
(pz.Ilosc * pz.CenaZaSztuke) AS WartoscPozycji
FROM 
Zamowienia z
JOIN 
Klienci k ON z.KlientID = k.KlientID
JOIN 
PozycjeZamowienia pz ON z.ZamowienieID = pz.ZamowienieID
JOIN 
Produkty p ON pz.ProduktID = p.ProduktID
;
REM INSERTING into SPRZEDAWCA.KATEGORIEPRODUKTOW
SET DEFINE OFF;
Insert into SPRZEDAWCA.KATEGORIEPRODUKTOW (KATEGORIAID,NAZWA) values ('6','Meble');
Insert into SPRZEDAWCA.KATEGORIEPRODUKTOW (KATEGORIAID,NAZWA) values ('7','Sprzet elektryczny');
Insert into SPRZEDAWCA.KATEGORIEPRODUKTOW (KATEGORIAID,NAZWA) values ('1','Sportowe');
Insert into SPRZEDAWCA.KATEGORIEPRODUKTOW (KATEGORIAID,NAZWA) values ('2','Spo�ywcze');
Insert into SPRZEDAWCA.KATEGORIEPRODUKTOW (KATEGORIAID,NAZWA) values ('3','Odzie�owe');
Insert into SPRZEDAWCA.KATEGORIEPRODUKTOW (KATEGORIAID,NAZWA) values ('4','Samochodowe');
Insert into SPRZEDAWCA.KATEGORIEPRODUKTOW (KATEGORIAID,NAZWA) values ('5','W�dkarskie');
REM INSERTING into SPRZEDAWCA.KLIENCI
SET DEFINE OFF;
Insert into SPRZEDAWCA.KLIENCI (KLIENTID,IMIE,NAZWISKO,EMAIL) values ('1','Jan','Kowalski','Jan@gmail.oom');
Insert into SPRZEDAWCA.KLIENCI (KLIENTID,IMIE,NAZWISKO,EMAIL) values ('2','Micha�','Nowak','Micha�@gmail.oom');
Insert into SPRZEDAWCA.KLIENCI (KLIENTID,IMIE,NAZWISKO,EMAIL) values ('3','Kamil','Wielkopolski','Kamil@gmail.oom');
Insert into SPRZEDAWCA.KLIENCI (KLIENTID,IMIE,NAZWISKO,EMAIL) values ('4','Mateusz','Koniecpolski','Mateusz@gmail.oom');
Insert into SPRZEDAWCA.KLIENCI (KLIENTID,IMIE,NAZWISKO,EMAIL) values ('5','Andrzej','Rydz','Andrzej@gmail.oom');
Insert into SPRZEDAWCA.KLIENCI (KLIENTID,IMIE,NAZWISKO,EMAIL) values ('6','Marek','Abramek','Marek@gmail.oom');
Insert into SPRZEDAWCA.KLIENCI (KLIENTID,IMIE,NAZWISKO,EMAIL) values ('7','Wojciech','Abramowicz','Wojciech@gmail.oom');
Insert into SPRZEDAWCA.KLIENCI (KLIENTID,IMIE,NAZWISKO,EMAIL) values ('8','Kamil','Abramiuk','Abramiuk@gmail.oom');
Insert into SPRZEDAWCA.KLIENCI (KLIENTID,IMIE,NAZWISKO,EMAIL) values ('9','Bogus�aw','Abramowska','Bogus�aw@gmail.oom');
Insert into SPRZEDAWCA.KLIENCI (KLIENTID,IMIE,NAZWISKO,EMAIL) values ('10','Ryszard','Achtelik','Ryszard@gmail.oom');
Insert into SPRZEDAWCA.KLIENCI (KLIENTID,IMIE,NAZWISKO,EMAIL) values ('11','Krzysztof','Adach','Krzysztof@gmail.oom');
Insert into SPRZEDAWCA.KLIENCI (KLIENTID,IMIE,NAZWISKO,EMAIL) values ('12','Patryk','Adamiuk','Patryk@gmail.oom');
Insert into SPRZEDAWCA.KLIENCI (KLIENTID,IMIE,NAZWISKO,EMAIL) values ('13','Julia','�ywio�ek','Julia@gmail.oom');
Insert into SPRZEDAWCA.KLIENCI (KLIENTID,IMIE,NAZWISKO,EMAIL) values ('14','Agnieszka','Andrejczuk','Agnieszka@gmail.oom');
Insert into SPRZEDAWCA.KLIENCI (KLIENTID,IMIE,NAZWISKO,EMAIL) values ('15','Natalia','Andrusiuk','Natalia@gmail.oom');
REM INSERTING into SPRZEDAWCA.POZYCJEZAMOWIENIA
SET DEFINE OFF;
Insert into SPRZEDAWCA.POZYCJEZAMOWIENIA (POZYCJAZAMOWIENIAID,ZAMOWIENIEID,PRODUKTID,ILOSC,CENAZASZTUKE) values ('9','1','1','1','3000');
Insert into SPRZEDAWCA.POZYCJEZAMOWIENIA (POZYCJAZAMOWIENIAID,ZAMOWIENIEID,PRODUKTID,ILOSC,CENAZASZTUKE) values ('10','2','2','1','4000');
Insert into SPRZEDAWCA.POZYCJEZAMOWIENIA (POZYCJAZAMOWIENIAID,ZAMOWIENIEID,PRODUKTID,ILOSC,CENAZASZTUKE) values ('11','3','3','3','10');
Insert into SPRZEDAWCA.POZYCJEZAMOWIENIA (POZYCJAZAMOWIENIAID,ZAMOWIENIEID,PRODUKTID,ILOSC,CENAZASZTUKE) values ('12','4','4','2','15');
REM INSERTING into SPRZEDAWCA.PRODUKTY
SET DEFINE OFF;
Insert into SPRZEDAWCA.PRODUKTY (PRODUKTID,NAZWA,CENA,KATEGORIAID) values ('1','�o�ko','3000','6');
Insert into SPRZEDAWCA.PRODUKTY (PRODUKTID,NAZWA,CENA,KATEGORIAID) values ('2','Laptop','4000','7');
Insert into SPRZEDAWCA.PRODUKTY (PRODUKTID,NAZWA,CENA,KATEGORIAID) values ('3','Frytki','10','2');
Insert into SPRZEDAWCA.PRODUKTY (PRODUKTID,NAZWA,CENA,KATEGORIAID) values ('4','Pizza','15','2');
Insert into SPRZEDAWCA.PRODUKTY (PRODUKTID,NAZWA,CENA,KATEGORIAID) values ('5','Buty Addidas','80','1');
REM INSERTING into SPRZEDAWCA.ZAMOWIENIA
SET DEFINE OFF;
Insert into SPRZEDAWCA.ZAMOWIENIA (ZAMOWIENIEID,KLIENTID,DATAZAMOWIENIA,STATUS) values ('1','1',to_date('24/05/06','RR/MM/DD'),'Zaakceptowane');
Insert into SPRZEDAWCA.ZAMOWIENIA (ZAMOWIENIEID,KLIENTID,DATAZAMOWIENIA,STATUS) values ('2','2',to_date('24/05/09','RR/MM/DD'),'Odrzucone');
Insert into SPRZEDAWCA.ZAMOWIENIA (ZAMOWIENIEID,KLIENTID,DATAZAMOWIENIA,STATUS) values ('3','3',to_date('24/05/14','RR/MM/DD'),'W trakcie');
Insert into SPRZEDAWCA.ZAMOWIENIA (ZAMOWIENIEID,KLIENTID,DATAZAMOWIENIA,STATUS) values ('4','4',to_date('24/05/30','RR/MM/DD'),'Otwarte');
--------------------------------------------------------
--  DDL for Index EMAIL_UNIQUE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SPRZEDAWCA"."EMAIL_UNIQUE" ON "SPRZEDAWCA"."KLIENCI" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger TRG_KATEGORIE_PRODUKTOW
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SPRZEDAWCA"."TRG_KATEGORIE_PRODUKTOW" 
BEFORE INSERT OR UPDATE ON kategorieproduktow
FOR EACH ROW
BEGIN
:NEW.KATEGORIAID := KATEGORIE_PRODUKTOW_seq.NEXTVAL;
END;
/
ALTER TRIGGER "SPRZEDAWCA"."TRG_KATEGORIE_PRODUKTOW" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_KLIENCI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SPRZEDAWCA"."TRG_KLIENCI" 
BEFORE INSERT OR UPDATE ON klienci
FOR EACH ROW
BEGIN
:NEW.KLIENTID := KLIENCI_seq.NEXTVAL;
END;
/
ALTER TRIGGER "SPRZEDAWCA"."TRG_KLIENCI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_POZYCJE_ZAMOWIENIA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SPRZEDAWCA"."TRG_POZYCJE_ZAMOWIENIA" 
BEFORE INSERT OR UPDATE ON pozycjezamowienia
FOR EACH ROW
BEGIN
:NEW.pozycjazamowieniaid := POZYCJE_ZAMOWIENIA_seq.NEXTVAL;
END;
/
ALTER TRIGGER "SPRZEDAWCA"."TRG_POZYCJE_ZAMOWIENIA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_PRODUKTY
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SPRZEDAWCA"."TRG_PRODUKTY" 
BEFORE INSERT OR UPDATE ON produkty
FOR EACH ROW
BEGIN
:NEW.produktid := produkty_seq.NEXTVAL;
END;
/
ALTER TRIGGER "SPRZEDAWCA"."TRG_PRODUKTY" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_ZAMOWIENIA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "SPRZEDAWCA"."TRG_ZAMOWIENIA" 
BEFORE INSERT OR UPDATE ON zamowienia
FOR EACH ROW
BEGIN
:NEW.zamowienieid := zamowienia_seq.NEXTVAL;
END;
/
ALTER TRIGGER "SPRZEDAWCA"."TRG_ZAMOWIENIA" ENABLE;
--------------------------------------------------------
--  DDL for Procedure AKTUALIZUJCENEPRODUKTU
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SPRZEDAWCA"."AKTUALIZUJCENEPRODUKTU" (p_produktID IN Produkty.ProduktID%TYPE, p_cena IN DECIMAL) IS
BEGIN
UPDATE Produkty SET Cena = p_cena WHERE ProduktID = p_produktID;
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
DBMS_OUTPUT.PUT_LINE('B��d: ' || SQLERRM);
END AktualizujCeneProduktu;

/
--------------------------------------------------------
--  DDL for Procedure DODAJKATEGORIE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SPRZEDAWCA"."DODAJKATEGORIE" (p_nazwa IN VARCHAR2, p_opis IN VARCHAR2) IS
BEGIN
INSERT INTO KategorieProduktow (Nazwa, Opis)
VALUES (p_nazwa, p_opis);
COMMIT;
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
DBMS_OUTPUT.PUT_LINE('B��d: ' || SQLERRM);
END DodajKategorie;

/
--------------------------------------------------------
--  DDL for Procedure UTWORZZAMOWIENIE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SPRZEDAWCA"."UTWORZZAMOWIENIE" (p_klientID IN Klienci.KlientID%TYPE, p_dataZamowienia IN DATE) IS
v_zamowienieID Zamowienia.ZamowienieID%TYPE;
BEGIN
INSERT INTO Zamowienia (KlientID, DataZamowienia, Status)
VALUES (p_klientID, p_dataZamowienia, 'Nowe')
RETURNING ZamowienieID INTO v_zamowienieID;
COMMIT;
DBMS_OUTPUT.PUT_LINE('Utworzono zam�wienie o ID: ' || v_zamowienieID);
EXCEPTION
WHEN OTHERS THEN
ROLLBACK;
DBMS_OUTPUT.PUT_LINE('B��d: ' || SQLERRM);
END UtworzZamowienie;

/
--------------------------------------------------------
--  DDL for Procedure WYSWIETLPRODUKTYKATEGORII
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "SPRZEDAWCA"."WYSWIETLPRODUKTYKATEGORII" (p_kategoriaID IN KategorieProduktow.KategoriaID%TYPE) IS
CURSOR c_produkty IS
SELECT Nazwa, Cena FROM Produkty WHERE KategoriaID = p_kategoriaID;
v_nazwa Produkty.Nazwa%TYPE;
v_cena Produkty.Cena%TYPE;
BEGIN
OPEN c_produkty;
LOOP
FETCH c_produkty INTO v_nazwa, v_cena;
EXIT WHEN c_produkty%NOTFOUND;
DBMS_OUTPUT.PUT_LINE('Produkt: ' || v_nazwa || ', Cena: ' || v_cena);
END LOOP;
CLOSE c_produkty;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('B��d: ' || SQLERRM);
END WyswietlProduktyKategorii;

/
--------------------------------------------------------
--  DDL for Package PAKIET_KLIENCI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "SPRZEDAWCA"."PAKIET_KLIENCI" AS
TYPE ref_cursor IS REF CURSOR;
FUNCTION pobierz_klientow RETURN ref_cursor;
END pakiet_klienci;

/
--------------------------------------------------------
--  DDL for Package PAKIET_PRODUKTY
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "SPRZEDAWCA"."PAKIET_PRODUKTY" AS
-- Typ referencyjny dla kursora
TYPE ref_cursor IS REF CURSOR;
-- Funkcja zwracaj�ca kursor z wybranymi danymi produkt�w
FUNCTION pobierz_wybrane_produkty RETURN ref_cursor;
END pakiet_produkty;


/
--------------------------------------------------------
--  DDL for Package PAKIET_ZAMOWIENIA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "SPRZEDAWCA"."PAKIET_ZAMOWIENIA" AS
TYPE ref_cursor IS REF CURSOR;

FUNCTION pobierz_zamowienia RETURN ref_cursor;
FUNCTION pobierz_pozycje_zamowienia(zamowienie_id IN INT) RETURN ref_cursor;
END pakiet_zamowienia;

/
--------------------------------------------------------
--  DDL for Package Body PAKIET_KLIENCI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "SPRZEDAWCA"."PAKIET_KLIENCI" AS
FUNCTION pobierz_klientow RETURN ref_cursor IS
c_klienci ref_cursor;
BEGIN
OPEN c_klienci FOR
SELECT * FROM klienci;
RETURN c_klienci;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Wyst�pi� b��d: ' || SQLERRM);
RAISE;
END pobierz_klientow;
END pakiet_klienci;

/
--------------------------------------------------------
--  DDL for Package Body PAKIET_PRODUKTY
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "SPRZEDAWCA"."PAKIET_PRODUKTY" AS
FUNCTION pobierz_wybrane_produkty RETURN ref_cursor IS
c_produkty ref_cursor;
BEGIN
OPEN c_produkty FOR
SELECT pr.nazwa, pr.cena, kp.nazwa
FROM produkty pr 
INNER JOIN KATEGORIEPRODUKTOW kp ON pr.kategoriaid = kp.kategoriaid;
RETURN c_produkty;
EXCEPTION
WHEN NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('Nie znaleziono danych.');
RETURN c_produkty; -- Zwr�� pusty kursor
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Wyst�pi� nieoczekiwany b��d: ' || SQLERRM);
RAISE;
END pobierz_wybrane_produkty;
END pakiet_produkty;

/
--------------------------------------------------------
--  DDL for Package Body PAKIET_ZAMOWIENIA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "SPRZEDAWCA"."PAKIET_ZAMOWIENIA" AS

FUNCTION pobierz_zamowienia RETURN ref_cursor IS
c_zamowienia ref_cursor;
BEGIN
OPEN c_zamowienia FOR
SELECT * FROM Zamowienia;
RETURN c_zamowienia;
EXCEPTION
WHEN NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('Nie znaleziono danych.');
-- Zwr�� pusty kursor, je�li nie znaleziono danych
OPEN c_zamowienia FOR SELECT * FROM dual WHERE 1=0;
RETURN c_zamowienia;
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Wyst�pi� nieoczekiwany b��d: ' || SQLERRM);
-- Ponownie otw�rz pusty kursor przed ponownym zg�oszeniem wyj�tku
OPEN c_zamowienia FOR SELECT * FROM dual WHERE 1=0;
RETURN c_zamowienia;
END pobierz_zamowienia;

FUNCTION pobierz_pozycje_zamowienia(zamowienie_id IN INT) RETURN ref_cursor IS
c_pozycje ref_cursor;
BEGIN
OPEN c_pozycje FOR
SELECT * FROM PozycjeZamowienia WHERE ZamowienieID = zamowienie_id;
RETURN c_pozycje;
EXCEPTION
WHEN NO_DATA_FOUND THEN
DBMS_OUTPUT.PUT_LINE('Nie znaleziono pozycji dla zam�wienia o ID: ' || zamowienie_id);
-- Zwr�� pusty kursor, je�li nie znaleziono pozycji zam�wienia
OPEN c_pozycje FOR SELECT * FROM dual WHERE 1=0;
RETURN c_pozycje;
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('Wyst�pi� nieoczekiwany b��d: ' || SQLERRM);
-- Ponownie otw�rz pusty kursor przed ponownym zg�oszeniem wyj�tku
OPEN c_pozycje FOR SELECT * FROM dual WHERE 1=0;
RETURN c_pozycje;
END pobierz_pozycje_zamowienia;

END pakiet_zamowienia;

/
--------------------------------------------------------
--  Constraints for Table KATEGORIEPRODUKTOW
--------------------------------------------------------

  ALTER TABLE "SPRZEDAWCA"."KATEGORIEPRODUKTOW" MODIFY ("NAZWA" NOT NULL ENABLE);
  ALTER TABLE "SPRZEDAWCA"."KATEGORIEPRODUKTOW" ADD PRIMARY KEY ("KATEGORIAID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table POZYCJEZAMOWIENIA
--------------------------------------------------------

  ALTER TABLE "SPRZEDAWCA"."POZYCJEZAMOWIENIA" MODIFY ("ILOSC" NOT NULL ENABLE);
  ALTER TABLE "SPRZEDAWCA"."POZYCJEZAMOWIENIA" MODIFY ("CENAZASZTUKE" NOT NULL ENABLE);
  ALTER TABLE "SPRZEDAWCA"."POZYCJEZAMOWIENIA" ADD PRIMARY KEY ("POZYCJAZAMOWIENIAID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ZAMOWIENIA
--------------------------------------------------------

  ALTER TABLE "SPRZEDAWCA"."ZAMOWIENIA" MODIFY ("DATAZAMOWIENIA" NOT NULL ENABLE);
  ALTER TABLE "SPRZEDAWCA"."ZAMOWIENIA" ADD PRIMARY KEY ("ZAMOWIENIEID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KLIENCI
--------------------------------------------------------

  ALTER TABLE "SPRZEDAWCA"."KLIENCI" MODIFY ("IMIE" NOT NULL ENABLE);
  ALTER TABLE "SPRZEDAWCA"."KLIENCI" MODIFY ("NAZWISKO" NOT NULL ENABLE);
  ALTER TABLE "SPRZEDAWCA"."KLIENCI" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "SPRZEDAWCA"."KLIENCI" MODIFY ("ADRES" NOT NULL ENABLE);
  ALTER TABLE "SPRZEDAWCA"."KLIENCI" ADD PRIMARY KEY ("KLIENTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SPRZEDAWCA"."KLIENCI" ADD CONSTRAINT "EMAIL_UNIQUE" UNIQUE ("EMAIL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUKTY
--------------------------------------------------------

  ALTER TABLE "SPRZEDAWCA"."PRODUKTY" MODIFY ("NAZWA" NOT NULL ENABLE);
  ALTER TABLE "SPRZEDAWCA"."PRODUKTY" MODIFY ("CENA" NOT NULL ENABLE);
  ALTER TABLE "SPRZEDAWCA"."PRODUKTY" ADD PRIMARY KEY ("PRODUKTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POZYCJEZAMOWIENIA
--------------------------------------------------------

  ALTER TABLE "SPRZEDAWCA"."POZYCJEZAMOWIENIA" ADD CONSTRAINT "ZAMOWIENIEID" FOREIGN KEY ("ZAMOWIENIEID")
	  REFERENCES "SPRZEDAWCA"."ZAMOWIENIA" ("ZAMOWIENIEID") ENABLE;
  ALTER TABLE "SPRZEDAWCA"."POZYCJEZAMOWIENIA" ADD CONSTRAINT "PRODUKTID" FOREIGN KEY ("PRODUKTID")
	  REFERENCES "SPRZEDAWCA"."PRODUKTY" ("PRODUKTID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUKTY
--------------------------------------------------------

  ALTER TABLE "SPRZEDAWCA"."PRODUKTY" ADD CONSTRAINT "KATEGORIAID" FOREIGN KEY ("KATEGORIAID")
	  REFERENCES "SPRZEDAWCA"."KATEGORIEPRODUKTOW" ("KATEGORIAID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ZAMOWIENIA
--------------------------------------------------------

  ALTER TABLE "SPRZEDAWCA"."ZAMOWIENIA" ADD CONSTRAINT "KLIENTID" FOREIGN KEY ("KLIENTID")
	  REFERENCES "SPRZEDAWCA"."KLIENCI" ("KLIENTID") ENABLE;
