Create Table HSNCode
(
	HSNCodeID int IDENTITY(1,1) PRIMARY KEY,
	Name Varchar(100) NOT NULL DEFAULT '',
	Description Varchar(500) NOT NULL DEFAULT '',
	Published Bit NOT NULL DEFAULT 1,
	UserID int NOT NULL DEFAULT 1,
	CreatedOn Datetime NOT NULL DEFAULT GetDate(),
	UpdatedOn Datetime NOT NULL DEFAULT GetDate(),
	FOREIGN KEY (UserID) REFERENCES [User](UserID)
);
Go