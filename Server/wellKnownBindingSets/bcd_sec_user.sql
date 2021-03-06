/*
  Copyright 2010-2017 BusinessCode GmbH, Germany

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
*/
-- Oracle
DROP TABLE BCD_SEC_USER;
CREATE TABLE BCD_SEC_USER
(  
  user_id     VARCHAR2(128), 
  user_login  VARCHAR2(128), 
  name        VARCHAR2(128), 
  password    VARCHAR2(64),
  password_salt    VARCHAR2(64),
  is_disabled VARCHAR2(64),
  PRIMARY KEY (user_id),
  UNIQUE(user_login)
);

-- SQLServer
DROP TABLE BCD_SEC_USER;
CREATE TABLE BCD_SEC_USER
(  
  user_id     VARCHAR(128), 
  name        VARCHAR(128), 
  password    VARCHAR(64),
  is_disabled VARCHAR(64),
  PRIMARY KEY (user_id)
);
-- PostgreSQL
DROP TABLE BCD_SEC_USER;
CREATE TABLE BCD_SEC_USER
(  
  user_id     VARCHAR(128), 
  user_login  VARCHAR(128), 
  name        VARCHAR(128), 
  password    VARCHAR(64),
  password_salt    VARCHAR(64),
  is_disabled VARCHAR(64),
  PRIMARY KEY (user_id),
  UNIQUE(user_login)
);

-- PostgreSQL
CREATE TABLE BCD_SEC_USER
(  
  user_id     VARCHAR(128), 
  user_login  VARCHAR(128), 
  name        VARCHAR(128), 
  password    VARCHAR(64),
  password_salt    VARCHAR(64),
  is_disabled VARCHAR(64),
  PRIMARY KEY (user_id),
  UNIQUE(user_login)
);