DROP TABLE board3 CASCADE CONSTRAINTS;
DROP TABLE jumun_detail_result3 CASCADE CONSTRAINTS;
DROP TABLE jumun_detail3 CASCADE CONSTRAINTS;
DROP TABLE jumun3 CASCADE CONSTRAINTS;
DROP TABLE cart3 CASCADE CONSTRAINTS;
DROP TABLE user3 CASCADE CONSTRAINTS;
DROP TABLE product3 CASCADE CONSTRAINTS;

CREATE TABLE product3(
		p_no                          		NUMBER(10)		 NULL ,
		p_name                        		VARCHAR2(50)		 NOT NULL,
		p_price                       		NUMBER(10)		 DEFAULT 0		 NOT NULL,
		p_mileage                     		NUMBER(10)		 DEFAULT 0		 NULL ,
		p_image                       		VARCHAR2(100)		 DEFAULT 'images/no_image.jpg'		 NOT NULL,
		p_desc                        		VARCHAR2(200)		 NULL ,
		p_click_count                 		VARCHAR2(10)		 DEFAULT 0		 NOT NULL
);

DROP SEQUENCE product3_p_no_SEQ;

CREATE SEQUENCE product3_p_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER product3_p_no_TRG
BEFORE INSERT ON product3
FOR EACH ROW
BEGIN
IF :NEW.p_no IS NOT NULL THEN
  SELECT product3_p_no_SEQ.NEXTVAL INTO :NEW.p_no FROM DUAL;
END IF;
END;


CREATE TABLE user3(
		userId                        		VARCHAR2(100)		 NULL ,
		password                      		VARCHAR2(100)		 NULL ,
		name                          		VARCHAR2(100)		 NULL ,
		email                         		VARCHAR2(100)		 NULL ,
		tot_mileage                   		NUMBER(10)		 DEFAULT 0		 NULL ,
		tot_jumun_amt                 		NUMBER(10)		 DEFAULT 0		 NULL ,
		can_use_mileage               		NUMBER(10)		 DEFAULT 0		 NULL 
);


CREATE TABLE cart3(
		cart_itemno                   		NUMBER(10)		 NULL ,
		userId                        		VARCHAR2(100)		 NULL ,
		p_no                          		NUMBER(10)		 NULL ,
		cart_qty                      		NUMBER(10)		 DEFAULT 0		 NOT NULL,
		cart_tot_price                		NUMBER(10)		 DEFAULT 0		 NOT NULL
);

DROP SEQUENCE cart3_cart_itemno_SEQ;

CREATE SEQUENCE cart3_cart_itemno_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER cart3_cart_itemno_TRG
BEFORE INSERT ON cart3
FOR EACH ROW
BEGIN
IF :NEW.cart_itemno IS NOT NULL THEN
  SELECT cart3_cart_itemno_SEQ.NEXTVAL INTO :NEW.cart_itemno FROM DUAL;
END IF;
END;


CREATE TABLE jumun3(
		j_no                          		NUMBER(10)		 NULL ,
		j_desc                        		VARCHAR2(100)		 NULL ,
		j_date                        		DATE		 DEFAULT sysdate		 NULL ,
		j_price                       		NUMBER(10)		 NULL ,
		userId                        		VARCHAR2(100)		 NULL 
);

DROP SEQUENCE jumun3_j_no_SEQ;

CREATE SEQUENCE jumun3_j_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER jumun3_j_no_TRG
BEFORE INSERT ON jumun3
FOR EACH ROW
BEGIN
IF :NEW.j_no IS NOT NULL THEN
  SELECT jumun3_j_no_SEQ.NEXTVAL INTO :NEW.j_no FROM DUAL;
END IF;
END;


CREATE TABLE jumun_detail3(
		jd_no                         		NUMBER(10)		 NULL ,
		jd_qty                        		NUMBER(10)		 DEFAULT 0		 NULL ,
		jd_pname                      		VARCHAR2(100)		 NULL ,
		jd_tot_price                  		NUMBER(10)		 NULL ,
		jd_result                     		VARCHAR2(10)		 NULL ,
		jd_mileage                    		NUMBER(10)		 NULL ,
		j_no                          		NUMBER(10)		 NULL ,
		p_no                          		NUMBER(10)		 NULL 
);

