CREATE TABLE USERS(
	USERNAME VARCHAR_IGNORECASE(50) NOT NULL PRIMARY KEY,
	PASSWORD VARCHAR_IGNORECASE(50) NOT NULL,
	ENABLED BOOLEAN NOT NULL
);

CREATE TABLE AUTHORITIES (
	USERNAME VARCHAR_IGNORECASE(50) NOT NULL,
	AUTHORITY VARCHAR_IGNORECASE(50) NOT NULL,
	CONSTRAINT FK_AUTHORITIES_USERS FOREIGN KEY(USERNAME) REFERENCES USERS(USERNAME)
);
CREATE UNIQUE INDEX IX_AUTH_USERNAME ON AUTHORITIES (USERNAME,AUTHORITY);