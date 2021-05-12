create table user_vote_disc
(
    voter         varchar(30)     not null,
    discussion_id int             not null,
    score         int default 100 not null,
    primary key (voter, discussion_id),
    constraint user_vote_disc_discussions_discussion_id_fk
        foreign key (discussion_id) references discussions (discussion_id),
    constraint user_vote_disc_users_email_fk
        foreign key (voter) references users (email)
);

INSERT INTO final_project.user_vote_disc (voter, discussion_id, score) VALUES ('basslir@post.bgu.ac.il', 1, 80);
INSERT INTO final_project.user_vote_disc (voter, discussion_id, score) VALUES ('basslir@post.bgu.ac.il', 2, 100);
INSERT INTO final_project.user_vote_disc (voter, discussion_id, score) VALUES ('basslir@post.bgu.ac.il', 4, 100);
INSERT INTO final_project.user_vote_disc (voter, discussion_id, score) VALUES ('basslir@post.bgu.ac.il', 5, 40);
INSERT INTO final_project.user_vote_disc (voter, discussion_id, score) VALUES ('basslir@post.bgu.ac.il', 7, 100);
INSERT INTO final_project.user_vote_disc (voter, discussion_id, score) VALUES ('boazki@post.bgu.ac.il', 1, 100);
INSERT INTO final_project.user_vote_disc (voter, discussion_id, score) VALUES ('linoilutati@gmail.com', 1, 100);
INSERT INTO final_project.user_vote_disc (voter, discussion_id, score) VALUES ('linoilutati@gmail.com', 5, 100);