DROP SEQUENCE jumun_detail3_jd_no_SEQ;

CREATE SEQUENCE jumun_detail3_jd_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER jumun_detail3_jd_no_TRG
BEFORE INSERT ON jumun_detail3
FOR EACH ROW
BEGIN
IF :NEW.jd_no IS NOT NULL THEN
  SELECT jumun_detail3_jd_no_SEQ.NEXTVAL INTO :NEW.jd_no FROM DUAL;
END IF;
END;


CREATE TABLE jumun_detail_result3(
		jdr_no                        		NUMBER(10)		 NULL ,
		jdr_date                      		DATE		 NULL ,
		jdr_desc                      		VARCHAR2(100)		 NULL ,
		jdr_account                   		VARCHAR2(50)		 NULL ,
		jd_no                         		NUMBER(10)		 NULL 
);


CREATE TABLE board3(
		b_no                      		NUMBER(10)		 NULL ,
		b_title                       		VARCHAR2(100)		 NULL ,
		b_desc                        		VARCHAR2(1000)		 NULL ,
		b_date                        		DATE		 NULL ,
		b_count                       		NUMBER(10)		 DEFAULT 1		 NULL ,
		b_userId                      		VARCHAR2(50)		 NULL ,
		userId                        		VARCHAR2(100)		 NULL ,
		b_writer                      		VARCHAR2(20)		 NULL ,
		B_password                    		VARCHAR2(20)		 NULL ,
		b_groupno                     		NUMBER(10)		 NULL ,
		b_step                        		NUMBER(10)		 NULL ,
		b_depth                       		NUMBER(10)		 NULL 
);



ALTER TABLE product3 ADD CONSTRAINT IDX_product3_PK PRIMARY KEY (p_no);

ALTER TABLE user3 ADD CONSTRAINT IDX_user3_PK PRIMARY KEY (userId);

ALTER TABLE cart3 ADD CONSTRAINT IDX_cart3_PK PRIMARY KEY (cart_itemno);
ALTER TABLE cart3 ADD CONSTRAINT IDX_cart3_FK0 FOREIGN KEY (p_no) REFERENCES product3 (p_no);
ALTER TABLE cart3 ADD CONSTRAINT IDX_cart3_FK1 FOREIGN KEY (userId) REFERENCES user3 (userId);

ALTER TABLE jumun3 ADD CONSTRAINT IDX_jumun3_PK PRIMARY KEY (j_no);
ALTER TABLE jumun3 ADD CONSTRAINT IDX_jumun3_FK0 FOREIGN KEY (userId) REFERENCES user3 (userId);

ALTER TABLE jumun_detail3 ADD CONSTRAINT IDX_jumun_detail3_PK PRIMARY KEY (jd_no);
ALTER TABLE jumun_detail3 ADD CONSTRAINT IDX_jumun_detail3_FK0 FOREIGN KEY (j_no) REFERENCES jumun3 (j_no);
ALTER TABLE jumun_detail3 ADD CONSTRAINT IDX_jumun_detail3_FK1 FOREIGN KEY (p_no) REFERENCES product3 (p_no);

ALTER TABLE jumun_detail_result3 ADD CONSTRAINT IDX_jumun_detail_result3_PK PRIMARY KEY (jdr_no);
ALTER TABLE jumun_detail_result3 ADD CONSTRAINT IDX_jumun_detail_result3_FK0 FOREIGN KEY (jd_no) REFERENCES jumun_detail3 (jd_no);

ALTER TABLE board3 ADD CONSTRAINT IDX_board3_PK PRIMARY KEY (COLUMN_1);
ALTER TABLE board3 ADD CONSTRAINT IDX_board3_FK0 FOREIGN KEY (userId) REFERENCES user3 (userId);

