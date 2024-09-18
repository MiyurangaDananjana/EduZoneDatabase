﻿CREATE TABLE [dbo].[POST] (
    [POST_ID]        INT            IDENTITY (1, 1) NOT NULL,
    [TITLE]          NVARCHAR (200) NOT NULL,
    [CONTENT]        NVARCHAR (MAX) NULL,
    [STATUS]         INT            NULL,
    [CREATEDATETIME] DATETIME       NULL,
    [CREATE_BY]      INT            NULL,
    [IMG]            VARCHAR (20)   NULL,
    PRIMARY KEY CLUSTERED ([POST_ID] ASC),
    CONSTRAINT [FK_POST_USER_DETAILS] FOREIGN KEY ([CREATE_BY]) REFERENCES [dbo].[USER_DETAILS] ([USER_ID])
);

