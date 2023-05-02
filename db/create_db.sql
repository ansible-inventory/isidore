CREATE TABLE Host (
	HostID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	Hostname VARCHAR(255) NOT NULL UNIQUE,
	CreationDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	DecommissionDate TIMESTAMP NULL,
	Description TEXT
);

CREATE TABLE Tag (
	TagID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	TagName VARCHAR(64) NOT NULL UNIQUE,
	TagGroup VARCHAR(64),
	Description TEXT
);

CREATE TABLE HostHasTag (
	HostID INT NOT NULL,
	TagID INT NOT NULL,
	CONSTRAINT FK_HostHasTagHost FOREIGN KEY (HostID)
		REFERENCES Host(HostID),
	CONSTRAINT FK_HostHasTagTag FOREIGN KEY (TagID)
		REFERENCES Tag(TagID)
);

