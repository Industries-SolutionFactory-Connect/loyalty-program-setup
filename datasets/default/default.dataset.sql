BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"AccountNumber" VARCHAR(255), 
	"AccountSource" VARCHAR(255), 
	"AnnualRevenue" VARCHAR(255), 
	"BillingCity" VARCHAR(255), 
	"BillingCountry" VARCHAR(255), 
	"BillingGeocodeAccuracy" VARCHAR(255), 
	"BillingLatitude" VARCHAR(255), 
	"BillingLongitude" VARCHAR(255), 
	"BillingPostalCode" VARCHAR(255), 
	"BillingState" VARCHAR(255), 
	"BillingStreet" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Fax" VARCHAR(255), 
	"Industry" VARCHAR(255), 
	"Jigsaw" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"NumberOfEmployees" VARCHAR(255), 
	"Ownership" VARCHAR(255), 
	"Phone" VARCHAR(255), 
	"Rating" VARCHAR(255), 
	"ShippingCity" VARCHAR(255), 
	"ShippingCountry" VARCHAR(255), 
	"ShippingGeocodeAccuracy" VARCHAR(255), 
	"ShippingLatitude" VARCHAR(255), 
	"ShippingLongitude" VARCHAR(255), 
	"ShippingPostalCode" VARCHAR(255), 
	"ShippingState" VARCHAR(255), 
	"ShippingStreet" VARCHAR(255), 
	"Sic" VARCHAR(255), 
	"SicDesc" VARCHAR(255), 
	"Site" VARCHAR(255), 
	"TickerSymbol" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"Website" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'','','','Sydney','','','','','2000','NSW','#23, George Street','','','Agriculture','','Acme Corporation','','','','','','','','','','','','','','','','','Customer','');
INSERT INTO "Account" VALUES(2,'','','100000000.0','New York','USA','','','','31349','NY','10 Main Rd.','','(212) 555-5555','Manufacturing','','Acme','680','','(212) 555-5555','','New York','USA','','','','31349','NY','10 Main Rd.','','','','','Prospect','');
INSERT INTO "Account" VALUES(3,'','','','San Francisco','USA','','','','94105','CA','The Landmark @ One Market, Suite 300','Founded in March 1999, salesforce.com (http://www.salesforce.com) builds and delivers customer relationship management (CRM) applications as scalable online services. The salesforce.com product suite - Team Edition, Professional Edition, Enterprise Edition, Wireless Edition and Offline Edition - gives companies of all sizes a complete 360-degree view of the customer. The company''s award-winning CRM solutions provide integrated online sales force automation, customer service and support management, and marketing automation applications to help companies meet the complex challenges of global customer communication. Salesforce.com has received considerable recognition in the industry, including Editors'' Choice and two Five-Star ratings from PC Magazine, two Deploy Awards from InfoWorld, Red Herring 100, Upside Hot 100, Investor''s Choice Award from Enterprise Outlook, Editors'' Choice from TMCLabs, Top 10 CRM Implementation from Aberdeen Group, and InfoWorld''s 2001 CRM Technology of the Year. Founded in 1999, salesforce.com is headquartered in San Francisco, with offices in Europe and Asia.','(415) 901-7040','Technology','','salesforce.com','','','(415) 901-7000','','San Francisco','USA','','','','94105','CA','The Landmark @ One Market, Suite 300','','','','','Customer','http://www.salesforce.com');
INSERT INTO "Account" VALUES(4,'','','','Toronto','Canada','','','','L4B 1Y3','Ontario','150 Chestnut Street','GBM is the worldwide leader in technology news and information on the Web and the producer of the longest-running and farthest-reaching television shows about technology. GBM''s network of sites combines breakthrough interactive technology with engaging content and design and is consistently ranked as the Internet''s leading content network in terms of both audience size and revenue, serving millions of users each day. The company''s television programming is broadcast by the USA Network and the Sci-Fi Channel to more than 70 million households and is syndicated to broadcast television stations in the nation''s top 120 markets, including the top 10 markets.','','Media','','Global Media','14668','','(905) 555-1212','','Toronto','Canada','','','','L4B 1Y3','Ontario','150 Chestnut Street','','','','','Prospect','');
CREATE TABLE "Benefit" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"PrioritySequence" VARCHAR(255), 
	"Value" VARCHAR(255), 
	"BenefitActionId" VARCHAR(255), 
	"BenefitTypeId" VARCHAR(255), 
	"UnitId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Benefit" VALUES(1,'True','Free Shipping on orders greater than $40','','20','','','2','');
