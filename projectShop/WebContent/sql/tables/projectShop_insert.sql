/**********************board3 insert************************/
INSERT INTO board3 (b_no, b_title, b_desc, b_date, b_count, b_userId, userId, b_writer, B_password, b_groupno, b_step, b_depth) VALUES (101, '상품문의', '진돗개는 없나요?', sysdate, 1,'non_mem1', 'non_mem1','비회원1','1111',1,1,1);
INSERT INTO board3 (b_no, b_title, b_desc, b_date, b_count, b_userId, userId, b_writer, B_password, b_groupno, b_step, b_depth) VALUES (102, '가격할인문의', '달마시안 할인해주세요', sysdate, 1,'', 'guard1','이순신1','1111',1,1,1);
INSERT INTO board3 (b_no, b_title, b_desc, b_date, b_count, b_userId, userId, b_writer, B_password, b_groupno, b_step, b_depth) VALUES (103, '배송문의', '퀵배송시 가격은 얼마인가요?', sysdate, 1,'non_mem2', 'non_mem2','비회원2','2222',1,1,1);
/**********************user3 insert************************/
INSERT INTO user3 (userId, password, name, email, tot_mileage, tot_jumun_amt, can_use_mileage) VALUES ('guard1','1111','이순신1','guard1@korea.com', 55000, 1500000, 10000);
INSERT INTO user3 (userId, password, name, email, tot_mileage, tot_jumun_amt, can_use_mileage) VALUES ('guard2','1111','이순신2','guard2@korea.com', 5000, 150000, 0);
INSERT INTO user3 (userId, password, name, email, tot_mileage, tot_jumun_amt, can_use_mileage) VALUES ('guard3','1111','이순신3','guard3@korea.com', 15000, 520000, 5000);
INSERT INTO user3 (userId, password, name, email, tot_mileage, tot_jumun_amt, can_use_mileage) VALUES ('guard4','1111','이순신4','guard4@korea.com', 30000, 450000, 12000);
INSERT INTO user3 (userId, password, name, email, tot_mileage, tot_jumun_amt, can_use_mileage) VALUES ('guard5','1111','이순신5','guard5@korea.com', 2500000, 6400000, 165000);
INSERT INTO user3 (userId, password, name, email, tot_mileage, tot_jumun_amt, can_use_mileage) VALUES ('non_mem1','1111','비회원1','', 0, 0, 0);
INSERT INTO user3 (userId, password, name, email, tot_mileage, tot_jumun_amt, can_use_mileage) VALUES ('non_mem2','2222','비회원2','', 0, 0, 0);

/**********************product2 insert************************/
INSERT INTO product3 (p_no, p_name, p_price, p_mileage, p_image, p_desc, p_click_count) VALUES (product3_p_no_SEQ.nextval, '로드와일러', 350000, 35000,'load.gif','기타 상세 정보 등...', 0);
INSERT INTO product3 (p_no, p_name, p_price, p_mileage, p_image, p_desc, p_click_count) VALUES (product3_p_no_SEQ.nextval, '핏불테리어', 700000, 70000,'pit.gif','기타 상세 정보 등...', 0);
INSERT INTO product3 (p_no, p_name, p_price, p_mileage, p_image, p_desc, p_click_count) VALUES (product3_p_no_SEQ.nextval, '오브차가', 1100000, 110000,'obchaga.gif','기타 상세 정보 등...', 0);
INSERT INTO product3 (p_no, p_name, p_price, p_mileage, p_image, p_desc, p_click_count) VALUES (product3_p_no_SEQ.nextval, '골드리트리버', 600000, 60000,'gold.gif','기타 상세 정보 등...', 0);
INSERT INTO product3 (p_no, p_name, p_price, p_mileage, p_image, p_desc, p_click_count) VALUES (product3_p_no_SEQ.nextval, '시바', 250000, 250000,'siba.gif','기타 상세 정보 등...', 0);
INSERT INTO product3 (p_no, p_name, p_price, p_mileage, p_image, p_desc, p_click_count) VALUES (product3_p_no_SEQ.nextval, '샤페이', 300000, 30000,'shar.gif','기타 상세 정보 등...', 0);
/**********************cart2 insert************************/
/*****guard1****/
INSERT INTO cart3 
(cart_itemno, userId, p_no, cart_qty, cart_tot_price) 
VALUES 
(cart3_cart_itemno_SEQ.nextval, 'guard1', 1, 2, 550000*2);

INSERT INTO cart3 
(cart_itemno, userId, p_no, cart_qty, cart_tot_price) 
VALUES 
(cart3_cart_itemno_SEQ.nextval, 'guard1', 2, 1, 500000);

/*****guard2***/
INSERT INTO cart3 
(cart_itemno, userId, p_no, cart_qty, cart_tot_price) 
VALUES 
(cart3_cart_itemno_SEQ.nextval, 'guard2', 3, 1, 400000);
/**********************jumun3 insert************************/
/*****guard1****/
INSERT INTO jumun3 (j_no, j_desc, j_date, j_price, userId)
       VALUES (1, '비글+달마시안 총 3마리', sysdate, 1100000, 'guard1');
/*****guard2***/       
INSERT INTO jumun3 (j_no, j_desc, j_date, j_price, userId)
       VALUES (2, '퍼그 1마리', sysdate, 400000, 'guard2');

/**********************jumun_detail3 insert************************/
/*****guard1****/
INSERT INTO jumun_detail3 (jd_no, jd_qty, jd_pname, jd_tot_price, jd_result, jd_mileage, j_no, p_no) VALUES (1, 2, '비글', 110000, 'OK',11000,  1, 1);
INSERT INTO jumun_detail3 (jd_no, jd_qty, jd_pname, jd_tot_price, jd_result, jd_mileage, j_no, p_no) VALUES (2, 1, '달마시안', 500000, 'OK', 50000,  1, 2);
INSERT INTO jumun_detail3 (jd_no, jd_qty, jd_pname, jd_tot_price, jd_result, jd_mileage, j_no, p_no) VALUES (3, 1, '페키니즈', 450000, 'CANCEL', 0,  1, 4);
/*****guard2***/
INSERT INTO jumun_detail3 (jd_no, jd_qty, jd_pname, jd_tot_price, jd_result, jd_mileage, j_no, p_no) VALUES (4, 1, '퍼그', 400000, 'OK',40000, 2, 3);
/**********************jumun_detail_result3 insert************************/
/*****guard1****/
INSERT INTO jumun_detail_result3 (jdr_no, jdr_date, jdr_desc, jdr_account, jd_no) VALUES (1, sysdate, '반품신청,개가 너무 많이먹어서 식비가 많이 나옴', '우리 232-54565 이순신1',3);



commit;



