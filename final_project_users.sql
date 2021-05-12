create table users
(
    email         varchar(50)   not null
        primary key,
    first_name    varchar(30)   not null,
    last_name     varchar(30)   not null,
    password      varchar(15)   not null,
    birth_date    date          not null,
    city          varchar(30)   not null,
    user_tokens   int           null,
    comments_num  int default 0 null,
    profile_pic   blob          null,
    final_dec_num int default 0 null,
    user_rank     varchar(20)   null
);

INSERT INTO final_project.users (email, first_name, last_name, password, birth_date, city, user_tokens, comments_num, profile_pic, final_dec_num, user_rank) VALUES ('bass@bass.com', 'bas', 'bassa', '123', '1999-01-03', 'kk', null, 30, null, 0, null);
INSERT INTO final_project.users (email, first_name, last_name, password, birth_date, city, user_tokens, comments_num, profile_pic, final_dec_num, user_rank) VALUES ('bass1@bass.com', 'bas', 'bassa', '123', '2024-01-04', 'kk', null, 0, 0xE2808FE2808FD7A6D799D79CD795D79D20D79ED7A1D79A202837292E706E67, 0, null);
INSERT INTO final_project.users (email, first_name, last_name, password, birth_date, city, user_tokens, comments_num, profile_pic, final_dec_num, user_rank) VALUES ('basslir@post.bgu.ac.il', 'Liran', 'Bass', 'tesla', '1990-01-08', 'Beer Sheva', 5160, 74, null, 3, 'Gold');
INSERT INTO final_project.users (email, first_name, last_name, password, birth_date, city, user_tokens, comments_num, profile_pic, final_dec_num, user_rank) VALUES ('boazki@post.bgu.ac.il', 'Boaz', 'Kishoni', '12345', '1993-03-26', 'Tel aviv', 1000, 0, null, 0, null);
INSERT INTO final_project.users (email, first_name, last_name, password, birth_date, city, user_tokens, comments_num, profile_pic, final_dec_num, user_rank) VALUES ('guest@guest.guest', 'Guest', '', '12345', '2021-03-19', '', 0, 0, null, 0, null);
INSERT INTO final_project.users (email, first_name, last_name, password, birth_date, city, user_tokens, comments_num, profile_pic, final_dec_num, user_rank) VALUES ('linoilutati@gmail.com', 'Linoy', 'Lutati', '12341234', '1994-01-23', 'Beer Sheva', 5000, 0, null, 0, 'Bronze');
INSERT INTO final_project.users (email, first_name, last_name, password, birth_date, city, user_tokens, comments_num, profile_pic, final_dec_num, user_rank) VALUES ('lir@lir.com', 'lir', 'lir', '123', '2012-11-02', 'kk', null, 0, 0xE2808FE2808FD7A6D799D79CD795D79D20D79ED7A1D79A20283130292E706E67, 0, null);
INSERT INTO final_project.users (email, first_name, last_name, password, birth_date, city, user_tokens, comments_num, profile_pic, final_dec_num, user_rank) VALUES ('tesla@tesla.com', 'elon ', 'msk', 'tesla', '1976-03-04', 'maadim', null, 0, null, 0, null);