create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), seen integer not null, title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), seen integer not null, title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), seen integer not null, title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), seen integer not null, title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), seen integer not null, title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table donor (id bigint not null, afm varchar(255), company_name varchar(255), primary key (id)) engine=InnoDB
create table donor_seq (next_val bigint) engine=InnoDB
insert into donor_seq values ( 1 )
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table donor (id bigint not null, afm varchar(255), company_name varchar(255), primary key (id)) engine=InnoDB
create table donor_seq (next_val bigint) engine=InnoDB
insert into donor_seq values ( 1 )
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table donor (id bigint not null, afm varchar(255), company_name varchar(255), primary key (id)) engine=InnoDB
create table donor_seq (next_val bigint) engine=InnoDB
insert into donor_seq values ( 1 )
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table donor (id bigint not null, afm varchar(255), company_name varchar(255), primary key (id)) engine=InnoDB
create table donor_seq (next_val bigint) engine=InnoDB
insert into donor_seq values ( 1 )
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table donor (id bigint not null, afm varchar(255), company_name varchar(255), primary key (id)) engine=InnoDB
create table donor_seq (next_val bigint) engine=InnoDB
insert into donor_seq values ( 1 )
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table donor (id bigint not null, afm varchar(255), company_name varchar(255), primary key (id)) engine=InnoDB
create table donor_seq (next_val bigint) engine=InnoDB
insert into donor_seq values ( 1 )
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table donor (id bigint not null, afm varchar(255), company_name varchar(255), primary key (id)) engine=InnoDB
create table donor_seq (next_val bigint) engine=InnoDB
insert into donor_seq values ( 1 )
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table donor (id bigint not null, afm varchar(255), company_name varchar(255), primary key (id)) engine=InnoDB
create table donor_seq (next_val bigint) engine=InnoDB
insert into donor_seq values ( 1 )
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table donor (id bigint not null, afm varchar(255), company_name varchar(255), primary key (id)) engine=InnoDB
create table donor_seq (next_val bigint) engine=InnoDB
insert into donor_seq values ( 1 )
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table donor (id bigint not null, afm varchar(255), company_name varchar(255), primary key (id)) engine=InnoDB
create table donor_seq (next_val bigint) engine=InnoDB
insert into donor_seq values ( 1 )
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table donor (id bigint not null, afm varchar(255), company_name varchar(255), primary key (id)) engine=InnoDB
create table donor_seq (next_val bigint) engine=InnoDB
insert into donor_seq values ( 1 )
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table donor (id bigint not null, afm varchar(255), company_name varchar(255), primary key (id)) engine=InnoDB
create table donor_seq (next_val bigint) engine=InnoDB
insert into donor_seq values ( 1 )
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
create table donor (id bigint not null, afm varchar(255), company_name varchar(255), primary key (id)) engine=InnoDB
create table donor_seq (next_val bigint) engine=InnoDB
insert into donor_seq values ( 1 )
create table movie (id bigint not null auto_increment, description varchar(255), director varchar(255), duration varchar(255), imageurl varchar(255), rating varchar(255), title varchar(255), year varchar(255), category_ref bigint, primary key (id)) engine=InnoDB
create table moviecategory (id bigint not null auto_increment, name varchar(255), primary key (id)) engine=InnoDB
create table movieclicks (id bigint not null auto_increment, clicks bigint, movie_ref bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table movies_seen (user_id bigint not null, movie_id bigint not null) engine=InnoDB
create table preferencesform (id bigint not null auto_increment, age bigint, user_ref bigint, primary key (id)) engine=InnoDB
create table preferencesformmovies (pref_form_id bigint not null, movie_cat_id bigint not null) engine=InnoDB
create table roleassign (userref bigint not null, roleref bigint not null, primary key (userref, roleref)) engine=InnoDB
create table roles (id bigint not null auto_increment, description varchar(255), name varchar(255), primary key (id)) engine=InnoDB
create table users (id bigint not null auto_increment, active bit, encrypted_password varchar(255), form_completed bigint, fullname varchar(255), name varchar(255), primary key (id)) engine=InnoDB
alter table movie add constraint FKd0cdedd8h0hwddlcwnbswop54 foreign key (category_ref) references moviecategory (id)
alter table movieclicks add constraint FKk5cborruic1dg48rpw72wmylf foreign key (movie_ref) references movie (id)
alter table movieclicks add constraint FK7kocsrwuk1mxyu1s30hfs9ab8 foreign key (user_ref) references users (id)
alter table movies_seen add constraint FKcumvranokf5si5bwhra05jqc1 foreign key (movie_id) references movie (id)
alter table movies_seen add constraint FKe73bkgsg2qppujupj0y3xnqid foreign key (user_id) references users (id)
alter table preferencesform add constraint FKkks2wjdyb9gn7vye3ev6tdhhf foreign key (user_ref) references users (id)
alter table preferencesformmovies add constraint FKp4jaynjtgfsfnubyao7qx7c0o foreign key (movie_cat_id) references moviecategory (id)
alter table preferencesformmovies add constraint FKpxhy1g4gbxvlp5tk152w94un1 foreign key (pref_form_id) references preferencesform (id)
alter table roleassign add constraint FK5w91cn7tukawng2jlgdmf8s77 foreign key (roleref) references roles (id)
alter table roleassign add constraint FKjyk0epriqnug8xds17r4ain1u foreign key (userref) references users (id)
