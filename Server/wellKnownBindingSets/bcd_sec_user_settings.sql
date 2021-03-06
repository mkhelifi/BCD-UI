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
DROP TABLE bcd_sec_user_settings;
CREATE TABLE bcd_sec_user_settings
(
   user_id         VARCHAR2(128) NOT NULL,
   right_type      VARCHAR2(64)  NOT NULL,
   right_value     VARCHAR2(64)  NOT NULL
);

-- SQLServer
DROP TABLE bcd_sec_user_settings;
CREATE TABLE bcd_sec_user_settings
(
   user_id         VARCHAR(128) NOT NULL,
   right_type      VARCHAR(64)  NOT NULL,
   right_value     VARCHAR(64)  NOT NULL
);
-- PostgreSQL
DROP TABLE bcd_sec_user_settings;
CREATE TABLE bcd_sec_user_settings
(
   user_id         VARCHAR(128) NOT NULL,
   right_type      VARCHAR(64)  NOT NULL,
   right_value     VARCHAR(64)  NOT NULL
);

-- PostgreSQL
DROP TABLE bcd_sec_user_settings;
CREATE TABLE bcd_sec_user_settings
(
   user_id         VARCHAR(128) NOT NULL,
   right_type      VARCHAR(64)  NOT NULL,
   right_value     VARCHAR(64)  NOT NULL
);