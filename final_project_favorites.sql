create table favorites
(
    email         varchar(50) not null,
    discussion_id int         not null,
    primary key (email, discussion_id),
    constraint favorites_ibfk_1
        foreign key (email) references users (email),
    constraint favorites_ibfk_2
        foreign key (discussion_id) references discussions (discussion_id)
);

create index discussion
    on favorites (discussion_id);

INSERT INTO final_project.favorites (email, discussion_id) VALUES ('basslir@post.bgu.ac.il', 1);
INSERT INTO final_project.favorites (email, discussion_id) VALUES ('basslir@post.bgu.ac.il', 2);