INSERT INTO "Benefit" VALUES(2,'True','Free Shipping on All Orders','','30','','','2','');
INSERT INTO "Benefit" VALUES(3,'True','10% off on apparel voucher','','10','','1','1','');
INSERT INTO "Benefit" VALUES(4,'True','15% off on apparel voucher','','20','','1','1','');
INSERT INTO "Benefit" VALUES(5,'True','Free Shipping on orders greater than $75','','10','','','2','');
CREATE TABLE "BenefitAction" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	"FlowDefinition" VARCHAR(255), 
	"FlowInstance" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"IsBenefitExpirationAllowed" VARCHAR(255), 
	"IsBenefitUpdateAllowed" VARCHAR(255), 
	"Language" VARCHAR(255), 
	"MasterLabel" VARCHAR(255), 
	"MemberBenefitVariableName" VARCHAR(255), 
	"ProcessType" VARCHAR(255), 
	"Type" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "BenefitAction" VALUES(1,'Issue a voucher to the member.','Issue_Voucher','benefits__Issue_Voucher','benefits__Issue_Voucher','True','False','False','en_US','Issue Voucher','MemberBenefitId','Loyalty','Flow');
CREATE TABLE "BenefitType" (
	id INTEGER NOT NULL, 
	"Category" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"ProcessType" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "BenefitType" VALUES(1,'Member Exclusives','Access to exclusive discounts on merchandise','Exclusive Discounts','Loyalty','1');
INSERT INTO "BenefitType" VALUES(2,'Orders','Free shipping of orders','Shipping','Loyalty','1');
CREATE TABLE "Contact" (
	id INTEGER NOT NULL, 
	"AssistantName" VARCHAR(255), 
	"AssistantPhone" VARCHAR(255), 
	"Birthdate" VARCHAR(255), 
	"Fax" VARCHAR(255), 
	"Phone" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Jigsaw" VARCHAR(255), 
	"Department" VARCHAR(255), 
	"DoNotCall" VARCHAR(255), 
	"Email" VARCHAR(255), 
	"EmailBouncedDate" VARCHAR(255), 
	"EmailBouncedReason" VARCHAR(255), 
	"HasOptedOutOfEmail" VARCHAR(255), 
	"HasOptedOutOfFax" VARCHAR(255), 
	"FirstName" VARCHAR(255), 
	"HomePhone" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"LeadSource" VARCHAR(255), 
	"MailingCity" VARCHAR(255), 
	"MailingCountry" VARCHAR(255), 
	"MailingGeocodeAccuracy" VARCHAR(255), 
	"MailingLatitude" VARCHAR(255), 
	"MailingLongitude" VARCHAR(255), 
	"MailingState" VARCHAR(255), 
	"MailingStreet" VARCHAR(255), 
	"MailingPostalCode" VARCHAR(255), 
	"MobilePhone" VARCHAR(255), 
	"OtherCity" VARCHAR(255), 
	"OtherCountry" VARCHAR(255), 
	"OtherGeocodeAccuracy" VARCHAR(255), 
	"OtherLatitude" VARCHAR(255), 
	"OtherLongitude" VARCHAR(255), 
	"OtherPhone" VARCHAR(255), 
	"OtherState" VARCHAR(255), 
	"OtherStreet" VARCHAR(255), 
	"OtherPostalCode" VARCHAR(255), 
	"Salutation" VARCHAR(255), 
	"Title" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"IndividualId" VARCHAR(255), 
	"ReportsToId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Contact" VALUES(1,'','','','','','','','','False','','','','False','False','Naomi','','Smith','','Sydney','','','','','NSW','#23, George Street','2000','','','','','','','','','','','Ms.','','1','','');
INSERT INTO "Contact" VALUES(2,'','','','','','','','','False','','','','False','False','Jannis','','Smith','','Sydney','','','','','NSW','#23, George Street','2000','','','','','','','','','','','Mr.','','1','','');
INSERT INTO "Contact" VALUES(3,'','','','','','','','','False','','','','False','False','John','','Smith','','Sydney','','','','','NSW','#23, George Street','2000','','','','','','','','','','','Mr.','','1','','');
INSERT INTO "Contact" VALUES(4,'','','','(212) 555-5555','(212) 555-5555','','','','False','info@salesforce.com','','','False','False','Edward','','Stamos','','New York City','USA','','','','NY','10 Main Rd.','31349','','New York City','USA','','','','','NY','10 Main Rd.','31349','','President and CEO','2','','');
INSERT INTO "Contact" VALUES(5,'','','','(212) 555-5555','(212) 555-5555','','','','False','info@salesforce.com','','','False','False','Howard','','Jones','','New York','USA','','','','NY','10 Main Rd.','31349','','','','','','','','','','','','Buyer','2','','');
INSERT INTO "Contact" VALUES(6,'','','','(212) 555-5555','(212) 555-5555','','','','False','info@salesforce.com','','','False','False','Leanne','','Tomlin','','New York','USA','','','','NY','10 Main Rd.','31349','','','','','','','','','','','','VP Customer Support','2','','');
INSERT INTO "Contact" VALUES(7,'','','','(415) 901-7040','(415) 901-7000','Marc R. Benioff is chairman and CEO of salesforce.com. He founded the company in March 1999 with the idea to create an information utility that would make traditional enterprise software technology and business models obsolete. A veteran of 25 years in the software industry, he is now regarded as a pioneer of "The End Of Software," demonstrating how on-demand applications can replace traditional software to deliver immediate benefit at reduced risk. In May 2003, Benioff was appointed by President George W. Bush as co-chair of the President''s Information Technology Advisory Committee (PITAC), a bi-partisan organization of business leaders and academics charged to advise The President on how to maintain the United States'' preeminent position in information technology.','','','False','info@salesforce.com','','','False','False','Marc','','Benioff','','San Francisco','USA','','','','CA','The Landmark @ One Market, Suite 300','94105','','San Francisco','USA','','','','','CA','The Landmark @ One Market, Suite 300','94105','Mr.','Executive Officer','3','','');
INSERT INTO "Contact" VALUES(8,'','','','','(415) 555-1212','','','','False','info@salesforce.com','','','False','False','Geoff','','Minor','','Toronto','Canada','','','','Ontario','150 Chestnut Street','L4B 1Y3','','Toronto','Canada','','','','','Ontario','150 Chestnut Street','L4B 1Y3','','President','4','','');
INSERT INTO "Contact" VALUES(9,'','','','','(415) 555-1212','Carole White is looking at moving forward with our products and will act as the champion for us.','','','False','info@salesforce.com','','','False','False','Carole','','White','Employee Referral','Toronto','Canada','','','','Ontario','150 Chestnut Street','L4B 1Y3','','','','','','','','','','','','VP Sales','4','','8');
INSERT INTO "Contact" VALUES(10,'','','','(555) 555-1212','(905) 555-1212','','','','False','info@salesforce.com','','','False','False','Jon','','Amos','','Toronto','Canada','','','','Ontario','150 Chestnut Street','L4B 1Y3','','','','','','','','','','','','Sales Manager','4','','9');
INSERT INTO "Contact" VALUES(11,'','','','','','','','','False','','','','False','False','Jane','','Smith','','Sydney','','','','','NSW','#23, George Street','2000','','','','','','','','','','','Mrs.','','1','','');
CREATE TABLE "Individual" (
	id INTEGER NOT NULL, 
	"LastName" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "JournalSubType" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"JournalTypeId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "JournalSubType" VALUES(1,'Represents transactions that credit points to new loyalty program members that have joined a loyalty program.','Member Enrollment','5');
INSERT INTO "JournalSubType" VALUES(2,'Represents transactions that credit points to loyalty program members when a member they have referred has joined the loyalty program.','Member Referral','5');
INSERT INTO "JournalSubType" VALUES(3,'','Purchase','5');
INSERT INTO "JournalSubType" VALUES(4,'','Referral Bonus','5');
INSERT INTO "JournalSubType" VALUES(5,'','Enrolment Bonus','5');
CREATE TABLE "JournalType" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"ProcessType" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "JournalType" VALUES(1,'Represents a transaction that resets qualifying points balance for a loyalty program member.','Qualifying Points Reset','Loyalty');
INSERT INTO "JournalType" VALUES(2,'Represents a transaction that expires points for a loyalty program member.','Points Expiration','Loyalty');
INSERT INTO "JournalType" VALUES(3,'Represents a transaction that manually adjusts points for a loyalty program member.','Manual Points Adjustment','Loyalty');
INSERT INTO "JournalType" VALUES(4,'Represents a transaction that reverses an accrual to a loyalty program member''s balance.','Accrual Reversal','Loyalty');
INSERT INTO "JournalType" VALUES(5,'Represents a transaction that accrues points to a loyalty program member''s balance.','Accrual','Loyalty');
INSERT INTO "JournalType" VALUES(6,'Represents a transaction that redeems a loyalty program member''s points.','Redemption','Loyalty');
INSERT INTO "JournalType" VALUES(7,'Represents a transaction that reverses a redemption of a loyalty program member''s points.','Redemption Reversal','Loyalty');
CREATE TABLE "LoyaltyLedger" (
	id INTEGER NOT NULL, 
	"ActivityDate" VARCHAR(255), 
	"AdditionalNotes" VARCHAR(255), 
	"Correlation" VARCHAR(255), 
	"EscrowPointsCreditDate" VARCHAR(255), 
	"EventType" VARCHAR(255), 
	"ExpiryDate" VARCHAR(255), 
	"Flow" VARCHAR(255), 
	"Points" VARCHAR(255), 
	"LoyaltyProgramCurrencyId" VARCHAR(255), 
	"LoyaltyProgramMemberId" VARCHAR(255), 
	"PromotionId" VARCHAR(255), 
	"TransactionJournalId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyLedger" VALUES(1,'2023-03-13T16:47:02.000+0000','shopped during birthday week','','','Credit','','','1000.0','1','2','1','1');
INSERT INTO "LoyaltyLedger" VALUES(2,'2023-03-13T16:47:02.000+0000','shopped during birthday week','','','Credit','','','1000.0','1','4','1','2');
CREATE TABLE "LoyaltyMemberCurrency" (
	id INTEGER NOT NULL, 
	"BalanceBeforeReset" VARCHAR(255), 
	"LastAccrualProcessedDate" VARCHAR(255), 
	"LastEscrowProcessedDate" VARCHAR(255), 
	"LastExpirationProcessRunDate" VARCHAR(255), 
	"LastPointsAggregationDate" VARCHAR(255), 
	"LastResetDate" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"NextResetDate" VARCHAR(255), 
	"PointsBalBeforeSecondLastReset" VARCHAR(255), 
	"TotalEscrowPointsAccrued" VARCHAR(255), 
	"TotalEscrowRolloverPoints" VARCHAR(255), 
	"ExpirablePoints" VARCHAR(255), 
	"TotalPointsAccrued" VARCHAR(255), 
	"TotalPointsExpired" VARCHAR(255), 
	"TotalPointsRedeemed" VARCHAR(255), 
	"LoyaltyMemberId" VARCHAR(255), 
	"LoyaltyProgramCurrencyId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyMemberCurrency" VALUES(1,'0.0','','','','','','Points','','','0.0','0.0','0.0','0.0','0.0','0.0','1','2');
INSERT INTO "LoyaltyMemberCurrency" VALUES(2,'0.0','','','','','','Tier Points','2023-12-31','','0.0','0.0','0.0','0.0','0.0','0.0','1','1');
INSERT INTO "LoyaltyMemberCurrency" VALUES(3,'0.0','','','','','','Points','','','0.0','0.0','0.0','0.0','0.0','0.0','2','2');
INSERT INTO "LoyaltyMemberCurrency" VALUES(4,'0.0','2023-03-13T16:47:02.000+0000','','','','','Tier Points','2023-12-31','','0.0','0.0','0.0','1000.0','0.0','0.0','2','1');
INSERT INTO "LoyaltyMemberCurrency" VALUES(5,'0.0','','','','','','Points','','','0.0','0.0','0.0','0.0','0.0','0.0','3','2');
INSERT INTO "LoyaltyMemberCurrency" VALUES(6,'0.0','','','','','','Tier Points','2023-12-31','','0.0','0.0','0.0','0.0','0.0','0.0','3','1');
INSERT INTO "LoyaltyMemberCurrency" VALUES(7,'0.0','','','','','','Points','','','0.0','0.0','0.0','0.0','0.0','0.0','4','2');
INSERT INTO "LoyaltyMemberCurrency" VALUES(8,'0.0','2023-03-13T16:47:02.000+0000','','','','','Tier Points','2023-12-31','','0.0','0.0','0.0','1000.0','0.0','0.0','4','1');
CREATE TABLE "LoyaltyMemberTier" (
	id INTEGER NOT NULL, 
	"AreBenefitsAssigned" VARCHAR(255), 
	"ChangeReasonType" VARCHAR(255), 
	"EffectiveDate" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"ReasonForChange" VARCHAR(255), 
	"TierExpirationDate" VARCHAR(255), 
	"LoyaltyMemberId" VARCHAR(255), 
	"LoyaltyTierGroupId" VARCHAR(255), 
	"LoyaltyTierId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyMemberTier" VALUES(1,'False','Based on Past Activities or Tier','2023-03-13','Silver','onboarding new members','','1','1','2');
INSERT INTO "LoyaltyMemberTier" VALUES(2,'False','Based on Past Activities or Tier','2023-03-13','Silver','onboarding new members','','2','1','2');
INSERT INTO "LoyaltyMemberTier" VALUES(3,'False','Based on Past Activities or Tier','2023-03-13','Silver','onboarding new members','','3','1','2');
INSERT INTO "LoyaltyMemberTier" VALUES(4,'False','Based on Past Activities or Tier','2023-03-13','Silver','onboarding new members','','4','1','2');
CREATE TABLE "LoyaltyPgmEngmtAttrProm" (
	id INTEGER NOT NULL, 
	"LoyaltyProgramEngmtAttrId" VARCHAR(255), 
	"PromotionId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyPgmEngmtAttrProm" VALUES(1,'1','1');
CREATE TABLE "LoyaltyPgmEngmtAttribute" (
	id INTEGER NOT NULL, 
	"DefaultValue" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"MaximumResetCountPerPeriod" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"ShouldOverwriteAttrCurrVal" VARCHAR(255), 
	"ResetValueOn" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"TargetValue" VARCHAR(255), 
	"ValueResetFrequency" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyPgmEngmtAttribute" VALUES(1,'0','Used to track whether a member has reached the promotion credit limit of 2, after which the Double Points during Birthday Week promotion is no longer applied to the member.','2024-03-01','2','Track Credit Multiplier Points Limit for 0c8DC000000GmaE Promotion','True','','2023-02-01','Active','1.0','','1');
CREATE TABLE "LoyaltyProgram" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"EscrowPeriod" VARCHAR(255), 
	"IsPrimary" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Status" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyProgram" VALUES(1,'NTO Insider is NTO''s experential Loyalty program designed to engage NTO''s customers with rich, meaningful rewards with every purchase','','True','NTO Insider','Active');
CREATE TABLE "LoyaltyProgramCurrency" (
	id INTEGER NOT NULL, 
	"CostperUnit" VARCHAR(255), 
	"CurrencyType" VARCHAR(255), 
	"ExpiryModel" VARCHAR(255), 
	"ExpiryPeriodFrequency" VARCHAR(255), 
	"ExpiryPeriodUnit" VARCHAR(255), 
	"ExtendExpiration" VARCHAR(255), 
	"HasEscrow" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"IsPrimary" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	"LoyaltyTierGroupId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyProgramCurrency" VALUES(1,'','Qualifying','','','','','False','True','False','Tier Points','1','1');
INSERT INTO "LoyaltyProgramCurrency" VALUES(2,'0.05','NonQualifying','Fixed','2','Years','None','False','True','True','Points','1','');
CREATE TABLE "LoyaltyProgramMember" (
	id INTEGER NOT NULL, 
	"CanReceivePartnerPromotions" VARCHAR(255), 
	"CanReceivePromotions" VARCHAR(255), 
	"EnrollmentChannel" VARCHAR(255), 
	"EnrollmentDate" VARCHAR(255), 
	"GroupName" VARCHAR(255), 
	"LastActivityDate" VARCHAR(255), 
	"MemberStatus" VARCHAR(255), 
	"MemberType" VARCHAR(255), 
	"MembershipEndDate" VARCHAR(255), 
	"MembershipLastRenewalDate" VARCHAR(255), 
	"MembershipNumber" VARCHAR(255), 
	"StatementFrequency" VARCHAR(255), 
	"StatementLastGeneratedDate" VARCHAR(255), 
	"StatementMethod" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	"GroupCreatedByMemberId" VARCHAR(255), 
	"ProgramId" VARCHAR(255), 
	"ReferredById" VARCHAR(255), 
	"RelatedCorporateMembershipId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyProgramMember" VALUES(1,'False','False','Web','2020-02-20','','','Active','Corporate','','','10001','Monthly','','Mail','1','3','','1','','');
INSERT INTO "LoyaltyProgramMember" VALUES(2,'False','False','Mobile','2021-03-01','','','Active','Corporate','','','10002','Monthly','','Mail','1','11','','1','','');
INSERT INTO "LoyaltyProgramMember" VALUES(3,'False','False','POS','2023-03-01','','','Active','Corporate','','','10004','Monthly','','Mail','1','2','','1','','');
INSERT INTO "LoyaltyProgramMember" VALUES(4,'False','False','Email','2023-01-01','','','Active','Corporate','','','10003','Monthly','','Mail','1','1','','1','','');
CREATE TABLE "LoyaltyProgramPartner" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"PartnerIndustry" VARCHAR(255), 
	"PartnerType" VARCHAR(255), 
	"PartnershipStartDate" VARCHAR(255), 
	"LoyaltyPartnerId" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "LoyaltyProgramProcess" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"ExecutionType" VARCHAR(255), 
	"ProcessType" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"JournalSubTypeId" VARCHAR(255), 
	"JournalTypeId" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyProgramProcess" VALUES(1,'','Quick Promotion Process for Accruals with Purchase Journal Subtype','RealTime','TransactionJournal','Active','3','5','1');
CREATE TABLE "LoyaltyProgramSetup" (
	id INTEGER NOT NULL, 
	"MasterLabel" VARCHAR(255), 
	"Language" VARCHAR(255), 
	"DeveloperName" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyProgramSetup" VALUES(1,'NTO Insider','en_US','NTO_Insider');
CREATE TABLE "LoyaltyTier" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"SequenceNumber" VARCHAR(255), 
	"LoyaltyTierGroupId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyTier" VALUES(1,'Gold members get better benefits with spends','Gold','20','1');
INSERT INTO "LoyaltyTier" VALUES(2,'Entry-level tier','Silver','10','1');
INSERT INTO "LoyaltyTier" VALUES(3,'Platinum members get the most benefits out of NTO insider','Platinum','30','1');
CREATE TABLE "LoyaltyTierBenefit" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"BenefitId" VARCHAR(255), 
	"LoyaltyTierId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyTierBenefit" VALUES(1,'Free Shipping on All Orders','2','3');
INSERT INTO "LoyaltyTierBenefit" VALUES(2,'15% off on apparel voucher','4','3');
INSERT INTO "LoyaltyTierBenefit" VALUES(3,'Free Shipping on orders greater than $40','1','1');
INSERT INTO "LoyaltyTierBenefit" VALUES(4,'10% off on apparel voucher','3','1');
INSERT INTO "LoyaltyTierBenefit" VALUES(5,'Free Shipping on orders greater than $75','5','2');
CREATE TABLE "LoyaltyTierGroup" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"ExtendExpiration" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"IsHiddenToMembers" VARCHAR(255), 
	"IsPrimary" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"QpResetDate" VARCHAR(255), 
	"QpResetFrequency" VARCHAR(255), 
	"QpResetPeriod" VARCHAR(255), 
	"TierModel" VARCHAR(255), 
	"TierPeriodQuantity" VARCHAR(255), 
	"TierPeriodUnit" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyTierGroup" VALUES(1,'Groups members into Tiers based on annual spend','None','True','False','True','Status Tier Group','2023-12-31','1','Years','Fixed','1','Years','1');
CREATE TABLE "Order" (
	id INTEGER NOT NULL, 
	"EffectiveDate" VARCHAR(255), 
	"Status" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "OrderItem" (
	id INTEGER NOT NULL, 
	"Quantity" VARCHAR(255), 
	"OrderId" VARCHAR(255), 
	"PricebookEntryId" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "Pricebook2" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "PricebookEntry" (
	id INTEGER NOT NULL, 
	"UnitPrice" VARCHAR(255), 
	"Pricebook2Id" VARCHAR(255), 
	"Product2Id" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "Product2" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "ProductCatalog" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ProductCatalog" VALUES(1,'NTO Insider Catalog');
CREATE TABLE "ProductCategory" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"IsNavigational" VARCHAR(255), 
	"SortOrder" VARCHAR(255), 
	"CatalogId" VARCHAR(255), 
	"ParentCategoryId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "ProductCategory" VALUES(1,'','Footwear','True','30','1','');
INSERT INTO "ProductCategory" VALUES(2,'','Apparel','True','20','1','');
INSERT INTO "ProductCategory" VALUES(3,'','Makeup','True','10','1','');
CREATE TABLE "Promotion" (
	id INTEGER NOT NULL, 
	"CumulativeUsageTarget" VARCHAR(255), 
	"CurrentLiabilityAmount" VARCHAR(255), 
	"CurrentPointCount" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"EnrollmentEndDate" VARCHAR(255), 
	"EnrollmentStartDate" VARCHAR(255), 
	"FulfillmentAction" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"IsEnrollmentRequired" VARCHAR(255), 
	"IsPointsWithFactor" VARCHAR(255), 
	"IssuedVoucherCount" VARCHAR(255), 
	"LoyaltyPromotionType" VARCHAR(255), 
	"MaximumLiabilityAmount" VARCHAR(255), 
	"MaximumRewardValue" VARCHAR(255), 
	"MaximumVoucherCount" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Objective" VARCHAR(255), 
	"PointFactor" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"TotalRewardPoints" VARCHAR(255), 
	"TransactionJournalType" VARCHAR(255), 
	"DefaultVoucherDefinitionId" VARCHAR(255), 
	"LoyaltyProgramCurrencyId" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Promotion" VALUES(1,'','','','','2024-03-01','','','','True','False','False','','Standard','','','','Double Points during Birthday Week','A member gets 2x points for purchases during birthday week. Applicable on 2 purchases only','','2023-02-01','','','Accrual','','','1');
CREATE TABLE "TransactionJournal" (
	id INTEGER NOT NULL, 
	"ActivityDate" VARCHAR(255), 
	"BookedFareClass" VARCHAR(255), 
	"BookedRoomType" VARCHAR(255), 
	"BookingDate" VARCHAR(255), 
	"Brand" VARCHAR(255), 
	"Channel" VARCHAR(255), 
	"Destination" VARCHAR(255), 
	"Distance" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"ErrorDescription" VARCHAR(255), 
	"EscrowPointsCreditDate" VARCHAR(255), 
	"Establishment" VARCHAR(255), 
	"ExternalTransactionNumber" VARCHAR(255), 
	"FlightNumber" VARCHAR(255), 
	"Industry" VARCHAR(255), 
	"InvoiceDate" VARCHAR(255), 
	"JournalDate" VARCHAR(255), 
	"JournalReason" VARCHAR(255), 
	"Origin" VARCHAR(255), 
	"PaymentMethod" VARCHAR(255), 
	"Quantity" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"TransactionAmount" VARCHAR(255), 
	"TransactionLocation" VARCHAR(255), 
	"TraveledFareClass" VARCHAR(255), 
	"UsageType" VARCHAR(255), 
	"VoucherCode" VARCHAR(255), 
	"JournalSubTypeId" VARCHAR(255), 
	"JournalTypeId" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	"MemberId" VARCHAR(255), 
	"OrderId" VARCHAR(255), 
	"OrderItemId" VARCHAR(255), 
	"PartnerId" VARCHAR(255), 
	"ProductCategoryId" VARCHAR(255), 
	"ProductId" VARCHAR(255), 
	"PromotionId" VARCHAR(255), 
	"QuantityUnitOfMeasureId" VARCHAR(255), 
	"ReferredMemberId" VARCHAR(255), 
	"RelatedCorporateMembershipId" VARCHAR(255), 
	"RelatedJournalId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "TransactionJournal" VALUES(1,'2023-03-13T16:47:02.000+0000','','','','','','','','','','','','','','','','2023-03-13T16:47:02.000+0000','Resolve Disputed Points','','','','','Processed','','','','Loyalty','','','3','1','2','','','','','','1','','','','');
INSERT INTO "TransactionJournal" VALUES(2,'2023-03-13T16:47:02.000+0000','','','','','','','','','','','','','','','','2023-03-13T16:47:02.000+0000','Resolve Disputed Points','','','','','Processed','','','','Loyalty','','','3','1','4','','','','','','1','','','','');
CREATE TABLE "UnitOfMeasure" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"UnitCode" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "Voucher" (
	id INTEGER NOT NULL, 
	"DiscountPercent" VARCHAR(255), 
	"EffectiveDate" VARCHAR(255), 
	"ExpirationDate" VARCHAR(255), 
	"FaceValue" VARCHAR(255), 
	"Reason" VARCHAR(255), 
	"RedeemedValue" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"UseDate" VARCHAR(255), 
	"VoucherCode" VARCHAR(255), 
	"BenefitId" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	"LoyaltyProgramMemberId" VARCHAR(255), 
	"PromotionId" VARCHAR(255), 
	"TransactionJournalId" VARCHAR(255), 
	"VoucherDefinitionId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Voucher" VALUES(1,'','2023-03-13','2024-04-01','20.0','','','Issued','','MK9VSB8RTND','','','1','','','2');
CREATE TABLE "VoucherDefinition" (
	id INTEGER NOT NULL, 
	"CostPerVoucher" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"DiscountPercent" VARCHAR(255), 
	"EffectiveDate" VARCHAR(255), 
	"ExpirationDate" VARCHAR(255), 
	"ExpirationPeriod" VARCHAR(255), 
	"ExpirationPeriodUnit" VARCHAR(255), 
	"ExpirationType" VARCHAR(255), 
	"FaceValue" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"IsPartialRedeemable" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	"PartnerAccountId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "VoucherDefinition" VALUES(1,'0.1','15% discount on apparel - applicable for 3 months since issued','15','2023-02-01','','3','Months','Period','','True','False','15% Discount on Apparel','DiscountPercentage','1','');
INSERT INTO "VoucherDefinition" VALUES(2,'16.0','A one-time voucher applicable only for purchase of makeup','','2023-02-01','2025-02-28','1','Months','Period','20.0','True','False','$20 Off on Next Purchase of Makeup','FixedValue','1','');
COMMIT;
