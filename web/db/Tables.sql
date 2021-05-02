/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  pault
 * Created: 19/04/2021
 */

create table "User"
    ("EMAIL" varchar(50) not null,
    "NAME" varchar(100) not null,
    "PASSWORD" varchar(20) not null,
    "GENDER" varchar(12) not null,
    "COLOUR" varchar(20) not null,
    primary key (email));

