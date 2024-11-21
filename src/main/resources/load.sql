LOAD DATA INFILE 'FOLDER_CSV' 
IGNORE INTO TABLE ld_folder
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(FOLDER_COLUMNS);

LOAD DATA INFILE 'DOCUMENT_CSV' 
IGNORE INTO TABLE ld_document
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(DOCUMENT_COLUMNS);

LOAD DATA INFILE 'VERSION_CSV' 
IGNORE INTO TABLE ld_version
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(VERSION_COLUMNS);

LOAD DATA INFILE 'TAG_CSV' 
IGNORE INTO TABLE ld_tag
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(TAG_COLUMNS);

update hibernate_sequences
set next_val=DOCUMENT_NEXTID
where sequence_name='ld_document';

update hibernate_sequences
set next_val=VERSION_NEXTID
where sequence_name='ld_version';

update hibernate_sequences
set next_val=FOLDER_NEXTID
where sequence_name='ld_folder';