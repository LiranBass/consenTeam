create table discussions
(
    discussion_id     int                                   not null
        primary key,
    title             varchar(256)                          not null,
    description       text                                  not null,
    due_date          date                                  not null,
    discussion_owner  varchar(50)                           not null,
    creation_date     datetime    default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP,
    status            varchar(20) default 'Open'            not null,
    top_num_for_final int                                   null,
    constraint discussions_ibfk_1
        foreign key (discussion_owner) references users (email)
);

create index discussion_owner
    on discussions (discussion_owner);

INSERT INTO final_project.discussions (discussion_id, title, description, due_date, discussion_owner, creation_date, status, top_num_for_final) VALUES (1, 'What should we eat on Friday?', 'We want to invite you to a dinner on Friday for celebrating the end of the lockdown. Please share your favorite food :)', '2021-03-17', 'basslir@post.bgu.ac.il', '2021-04-28 12:46:49', 'Voting', null);
INSERT INTO final_project.discussions (discussion_id, title, description, due_date, discussion_owner, creation_date, status, top_num_for_final) VALUES (2, 'Where should we go hiking?', 'We want to have a trip on 14.05.21.
Please share your options with us.', '2021-03-31', 'basslir@post.bgu.ac.il', '2021-04-29 14:26:36', 'Closed', null);
INSERT INTO final_project.discussions (discussion_id, title, description, due_date, discussion_owner, creation_date, status, top_num_for_final) VALUES (3, 'what do we want to eat on the ON FIRE ?', 'i want to know what do you want to eat to know which things to buy thanl you guysss love you all', '2021-03-22', 'basslir@post.bgu.ac.il', '2021-03-19 12:37:44', 'Open', null);
INSERT INTO final_project.discussions (discussion_id, title, description, due_date, discussion_owner, creation_date, status, top_num_for_final) VALUES (4, 'what do you want on student day?', 'we want to let you choose what to do on student day! ', '2021-05-01', 'basslir@post.bgu.ac.il', '2021-04-29 15:07:04', 'Closed', 1);
INSERT INTO final_project.discussions (discussion_id, title, description, due_date, discussion_owner, creation_date, status, top_num_for_final) VALUES (5, 'test', 'tesyt', '2021-03-22', 'basslir@post.bgu.ac.il', '2021-04-28 12:35:47', 'Voting', null);
INSERT INTO final_project.discussions (discussion_id, title, description, due_date, discussion_owner, creation_date, status, top_num_for_final) VALUES (6, 'svsfd', 'dsf', '2021-04-22', 'linoilutati@gmail.com', '2021-04-07 15:01:42', 'Open', null);
INSERT INTO final_project.discussions (discussion_id, title, description, due_date, discussion_owner, creation_date, status, top_num_for_final) VALUES (7, 'test2', 's', '2021-04-26', 'basslir@post.bgu.ac.il', '2021-04-28 13:43:50', 'Closed', null);
INSERT INTO final_project.discussions (discussion_id, title, description, due_date, discussion_owner, creation_date, status, top_num_for_final) VALUES (8, 'What is the study method you recommend for the next academic year?', 'Having experienced online learning due to the corona, we would like to hear your recommendation for the upcoming academic year. Your participation in the discussion is important to us, and it may affect the study format next year.', '2021-06-30', 'basslir@post.bgu.ac.il', '2021-05-01 10:28:51', 'Open', null);