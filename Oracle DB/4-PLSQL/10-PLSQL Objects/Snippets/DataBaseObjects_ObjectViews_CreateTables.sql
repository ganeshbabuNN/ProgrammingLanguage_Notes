-- to understand object view create a relational table named Bestsellingbooks

CREATE TABLE BestSellingBooks (
		BookName Varchar2(100),
		ISBN Varchar2(50), 
		Description Varchar2(1000),
		Price Number(12,2),
		AuthorName Varchar2(50),
		AuthorAddress1 Varchar2(50),
		AuthorAddress2 Varchar2(50),
		AuthorCity Varchar2(15),
		AuthorState Varchar2(25),
		AuthorPincode Number(10),
		AuthorCountry Varchar2(20),
		AuthorContactNo Varchar2(25),
		PublisherName Varchar2(50),
		PublisherAddress1 Varchar2(50),
		PublisherAddress2 Varchar2(50),
		PublisherCity Varchar2(15),
		PublisherState Varchar2(25),
		PublisherPincode Number(10),
		PublisherCountry Varchar2(20),
		PublisherContactNo Varchar2(25),
		NoOfPages Number(4),
		NoOfChapters Number(4));