create table nodes
(
    node_id          int auto_increment,
    discussion_id    int           not null,
    parent_node      int           null,
    node_content     text          not null,
    node_owner       varchar(50)   not null,
    node_level       int           null,
    node_score       int default 0 null,
    node_description text          null,
    primary key (node_id, discussion_id),
    constraint nodes_ibfk_1
        foreign key (node_owner) references users (email),
    constraint nodes_ibfk_2
        foreign key (discussion_id) references discussions (discussion_id),
    constraint nodes_ibfk_3
        foreign key (parent_node) references nodes (node_id)
);

create index comment_owner
    on nodes (node_owner);

create index discussion_id
    on nodes (discussion_id);

create index parent_comment
    on nodes (parent_node);

INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (74, 1, null, 'What should we eat on Friday?', 'basslir@post.bgu.ac.il', 0, 0, null);
INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (75, 2, null, 'Where should we go hiking?', 'basslir@post.bgu.ac.il', 0, 0, null);
INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (92, 3, null, 'what do we want to eat on the ON FIRE ?', 'basslir@post.bgu.ac.il', 0, 0, null);
INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (96, 2, 75, 'TEL AVIV YAM!', 'basslir@post.bgu.ac.il', 1, 50, null);
INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (104, 4, null, 'what do you want on student day?', 'basslir@post.bgu.ac.il', 0, 0, null);
INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (119, 5, null, 'test', 'basslir@post.bgu.ac.il', 0, 0, null);
INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (121, 6, null, 'svsfd', 'linoilutati@gmail.com', 0, 0, null);
INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (145, 7, null, 'test2', 'basslir@post.bgu.ac.il', 0, 0, 'c');
INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (149, 7, 145, 'e', 'basslir@post.bgu.ac.il', 1, 1, 'e');
INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (163, 4, 104, 'dfsf', 'basslir@post.bgu.ac.il', 1, 0, 'sdfsdf');
INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (164, 4, 104, 'ddd', 'basslir@post.bgu.ac.il', 1, 4, 'dfsfd');
INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (165, 4, 104, 'ggggggggg', 'basslir@post.bgu.ac.il', 1, 40, 'ggg');
INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (166, 8, null, 'What is the study method you recommend for the next academic year?', 'basslir@post.bgu.ac.il', 0, 0, 'Having experienced online learning due to the corona, we would like to hear your recommendation for the upcoming academic year. Your participation in the discussion is important to us, and it may affect the study format next year.');
INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (167, 8, 166, 'Full return to routine', 'basslir@post.bgu.ac.il', 1, 0, '');
INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (169, 8, 166, '1st and 2nd year frontal, the rest online', 'basslir@post.bgu.ac.il', 1, 0, '');
INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (170, 8, 166, 'keep online until the end of the year', 'guest@guest.guest', 1, 0, '');
INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (171, 8, 166, 'Mandatory courses - frontal', 'guest@guest.guest', 1, 0, '');
INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (172, 8, 170, 'Online study, but frontal exams', 'guest@guest.guest', 2, 0, '');
INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (173, 8, 171, 'Only courses with compulsory attendance', 'guest@guest.guest', 2, 0, '');
INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (174, 8, 167, 'There are problems with the unvaccinated', 'guest@guest.guest', 2, 0, '');
INSERT INTO final_project.nodes (node_id, discussion_id, parent_node, node_content, node_owner, node_level, node_score, node_description) VALUES (175, 8, 169, 'Uniform decision for everyone', 'guest@guest.guest', 2, 0, '');