USE master;
GO
CREATE DATABASE NJUJLXYOpenCoursePlatform
ON
(NAME = NJUJLXYOpenCoursePlatform,
FILENAME = 'C:\Repositories\GitHub\NJUJLXYOpenCoursePlatform\NJUJLXYOpenCoursePlatform.Web\App_Data\NJUJLXYOpenCoursePlatform.mdf',
SIZE = 5MB,
MAXSIZE = 50MB,
FILEGROWTH = 1MB)
LOG ON
(NAME = NJUJLXYOpenCoursePlatform_log,
FILENAME = 'C:\Repositories\GitHub\NJUJLXYOpenCoursePlatform\NJUJLXYOpenCoursePlatform.Web\App_Data\NJUJLXYOpenCoursePlatform_log.ldf',
SIZE = 3MB,
MAXSIZE = 25MB,
FILEGROWTH = 1MB)
COLLATE Chinese_PRC_CS_AS;
GO
USE NJUJLXYOpenCoursePlatform
CREATE TABLE [User] ([UserId] bigint PRIMARY KEY,
[Password] nvarchar(80) NOT NULL,
[Name] nvarchar(20) NOT NULL,
[Sex] nchar(10) NOT NULL,
[Department] nvarchar(20) NOT NULL,
[Identity] nchar(10) NOT Null,
[Email] nvarchar(40) NOT NULL)
CREATE TABLE [Course] ([CourseId] int PRIMARY KEY,
[Name] nvarchar(20) NOT NULL,
[Descn] nvarchar(80) NOT NULL,
[Detail] nvarchar(200) NOT NULL,
[TeacherId] bigint NOT NULL REFERENCES [User](UserId),
[Date] date NOT NULL,
[Credit] int NOT NULL)
CREATE TABLE [Register] ([RegisterId] int identity PRIMARY KEY,
[UserId] bigint NOT NULL REFERENCES [User](UserId),
[CourseId] int NOT NULL REFERENCES [Course](CourseId),
[Grade] int NULL)
CREATE TABLE [Comment] ([CommentId] int identity PRIMARY KEY,
[UserId] bigint NOT NULL REFERENCES [User](UserId),
[CourseId] int NOT NULL REFERENCES [Course](CourseId),
[Content] nvarchar(100) NOT NULL,
[DateTime] datetime NOT NULL)
INSERT INTO [User] VALUES ('1', '123456', '管理员1', '男', '无', '管理员', '1253649392@qq.com')
INSERT INTO [User] VALUES ('2', '123456', '教师2', '男', '信息科学与工程学院', '教师', '1253649392@qq.com')
INSERT INTO [User] VALUES ('3', '123456', '教师3', '男', '传媒学院', '教师', '1253649392@qq.com')
INSERT INTO [User] VALUES ('4', '123456', '教师4', '男', '城市与土木工程学院', '教师', '1253649392@qq.com')
INSERT INTO [User] VALUES ('5', '123456', '教师5', '男', '化学与生命科学学院', '教师', '1253649392@qq.com')
INSERT INTO [User] VALUES ('6', '123456', '教师6', '男', '商学院', '教师', '1253649392@qq.com')
INSERT INTO [User] VALUES ('7', '123456', '教师7', '男', '外国语学院', '教师', '1253649392@qq.com')
INSERT INTO [User] VALUES ('8', '123456', '教师8', '男', '艺术学院', '教师', '1253649392@qq.com')
INSERT INTO [User] VALUES ('2017020800080', '123456', '匡胤鑫', '男', '信息科学与工程学院', '学生', '1253649392@qq.com')
INSERT INTO [Course] VALUES ('1', '计算机组成原理', '介绍计算机组成原理', '介绍计算机组成原理。', '2', GETDATE(), '4')
INSERT INTO [Course] VALUES ('2', '数据结构与算法', '介绍数据结构与算法', '介绍数据结构与算法。', '2', GETDATE(), '4')
INSERT INTO [Course] VALUES ('3', '操作系统', '介绍操作系统', '介绍操作系统。', '2', GETDATE(), '4')
INSERT INTO [Course] VALUES ('4', '计算机网络', '介绍计算机网络', '介绍计算机网络。', '2', GETDATE(), '4')
INSERT INTO [Course] VALUES ('5', '编译原理', '介绍编译原理', '介绍编译原理。', '2', GETDATE(), '4')
INSERT INTO [Course] VALUES ('6', '网络应用开发技术', '一门以ASP.NET为基础开发网络应用的技术', '一门以ASP.NET为基础开发网络应用的技术。', '2', GETDATE(), '4')
INSERT INTO [Course] VALUES ('7', '传播学概论', '介绍传播学概论', '介绍传播学概论。', '3', GETDATE(), '4')
INSERT INTO [Course] VALUES ('8', '土木工程概论', '介绍土木工程概论', '介绍土木工程概论。', '4', GETDATE(), '4')
INSERT INTO [Course] VALUES ('9', '分析化学', '介绍分析化学', '介绍分析化学。', '5', GETDATE(), '4')
INSERT INTO [Course] VALUES ('10', '运营管理', '介绍运营管理', '介绍运营管理。', '6', GETDATE(), '4')
INSERT INTO [Course] VALUES ('11', '基础西班牙语', '介绍基础西班牙语', '介绍基础西班牙语。', '7', GETDATE(), '4')
INSERT INTO [Course] VALUES ('12', '艺术导论', '介绍艺术导论', '介绍艺术导论。', '8', GETDATE(), '4')
INSERT INTO [Register] VALUES ('2017020800080', '1', NULL)
INSERT INTO [Register] VALUES ('2017020800080', '2', NULL)
INSERT INTO [Register] VALUES ('2017020800080', '3', NULL)
INSERT INTO [Register] VALUES ('2017020800080', '4', NULL)
INSERT INTO [Comment] VALUES ('2017020800080', '1', '这门课程真的很不错！', GETDATE())
