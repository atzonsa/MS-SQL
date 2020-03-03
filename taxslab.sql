Create Table TaxSlab
(
	TaxSlabID int IDENTITY(1,1) PRIMARY KEY,
	Name Varchar(100) NOT NULL DEFAULT '',
	Percentage Decimal(4,2) NOT NULL DEFAULT 0,
	Description Varchar(500) NOT NULL DEFAULT '',
	Published Bit NOT NULL DEFAULT 1,
	UserID int NOT NULL DEFAULT 1,
	CreatedOn Datetime NOT NULL DEFAULT GetDate(),
	UpdatedOn Datetime NOT NULL DEFAULT GetDate(),
	FOREIGN KEY (UserID) REFERENCES [User](UserID)
);