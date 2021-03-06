USE [master]
GO
/****** Object:  Database [BookStore]    Script Date: 11/14/2018 5:18:39 PM ******/
CREATE DATABASE [BookStore]

GO
USE [BookStore]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 11/14/2018 5:18:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Price] [int] NOT NULL,
	[Discount] [int] NOT NULL,
	[Bookpublishers] [nvarchar](50) NOT NULL,
	[PublishingHouse] [nvarchar](100) NOT NULL,
	[Author] [nvarchar](30) NOT NULL,
	[Translator] [nvarchar](30) NULL,
	[Size] [nvarchar](20) NOT NULL,
	[PageNumber] [int] NULL,
	[Weight] [float] NULL,
	[CoverType] [nvarchar](15) NULL,
	[PublicTime] [smalldatetime] NULL,
	[Description] [ntext] NULL,
	[Image] [nvarchar](100) NULL,
	[Amount] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/14/2018 5:18:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Index] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 11/14/2018 5:18:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[MemberID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](30) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](200) NOT NULL,
	[Phone] [nchar](15) NOT NULL,
	[Adress] [nvarchar](50) NULL,
	[RoleID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OderDetail]    Script Date: 11/14/2018 5:18:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OderDetail](
	[OrderDetail_ID] [int] NOT NULL,
	[BookID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[amount] [int] NOT NULL,
	[Price] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetail_ID] ASC,
	[BookID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/14/2018 5:18:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[FullName] [nvarchar](30) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [nchar](15) NOT NULL,
	[Adreeds] [nvarchar](50) NOT NULL,
	[City] [nvarchar](20) NOT NULL,
	[Districk] [nvarchar](30) NOT NULL,
	[Note] [text] NULL,
	[SumPrice] [int] NOT NULL,
	[Date] [datetime] NULL,
	[Status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 11/14/2018 5:18:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Index] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1001, N'LUYỆN TINH THẦN: HÃY LÀ CHÍNH MÌNH – AN NHIÊN MÀ SỐNG', 96000, 0, N'BizBooks', N'NXB Hồng Đức', N'Nguyễn Hiến Lê', NULL, N'14.5 x 20.5 cm ', 300, 300, N'Bìa mềm', CAST(N'2018-01-01T00:00:00' AS SmallDateTime), N'Bộ Sách Sống Sao Cho Đúng - Luyện Tinh Thần - Nguyễn Hiến Lê

Hạnh phúc và thành công không đo bằng những gì ta đạt được hoặc có trong tay, mà chính là ở những gì ta cảm nhận được trong cuộc sống

1. Biết sai mà vẫn làm

Nhiều người biết mình đang sống sai nhưng vẫn không chấp nhận sự thật này. Họ cứ tiếp tục đi theo con đường này mà không nghĩ đến hậu quả của một ngày không xa…

2. Sống đúng hay sai?

Cuộc sống có nghĩa là liên tục thay đổi, không ngừng phát triển và có thể khó khăn khi từ bỏ những điều cũ, tiến tới cái gì đó mới mẻ. Tuy nhiên không phải ai nhận ra mình đang sống ĐÚNG hay SAI. Trong khi thời gian vẫn cứ trôi đi, đến khi bạc tóc liệu có kịp nhận ra để đi đúng con đường?

3. Khiến bản thân trở nên tốt đẹp hơn?

Chúng ta thường mất thời gian suy nghĩ những thứ tiêu cực hoặc không có định hướng đúng đắn đôi khi bỏ lỡ những cơ hội tốt. Thế nên bạn cần biết cách hành động để hoàn thiện bản thân và thay đổi cuộc đời.

4. Để cuộc sống trở lên đơn giản?

Rất nhiều người cảm thấy mệt mỏi, nặng nề về cuộc sống mà không hiểu lý do vì sao. Những áp lực về tiền bạc, gia đình, công việc, con cái khiến cho họ cảm thấy “nghẹt thở” và tự hỏi, không hiểu có thể tìm thấy niềm vui thú ở đâu. Tuy nhiên, việc sống vui vẻ thực ra không khó như chúng ta vẫn tưởng.

5. Chưa biết cách sống đung?

Thực tế biết bao người từng nhận lấy thất bại bởi lối sống không đúng của mình. Họ muốn thay đổi lối sống đúng đắn hơn. Nhưng hiện tại vẫn loay hoay chưa biết cách SỐNG THẾ NÀO MỚI ĐÚNG?

6. Rút ngắn thành công?

Biết bao người cùng trang lứa thành công còn mình thì lẹt đẹt mãi chưa xong? Có cách làm nào để thành công hơn trong cuộc sống để áp dụng cho chính mình?', N'Image\luyen_tinh_than_bia_sau_600x865.jpg', 69, 1)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1002, N'GƯƠNG HY SINH – NHỮNG BÀI HỌC THÀNH CÔNG', 96000, 0, N'BizBooks', N'NXB Hồng Đức', N'Nguyễn Hiến Lê', NULL, N'14.5 x 20.5 cm ', 276, 276, N'Bìa mềm', CAST(N'2018-01-01T00:00:00' AS SmallDateTime), N'Bộ Sách Sống Sao Cho Đúng - Gương Hy Sinh - Nguyễn Hiến Lê

Hạnh phúc và thành công không đo bằng những gì ta đạt được hoặc có trong tay, mà chính là ở những gì ta cảm nhận được trong cuộc sống

1. Biết sai mà vẫn làm

Nhiều người biết mình đang sống sai nhưng vẫn không chấp nhận sự thật này. Họ cứ tiếp tục đi theo con đường này mà không nghĩ đến hậu quả của một ngày không xa…

2. Sống đúng hay sai?

Cuộc sống có nghĩa là liên tục thay đổi, không ngừng phát triển và có thể khó khăn khi từ bỏ những điều cũ, tiến tới cái gì đó mới mẻ. Tuy nhiên không phải ai nhận ra mình đang sống ĐÚNG hay SAI. Trong khi thời gian vẫn cứ trôi đi, đến khi bạc tóc liệu có kịp nhận ra để đi đúng con đường?

3. Khiến bản thân trở nên tốt đẹp hơn?

Chúng ta thường mất thời gian suy nghĩ những thứ tiêu cực hoặc không có định hướng đúng đắn đôi khi bỏ lỡ những cơ hội tốt. Thế nên bạn cần biết cách hành động để hoàn thiện bản thân và thay đổi cuộc đời.

4. Để cuộc sống trở lên đơn giản?

Rất nhiều người cảm thấy mệt mỏi, nặng nề về cuộc sống mà không hiểu lý do vì sao. Những áp lực về tiền bạc, gia đình, công việc, con cái khiến cho họ cảm thấy “nghẹt thở” và tự hỏi, không hiểu có thể tìm thấy niềm vui thú ở đâu. Tuy nhiên, việc sống vui vẻ thực ra không khó như chúng ta vẫn tưởng.', N'Image\guong_hi_sinh_bia_truoc_600x858.jpg', 60, 1)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1003, N'GƯƠNG DANH NHÂN – NHỮNG BÀI HỌC THÀNH CÔNG', 76800, 0, N'BizBooks', N'NXB Hồng Đức', N'Nguyễn Hiến Lê', NULL, N'14.5 x 20.5 cm ', 276, 276, N'Bìa mềm', CAST(N'2017-02-03T00:00:00' AS SmallDateTime), N'Bộ Sách Sống Sao Cho Đúng- Gương Danh Nhân - Nguyễn Hiến Lê

Hạnh phúc và thành công không đo bằng những gì ta đạt được hoặc có trong tay, mà chính là ở những gì ta cảm nhận được trong cuộc sống

1. Biết sai mà vẫn làm

Nhiều người biết mình đang sống sai nhưng vẫn không chấp nhận sự thật này. Họ cứ tiếp tục đi theo con đường này mà không nghĩ đến hậu quả của một ngày không xa…

2. Sống đúng hay sai?

Cuộc sống có nghĩa là liên tục thay đổi, không ngừng phát triển và có thể khó khăn khi từ bỏ những điều cũ, tiến tới cái gì đó mới mẻ. Tuy nhiên không phải ai nhận ra mình đang sống ĐÚNG hay SAI. Trong khi thời gian vẫn cứ trôi đi, đến khi bạc tóc liệu có kịp nhận ra để đi đúng con đường?

3. Khiến bản thân trở nên tốt đẹp hơn?

Chúng ta thường mất thời gian suy nghĩ những thứ tiêu cực hoặc không có định hướng đúng đắn đôi khi bỏ lỡ những cơ hội tốt. Thế nên bạn cần biết cách hành động để hoàn thiện bản thân và thay đổi cuộc đời.', N'Image\bia_truoc_guong_danh_nhan_1_600x853.jpg', 30, 1)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1004, N'BỐN MƯƠI GƯƠNG THÀNH CÔNG – NGUYỄN HIẾN LÊ', 100000, 0, N'BizBooks', N'NXB Hồng Đức', N'Nguyễn Hiến Lê', NULL, N'14.5 x 20.5 cm', 344, 344, N'Bìa mềm', CAST(N'2017-02-05T00:00:00' AS SmallDateTime), N'Bộ Sách Sống Sao Cho Đúng - Nguyễn Hiến Lê

Hạnh phúc và thành công không đo bằng những gì ta đạt được hoặc có trong tay, mà chính là ở những gì ta cảm nhận được trong cuộc sống

1. Biết sai mà vẫn làm

Nhiều người biết mình đang sống sai nhưng vẫn không chấp nhận sự thật này. Họ cứ tiếp tục đi theo con đường này mà không nghĩ đến hậu quả của một ngày không xa…

2. Sống đúng hay sai?

Cuộc sống có nghĩa là liên tục thay đổi, không ngừng phát triển và có thể khó khăn khi từ bỏ những điều cũ, tiến tới cái gì đó mới mẻ. Tuy nhiên không phải ai nhận ra mình đang sống ĐÚNG hay SAI. Trong khi thời gian vẫn cứ trôi đi, đến khi bạc tóc liệu có kịp nhận ra để đi đúng con đường?

3. Khiến bản thân trở nên tốt đẹp hơn?

Chúng ta thường mất thời gian suy nghĩ những thứ tiêu cực hoặc không có định hướng đúng đắn đôi khi bỏ lỡ những cơ hội tốt. Thế nên bạn cần biết cách hành động để hoàn thiện bản thân và thay đổi cuộc đời.', N'Image\luyen_tinh_than_bia_sau_600x865.jpg', 25, 1)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1005, N'CON ĐƯỜNG LẬP THÂN', 87200, 0, N'BizBooks', N'NXB Hồng Đức', N'Nguyễn Hiến Lê', NULL, N'13.5 x 20.5 cm ', 277, 277, N'	Bìa mềm', CAST(N'2018-03-04T00:00:00' AS SmallDateTime), N'Con Đường Lập Thân

Cuốn sách dạy bạn học cách luyện tinh thần và hành động để có thể thành công

Sống là bản năng của mỗi người, nhưng sống mà để thành công thì thật không dễ dàng với mỗi chúng ta. Để thành công bạn phải có cho mình một phương pháp sống đúng đắn, phương pháp rèn luyện, trau dồi bản thân hiệu quả, hợp lý.

Bạn đang sống và làm việc, bạn luôn mong muốn thành công nhưng bản thân bạn lại đang thiếu quá nhiều kỹ năng để thành công:

Bạn ghi nhớ kém dẫn tới hiệu suất công việc của bạn suy giảm, khoảng cách tới thành công với bạn cứ thế xa dần.
Trong rất nhiều trường hợp, bạn không thể kiểm soát được cảm xúc, tinh thần của bản thân. Thế nên rất nhiều lần bạn phải hối tiếc vì những việc đã xảy ra, mong muốn thời gian quay trở lại để có thể xử lý tốt hơn.
Bạn muốn thành công nhưng đôi khi lại không có đủ ý chí để làm việc, làm thế nào để bạn có thể giữ được “lửa” công việc như những ngày đầu? Làm thế nào để bạn có thể giữ được đam mê và tinh thần làm việc hăng say, sẵn sàng vượt qua mọi khó khăn.
Bạn đang phụ thuộc vào những người xung quanh quá nhiều, khả năng tự chủ công việc của bạn kém dẫn tới công việc trì trệ, ì ạch nhiều năm mà chẳng thoát khỏi vạch xuất điểm.', N'Image\luyen_tinh_than_bia_sau_600x865.jpg', 30, 1)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1006, N'ON COMMUNICATION - TRUYỀN THÔNG GIAO TIẾP', 159200, 0, N'AlphaBooks', N'NXB Công Thương', N'Harvard Business', NULL, N'114.5 x 20.5cm ', 450, 500, N'Bìa mềm ', CAST(N'2018-02-09T00:00:00' AS SmallDateTime), N'On Communication - Truyền Thông Giao Tiếp

Bằng góc nhìn mới mẻ và đầy sức thuyết phục từ các chuyên gia uy tín trên tạp chí Harvard Business Review Harvard Business Review On Commuunication là tuyển tập 10 bài viết nhất-định-phải-đọc trên tạp chí Harvard Business Review về chủ đề trình bày thuyết phục và giao tiếp thành công nơi công sở. Các tác giả - những chuyên gia nghiên cứu, các giáo sư kỳ cựu – sẽ cho bạn những lời khuyên hữu ích để có thể chiếm lấy trái tim khán giả, xoay chuyển những việc chưa ngã ngũ và “biến địch thành bạn”. 

Ấn phẩm nhằm mục đích:

- Nguyên lý để được yêu mến, nhân nhượng,....

- 4 Yếu tố thuyết phục cốt yếu.

- 5 Kiểu ra quyết định mà các lãnh đạo thường thể hiện 

Trân trọng giới thiệu với các doanh nhân Việt Nam! ', N'Image\Truyen_thong_giao_tiep_304x472.jpg', 20, 1)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1007, N'CÁCH MẠNG CÔNG NGHIỆP LẦN THỨ TƯ', 103200, 0, N'Thái Hà Books', N'NXB Chính Trị Quốc Gia Sự Thật ', N'	Klaus Schwab', NULL, N'14.5 x 20.5 cm', 278, 300, N'Bìa mềm ', CAST(N'2017-09-02T00:00:00' AS SmallDateTime), N'Cách Mạng Công Nghiệp Lần Thứ Tư

Chúng ta đang ở điểm khởi đầu của một cuộc cách mạng sẽ thay đổi sâu sắc cách chúng ta sống, làm việc và liên hệ với nhau – Cách mạng công nghiệp lần thứ tư. Xét về quy mô, tầm vóc và độ phức tạp, hiện tượng được coi là cuộc cách mạng công nghiệp lần thứ tư này không giống bất kỳ điều gì mà nhân loại từng trải qua.

Đến nay chúng ta vẫn chưa hình dung được đầy đủ tốc độ và phạm vi của cuộc cách mạng mới này. Hãy nghĩ đến vô số khả năng cho phép hàng tỷ con người kết nối với nhau bằng thiết bị di động, tạo nên sức mạnh xử lý, năng lực lưu trữ và cơ hội tiếp cận tri thức chưa từng có. Hoặc đến sự hợp lưu đáng kinh ngạc của những đột phá gần đây về công nghệ, bao trùm nhiều lĩnh vực rộng lớn như trí tuệ nhân tạo (AI), công nghệ robot, internet kết nối vạn vật, xe tự hành, in 3D, công nghệ nano, công nghệ sinh học, khoa học vật liệu, lưu trữ năng lượng và tính toán lượng tử, và còn nhiều nữa… Nhiều sáng kiến vẫn còn sơ khai, nhưng chúng đã đến bước ngoặt trong quá trình phát triển nhờ dựa vào nhau và khuếch đại lẫn nhau trong một sự giao thoa công nghệ trên cả thế giới vật chất, thế giới số, lẫn thế giới sinh học.

Nó không chỉ làm thay đổi điều chúng ta đang làm, cách làm của chúng ta, mà còn cả việc chúng ta là ai.', N'Image\Cach_mang_cong_nghiep_lan_thu_tu1_380x558.jpg', 19, 1)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1008, N'THẾ GIỚI PHẲNG', 212160, 0, N'NXB Trẻ', N'NXB Trẻ', N'Thomas L. Friedman', NULL, N'	15.5 x 23 cm ', 720, 700, N'Bìa mềm', CAST(N'2014-04-08T00:00:00' AS SmallDateTime), N'Thế Giới Phẳng

Trong xu thế toàn cầu hóa, việc tiếp cận và tham khảo những tri thức đương đại từ những nước đã phát triển về sự chuyển động của thế giới (đang ở bước ngoặt từ “tròn” sang “phẳng”, như cách nói của tác giả) có lẽ sẽ giúp chúng ta có thêm những thông tin bổ ích để có sự chủ động trong quá trình hội nhập. Tác phẩm được xếp vào danh mục sách bán chạy nhất ở Mỹ (kể từ lần xuất bản đầu tiên tháng 4/ 2005 cho đến nay). Đây là bản dịch từ bản sách gốc mới nhất được sửa chữa, cập nhật và bổ sung hai chương mới nhất bởi chính tác giả.

Trân trọng giới thiệu!', N'Image\The_gioi_phang_550x550.jpg', 20, 1)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1009, N'THE MEMBERSHIP ECONOMY: KINH TẾ THÀNH VIÊN', 179250, 0, N'AlphaBooks', N'NXB Khoa Học Hà Nội', N'Robbie Kellman BaxTer', NULL, N'14 x 20.5 cm ', 278, 300, N'Bìa mềm', CAST(N'2018-09-10T00:00:00' AS SmallDateTime), N'The Membership Economy: Kinh Tế Thành Viên

Trong thế giới kinh doanh ngày nay, chỉ với một trang web thì không thể duy trì sự cạnh tranh. Các công ty thông minh và thành công nhất đang sử dụng các mô hình thành viên mới, các định dạng dựa trên đăng ký, và các cơ chế định giá freemium để phát triển cơ sở khách hàng của họ - và phá vỡ định giá thị trường - trong sự thay đổi lớn nhất của kinh doanh kể từ Cách mạng công nghiệp.

KINH TẾ THÀNH VIÊN SẼ CHỈ CHO BẠN:

• Chuyển đăng ký kỹ thuật số thành kênh bán hàng lâu dài;

• Xây dựng một cộng đồng trực tuyến mà khách hàng của bạn sẽ yêu thích;

• Phát triển các chương trình khách hàng trung thành thiết thực mới;

• Chuyển người dùng freemium thành siêu người dùng;', N'Image\Truyen_thong_giao_tiep_304x472.jpg', 10, 1)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1010, N'TƯƠNG LAI TRONG TAY TA', 108800, 0, N'BizBooks', N'NXB Hồng Đức', N'Nguyễn Hiến Lê', NULL, N'14.5 x 20.5 cm ', 428, 400, N'Bìa mềm', CAST(N'2018-02-01T00:00:00' AS SmallDateTime), N'Tương Lai Trong Tay Ta - Nguyễn Hiến Lê

Cuốn sách đáng giá về tương lai mà tôi muốn nhắc tới lần này là “Tương lai trong tay ta”, một cuốn sách hướng đến những mong muốn trong hiện tại và tương lai của hầu hết mọi người.

Với cấu trúc gồm 11 chương như sau:

Chương I VẤN ĐỀ NGUYÊN TẮC

Chương II SỨC KHỎE TRƯỚC HẾT

Chương III LÀM VIỆC   

Chương IV AI CŨNG CÓ THỂ BẤT HỦ  

Chương V NGHỈ NGƠI VÀ TIÊU TIỀN  

Chương VI TU TÂM LUYỆN TRÍ  

Chương VII HÔN NHÂN   

Chương VIII LỰA BẠN TRĂM NĂM

Chương IX ĐỂ GIỮ HẠNH PHÚC TRONG HÔN NHÂN

Chương X LỜI KHUYÊN RIÊNG CÁC BẠN GÁI

Chương XI DỰ BỊ CHO TUỔI GIÀ  

TRẮC NGHIỆM VỀ TINH THẦN GIÀ DẶN

Tác giả muốn gửi đến tất cả những ai đang còn băn khoăn về định hướng của mình, chưa biết mình sẽ làm gì ở tương lai.

Trân trọng giới thiệu! ', N'Image\bia_tuong_lai_trong_tay_ta_bia_truoc_600x954.jpg', 20, 2)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1011, N'SỐNG ĐẸP – NGHỆ THUẬT SỐNG TRỌN VẸN', 122400, 0, N'BizBooks', N'NXB Hồng Đức', N'Nguyễn Hiến Lê', NULL, N'14.5 x 20.5 cm ', 428, 400, N'Bìa mềm', CAST(N'2018-03-06T00:00:00' AS SmallDateTime), N'Sống Đẹp - Nghệ thuật sống trọn vẹn

Nhiều cuốn sách viết về lối sống thường chú trọng đến sự thành công, đưa ra những quy tắc thực tế về cách luyện trí, luyện tinh thần, xử thế và làm việc, cho nên tuy hữu ích thật nhưng không nhiều cuốn để lại dư âm trong hồn người đọc.

Với nội dung cuốn sách được trình bày trong 15 chương:

Chương 1: Nhận thức

Chương II: Quan niệm về nhân loại

Chương III: Di sản động vật tính trong ta

Chương IV: Cận nhân tình

Chương V: Ai có thể ảnh hưởng đời được hơn cả?

Chương VI: Lạc thú ở đời

Chương VII: Cần biết nhàn tản

Chương VIII: Lạc thú trong gia đình

Chương IX: Hưởng thụ ở đời

Chương X: Hưởng thụ thiên nhiên

Chương XI: Thú du lãm

Chương XII: Hưởng thụ văn hoá

Chương XIII: Những quan hệ với thượng đế

Chương XIV: Nghệ thuật tư tưởng

Cuốn sách là chia sẻ kinh nghiệm bản thân của tác giả đến đời sống.  Nội dung “Sống đẹp” không nhằm xác định một chân lý hay bất kỳ một giá trị kinh điển nào, nó chỉ là cảm nhận khách quan của chính tác giả.

Trân trọng giới thiệu!', N'Image\BIA_SONG_DEP_bia_truoc_600x954.jpg', 25, 2)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1012, N'SINH TRẮC VÂN TAY', 168000, 0, N'BizBooks', N'NXB Hồng Đức', N'	Richard Unger', NULL, N'15 x 21 cm', 280, 300, N'	Bìa mềm', CAST(N'2018-02-08T00:00:00' AS SmallDateTime), N'Cuốn sách “Sinh trắc vân tay” của Richard Unger có gì đặc biệt?

Phương pháp sinh trắc vân tay được trình bày cụ thể qua từng chương

Cuốn sách được trình bày cụ thể qua các chương, sau khi đọc cuốn sách này, người đọc có thể áp dụng từng bước như trong sách để xác định mục đích sống và bài học cuộc sống của mỗi người.

Chương 1: Lịch sử phát triển về khoa học sinh trắc vân tay
Chương 2: Giới thiệu cách đọc các dấu vân tay, các chủng vân tay: Nước, Đại bàng, Cá chép, Núi có ý nghĩa như thế nào?
Chương 3: Xác định ngôi trường cuộc đời của bạn dựa vào các chủng vân tay: Trường phục vụ, trường tình yêu, trường bình yên, trường thông thái
Chương 4: Xác định các mục đích cuộc sống dựa vào chủng mạnh
Chương 5: Xác định các bài học cuộc sống dựa vào những chủng thấp nhất
Phụ lục: So sánh bộ vân tay với các nghiên cứu vân tay có thật
Thông qua cuốn sách bạn sẽ:

Cuốn sách được trình bày để người đọc có thể hiểu được nguồn gốc lịch sử phát triển của sinh trắc vân tay, tạo một niềm tin lớn lao rằng, đây là một bộ môn khoa học chứ không phải là bói toán thông thường.
Các bước để xác định được các chủng vân tay của mình. Bạn sẽ có thể tự thu thập các dấu vân tay của mình, tìm hiểu xem chủng vân tay đó có ý nghĩa như thế nào.
Tự mình tìm ra được những điểm mạnh, là mục đích cuộc đời của bạn và điểm yếu, là bài học cuộc sống của bạn để bạn có thể phát triển theo đúng tiềm năng của bản thân mình.
Được quan sát các chủng vân tay cụ thể và so sánh với vân tay của mình để tìm ra điểm khác biệt.
Bạn chỉ cần làm theo các bước trong cuốn sách và bạn có thể tìm ra tiềm năng phát triển cho bản thân cũng như cho con các bạn. Nếu thấy cuốn sách bổ ích hãy chia sẻ ngay tới bạn bè của bạn nhé. Đừng quên nhanh tay đặt mua để trở thành một trong số những người ĐẦU TIÊN sở hữu cuốn sách này tại Việt Nam.', N'Image\sinh_trac_van_tay_bia_truoc_449x677.jpg', 20, 2)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1013, N'THOÁT KHỎI BẪY CẢM XÚC', 126750, 0, N'AlphaBooks', N'NXB Khoa Học Hà Nội', N'	Daniel Rutley', NULL, N'14 x 20.5 cm ', 265, 265, N'Bìa mềm ', CAST(N'2018-09-07T00:00:00' AS SmallDateTime), N'Thoát Khỏi Bẫy Cảm Xúc - “CUỐN SÁCH NÀY LÀ VỀ BẠN!”

Cuốn sách này tất tần tật là về bạn. Nó viết về các cảm nhận của bạn, thái độ của bạn và về việc bạn giữ một cái nhìn tích cực trong cuộc sống.

Bạn có muốn cuộc sống của mình cân bằng hơn với một tinh thần tự tin hơn, hạnh phúc hơn và thú vị hơn? Bạn có muốn có nhiều nghị lực và sự nhiệt tình hơn mà vẫn giữ được sự bình an bên trong? Nếu bạn muốn mạnh mẽ hơn và chủ động hơn để có thể làm được tốt hơn ở bất kỳ khía cạnh nào mà bạn chọn trong cuộc sống của mình, không vướng phải các cảm xúc tiêu cực… cuốn sách này là dành cho bạn. Nếu bạn thật sự muốn thay đổi, bạn hoàn toàn có thể!

Bằng cách phát triển khả năng kiểm soát cảm xúc tốt hơn và thoát khỏi những cảm xúc không lành mạnh trói buộc bạn, bạn có thể học cách tạo ra sự thay đổi mạnh mẽ đến nỗi nó có thể thay đổi cuộc đời bạn trở nên tốt đẹp hơn theo nghĩa đen. Bằng cách trở nên lành mạnh hơn về cảm xúc bạn sẽ hạnh phúc hơn, hài lòng hơn, và có thể vun đắp những mối quan hệ lành mạnh lâu dài được tốt hơn.

Cảm xúc khống chế tất cả! Bất kể bạn đang làm gì, nếu bạn rơi vào một cơn hoảng loạn, tức giận không kiềm chế được hay chìm vào hố sâu trầm cảm – thì các cảm xúc của bạn sẽ thắng – các cảm xúc của bạn sẽ thống trị.

Nếu bạn tự hỏi điều gì là quan trọng hơn, điều bạn biết hay điều bạn cảm thấy – bạn hiểu rằng điều bạn biết sẽ không còn quan trọng nữa nếu bạn cảm thấy tệ. Cũng như với sức khỏe thể chất, nếu bạn không có một cảm xúc tích cực mạnh mẽ và ổn định, thì chất lượng cuộc sống của bạn sẽ giảm đáng kể.', N'Image\thoat_khoi_bay_cam_xuc_304x472.jpg', 25, 2)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1014, N'GỌI LÀ ỔN ĐỊNH THẬT RA LÀ HOÀI PHÍ CUỘC SỐNG', 69300, 0, N'GuBooks - AZ Việt Nam', N'NXB Phụ Nữ', N'Lý Thượng Long', NULL, N'13 x 20.5 cm ', 326, 350, N'Bìa mềm ', CAST(N'2018-09-08T00:00:00' AS SmallDateTime), N'Gọi Là Ổn Định, Thật Ra Là Hoài Phí Cuộc Sống

Có lẽ cả cuộc đời đằng đẵng của mỗi người cũng chỉ để hướng đến một điều duy nhất ngắn ngủi: Ổn. 

Ổn có phải là có một công việc yên ấm, là yêu được người yêu trẻ đẹp, hay có trong tay danh tiếng cuộc đời? Bạn nghĩ đó là ổn, thật ra nó chưa ổn. Bởi ổn là có thể cố gắng, nỗ lực trong hoàn cảnh khó khăn, ổn chính là nắm trong tay nhiệt huyết, ý chí bản thân, để không bao giờ phải nói câu: hối tiếc.

Cuốn sách truyền cảm hứng, nhưng chẳng cần dùng đến những câu từ khích lệ cao siêu, mà chỉ đơn giản là những câu chuyện nhỏ, của chính tác giả đã từng chứng kiến hoặc trải qua. Chính vì nhỏ mới có thể đi sâu vào lòng người, chạm đến những vùng miền thẳm sâu nhất trong tâm hồn. Chính bởi tác giả tự trải qua, mới cho thấy sức mạnh đích thực nằm sau những câu chuyện đó.

Rằng, đôi khi tình bạn đích thực chỉ là việc chân thành giúp đỡ và ở bên nhau lúc hoạn nạn khó khăn. Đôi khi những cử chỉ thấu hiểu quan tâm, những nụ cười hòa ái vô tư, cũng đủ để chữa lành trái tim đầy thương tổn, đủ để thắp lên niềm hy vọng và hạnh phúc đôi bên…

Tất cả những điều đó, có được, do chính bản thân bạn mà thôi. Nếu bạn còn chần chừ, thì nghe này, chẳng điều gì là quá muộn để bắt đầu, chẳng điều gì là quá xa để nhận ra. Nên là, hãy tiến bước và bắt đầu trải nghiệm.

Muốn trưởng thành, bạn cần biết đi qua những gian khó cuộc đời,

Muốn thành công, bạn cần biết vượt lên chính mình, để có được những gì xứng đáng.', N'Image\goi_la_on_dinh_b_a_thumb_395x600.jpg', 20, 2)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1015, N'TƯ DUY SONG SONG', 103200, 0, N'1980Books', N'NXB ĐH Kinh Tế Quốc Dân', N'Edward de Bono', NULL, N'13 cm x 20.5 cm ', 388, 388, N'Bìa mềm', CAST(N'2018-08-28T00:00:00' AS SmallDateTime), N'COMO.VN - Tư Duy Song Song 

Tư duy phương Tây đã lỗi thời. Suốt hàng ngàn năm nay, chúng ta đã răm rắp nghe lời các nhà triết học Hy Lạp như Socrates, Plato, Aristotle và thực hành các phương pháp tư duy cổ đại trong mọi vấn đề. Kiểu tư duy này không được thiết kế để ứng phó với một thế giới biến động. Nó cũng không đưa đến nguồn lực sáng tạo, không xây dựng điều gì mới mẻ. Nó thất bại vì đưa ra các phán xét và phân biệt nguy hiểm. Và nó quá tự mãn để tự nhìn ra sự thất bại đó.

Edward de Bono - "cây đại thụ" trong lĩnh vực tư duy đã lên tiếng. Ông viết "Tư duy song song" để thách thức hệ thống tư duy cổ điển đã tồn tại suốt 2.500 năm qua. Đã đến lúc thoát ra khỏi những khung tư duy lạc hậu và tìm ra một giải pháp khác linh động hơn! Tác phẩm trên tay bạn vén mán những phương pháp brainstorm độc nhất và tìm đến bản chất đích thực của sự sáng tạo. Đây là cuốn sách thực hành tư duy cần thiết để bạn không chỉ biết nghĩ, mà còn biết hành động - để tồn tại trong một thế giới hối hả, không ngừng tiến về phía trước.

Về tác giả: Edward de Bono là một trong những người đi đầu trong việc rèn luyện não bộ. Ông chính là người đã sáng tạo ra phương pháp tư duy đa chiều nổi tiếng vào năm 1967. Khi "tư duy về tư duy", Bono đã nâng cấp các hiểu biết của chúng ta về cách não bộ hoạt động lên một tầm cao mới. Ông đi khắp thế giới để giảng dạy về kỹ năng tư duy, trợ giúp đắc lực cho những chính phủ và tập đoàn lớn như Microsoft, IBM, Prudential, British Airways...

Thế giới sách Online Como.vn trân trọng giới thiệu!', N'Image\tu_duy_song_song_706x1103.png', 25, 2)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1016, N'XÂY DỰNG MỐI QUAN HỆ BỀN VỮNG TRONG KINH DOANH', 103200, 0, N'1980Books', N'NXB ĐH Kinh Tế Quốc Dân', N'Scott Gerber, Ryan Paugh', NULL, N'	13 cm x 20.5 cm ', 336, 336, N'	Bìa mềm', CAST(N'2018-08-25T00:00:00' AS SmallDateTime), N'COMO.VN - Xây Dựng Mối Quan Hệ Bền Vững Trong Kinh Doanh 

Điều quyết định sự giàu có và thành công của một người, thực chất không hề dựa trên tiền bạc, danh tiếng hay địa vị. Ta chỉ giàu có khi sở hữu thật nhiều mối quan hệ chất lượng và sâu sắc. Hay nói cách khác, yếu tố con người là tài sản quý giá nhất mà chúng ta có được.

"Xây dựng mối quan hệ bền vững trong kinh doanh" là tác phẩm giúp bạn trở thành một chuyên gia kết nối, tạo dựng mạng lưới quan hệ giá trị - từ đó sở hữu những cơ hội vượt ngoài sức tưởng tượng. Bản chất mỗi chúng ta đều có nhu cầu kết nối với nhau để đạt được mục đích chung; nên chỉ cần làm đúng cách, bạn sẽ tìm kiếm được những mối quan hệ tuyệt vời - dù mỗi người lại hoạt động trong các lĩnh vực khác nhau.

Tác phẩm này dành cho những ai mong muốn phát triển năng lực kiến tạo mối quan hệ, cả trong công việc kinh doanh lẫn trong cuộc sống cá nhân. Rất nhiều nhà khởi nghiệp, các vị CEO và các chuyên gia đã kết nối để tạo ra giá trị to lớn. Bạn cũng có thể làm được như vậy. Hãy trở thành một chuyên gia kết nối - một người môi giới thông tin sở hữu quyền lực mềm được người người tôn trọng. Trong một thế giới 4.0 quá ồn ào và người ta dường như đang sa đà vào các mối quan hệ hời hợt trên mạng xã hội, bạn có thể tìm lại ý nghĩa đích thực của sự kết nối và trở nên khác biệt.

Thế giới sách Online Como.vn trân trọng giới thiệu!', N'Image\xay_dung_moi_quan_he_ben_vung_trong_kinh_doanh_712x1091 (1).png', 30, 2)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1017, N'TAI TO NGHE CHÍN HƯỚNG, BIẾT CHUYỆN CỦA MƯỜI PHƯƠNG', 47200, 0, N'GuBooks', N'NXB Phụ Nữ', N'Oopsy', NULL, N'13.5 cm x 20 cm', 176, 176, N'Bìa mềm', CAST(N'2018-09-03T00:00:00' AS SmallDateTime), N'COMO.VN - Tai To Nghe Chín Hướng, Biết Chuyện Của Mười Phương 

Sâu trong đôi tai có một đôi mắt, đôi mắt nhìn thấy những thứ vô hình tuyệt diệu!

Xung quanh đôi tai có một thính phòng, thính phòng chứa đựng những điều khó mà thấy biết!

Có người biết được bí mật của lắng nghe, đã luyện đến mức trái tim và khối óc hiểu được mọi lời nói.

Nhưng có người biết được bí mật của ĐÔI TAI, đã luyện đến mức tai trái và tai phải nghe được bí mật của vạn vật.

Bí mật ấy có ngay trong cuốn sách này. Điều bạn cần làm là đọc và luyện tập.

Rồi bạn sẽ phát hiện ra một điều hệ trọng hơn: Bạn lần đầu tiên có thể lắng nghe được bí mật sâu thẳm trong thân thể, trái tim và khối óc của mình.

Dĩ nhiên, muốn thế, bạn phải có:

TAI TO NGHE CHÍN HƯỚNG

BIẾT CHUYỆN CỦA MƯỜI PHƯƠNG

Trong mọi vật đều có thanh âm của yêu thương giao hòa!

Cũng vậy có thanh âm của đổ vỡ xung đột!

Trong một ngày ngột ngạt ở ngã tư đường nóng bức, tiếng còi xe dệt thành bản hòa âm.

Trên một sa mạc vô tận vẫn có tiếng suối chảy và mỗi hạt cát lại véo von tiếng chim hót thánh khiết!

Và trong bạn có tất cả những thanh âm đó: Có yêu thương, đổ vỡ, có tiếng hỗn loạn và những tiếng thuần khiết.

Bạn có muốn đôi tai của bạn nghe được tất cả không? Biết được thanh âm của vạn vật?', N'Image\tai_nghe_chin_huong_biet_chuen_muoi_phuong_632x960.jpg', 40, 2)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1018, N'MẮT SÁNG NHƯ SAO SẮC BÉN NHƯ DAO', 47200, 0, N'GuBooks', N'NXB Phụ Nữ', N'Oopsy', NULL, N'13.5 cm x 20 cm ', 184, 184, N'Bìa mềm', CAST(N'2018-09-03T00:00:00' AS SmallDateTime), N'COMO.VN - Mắt Sáng Như Sao Sắc Bén Như Dao

Ấu thơ, mắt người ta thật trong sáng, trước sự đời đều ngạc nhiên. Có người muốn giữ mãi cái ngạc nhiên đó, thành ra cứ ấp ủ một hoài niệm ấu thơ, sống đời dang dở.

Trưởng thành, mắt người ta phải sắc bén, trước mọi việc phải thấu suốt. Kẻ nào không có nổi cái nhìn thấu suốt ấy, đều phải đau tiếc cho chính đời mình, không có tương lai.

Đôi mắt là một thứ não bộ!

Ánh mắt là một loại tư duy!

Kẻ nào chưa biết cách rèn luyện đôi mắt, thì não bộ kém phát triển.

Kẻ nào chưa một lần mài sắc ánh mắt, thì tư duy cũng cùn mòn.

Đừng ném đôi mắt vào những thứ giải trí trên mạng, càng thế mắt càng vô dụng. Hãy luyện đôi mắt ấy thành vũ khí trước cuộc đời tăm tối. Dù là ai, ta đều phải có:

MẮT SÁNG NHƯ SAO

SẮC BÉN NHƯ DAO!

Đã bao giờ, ta có một ánh mắt ấm áp, dõi theo người ta yêu thương, người ta quan tâm?

Đã bao giờ, ta có một ánh mắt xuyên tâm, thấy được những góc khuất lạ lùng trong trái tim người khác?

Này, nếu phải nhìn kẻ thù, ta dùng cái nhìn nào bây giờ?

Và nữa, ta nhìn đám đông cuộc đời này bằng ánh mắt nào đây?

Cuốn sách này còn mang đến cả ánh mắt cương trực cho những ai yếu đuối nhất!

Và cả ánh mắt trầm lắng nhất của một người trí tuệ!', N'Image\mat_sang_nhu_sao_sac_ben_nhu_giao_607x960.jpg', 45, 2)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1019, N'NẰM NGỦ ĐÚNG LÚC MỘT ĐỜI SUNG TÚC', 63200, 0, N'GuBooks', N'	NXB Phụ Nữ', N'	Oopsy', NULL, N'13.5 cm x 20 cm ', 248, 248, N'Bìa mềm', CAST(N'2018-09-03T00:00:00' AS SmallDateTime), N'COMO.VN - Nằm Ngủ Đúng Lúc Một Đời Sung Túc

Ngủ nào có phải chỉ là nghỉ đâu!

Ngủ là đầu tư! Thời gian ngủ là chi phí!

Vì Ngủ là tiêu tốn thời gian, và mọi sự tiêu tốn thời gian đều là chi phí không hoàn lại!

Người khôn biến chi phí thành lợi nhuận.

Người dại thì chỉ tiêu pha cuộc đời cho đến khi trắng tay!

Một ngày bạn ngủ 6-8 tiếng, đó là bắt buộc. Ngủ ít hơn thì đau mệt. Ngủ nhiều hơn thì uể oải. Đau mệt, uể oải, đó là chi phí để NGỦ.

Đa số mọi người đều trả phí 1/3 cuộc đời cho giấc Ngủ.

Đó là vì họ chỉ tiêu tốn đời họ mà không biết chỗ rất lời từ đó.

Có một cách để bạn biến 6-8 tiếng ngủ ấy thành cái lẫy đẩy bật cho thành công! Không khó đâu, chỉ cần:

NẰM NGỦ ĐÚNG LÚC

MỘT ĐỜI SUNG TÚC!

Đã đến lúc, biến chi phí thành lợi nhuận!

Đã đến lúc, dừng tiêu pha đời mình!

Có người ngủ là đi nghỉ. Thậm chí sắp ngủ thì không dám làm gì khác, chỉ chuẩn bị để nghỉ. Họ nghỉ ngơi, sống đời dang dở.

Có người tham công tiếc việc, ngủ bớt đi, trăm phương ngàn kế để giảm giờ ngủ. Càng giảm càng đau mệt chán nản. Cứ chằn chặn giảm giờ ngủ, rốt cuộc biến NGỦ thành trọng tâm cuộc đời. Họ còn chưa biết thế nào là TỈNH.

Chính vì thế chúng tôi viết cuốn sách này. Cuốn sách đề xuất một phương án chia giờ Ngủ sao cho thời gian làm việc tăng lên, mà giờ ngủ phải đủ, đúng, thậm chí nhiều hơn trước.

Nói được là làm được!

Đọc hết cuốn sách này đi!

Và giành lại sự THỨC TỈNH xứng đáng cho mình!

Thế giới sách Online Como.vn trân trọng giới thiệu!', N'Image\nam_ngu_dung_luc_mot_doi_sung_tuc_thumb_391x600.jpg', 50, 2)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1020, N'TONY BUỔI SÁNG - TRÊN ĐƯỜNG BĂNG', 60000, 0, N'NXB Trẻ', N'NXB Trẻ', N'Tony Buổi Sáng', NULL, N'13 x 20 cm ', 308, 250, N'Bìa mềm ', CAST(N'2015-08-09T00:00:00' AS SmallDateTime), N'Tony buổi sáng - Trên Đường Băng 

Trên đường băng là tập hợp những bài viết được ưa thích trên Facebook của Tony Buổi Sáng. Nhưng khác với một tập tản văn thông thường, nội dung các bài được chọn lọc có chủ đích, nhằm chuẩn bị về tinh thần, kiến thức…cho các bạn trẻ vào đời. Sách gồm 3 phần: “Chuẩn bị hành trang”, “Trong phòng chờ sân bay” và “Lên máy bay”, tương ứng với những quá trình một bạn trẻ phải trải qua trước khi “cất cánh” trên đường băng cuộc đời, bay vào bầu trời cao rộng.

Những bài viết của Tony sinh động, thiết thực, hài hước và xuất phát từ cái tâm trong sáng của một người đi trước nhiều kinh nghiệm. Anh viết về thái độ với sự học và kiến thức nói chung, cách ứng phó với những trắc trở thử thách khi đi làm, cách sống hào sảng nghĩa tình văn minh…truyền cảm hứng cho các bạn trẻ sống hết mình, trọn vẹn từng phút giây. Tuy đối tượng độc giả chính mà cuốn sách hướng đến là các bạn trẻ, nhưng độc giả lớn tuổi hơn vẫn có thể đọc sách để hiểu và có cách hỗ trợ con em mình một cách đúng đắn, chứ không “ủ” con quá kỹ để rồi tạo ra một thế hệ yếu ớt, không biết tự lập. Những người đi làm nhiều năm đọc sách cũng có thể nhìn lại con đường đi của mình, tự ngẫm đó đã phải là con đường mình muốn đi chưa, bởi thay đổi không bao giờ là quá muộn.

Trân trọng giới thiệu!', N'Image\hinh_6_u4939_d20171009_t095448_393699_550x550.jpg', 34, 2)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1021, N'RẤT NHIỀU ĐIỀU MÌNH CHƯA NÓI VỚI NHAU', 61600, 0, N'Người Việt Trẻ- AZ Trẻ', N'NXB Văn Học ', N'	Linh, Minh Mẫn', NULL, N'13 x 20.5 cm ', 280, 300, N'	Bìa mềm ', CAST(N'2018-09-08T00:00:00' AS SmallDateTime), N'Rất Nhiều Điều Mình Chưa Nói Với Nhau 

Một sớm thức giấc, ngỡ ngàng nhận ra hạnh phúc mong manh như cánh hoa trong gió, liệu có khi nào bạn thấy mình đã che giấu quá nhiều khi yêu?

Chúng ta đôi lúc đắm chìm trong dư vị ngọt ngào của bình yên, mà cũng quên mất rằng, không phải bình yên nào cũng là mãi mãi. Và chỉ cần đâu đó giữa dài rộng cuộc tình, mình bỏ qua im lặng, không bày tỏ chia sẻ cùng nhau, thì mất mát là điều rất dễ đoán được. Và biết đâu, đến khi buông tay nhau rồi, thoảng thốt nhận ra rằng còn bao nhiêu điều mình chưa kịp nói với nhau. Dù là câu thương câu yêu, hay một lời tạm biệt tử tế. Mà đâu chỉ có tình yêu, cuộc sống tất bật với trăm ngàn mối quan hệ ngoài kia vẫn luôn cần những sẻ chia như thế, để biết người cần ta, ta cần người, biết rằng mình được tôn trọng như thế nào.

Sự kết hợp lần đầu giữa giọng văn rất đời của Minh Mẫn và lời thơ rất tình của Linh trong “Rất nhiều điều mình chưa nói với nhau” không phải những đớn đau giằng xé, không phải những mất mát tổn thương to tát. Đó là những mảnh ghép đang đợi bạn xếp lại thành một bức tranh hoàn chỉnh để cảm nhận về tình yêu. Đó còn là những câu chuyện phía sau tình yêu, câu chuyện hôn nhân, câu chuyện ứng xử…

Hy vọng với sự kết hợp mới mẻ này, “Rất nhiều điều mình chưa nói với nhau” sẽ mang đến cho bạn những câu chuyện thú vị. Và biết đâu, gấp sách lại rồi, chúng ta trân quý hơn thời gian mình đang có, để sẻ chia, để cảm nhận, và yêu thương.

Trân trọng giới thiệu! ', N'Image\rat_nhieu_dieu_minh_chua_noi_voi_nhau_450x652_w_b_420x619.jpg', 29, 3)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1022, N'TÂM BUÔNG BỎ, ĐỜI BÌNH AN', 54600, 0, N'ViBooks- AZViệt Nam', N'	NXB Thế Giới', N'Natori Hougen', NULL, N'	13 x 20 cm ', 288, 300, N'Bìa mềm', CAST(N'2018-09-23T00:00:00' AS SmallDateTime), N'Tâm Buông Bỏ, Đời Bình An 

Bí quyết sống hạnh phúc của người Nhật

Trong cuộc sống hiện tại, nhiều người thường chia sẻ: “Khi tôi đạt được một điều gì đó quan trọng, khi ước mơ của bản thân trở thành hiện thực, ngay sau khoảnh khắc hạnh phúc ngắn ngủi, tôi đều cảm thấy trống rỗng, mông lung với cuộc đời”.

Tại sao lại nghịch lí như vậy? Đa số mọi người rơi vào trạng thái ấy vì họ chưa cảm thấy đủ, họ vẫn quen phóng đại hạnh phúc của người khác, làm quá nỗi khổ đau của bản thân, và không ngừng mang chính mình ra so sánh với những người xung quanh.

Tất cả đều xuất phát từ sự ôm đồm cá nhân, hay nói cách khác là thái độ không bằng lòng với bản thân, cái gì cũng muốn được, muốn hơn mà không chịu “buông”. Đức Phật định nghĩa rằng đó là cái “tham” tiềm ẩn trong mỗi con người. Để có thể thoát khỏi bế tắc, không còn cách nào khác ngoài việc biết thế nào là đủ và học cách “buông bỏ”.

Buông bỏ phiền não, trước là để giải tỏa ưu tư, giúp bản thân hạnh phúc, sau là để cho mình có cơ hội trưởng thành. Hạnh phúc vốn được xây dựng trên nền tảng bình an và tự tại.

Hãy đọc “Tâm buông bỏ, đời bình an” để có thể trở thành một người “tâm bất biến giữa đời vạn biến”.

Trân trọng giới thiệu! ', N'Image\517201831712_tam_buong_bo_643x960_400x597.jpg', 30, 3)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1023, N'TA BA LÔ TRÊN ĐẤT Á (TÁI BẢN 2018)', 86400, 0, N'Nhã Nam', N'	NXB Hội Nhà Văn ', N'	Roisie Nguyễn', NULL, N'14 cm x 20.5 cm ', 412, 412, N'Bìa mềm', CAST(N'2018-08-26T00:00:00' AS SmallDateTime), N'COMO.VN - Ta Ba Lô Trên Đất Á (Tái Bản 2018)

Quyển sách đầu tiên của Rosie Nguyễn, nay trở lại với một diện mạo mới và một quốc gia mới mà trước đây tác giả chưa có dịp nhắc đến. Ta ba lô trên đất Á không chỉ là cẩm nang du lịch bụi dành cho những ai yêu thích khám phá Đông Nam Á, mà còn là dấu ấn rất riêng của Rosie Nguyễn khi một mình đeo ba lô, tay cầm bản đồ ngược xuôi khắp các nước láng giềng để đi tìm chính mình và theo đuổi đam mê.

“Ta ba lô trên đất Á là quyển du ký của tác giả Việt Nam yêu thích nhất từ trước đến nay của tôi. Sách nhẹ nhàng, tình cảm và chứa đầy cảm xúc của mỗi vùng đất tác giả dạo bước qua. Mỗi trang sách, câu chuyện là một cánh cửa dẫn dắt những trái tim đam mê phiêu lưu vào những chốn vừa lạ vừa quen ở các quốc gia Đông Nam Á cũng như các nước láng giềng của quê hương Việt Nam. Đây chắc chắn còn là quyển sách gối đầu giường cực kỳ hữu ích cho những bạn trẻ đang chập chững những bước chân đầu tiên để bước ra thế giới ngoài kia, để tìm đến những chân trời mới, để thấy thế gian này thật rộng lớn và đẹp đẽ biết bao.”

- Trần Đặng Đăng Khoa (chàng trai đi vòng quanh thế giới bằng xe máy)

“Ta ba lô trên đất Á là ba lô hành trang đầy ắp kiến thức và cảm xúc không thể thiếu để những bạn trẻ Việt trải nghiệm đất Á, rồi vững vàng bản lĩnh để in dấu năm châu.”

- Nhà báo, nhiếp ảnh gia Ngô Trần Hải An (biệt danh “phượt thủ Quỷ Cốc Tử”)

Thế giới sách Online Como.vn trân trọng giới thiệu!', N'Image\ta_ba_lo_tren_dat_a_thumb_400x600.jpg', 35, 3)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1024, N'BÍ MẬT THANH XUÂN', 84800, 0, N'Văn Việt Books', N'	NXB Thanh Niên', N'	Nhiêu Tuyết Mạn', NULL, N'14.5 cm x 20.5 cm ', 311, 311, N'	Bìa mềm', CAST(N'2018-08-31T00:00:00' AS SmallDateTime), N'COMO.VN - Bí Mật Thanh Xuân

“Tôi thường nghĩ về tuổi thanh xuân của chúng tôi.

Đó quả thật là một món đồ chơi có hình thù kỳ quái, thân mình ngắn ngủn kéo theo cái đuôi thật dài, trải rộng như đôi cánh, mãi chẳng chịu rời đi.

Một chiếc đèn vẫn sáng, nhưng một ca khúc đã được hát xong. Một vở kịch còn chưa kết thúc, một tình yêu đã đi đến cuối con đường.

Chúng tôi cúi chào cảm ơn.

Và tấm màn mới chuẩn bị được kéo ra.

Có lẽ đời người chính là như vậy, kết thúc, bắt đầu, lại bắt đầu, rồi lại kết thúc... Dù thế nào đi nữa, chúng ta cũng phải gánh lấy khổ đau và hạnh phúc của mình, tiến lên phía trước, không quay đầu lại.”

Cô nữ sinh Tiểu Nhĩ Đóa từng gây cảm động lòng người một lần nữa “tái xuất giang hồ” trong tác phẩm văn học mang tên “Bí Mật Thanh Xuân”, thế nhưng nào ngờ đây lại là câu chuyện còn phức tạp hơn cả “Tai Trái”. Cuộc sống của một người chưa từng yêu thầm thì sẽ không thể nào trở nên hoàn chỉnh được, vì vậy mà chủ đề xuyên suốt trong “Bí Mật Thanh Xuân” là những câu chuyện về thầm yêu, có phải là sẽ rất hấp dẫn hay không? Đan xen giữa tình cảm, âm mưu, lợi dụng và những hiểu lầm không đáng có, Tiểu Nhĩ Đóa và Trương Dạng sẽ cùng nhau đối mặt như thế nào? Hãy cùng đợi chờ những bí mật dần dần hé lộ qua từng trang sách “Bí Mật Thanh Xuân” – nơi lưu giữ toàn vẹn những kí ức trưởng thành cùng những mối tình câm, những mối tình thầm của mỗi người chúng ta, bạn nhé.

Thế giới sách Online Como.vn trân trọng giới thiệu!', N'Image\bi_mat_thanh_xuan_thumb_412x600.jpg', 40, 3)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1025, N'“NICE TO MEET YOU!” – XIN CHÀO BẠN ĐI CÙNG ĐƯỜNG VỚI TÔI CHỨ', 71200, 0, N'BloomBooks', N'	NXB Thế Giới', N'	Mai Lan', NULL, N'	14.5 cm x 20 cm ', 240, 240, N'	Bìa mềm', CAST(N'2018-08-29T00:00:00' AS SmallDateTime), N'COMO.VN - “Nice To Meet You!” – Xin Chào Bạn Đi Cùng Đường Với Tôi Chứ

“Nice to meet you!” kể về những gì một cô gái hai mươi tư tuổi – Mai Lan – đã trải qua trong thời gian một năm sống cuộc đời chỉ như mình mong muốn.

Mai Lan đi du lịch. Nhưng là đi bằng “đi nhờ”, “ngủ nhờ”. Vừa đi vừa kiếm tiền. Vừa đi vừa kết bạn. Cuốn sách tên “Nice to meet you!” do những ngày rong ruổi trên đường, đây là cụm từ được Mai Lan sử dụng nhiều nhất và thường xuyên nhất. Dù ban đầu có thể nó chỉ mang ý nghĩa như một lời chào. Nhưng sau cuộc gặp gỡ, bằng những câu chuyện, những nụ cười và sự chia sẻ, nó trở thành một cụm từ kết nối và thể hiện niềm hạnh phúc, phần nào cảm kích nữa “Thật vui được gặp bạn!”

Trong cuốn sách này, có thể bạn sẽ gặp những địa danh thấy quen, hoặc những địa danh thấy lạ, nhưng Mai Lan sẽ không nhắc đến bất kỳ một thông tin nào bạn có thể tìm thấy như trong những quyển sách hướng dẫn du lịch hay mạng Internet.  

Những gì đẹp nhất trong quyển sách này, là con người và lòng nhân ái của họ. Mai Lan muốn sau quyển sách này, mọi người mở lòng mình và tin tưởng nhau nhiều hơn, hào phóng hơn những nụ cười và hào phóng hơn với cuộc đời.

Cũng trong sách, Mai Lan viết về chính bản thân mình như một người hoàn toàn bình thường, thực hiện những chuyến đi mà nhiều người nhìn vào xuýt xoa, thậm chí có rất nhiều người nghĩ tôi giàu có lắm để đi được nhiều như vậy. Cuốn sách có ham muốn truyền một động lực lớn lao, cho tất cả những người, có thể trẻ hoặc không, muốn đi và khám phá thế giới. Có rất nhiều cách để đi du lịch. Hãy học hỏi không ngừng và mạnh dạn với những gì còn lạ lẫm.

Đừng để Thế giới tươi đẹp và rộng lớn ngoài kia chỉ được nhìn qua chiếc điện thoại hay màn hình máy vi tính. Đừng để cuộc đời mình chỉ xoay quanh việc phục vụ những áp lực dồn xuống từ phía gia đình và xã hội. Tìm ra mơ ước để sống có ý nghĩa và có trách nhiệm với chính cuộc đời mình, mới là điều khiến bạn hạnh phúc, khiến một xã hội hạnh phúc.

Thế giới sách Online Como.vn trân trọng giới thiệu!', N'Image\nice_to_meet_you_688x1000.jpg', 45, 3)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1026, N'XIN CHÀO NGÀY XƯA ẤY - TRỌN BỘ 3 TẬP (BẢN ĐẶC BIỆT TẶNG KÈM 3 POSTCARDS + 1 PHOTOBOOK THANH XUÂN)', 255200, 0, N'SkyNovel', N'	NXB Phụ Nữ', N'	Bát Nguyệt Trường An', NULL, N'14.5 cm x 20.5 cm ', 1120, 1120, N'	Bìa mềm', CAST(N'2018-08-24T00:00:00' AS SmallDateTime), N'COMO.VN - Xin Chào Ngày Xưa Ấy -Trọn Bộ 3 Tập (Bản Đặc Biệt Tặng Kèm 3 Postcards + 1 Photobook Thanh Xuân)
“Xin chào ngày xưa ấy” – Viết cho thanh xuân, cho tuổi trẻ, cho những mùa hè mãi mãi không trở lại…

- Cậu là ai?

- Dư Châu Châu.

- Cậu đến từ đâu?

- Nhà của tớ.

- Cậu... Từ bây giờ nàng sẽ là tứ hoàng phi của trẫm.

Vào một ngày hè oi ả, nắng gắt nhuộm vàng con ngõ nhỏ, lần đầu tiên cậu nhóc Lâm Dương đã gặp Dư Châu Châu.

“Tam giác cân cân tại đỉnh. Tớ sẽ vì cậu mà cân cả thế giới. Dư Châu Châu, tớ nhất định sẽ bảo vệ cậu.”

Rất nhiều năm về sau, vẫn tại con ngõ nhỏ ấy, vẫn là cô gái tên Châu Châu ấy, lần đầu tiên Lâm Dương đã hiểu thế nào là “thích một người”.

Bầu trời ngày hôm ấy rất xanh, ánh dương rực rỡ phản chiếu trên tấm áo đồng phục…

“Dư Châu Châu, tớ sẽ mãi ở đây,

Ngay phía sau cậu.”

Tại sao người ta luôn nói “Thanh xuân là quãng thời gian đẹp nhất đời người”?

Có lẽ bởi vì khi đó chúng ta chưa đủ trưởng thành, chưa từng vấp váp, càng chưa biết thế nào là nuối tiếc, là bỏ lỡ… Chúng ta không e sợ điều gì vì chẳng có gì để mất, trái tim luôn vang vọng nhịp đập vì chúng ta có thể có được tất cả.

Đau đớn và tổn thương của tuổi trẻ kì thực không phải là điều dễ dàng vượt qua. Nhưng vẫn còn rất nhiều thời gian mà, chúng ta sẽ cùng nhau vấp ngã, cùng nhau đứng lên, cùng nắm chặt tay nhau, để rồi cùng nhau già đi…

“Xin chào ngày xưa ấy” chính là sự ngọt ngào của tuổi trẻ, là niềm hạnh phúc của thanh xuân, và cũng là giọt nước mắt của trưởng thành...

“Châu Châu, cậu là chuyện của tớ, là lựa chọn của tớ, dù đúng hay sai thì tớ cũng phải gánh trách nhiệm cho sự lựa chọn của mình.”

Nếu là cậu, thì chuyện của cậu cũng là chuyện của tớ.

Nếu là cậu, thì đúng hay sai cũng không còn quan trọng nữa rồi.

“Xin chào ngày xưa ấy” của Bát Nguyệt Trường An tựa như những trang nhật ký ghi những khoảnh khắc thanh xuân rực rỡ nhất của Lâm Dương, của Dư Châu Châu, của Trần An, của Mễ Kiều... và của cả chính chúng ta.

Hãy thử một lần khẽ chạm đến những thanh xuân đơn thuần mà đẹp đẽ ấy, để những ngây ngô, ngọt ngào, và cả nuối tiếc đưa bạn về tháng năm thanh xuân của chính mình.

Thế giới sách Online Como.vn trân trọng giới thiệu!', N'Image\xin_chao_ngay_xu_ay_thumb_422x600.jpg', 50, 3)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1027, N'CHUYỆN CHÚ CHIM, CON ẾCH VÀ KHU VƯỜN MÀU XANH (TẶNG KÈM BỘ ĐÔI BOOKMARK)', 68800, 0, N'ViBooks', N'NXB Thế Giới', N'Elizabeth O. Dulemba', NULL, N'13 cm x 18 cm ', 296, 296, N'	Bìa mềm', CAST(N'2018-08-20T00:00:00' AS SmallDateTime), N'COMO.VN - Chuyện Chú Chim, Con Ếch Và Khu Vườn Màu Xanh (Tặng Kèm Bộ Đôi Bookmark)

TỪ BỎ Ư? TRONG TỪ ĐIỂN CỦA TÔI KHÔNG CÓ HAI TỪ ĐẤY!

Đã bao giờ bạn rơi vào tận cùng của chán nản, muốn buông bỏ tất cả?

Đã bao giờ bạn cảm thấy dù nỗ lực thế nào cũng bị hiện thực đánh gục?

Đã bao giờ bạn từ bỏ đam mê chỉ vì không đủ niềm tin, không đủ sức lực?

Nếu đã từng ít nhất một lần rơi vào tình trạng ấy, chắc chắn bạn không nên bỏ lỡ câu chuyện này - câu chuyện về Jack - một cậu bé luôn có mơ ước thay đổi thị trấn nơi mình đang sống.

Dù cho hoàn cảnh có khó khăn, khắc nghiệt đến mấy, Jack cũng chưa bao giờ có ý định từ bỏ thị trấn. Bởi ở đó có gia đình gắn bó, có quê hương ấm áp tình người, có những điều thân thuộc nhưng rất đỗi quan trọng.

“Chuyện chú chim, con ếch và khu vườn màu xanh” sẽ là một "La Dolce Vita" dành cho bạn: Ai trong chúng ta cũng đều muốn sống một cách có ý nghĩa nhất, tận hưởng những điều tốt đẹp nhất mà tạo hóa đã ban tặng.

Thế giới sách Online Como.vn trân trọng giới thiệu!', N'Image\chuyen_chu_chim_con_ech_va_khu_vuon_mau_xanh_640x907.jpg', 45, 3)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1028, N'NHỮNG ĐỨA TRẺ KHÔNG BAO GIỜ LỚN (TẶNG KÈM SỔ LÒ XO)', 72000, 0, N'Người Trẻ Việt ', N'NXB Văn Học ', N'Dương Minh Tuấn', NULL, N'	13.5 cm x 20 cm ', 232, 232, N'	Bìa mềm', CAST(N'2018-08-20T00:00:00' AS SmallDateTime), N'COMO.VN - Những Đứa Trẻ Không Bao Giờ Lớn (Tặng Kèm Sổ Lò Xo)

“Tôi muốn quay ngược thời gian và trở lại tuổi thơ.

Khi bố là “Anh hùng” và “Tình yêu” là cái ôm của mẹ.

“Nơi cao nhất trên thế giới này” là “Bờ vai của bố”

Điều duy nhất có thể gây “Đau đớn” và “Xước đầu gối”

Thứ duy nhất “Vỡ vụn” là đồ chơi.

Và khi

“Tạm biệt” có nghĩa là “Hẹn gặp lại vào ngày mai”

Gần 2 năm sau khi ra mắt cuốn sách đầu tay “Lạc quan gặp niềm vui ở quán nỗi buồn và những chuyện chưa kể”, Dương Minh Tuấn – chàng bác sĩ đáng yêu nhất Vịnh Bắc Bộ đã quyết định nghỉ việc, dành ra gần nửa năm để một mình đi lang thang khắp các vùng miền của Việt Nam, trải nghiệm thêm nhiều những câu chuyện và bài học khác của cuộc đời trước khi trở về Hà Nội. Và sau những trải nghiệm đó, Tuấn trở lại với độc giả bằng cuốn sách mới mang tên “Những đứa trẻ không bao giờ lớn” của mình.

“Những đứa trẻ không bao giờ lớn” là tuyển tập tản văn về những “đứa trẻ” cậu đã có duyên gặp gỡ như thế trên chặng đường trở thành “người lớn”. Vẫn bằng giọng văn nhẹ nhàng, tình cảm, lối dẫn dắt đơn giản nhưng dễ đi vào lòng người, Tuấn dẫn dắt người đọc đi cùng mình qua từng mẩu chuyện nhỏ cậu quan sát thấy trong cuộc sống muôn màu, để họ thấy thấp thoáng đâu đó bóng dáng của chính mình, một lần biết đồng điệu với tâm tư của một người trẻ đang bước vào đời với đầy nhiệt huyết, đam mê và yêu thương mãnh liệt.

Là khi cậu nhận ra có trải qua bao biến cố của cuộc đời, chai sạn rồi trưởng thành lên bao nhiêu, vẫn có lúc cậu thấy mình như một đứa trẻ ngây ngô và hồn nhiên, dễ tổn thương nhưng cũng mau lành, dễ giận mà cũng mau quên,... luôn muốn được ai đó đến ôm cậu mà vỗ về.

Là khi chàng trai ấy nhận ra càng lớn, chúng ta sẽ càng muốn quay trở lại với những tháng ngày tuổi thơ hồn nhiên và vô tư, khi chúng ta luôn sống hết mình và không cần lo lắng đến tương lai hay hiện tại. Nhưng điều đó là không thể, nên chúng ta phải học cách đối diện với những mất mát, tổn thương, nước mắt để cứng cáp hơn, mạnh mẽ hơn. Bởi tuổi trẻ không đau đớn, bâng khuâng sao gọi là tuổi trẻ. Nếu không hết mình sau này hối hận cũng đã muộn màng.

Dành tặng cho tất cả những ai yêu mến Tuấn, chúng ta hãy dành vài phút trong cuộc sống ồn ào, vội vã này; tạm gạt bỏ những mỏi mệt của việc trở thành một người trưởng thành để dám một lần biết sống ngây thơ, sống hồn nhiên đơn giản, biết chân thật, biết yêu thương chân thành, như ta đã từng như thế.

Thế giới sách Online Como.vn trân trọng giới thiệu!', N'Image\nhung_dua_tre_khong_bao_gio_lon_thumb_368x600.jpg', 40, 3)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1029, N'NÀNG VÀ CON MÈO CỦA NÀNG', 70400, 0, N'MintBooks', N'NXB Văn Học', N'Makoto Shinkai ', NULL, N'14.5 cm x 20.5 cm ', 212, 212, N'Bìa mềm', CAST(N'2018-08-20T00:00:00' AS SmallDateTime), N'COMO.VN - Nàng Và Con Mèo Của Nàng (Tặng bookmark dấu chân mèo) 

Sự trở lại của tượng đài làng phim anime được cả thế giới công nhận và ngưỡng mộ.

Tác phẩm giành giải thưởng quan trọng trong “Cuộc Thi Kỹ Xảo Hoạt Họa” của PROJECT TEAM DOGA

Makoto Shinkai – đạo diễn/biên kịch luôn được đánh giá cao trong lĩnh vực phim hoạt hình. Với những tác phẩm để lại nhiều dấu ấn như 5cm/s hay Khu vườn ngôn từ, danh tiếng của ông tăng lên gấp bội khi bộ phim ra mắt năm 2016 “Your name” không chỉ trở thành bộ phim hoạt hình có doanh thu cao thứ 4 tại Nhật, mà còn đứng đầu bảng xếp hạng của thế giới. Và với Shinkai,  lúc này đã có thể trở thành một trong những đạo diễn tài ba nhất mọi thời đại trong lĩnh vực anime, thì giờ là lúc chúng ta cùng xem lại tác phẩm anime chuyển thể thành cuốn sách bán chạy nhất năm 2013 “Nàng và con mèo của nàng” (Kanojo to Kanojo no Neko )–  một tác phẩm mang ý nghĩa đặc biệt đặt nền móng cho những bước ngoặt thành công sau này của ông.', N'Image\nang_va_con_meo_cua_nang_650x960.jpg', 25, 3)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1030, N'ĐẶT TRƯỚC - BI THƯƠNG NGƯỢC DÒNG THÀNH SÔNG ', 119200, 0, N'Người Việt Trẻ', N'NXB Hồng Đức', N'Quách Kinh Minh', NULL, N'	14.5 cm x 20.5 cm ', 492, 492, N'Bìa mềm', CAST(N'2018-08-09T00:00:00' AS SmallDateTime), N'COMO.VN - Bi Thương Ngược Dòng Thành Sông (Tặng 2 poster + 3 postcard - số lượng có hạn)

"Tôi tin rằng trên thế giới này, nhất định sẽ có một người yêu bạn. Người ấy sẽ đi xuyên qua dòng người hỗn độn, chạy qua từng người, từng người. Với một trái tim dồn dập, với nhiệt huyết, với tình yêu sâu đậm, đi về phía bạn, giữ chặt bạn. Nhưng bạn phải đợi, người ấy nhất định sẽ đến ".

Trong cuộc đời mỗi cô gái đều sẽ có một chàng trai như vậy. Một người mang cho ta một thứ tình cảm không phải tình yêu, cũng chẳng phải là bạn trai mình nhưng mạnh mẽ hơn thứ chúng ta gọi là bạn bè. Trong cuộc đời mình, người đó còn hiện hữu nhiều hơn cả người yêu và dành một vị trí đặc biệt nhất trong lòng mình.

Thấy thứ gì đẹp đẽ nhất cũng nghĩ tới người đó đầu tiên.

Bài hát hôm nay mình thích, cũng phải đưa người ấy nghe trước nhất.

Thấy cái gì đẹp cũng nhịn không được mua 2 cái mình một, người kia một.

Lúc buồn nhất, đau khổ nhất, hình ảnh người đó cũng hiện lên trong đầu mình.', N'Image\bi_thuogn_nguoc_dong_thanh_song_645x960.jpg', 28, 3)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1031, N'COMBO “HOORAY ENGLISH” (8 CUỐN)', 198080, 0, N'Messy Books', N'NXB Thế Giới', N'Giáo dục Ngoại ngữ', NULL, N'19 x 26.5 cm', 36, 800, N'Bìa Mềm', CAST(N'2017-04-21T00:00:00' AS SmallDateTime), N'COMO.VN - Hooray English - Tiếng Anh Vừa Học Vừa Chơi Dành Cho Bé Từ 4-6
Tuổi Bộ sách Hooray! English gồm 8 cuốn, với các chủ đề thân cận và gần gũi với đời sống hàng ngày, cùng cách đặt vấn đề nhẹ nhàng, dí dỏm giúp bé dễ dàng bắt nhịp và kích thích niềm hứng thú học tiếng Anh của bé.

Cùng với hình minh họa ngộ nghĩnh và các hoạt động tương tác, thực hành được sắp xếp xen kẽ mỗi bài học,… Bộ sách không chỉ giúp phát triển trình độ ngoại ngữ, mà còn rèn luyện cả tư duy linh hoạt và khả năng phản xạ của bé.

Bộ sách gồm 2 chủ đề Reader Book và Activity Book, các bé sẽ bắt đầu học từ mới và câu với Reader Book, sau đó thực hành với Activity Book. Các bố mẹ và thầy cô hãy cho bé học với tập 1 Reader Book rồi đến tập 1 Activity Book, lần lượt từng cặp như vậy.

Hooray! English chú trọng việc rèn luyện Tiếng Anh thông qua các hoạt động và tương tác với các sự vật, sự việc diễn ra trong cuộc sống thường ngày, được thiết kế theo chương trình Giáo dục Ngoại ngữ sớm cho trẻ theo tiêu chuẩn “Giáo dục tiền tiểu học quốc gia” (National Preschool Curriculum) của Malaysia. Với Hooray! English, việc học tiếng Anh thật vui vẻ và thú vị.', N'Image\12392017103919_25276391_1307764182662026_841889080_n_550x550_550x550.jpg', 20, 4)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1032, N'HOORAY ENGLISH READER BOOK 2', 28000, 0, N'Messy Books', N'NXB Thế Giới', N'Giáo dục Ngoại ngữ', NULL, N'	19 x 26.5 cm', 36, 100, N'Bìa Mềm', CAST(N'2017-04-19T00:00:00' AS SmallDateTime), N'COMO.VN - Hooray English - Tiếng Anh Vừa Học Vừa Chơi Dành Cho Bé Từ 4-6 Tuổi

Bộ sách Hooray! English gồm 8 cuốn, với các chủ đề thân cận và gần gũi với đời sống hàng ngày, cùng cách đặt vấn đề nhẹ nhàng, dí dỏm giúp bé dễ dàng bắt nhịp và kích thích niềm hứng thú học tiếng Anh của bé.

Cùng với hình minh họa ngộ nghĩnh và các hoạt động tương tác, thực hành được sắp xếp xen kẽ mỗi bài học,… Bộ sách không chỉ giúp phát triển trình độ ngoại ngữ, mà còn rèn luyện cả tư duy linh hoạt và khả năng phản xạ của bé. Bộ sách gồm 2 chủ đề Reader Book và Activity Book, các bé sẽ bắt đầu học từ mới và câu với Reader Book, sau đó thực hành với Activity Book. Các bố mẹ và thầy cô hãy cho bé học với tập 1 Reader Book rồi đến tập 1 Activity Book, lần lượt từng cặp như vậy.

Hooray! English chú trọng việc rèn luyện Tiếng Anh thông qua các hoạt động và tương tác với các sự vật, sự việc diễn ra trong cuộc sống thường ngày, được thiết kế theo chương trình Giáo dục Ngoại ngữ sớm cho trẻ theo tiêu chuẩn “Giáo dục tiền tiểu học quốc gia” (National Preschool Curriculum) của Malaysia.

Với Hooray! English, việc học tiếng Anh thật vui vẻ và thú vị', N'Image\9786047732517_1_298x400_298x400.jpg', 25, 4)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1033, N'HOORAY ENGLISH ACTIVITY BOOKS 2', 20000, 0, N'Messy Books', N'NXB Thế Giới', N'Giáo dục Ngoại ngữ', NULL, N'19 x 26.5 cm', 36, 100, N'Bìa Mềm', CAST(N'2017-04-20T00:00:00' AS SmallDateTime), N'COMO.VN - Hooray English - Tiếng Anh Vừa Học Vừa Chơi Dành Cho Bé Từ 4-6 Tuổi

Bộ sách Hooray! English gồm 8 cuốn, với các chủ đề thân cận và gần gũi với đời sống hàng ngày, cùng cách đặt vấn đề nhẹ nhàng, dí dỏm giúp bé dễ dàng bắt nhịp và kích thích niềm hứng thú học tiếng Anh của bé.

Cùng với hình minh họa ngộ nghĩnh và các hoạt động tương tác, thực hành được sắp xếp xen kẽ mỗi bài học,… Bộ sách không chỉ giúp phát triển trình độ ngoại ngữ, mà còn rèn luyện cả tư duy linh hoạt và khả năng phản xạ của bé. Bộ sách gồm 2 chủ đề Reader Book và Activity Book, các bé sẽ bắt đầu học từ mới và câu với Reader Book, sau đó thực hành với Activity Book. Các bố mẹ và thầy cô hãy cho bé học với tập 1 Reader Book rồi đến tập 1 Activity Book, lần lượt từng cặp như vậy.

Hooray! English chú trọng việc rèn luyện Tiếng Anh thông qua các hoạt động và tương tác với các sự vật, sự việc diễn ra trong cuộc sống thường ngày, được thiết kế theo chương trình Giáo dục Ngoại ngữ sớm cho trẻ theo tiêu chuẩn “Giáo dục tiền tiểu học quốc gia” (National Preschool Curriculum) của Malaysia.

Với Hooray! English, việc học tiếng Anh thật vui vẻ và thú vị.', N'Image\6a_u4972_d20170503_t171546_194220_550x550_358x496.jpg', 45, 4)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1034, N'HOORAY ENGLISH READER BOOK 1', 28000, 0, N'Messy Books', N'NXB Thế Giới', N'Giáo dục Ngoại ngữ', NULL, N'19 x 26.5 ', 36, 100, N'Bìa Mềm', CAST(N'2017-04-18T00:00:00' AS SmallDateTime), N'COMO.VN - Hooray English - Tiếng Anh Vừa Học Vừa Chơi Dành Cho Bé Từ 4-6 Tuổi

Bộ sách Hooray! English gồm 8 cuốn, với các chủ đề thân cận và gần gũi với đời sống hàng ngày, cùng cách đặt vấn đề nhẹ nhàng, dí dỏm giúp bé dễ dàng bắt nhịp và kích thích niềm hứng thú học tiếng Anh của bé.

Cùng với hình minh họa ngộ nghĩnh và các hoạt động tương tác, thực hành được sắp xếp xen kẽ mỗi bài học,… Bộ sách không chỉ giúp phát triển trình độ ngoại ngữ, mà còn rèn luyện cả tư duy linh hoạt và khả năng phản xạ của bé. Bộ sách gồm 2 chủ đề Reader Book và Activity Book, các bé sẽ bắt đầu học từ mới và câu với Reader Book, sau đó thực hành với Activity Book. Các bố mẹ và thầy cô hãy cho bé học với tập 1 Reader Book rồi đến tập 1 Activity Book, lần lượt từng cặp như vậy.

Hooray! English chú trọng việc rèn luyện Tiếng Anh thông qua các hoạt động và tương tác với các sự vật, sự việc diễn ra trong cuộc sống thường ngày, được thiết kế theo chương trình Giáo dục Ngoại ngữ sớm cho trẻ theo tiêu chuẩn “Giáo dục tiền tiểu học quốc gia” (National Preschool Curriculum) của Malaysia.

Với Hooray! English, việc học tiếng Anh thật vui vẻ và thú vị.', N'Image\1a_u4972_d20170503_t163113_200905_550x550_364x504.jpg', 29, 4)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1035, N'21 CÁCH HỌC TIẾNG ANH DU KÍCH - FUSUSU', 99000, 0, N'Fususu', N'NXB Đà Nẵng', N'Nguyễn Chu Phương Nam', NULL, N'14 x 19 cm', 231, 300, N'Bìa mềm', CAST(N'2018-09-06T00:00:00' AS SmallDateTime), N'21 Cách Học Tiếng Anh Du Kích (Song ngữ) - Tác giả FuSuSu
Đừng để tiếng Anh cản trở sự thành công của bạn, và cũng đừng để những khóa học tiếng Anh không hiệu quả làm lãng phí thời gian, tiền bạc của bạn. Nếu biết phương pháp, bạn hoàn toàn có thể tự học và dành số tiền kia để đi du lịch.

Cuốn sách 21 cách học Tiếng Anh Du Kích sẽ hướng dẫn bạn tỉ mỉ từng bước làm chủ các kỹ năng Nghe, Nói, Đọc, Viết... thậm chí thi cử. Nếu một người từng phải học lại bảng chữ cái tiếng Anh như tôi giờ có thể... viết sách bằng tiếng Anh, thì không có gì là bạn không thể làm được.

Tất cả những gì bạn cần chỉ là một cú hích, hoặc một cú Click để đọc thử (hoặc nghe thử).

Cảm nhận của độc giả toàn quốc
"Em đã đọc cuốn sách được 5 tháng. Từ một người không biết gì về tiếng Anh, em đã đạt 6.5/10 điểm, đó là con số mơ ước. Sau đó, số điểm đã tăng lên 8.5/10, thật không thể tin được." ', N'Image\e1da7c842b9cb852c62c64c4bc7d28bf_550x550.jpg', 19, 4)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1036, N'QUẲNG GÁNH IELTS ĐI MÀ VUI SỐNG!', 72000, 0, N'Nhã Nam', N'	NXB Thế Giới', N'Lê Thanh Tùng', NULL, N'14 cm x 20.5 cm ', 324, 324, N'	Bìa mềm', CAST(N'2018-07-05T00:00:00' AS SmallDateTime), N'COMO.VN - Quẳng Gánh IELTS Đi Mà Vui Sống!
Tiếng Anh – thứ ngôn ngữ quốc tế - có vẻ như chưa bao giờ dễ tiếp cận đến thế. Ngày nay, với những trung tâm tiếng Anh mọc nên như nấm, chưa nói Internet ở mọi nơi, với vô số ứng dụng trên điện thoại phục vụ cho việc học thức ngôn ngữ này, tưởng chừng chinh phục nó sẽ là điều không quá khó nhọc.

Thế nhưng thực tế là đối với cả những người mới bắt đầu lẫn những người muốn nâng cao và khẳng định kỹ năng của mình, ma trận thông tin và dịch vụ của thế kỷ 21 hóa ra lại rất đáng sợ. Ta không biết phải bắt đầu từ đâu, không biết phải nghe ai để nâng cao các kỹ năng của mình. Và kể cả khi đã có đủ những kỹ năng nghe nói đọc viết thành thạo ta lại cũng sẽ gặp khó khăn khi muốn chứng minh bản thân trong những kỳ thi quốc tế.

Kết hợp giữa kinh nghiệm và khối tri thức của một chuyên gia ôn luyện tiếng Anh có thâm niên hơn 10 năm và một “cựu chiến bính” từng lăn lộn bầm dập hàng chục lần khi tham gia các kỳ quốc tế IELTS và PTE, cuốn sách này muốn đem lại một hướng đi cụ thể, rõ ràng, cùng những hành trang kỹ lưỡng nhất, cả về tri thức lẫn tâm lý, chiến thuật để bạn đọc tiến lên chinh phục môn tiếng Anh.', N'Image\quang_ganh_ielts_ma_vui_song_thumb_412x600.jpg', 15, 4)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1037, N'HƯỚNG DẪN CÁCH HỌC TIẾNG ANH DÀNH CHO HỌC SINH TRUNG HỌC', 40000, 0, N'MC Books', N'NXB Đại Học Quốc Gia Hà Nội', N'Nguyễn Quốc Hùng', NULL, N'14.5cm x 20.5cm ', 133, 133, N'Bìa Mềm', CAST(N'2015-09-03T00:00:00' AS SmallDateTime), N'NULLKhi bắt đầu học một ngoại ngữ chúng ta cần nắm vững một phương pháp học đúng đắn, không nên đi theo đường mòn tiêu cực như lập sổ từ để học từ riêng lẻ, học đọc hiểu bằng cách dịch bài đọc ra tiếng Việt; ngược lại cũng không nên đi theo các xu hướng mang tính thủ thuật như "học tiếng Anh trong giấc ngủ"  hoặc "học tiếng Anh cuồng nhiệt’, "học tiếng Anh không mất sức", ...

Cuốn sách này giúp các bạn xây dựng thói quen học tiếng Anh một cách đúng đắn, khoa học bằng cách khai thác các kỹ thuật học tiếng nhằm xây dựng khả năng sử dụng ngôn ngữ thông qua bốn kỹ năng giao tiếp, bao gồm 6 phần cơ bản:

Phần 1: Học từ vựng

Phần 2: Học nghe hiểu

Phần 3: Học đọc hiểu

Phần 4: Học nói

Phần 5: Học viết

Phần 6: Kỹ thuật sử dụng từ điển', N'Image\Huong_Dan_Cach_Hoc_Tieng_Anh_Danh_Cho_Hoc_Sinh_Trung_Hoc_263x373.jpg', 42, 4)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1038, N'RÈN LUYỆN KỸ NĂNG LÀM BÀI ĐỌC HIỂU MÔN TIẾNG ANH', 158400, 0, N'MC Books', N'	NXB Đại Học Quốc Gia Hà Nội', N'Vũ Thị Mai Phương', NULL, N'17cm x 24cm ', 644, 644, N'Bìa Mềm', CAST(N'2014-09-25T00:00:00' AS SmallDateTime), N'Mở đầu cuốn sách sẽ là những kiến thức mà bạn cần biết để làm một bài Đọc hiểu. Đây là điều đặc biệt quan trọng với những bạn ở trình độ căn bản. Đây là bước đệm nhỏ nhưng lại vô cùng quan trọng giúp bạn bơi trong biển lớn kiến thức của 62 cấu trúc bài đọc hiểu ở phía sau.
Phần quan trọng nhất là phần tổng hợp và luyện tập các dạng bài đọc hiểu gồm 62 phần khác nhau được phân chia một cách khoa học và đầy đủ nhất những kiến thức bạn cần có. Có thể các dạng bài đọc hiểu ở cuốn sách Rèn Luyện Kỹ Năng Làm Bài Đọc Hiểu Môn Tiếng Anh này rất đa dạng và được sắp xếp theo các cấp độ từ dễ đến khó. Các bạn có thể bắt gặp muôn vàn thể loại bài đọc từ lịch sử, khoa học, vấn đề xã hội đến những câu chuyện hàng ngày, ... Đây là những dạng bài mà chúng ta chắc chắn sẽ gặp phải ở bất cứ kì thi tiếng Anh nào từ TOEIC, IELTS hay kỳ thi quốc gia.', N'Image\Ren_luyen_ky_nang_doc_hieu_mon_tieng_Anh_bia_truoc_600x880_600x880.jpg', 35, 4)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1039, N'HƯỚNG DẪN ÔN TÂP VÀ KIỂM TRA TIẾNG ANH LỚP 11 - TẬP 2', 124800, 0, N'MC Books', N'	NXB Đại Học Quốc Gia Hà Nội', N'The Windy', N'NULL ', N'17cm x 24cm ', 200, 200, N'Bìa Mềm', CAST(N'2017-02-28T00:00:00' AS SmallDateTime), N'Cuốn sách được chia thành 5 đơn vị bài học bám sát nội dung trong sách giáo khoa. Mỗi bài học bao gồm 2 phần:

Phần 1: THEORY REVIREW  (củng cố lý thuyết): cung cấp những kiến thức cơ bản của bài học để các em có thể ôn lại kiến thức một các có hệ thống.

Đồng thời hướng dẫn các em cách làm các dạng bài ở tất cả 4 kĩ năng: nghe– nói – đọc – viết.

Phần 2: PRACTICE TESTS: đem lại cho các em nhiều bài tập đa dạng để thực hành các kiến thức và kĩ năng đã học. Mỗi đơn vị bài học đều có 2 bài kiểm tra đánh giá để các em có thể tự kiểm tra lại những kiến thức của mình.

Sau khi hoàn thành và làm tốt các bài kiểm tra này, chúng tôi tin rằng các em sẽ hiểu được trọn vẹn nội dung bài học.
Ngoài ra, chúng tôi mong rằng các bài luyện nghe chuẩn giọng Anh-Anh của người bản ngữ sẽ là một tài liệu hữu ích giúp các em làm quen nâng cao kỹ năng nghe hiểu, và qua đó trau dồi tình yêu với ngôn ngữ này.', N'Image\Huong_Dan_On_Tap_Va_Kiem_Tra_Tieng_Anh_Lop_11___Tap_2_284x400.jpg', 11, 4)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1040, N'TRỌNG TÂM KIẾN THỨC TIẾNG ANH LỚP 6 -TẬP 2', 38400, 0, N'MC Books', N'NXB Đại Học Quốc Gia Hà Nội', N'	The Windy', NULL, N'17cm x 24cm ', 123, 123, N'Bìa Mềm', CAST(N'2015-12-12T00:00:00' AS SmallDateTime), N'Hiện nay chương trình học tiếng Anh của chúng ta đang dần theo xu hướng hiện đại hóa, tiếp cận nền tri thức tiên tiến của thế giới. Thực tế đó đã tác động mạnh mẽ đến cách thức học tập ngày một hiện đại của chúng ta. Nhằm đáp ứng nhu cầu học tiếng Anh hiện đại của tất cả các em học sinh đang theo học chương trình mới của bộ giáo dục, Nhóm biên soạn đã dành nhiều thời gian và tâm huyết để biên soạn cuốn sách Trọng Tâm Kiến Thức Tiếng Anh Lớp 6 (Tập 2) với hy vọng mang loại cho các em học sinh lớp 6 những kiến thức quan trọng và bổ ích.

Cuốn sách được chia thành các đơn vị bài học. Mỗi đơn vị bài học đều bám sát chương trình mới của Bộ giáo dục. Trong mỗi bài tập trung vào phần kiến thức ngôn ngữ quan trọng nhất:

Phần 1: Ngữ âm. Phần này cung cấp những kiến thức cơ bản và nâng cao về ngữ âm. Hỗ trợ việc nghe - nói tiếng Anh một cách chính xác theo chuẩn người bản xứ.

Phần 2: Từ vựng. Phần này cung cấp lượng lớn từ vựng liên quan chặt chẽ đến chương trình học.

Phần 3: Ngữ pháp. Ngữ pháp là xương sống của một ngôn ngữ, là nền tảng cơ bản nhất đối với việc học của các em. Với những nền tảng ngữ pháp quan trọng của cuốn sách này, các em học sinh có thể sử dụng ngữ pháp tiếng anh một cách thành thạo.', N'Image\luyen_nghe_noi_doc_viet_tieng_anh_lop5_tap1_199x253.jpg', 24, 4)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1041, N'CHỜ ĐẾN MẪU GIÁO THÌ ĐÃ MUỘN', 43200, 0, N'Quảng Văn', N'NXB Văn Học', N'Ibuka Masaru', NULL, N'	13.5 x 20.5 cm ', 240, 240, N'	Bìa mềm ', CAST(N'2013-10-10T00:00:00' AS SmallDateTime), N'Chờ Đến Mẫu Giáo Thì Đã Muộn

Chờ đến mẫu giáo thì đã muộn là cuốn sách bàn về phương pháp giáo dục trẻ trong giai đoạn từ 0 đến 3 tuổi của tác giả Ibuka Masaru, người sáng lập tập đoàn Sony đồng thời là một nhà nghiên cứu giáo dục.

Dựa trên những nghiên cứu về sinh lý học của não bộ và di truyền học, ông đã khẳng định sự phát triển về trí tuệ và năng lực của trẻ được quyết định trong giai đoạn từ 0 đến 3 tuổi, giai đoạn này là “thời kỳ thích hợp” để “nuôi dạy một đứa trẻ trở nên ngoan ngoãn, vui vẻ, có trí tuệ thông minh và khỏe mạnh”.

Nghe thì có vẻ không hợp lý cho lắm, bởi chúng ta, đặc biệt là các bậc cha mẹ Việt thường quan niệm rằng một đứa trẻ ở độ tuổi này vẫn chưa đủ nhận thức để có thể hiểu những gì chúng ta nói, huống hồ gì là giáo dục. Nhưng bằng những chứng cứ khoa học trong suốt nhiều năm nghiên cứu của mình, ông Ibuka đã chỉ ra rằng chính sự chưa trưởng thành khiến trẻ em sơ sinh có khả năng vô tận. Hãy so sánh trẻ em với những loài động vật khác trong thế giới tự nhiên. Khi chúng được sinh ra, chúng đã có những bản năng cơ bản như có thể tự đi lại, có thể tự bơi sau một vài giờ đồng hồ. Nhưng con của chúng ta lại không biết gì ngoài việc khóc và bú.', N'Image\cho_den_mau_giao_thi_da_muon_550x550.jpg', 35, 5)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1042, N'COMBO ACTIVITY BOOK: HOORAY MATH – ĐỂ CON KHÔNG CÒN SỢ TOÁN', 144000, 0, N'Sky- Kids- AZ Việt Nam', N'NXB Thế Giới', N'	Pelangi', NULL, N'	19 x 26 cm ', 36, 150, N'	Bìa mềm ', CAST(N'2018-08-21T00:00:00' AS SmallDateTime), N'Bộ sách phù hợp với bé từ 3 - 6 tuổi

Là bộ sách được thiết kế theo tiêu chuẩn “Giáo dục Tiền tiểu học Quốc Gia” (National Preschool Curriculum) của Malaysia.

Bộ sách bao gồm 8 cuốn, với 2 chủ đề: Book & Acitivity Book.

Nội dung mỗi cuốn sách được sắp xếp một cách cụ thể và khoa học, chú trọng việc rèn luyện các kĩ năng Toán học thông qua các hoạt động và tương tác với sự vật, sự việc diễn ra trong cuộc sống thường ngày, giúp việc học toán của bé trở nên thú vị và không nhàm chán.

Đầu tiên, các bé sẽ bắt đầu học các con số với “Book” sau đó thực hành với “Activity Book” tương ứng, cứ như vậy lần lượt theo từng cặp từ tập 1 đến tập 4. Cùng với hình vẽ minh họa sinh động, những hướng dẫn đơn giản nhằm kích thích tư duy, sáng tạo … bộ sách không chỉ xây dựng cho bé nền tảng toán học tốt mà con đem đến những trải nghiệm học tập vô cùng thú vị cho bé nhà bạn.

Trân trọng giới thiệu!', N'Image\1600201840007_39223074_1829640823794053_8310503603110412288_n_800x800_500x500.jpg', 29, 5)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1043, N'VÔ CÙNG TÀN NHẪN, VÔ CÙNG YÊU THƯƠNG (TẬP 2)', 103200, 0, N'AlphaBooks', N'	NXB Dân Trí ', N'	Sara', NULL, N'14.5 x 20.5 cm', 516, 500, N'Bìa mềm', CAST(N'2017-10-09T00:00:00' AS SmallDateTime), N'Vì trái tim có hình ngọn lửa, nên dù yêu con đến mấy, cha mẹ cũng cần phải biết "tàn nhẫn", cần phải đẩy con ra khỏi vòng tay ấm áp của mình, dằn lòng tập cho con quen với nghịch cảnh và cố giữ một ánh nhìn lạnh nhạt để con tự chống chọi với khó khăn. Cha mẹ chỉ nên đứng từ xa, dùng tình yêu thương của mình để thắp lên ngọn lửa nghị lực, giúp con trưởng thành với một trái tim quả cảm, nhiệt thành và mạnh mẽ. Và như vậy, "tàn nhẫn" cũng là "yêu thương", một dạng thức yêu thương có trách nhiệm để đem lại cho gia đình một đứa con ngoan, và trao cho xã hội một công dân tốt.

Sara Imas là một bà mẹ Trung Quốc mang trong mình dòng máu Do Thái. Sau khi quan hệ Trung Quốc - Israel được thiết lập, trước tiếng gọi trở về của cố hương, Sara đã từ bỏ cuộc sống an yên ở Thượng Hải, mang theo ba đứa con thơ để trở về Israel, nơi đồng bào của bà đang phải ngày ngày chịu đựng khói lửa chiến tranh, bắt đầu một trải nghiệm giáo dục đặc biệt của mình. Khác với tập 1, Vô cùng tàn nhẫn, vô cùng yêu thương tập 2 đã đối chiếu một cách biệt lập giữa phương thức nuôi dạy con của người Trung Quốc và người Israel. Tác giả không ngần ngại phơi bày những bất cập vốn tồn tại đã lâu trong cách nuôi dạy con của người Trung Quốc, đồng thời nêu bật những quan điểm về tình mẫu tử, những giá trị thiết thực trong nền giáo dục Do Thái.', N'Image\cover__2__u2654_d20160822_t103108_894505_550x550.jpg', 54, 5)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1044, N'151 BÍ KÍP GIÚP TRẺ HÀO HỨNG ĐẾN TRƯỜNG', 63200, 0, N'1980Books', N'NXB Dân Trí', N'	Robin MCClude', NULL, N'	13.5 cm x 20.5 cm ', 250, 250, N'Bìa mềm', CAST(N'2015-06-09T00:00:00' AS SmallDateTime), N'COMO.VN - 151 Bí Kíp Giúp Trẻ Hào Hứng Đến Trường

Đối với các bậc làm cha mẹ có con bắt đầu vào lớp Một, nếu bạn thấy mỗi sáng đều phải vật lộn khi đưa con đến trường thì hãy thử bắt đầu với 3 bí kíp sau đây nhé:

- Luôn cho bé ăn sáng trước khi đến trường vì bữa sáng là bữa quan trọng nhất trong ngày;

- Mỗi ngày, hãy hỏi bé 3 điều làm bé thấy thích thú nhất xảy ra ở trường;

- Hỏi bé về những việc bé không thể làm, hãy để bé bắt đầu trả lời với "Con không thể...".

Bạn sẽ biết được mình cần giúp bé như thế nào và xác định thời gian bé có thể làm việc đó.

151 Bí Kíp Giúp Trẻ Hào Hứng Đến Trường mang tới rất nhiều lời khuyên hiệu quả đã được kiểm chứng bởi những giáo viên tiểu học đầy kinh nghiệm và tâm huyết. Họ biết chính xác những điều bạn làm và không nên làm. Những mẹo nhỏ hữu ích cùng những gợi ý thiết thực đã được các bậc phụ huynh áp dụng thành công trong việc nuôi dạy con cái.

Thế giới sách Online Como.vn trân trọng giới thiệu!', N'Image\151_bi_kip_giup_tre_hao_hung_den_truong_thumb_382x600.jpg', 30, 5)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1045, N'HỌC CÁCH NÓI VỚI CON', 87200, 0, N'1980Books', N'	NXB Dân Trí', N'	Tanith Carey', NULL, N'	13.5 cm x 20.5 cm ', 230, 230, N'	Bìa mềm', CAST(N'2016-04-01T00:00:00' AS SmallDateTime), N'NULLCOMO.VN - Học Cách Nói Với Con

Giáo dục trẻ em là vấn đề đang được toàn xã hội quan tâm, đặc biệt, phương pháp giáo dục thúc ép còn gây ra nhiều tranh cãi. Từ những nghiên cứu kỹ lưỡng từ thực tế, kết hợp tham khảo ý kiến của nhiều chuyên gia tâm lý nổi tiếng, tác giả Tanith Carey cho ra đời cuốn sách “Học cách nói với con” với phương pháp nuôi dạy con khoa học, phù hợp.

Trong cuốn sách tác giả đã đưa ra những dẫn chứng cụ thể để chứng minh rằng vì sao “cha mẹ hổ” là trở thành xu hướng phổ biến trên toàn cầu hiện nay. Đồng thời chỉ ra một trong số những nguyên nhân khiến các bậc cha mẹ có phương pháp giáo dục hà khắc với con cái. Mặt khác, cuốn sách còn chỉ ra những mối nguy hại ghê gớm của phương pháp nuôi dạy con cạnh tranh, áp lực đang ảnh hưởng đến trực tiếp đến trẻ như thế nào. Không chỉ gây ảnh hưởng đến mối quan hệ gần gũi, gắn bó giữa cha mẹ và con cái phương pháp này con gây ra hậu quả nghiêm trọng mà nhiều bậc cha mẹ không thể lường trước được.

Thông điệp cuối cùng mà tác giả muốn gửi tới các bậc cha mẹ “không bao giờ là quá muộn” để học cách yêu thương và mang đến cho con những điều tuyệt vời, hạnh phúc nhất trong cuộc sống.

Thế giới sách Online Como.vn trân trọng giới thiệu!', N'Image\hoc_cach_noi_voi_con_1000x1602.jpg', 8, 5)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1046, N'MONEY KIDS DẠY CON CÁCH TIÊU TIỀN', 63200, 0, N'1980Books', N'	NXB Dân Trí', N'	Brette McWhorter Sember', NULL, N'	19 cm x 19 cm ', 216, 216, N'	Bìa mềm', CAST(N'2015-09-08T00:00:00' AS SmallDateTime), N'Brette McWhorter Sember từng là một luật sư và là tác giả của 40 cuốn sách viết về cách giáo dục con cái. Bà từng tham gia giảng dạy trực tuyến về cách sử dụng tiền bạc và giá trị của đồng tiền ở hai trường Đại học Noble và barnes, đồng thời bà cũng là tác giả của cuốn sách Dạy con cách tiêu tiền - Everything Kids’ Money Book.

Dạy con cách tiêu tiền là cuốn sách dạy trẻ cách sử dụng đồng tiền, không bao giờ là quá sớm để dạy trẻ về giá trị của đồng tiền bởi việc học về tiền, hiểu về tiền, biết kiếm tiền và biết quản lý chi tiêu hợp lý sẽ giúp trẻ tự tin kiểm soát tài chính của mình ngay từ khi còn nhỏ. Tại sao con bạn chỉ biết ngửa tay xin tiền trong khi con người khác đã biết cách kiếm tiền và tại sao con bạn chỉ biết tiêu xài phung phí mà chưa một lần từng nghĩ những đồng tiền con tiêu được đổi lấy từ sự vất vả, cực nhọc của bố mẹ. Nếu con hiểu được như vậy thì chắc có lẽ con đã có cái nhìn và cách suy nghĩ khác khi sử dụng đồng tiền, nhưng để con có được những hiểu biết sâu sắc như vậy thì việc dạy cho con về những kiến thức ấy phải được bắt đầu ngay từ khi con còn nhỏ.

Chín chương trong cuốn sách sẽ là chín bài học cần thiết về tiền bạn cần dạy cho con để giúp con hiểu được giá trị của những đồng tiền mà con sử dụng hàng ngày, từ việc hiểu được giá trị của đồng tiền sẽ giúp con biết cách tiết kiệm tiền và biết đầu tư tiền của mình một cách khôn khéo để tiền đẻ ra tiền và quan trọng hơn cả là từ cuốn sách sẽ dạy cho các em cách chi tiêu những đồng tiền mình có một cách hợp lý để trở thành người trưởng thành tiêu dùng thông thái trong tương lai.', N'Image\money_kids_day_con_cach_tieu_tien_1000x978.png', 12, 5)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1047, N'CHA MẸ THÔNG THÁI CON THÔNG MINH', 120000, 0, N'1980Books', N'	NXB Dân Trí', N'Richard Guare and Peg Dawson', NULL, N'	13 cm x 20.5 cm ', 559, 559, N'	Bìa mềm', CAST(N'2016-11-03T00:00:00' AS SmallDateTime), N'Khả năng sinh học của một đứa trẻ trong việc phát triển kỹ năng thực hành được xác định từ trước khi đứa trẻ sinh ra, tuy nhiên liệu đứa trẻ có đạt được hết tiềm năng của mình trong việc phát triển hay không còn phụ thuộc vào rất nhiều yếu tố. Trong đó, các bạn, với tư cách là những bậc cha mẹ, đóng góp một phần rất lớn vào việc thúc đẩy tiềm năng của trẻ.

Thấu hiểu điều gì là điển hình ở trẻ trong những độ tuổi khác nhau sẽ giúp bạn đặt ra những mục tiêu có tính thực tế cao để có thể thực hiện và tạo động lực cho trẻ. Bạn cũng sẽ học được nên tìm đến đâu khi bạn gặp phải vấn đề trong việc tự xử lý các khó khăn của trẻ, hoặc liệu có nên yêu cầu hỗ trợ thêm từ phía nhà trường hay tìm kiếm đến các chuyên gia.

Những thay đổi nhỏ có thể bồi đắp nên sự cải thiện lớn. Bạn sẽ cảm nhận được sự hữu ích của cuốn sách, bất kể bạn đang ở đâu trên hành trình đưa con từ thời ấu thơ đến sự độc lập.', N'Image\cha_me_thong_thai_con_thong_minh_600x950.jpg', 43, 5)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1048, N'ĐỂ CHỒNG BẠN TRỞ THÀNH ÔNG BỐ ĐẢM', 55200, 0, N'1980Books', N'	NXB Thế Giới ', N'Ota Toshimasa', NULL, N'13 cm x 20 cm ', 176, 176, N'Bìa mềm', CAST(N'2016-05-23T00:00:00' AS SmallDateTime), N'Thời gian chăm con nhỏ đối với các bậc cha mẹ là vô cùng bận rộn. Thông thường, việc chăm con chủ yếu do các bà mẹ đảm nhiệm. Làm thế nào để các ông bố có thể cùng chia sẻ điều này? Làm sao để khi các bà mẹ bận rộn, không cần nói gì mà các ông bố vẫn có thể quan tâm, đoán ý và hết lòng chăm sóc vợ con? Cuốn sách thực sự là một cuốn cẩm nang hữu ích đưa ra các chiến lược giúp các bà mẹ hướng dẫn các ông bố trở thành những người cha tốt. Nó không chỉ giúp quá trình chăm con nhỏ của mẹ trở nên thú vị, hạnh phúc mà còn khiến mối quan hệ với ông xã gắn bó hơn.

Cuốn sách Để chồng bạn trở thành ông bố đảm đưa ra các phương pháp hướng dẫn bạn “cải tạo” ông xã thành người “đàn ông của gia đình”. Vậy như thế nào là “người đàn ông của gia đình”? Tổng quát thì đó là ông xã biết chăm lo cho gia đình, nhưng gần đây một số tạp chí phụ nữ đã đưa ra những tiêu chí cụ thể hơn.

Trích dẫn

"Việc vợ chồng cãi nhau nếu làm đúng cách cũng có thể trở thành “tài liệu giáo dục” rất có ích đối với con. Ông xã và bạn tranh cãi đồng nghĩa với việc ông xã không phó mặc tất cả việc nhà, chăm sóc con cái cho mẹ. Tóm lại, hai vợ chồng biết tranh luận, cãi nhau theo tôi là ưu điểm lớn nhất của việc nhà có “người chồng đảm đang”.

Có thể nói điều quan trọng đối với PAPA không phải là có thể tắm cho con một cách thành thạo, nấu ăn ngon....', N'Image\de_tro_thanh_ong_bo_can_dam_thumb_397x600.jpg', 9, 5)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1049, N'3 PHÚT CHO ÔNG BỐ BẬN RỘN', 63200, 0, N'1980Books', N'NXB Thế Giới ', N'	Ota Toshimata', NULL, N'	13 cm x 20 cm ', 210, 210, N'	Bìa mềm', CAST(N'2016-06-03T00:00:00' AS SmallDateTime), N'Trong cuộc sống hiện đại có rất nhiều ông bố bận rộn đến mức cả tuần không có thời gian để thong thả chơi cùng con. Làm thế nào để các ông bố bận rộn vẫn có thể tạo ra được vài phút mỗi ngày để chơi với con, cùng con phát triển các kỹ năng, nuôi dưỡng tình cha con trong gia đình?

Giải pháp mà cuốn sách này mang đến cho người đọc là “3 phút nuôi dạy con”. Thử nuôi dạy con trong 3 phút. Có rất nhiều việc có thể làm được trong 3 phút. Chỉ với 3 phút dành cho gia đình, 3 phút để thực sự bên con, thì đó chắc chắn là khoảng thời gian đáng giá và ý nghĩa, đem đến những thay đổi nhất định không chỉ với con cái, với gia đình mà với tự bản thân những ông bố bận rộn. “3 phút nuôi dạy con” đã thổi một làn gió mới vào giá trị quan “công việc là trên hết”.

Trích dẫn

“Thời gian thực ra cũng uyển chuyển như nước. Nếu biết học cách sử dụng thời gian dành cho gia đình một cách có ý nghĩa thì bạn sẽ không còn bị công việc chi phối nữa, vì dù thời gian có hạn hẹp thì trong quãng thời gian hạn hẹp đó bạn và cả gia đình vẫn có thể biến nó thành một quãng thời gian thực sự có ý nghĩa để ai cũng cảm thấy hài lòng.”', N'Image\3_phut_moi_ngay_cho_ong_bo_ban_ron_1000x1538.jpg', 11, 5)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1050, N'CÁCH NGƯỜI NHẬT TRUYỀN CẢM HỨNG CHO CON', 68000, 0, N'1980Books', N'	NXB Thế Giới ', N'Nishimura Hajime', NULL, N'	13 cm x 20 cm ', 244, 244, N'	Bìa mềm', CAST(N'2016-04-29T00:00:00' AS SmallDateTime), N'Nếu chỉ nghĩ làm thế nào để đem lại tinh thần ham học cho trẻ, thì có lẽ thái độ của trẻ sẽ không bao giờ thay đổi. Lý do vì ham học không phải là điều có thể đem lại mà là điều cần được khơi dậy. Gây được hứng thú học không phải là việc khó mà ngược lại, trong mối quan hệ vui vẻ, tích cực giữa cha mẹ và con cái, hứng thú học sẽ được nuôi dưỡng. Quan sát, tìm kiếm những mầm mống của hứng thú, chăm sóc và nuôi dưỡng chúng - những kiến thức cơ bản được đúc rút trong cuốn sách sẽ giúp trẻ dần thay đổi, khơi dậy cảm hứng học tập trong trẻ.

Trích dẫn

"Có những trẻ mới nhìn qua tưởng chừng không hề có hứng thú với bất cứ thứ gì nhưng thực ra trong các em luôn có những hứng thú tiềm ẩn. Tôi thường xuyên tiếp xúc với trẻ tại trường luyện thi. Ở trường luyện thi có rất nhiều kiểu học sinh, trong đó có những trẻ nhìn như không có một chút hứng thú gì với việc học. Tuy nhiên đó chỉ là vẻ bên ngoài thôi. Nếu bỏ công sức chú ý quan sát kỹ thì chắc chắn ta sẽ nhìn thấy các em có những sở thích, quan tâm và hứng thú tới một điều gì đó nhất định. Khi đã biết được sở thích, quan tâm và giá trị quan là gì, ta có thể dẫn dắt để các em có được hứng thú học và trở nên ham học hơn.

Việc được bố mẹ khen ngợi, dù chỉ là điều rất nhỏ, sẽ làm cho “ham muốn được công nhận” thoả mãn, từ đó sẽ cho trẻ sự tự tin. Chúng ta có thể khen ngợi trẻ nhiều việc, từ nấu ăn, giúp mẹ làm việc nhà cho đến các việc trên trường, ở câu lạc bộ(1), học nhạc piano, học bơi, tham gia thi đấu bóng chày, bóng đá hay khen các sở thích của trẻ như đọc sách, vẽ tranh. Điều quan trọng ở đây là quan tâm, khen ngợi trẻ cả những việc không phải là học. Điều này sẽ khiến trẻ cảm thấy tự tin, giúp nảy sinh ham muốn học hơn. Việc khen ngợi sẽ kích thích thêm tính tò mò, tăng sự tự tin, hỗ trợ để trẻ có hứng thú trong mọi việc."', N'Image\nguoi_nhat_truyen_cam_hung_cho_con_thumb_384x600.jpg', 27, 5)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1051, N'Minh Mạng Mật Chỉ', 103000, 0, N'Tri Thức Trẻ', N'NXB Thanh Niên', N'Giản Tư Hải', NULL, N'16x24 cm', 476, 550, N'Bìa Mềm', CAST(N'2018-05-01T00:00:00' AS SmallDateTime), N'Có nhiều truyền thuyết về kho báu của vua Minh Mạng. Tuy chưa ai có thể tiếp cận kho báu đó nhưng nó là có THẬT, chỉ có điều được bảo mật với một cơ chế vô cùng phức tạp và được tô vẽ lên bằng nhiều yếu tố huyền ảo. Thực thực - ảo ảo đan xen khiến cho câu chuyện về kho báu càng trở nên hấp dẫn. Nhưng đó là kho báu theo nghĩa đen – là vàng bạc, châu báu của nhà vua.

Khoác lên mình vỏ bọc là một kiến trúc sư nam tính, hào hoa, yêu lịch sử, Kỳ Phương thực chất là một người chuyên đi tìm kho báu. Sau một thời gian tạo mối quan hệ, anh đã được một người mạng mang dòng dõi hoàng tộc đề nghị tham gia khai quật và giải mã một thư tịch cổ của vua Minh Mạng.

Vào cuộc anh mới biết mình đang tham gia một nghi lễ bàn giao thần bí giữa hai thế lực cổ xưa là Hội Đạo sĩ cơ mật và những hậu duệ hoàng tộc có sứ mệnh đặc biệt. Thế nhưng nhân tố bí ẩn bất ngời xuất hiện làm cho lễ bàn giao không thực hiện Kỳ Phương định thoái lui song đá quá muộn. Anh bị cuốn vào cuộc đấu tranh giữa hàng loạt các thể lực: đối nghịch và trở thành nhân tố chủ chốt trong việc tìm kiếm kho báu.

Theo đuổi hành trình truy tìm kho báu cùng anh chàng kiến trúc sư am hiểu lịch sử và khảo cổ Kỳ Phương còn có cô nàng Tôn Nữ Bạch Lan - hậu duệ trực hệ chín đời của vị vua lớn triều Nguyễn; một giảng viên lịch sử với vốn Hán Nôm sâu sắc, cô gái Huế vừa dịu dàng vừa dữ dội có cái tên đẹp - Diệu Vy; một lão “khùng” với danh xưng nhà Huế học Nguyễn Khắc Huynh – một trong tứ trụ của hội Đạo sĩ cơ mật. Ngoài ra còn một lực lượng cảnh sát, quân đội hùng hậu với tên chỉ huy đầy tham vọng cũng mang hết những tinh túy trong nghệ thuật quân sự ra để chạy đua với nhóm người kia. Kẻ thì liều chết bảo vệ kho báu, kẻ muốn độc chiếm, người thì chỉ đơn giản là niềm say mê lịch sử và khảo cổ…

Cuối cùng, sau khi biết hết miền đất cố đô Huế chứa đựng bề dày truyền thống lịch sử, văn hóa, trải qua biết bao gian nan, vất vả cũng như những cảm xúc bất ngờ, bi thương đến tột cùng. Kỳ Phương đã giải mã ra được "bí ẩn thế kỷ" này. Vậy thực chất "Minh Mạng Mật Chỉ" là gì và kho báu đó có giá trị đến mức nào mà khiến cho một vị vua của thời phong kiến lại có thể thiết lập cơ chế bảo mật ngoạn mục đến như vậy?

Trong suốt câu chuyện của Minh Mạng Mật Chỉ, mỗi một tín hiệu của kho báu xuất hiện, với vốn kiến thức của mỗi nhân vật khi phân tích, tranh luận thì chính độc giả cũng thu được một KHO BÁU vô giá về tri thức: lịch sử, văn hóa, kiến trúc, khảo cổ,…

Một người yêu sử, một người yêu Huế, một người mê khảo cổ, một fan của văn học trinh thám, một tín đồ của Phật học hay đơn giản là một người yêu sách chắc chắn đều có thể chìm đắm vào thế giới của Minh Mạng Mật Chỉ

Minh Mạng Mật Chỉ chẳng phải là KHO BÁU tri thức sao?

Hãy đọc chậm và nhấm nháp những con chữ trongMinh Mạng Mật Chỉ, bạn sẽ thấy thấm vô cùng.', N'Image\minhmangmatchi.jpg', 20, 6)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1052, N'ĐỐNG MỀM NHŨN HẠNH PHÚC', 57600, 0, N'Nhã Nam', N'	NXB Hội Nhà Văn ', N'Sarah Andersen ', N'Mô Chi', N'15x20 cm', 125, NULL, N'Bìa Mềm', CAST(N'2018-06-25T00:00:00' AS SmallDateTime), N'Một năm sau kể từ ngày ra đời Làm người lớn, một điều huyền bí – cuốn truyện tranh tự họa cực kỳ hài hước và được yêu thích, là cuốn sách thứ hai của Sarah Anderson: Đống mềm nhũn hạnh phúc (Big Mushy Happy Lump - A Sarah''s Scribbles Collection).

Tiếp tục trong thể loại “sách tranh nguệch ngoạc” đầy sáng tạo, Sarah Andersen mang đến những tình huống quen thuộc: sức công phá của chu kỳ kinh nguyệt, niềm hạnh phúc và sự thoải mái trong tình yêu, nỗi e sợ khi giao tiếp xã hội…, với sự hài hước chân thành, để tái hiện một cách thú vị những lối nghĩ truyền thống đã tồn tại bao năm, gợi mở óc quan sát của độc giả theo một cách lạ lẫm nhưng tuyệt vời tao nhã. Tác giả đặc biệt sắc sảo khi đánh giá lại các tiêu chuẩn phổ cập mà hóa ra thật phi lý, ngớ ngẩn mà những phụ nữ trẻ hiện đại phải chịu đựng. Cuốn thứ hai dường như còn hấp dẫn hơn cả cuốn đầu: thông minh, ấm áp, vừa đủ dịu dàng và hài hước,  đầy ắp sự dí dỏm từ đầu đến cuối, ngay cả ở những đoạn tự sự dài của Sarah.

“Có thể bạn đã từng xem truyện tranh của Sarah Andersen, và bạn sẽ cảm thấy cô có khả năng đọc tâm trí của bạn, khám phá những điều kỳ diệu trong tất cả những lo lắng của bạn. Thật thú vị!”

Bustle', N'Image\dong_mem_nhunh_han_phuc.jpg', 25, 6)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1053, N'ANIMORPHS NGƯỜI HÓA THÚ (TẬP 1) - CUỘC XÂM LƯỢC', 55200, 0, N'Nhã Nam', N'NXB Hội Nhà Văn ', N'	
Katherine Applegate', N'Gia Kỳ', N'14x20.5 cm', 204, NULL, N'Bìa Mềm', CAST(N'2018-06-14T00:00:00' AS SmallDateTime), N'Tôi chỉ dám tiết lộ tên tôi là Jake. Còn họ tên đầy đủ ư? Xin cho phép tôi giữ bí mật. Nói ra cực kì nguy hiểm, bởi bọn Mượn xác có mặt khắp nơi. Nếu biết tên họ đầy đủ, chúng có thể lần ra tôi và bạn bè của tôi. Chúng mà xử những ai chống đối thì, ôi thôi khủng khiếp lắm, thà đừng nghĩ tới còn hơn.

Tôi cũng không thể tiết lộ nơi tôi sống. Tin tôi đi, đó là một nơi có thật, một thành phố thật. Biết đâu chừng thành phố ấy cũng chính là nơi bạn sống.

Tôi viết tuốt tuột ra đây để mọi người biết sự thật. Nhờ đó may mắn ra loài người cầm cự được đến khi người Andalite quay lại cứu chúng ta như họ đã hứa….', N'Image\Animorphs_cuoc_sam_luoc.jpg', 10, 6)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1054, N'TRẢNG ĐẤT TRỐNG', 86400, 0, N'Đinh Tị Books', N'NXB Văn Học', N'Robert Dugoni', N'Đỗ Hoàng Nguyên', N'14.5 x 20.5 cm', 432, 450, NULL, CAST(N'2018-01-01T00:00:00' AS SmallDateTime), N'Vào một đêm tối trời, cô nữ sinh Da Đỏ Kimi Kanasket bị mất tích trên đường đi làm thêm về. Sáng hôm sau, người ta phát hiện xác cô gái ở dưới sông và cảnh sát nhanh chóng kết luận rằng cô gái đã tự tử. Nhưng viên cảnh sát mới vào nghề Buzz Almond lại không nghĩ như thế. Anh âm thầm mở cuộc điều tra và dần tìm ra sự thật, nhưng vì một lý do nào đó mà anh không thể hoàn tất cuộc điều tra ấy. Hồ sơ vụ án bị bỏ ngỏ. Cho đến bốn mươi năm sau, khi Buzz qua đời, con gái của Buzz mới tìm đến Tracy Crosswhite, một điều tra viên có năng lực của Sở Cảnh sát Seattle để nhờ cô mở lại vụ án, hoàn thành tâm nguyện của cha mình. Bốn mươi năm là một khoảng thời gian dài, việc lần theo các đầu mối Buzz Almond để lại không phải là chuyện đơn giản, tuy nhiên, bằng sự đồng cảm sâu sắc và lòng trắc ẩn của mình, Tracy quyết tâm tìm ra sự thật, trả lại sự công bằng cho người đã khuất và đem lại niềm an ủi cho người thân của cô.', N'Image\trangdattrong.jpg', 14, 6)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1055, N'CĂN HẦM TỐI', 100800, 0, N'Đinh Tị Books', N'NXB Văn Học', N'Robert Dugoni', N'Thu Phong', N'14.5x20.5 cm', 520, 400, NULL, CAST(N'2018-01-01T00:00:00' AS SmallDateTime), N'Vào một đêm mưa gió, cô gái trẻ Sarah Crosswhite bị mất tích khi đang trên đường lái xe về nhà sau cuộc thi bắn súng. Hung thủ nhanh chóng bị bắt và bị kết án. Đó là một kẻ từng có tiền án bắt cóc và cưỡng bức phụ nữ. Tuy nhiên hắn kiên quyết không chịu nhận tội đã bắt cóc và sát hại Sarah, cũng như không chịu khai mình giấu xác Sarah ở đâu. Khi đã bị tống vào tù, hắn vẫn liên tục kêu oan.

Chị gái của Sarah là Tracy Crosswhite cũng nhận thấy vụ xét xử này diễn ra quá vội vàng và có nhiều điểm đáng ngờ: luật sư bào chữa không làm việc tận tâm, lời khai của nhân chứng không đủ sức thuyết phục, vật chứng thu được tại nhà của nghi phạm không phải là những món đồ mà em gái cô đeo trên người vào hôm cô gái mất tích… Nhưng những thắc mắc của cô đều bị gạt đi. Vì không muốn một người mà cô nghĩ là vô tội bị bắt oan uổng trong khi hung thủ thật sự vẫn còn nhởn nhơ ngoài vòng pháp luật, Tracy bèn từ bỏ công việc mơ ước để thi vào Học viện Cảnh sát, quyết tâm trở thành một điều tra viên để lật lại vụ án của em gái', N'Image\can_ham_toi.jpg', 7, 6)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1056, N'MẮC KẸT', 116000, 0, N'Đinh Tị Books', N'NXB Văn Học', N'Robert Dugoni', N'Quách Cẩm Phương', N'14.5 x 20.5 cm', 564, 600, NULL, CAST(N'2018-01-01T00:00:00' AS SmallDateTime), N'Trong một lần đi đánh bắt cua ở eo biển Puget, cậu nam sinh trung học Kurt Schill đã kéo nhầm cái lồng chứa xác chết của một cô gái trẻ. Cậu lập tức báo cảnh sát. Cảnh sát nhanh chóng vào cuộc, nhưng vì xác chết đã phân hủy phần nào nên việc xác minh danh tính của nạn nhân không hề dễ dàng. Lần theo từng manh mối, cuối cùng họ cũng tìm ra được thân phận của nạn nhân, nhưng lúc này mọi chuyện lại trở nên rắc rối hơn. Dường như trước khi chết, nạn nhân đang cố thay đổi nhân dạng. Tại sao cô ta phải làm vậy? Cô ta đang trốn tránh ai hay trốn tránh cái gì? Tại sao cuối cùng cô ta vẫn bị giết? Kẻ sát hại cô ta rốt cuộc là ai? Những câu hỏi cứ liên tục nảy sinh và mỗi khi cảnh sát lần ra được một đầu mối thì họ lại phải đối mặt với một vấn đề mới. Hết bất ngờ này đến bất ngờ khác xuất hiện khiến cho vụ án vốn phức tạp càng trở nên rối như mớ bòng bong, thậm chí nhiều lúc còn rơi vào bế tắc…

Một tác phẩm của Robert Dugoni, người được tạp chí Providence mệnh danh là "vị vua của dòng sách văn học trinh thám pháp lý" và được cho là "người kế vị ngai vàng văn học của John Grisham". ', N'Image\mac_ket.jpg', 9, 6)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1057, N'TRÁI ĐẤT TRÒN KHÔNG GÌ LÀ KHÔNG THỂ (TÁI BẢN 2014)', 78400, 0, N'Sky Books', N'NXB Hội Nhà Văn ', N'Ploy Ngọc Bích', NULL, N'15x22cm', 380, NULL, N'Bìa Mềm', CAST(N'2014-10-01T00:00:00' AS SmallDateTime), N'Cuốn sách của nhưng câu chuyện logic trong bối cảnh phi logic nhất, đủ khiến bạn bất ngờ và có những trải nghiệm lí thú cùng cây bút cực chất: Ploy Ngoc Bích

"Hơn bảy tỷ người trên thế giới, suốt mười năm, ở những điểm địa cầu khác nhau, vì đâu hai con người mà cuộc sống chẳng liên quan lại cứ hay gần nhau? Có một bàn tay vô hình kết nối những sợi dây cũng vô hình vào người này với người kia, chứ chẳng phải là một ai khác? Một con ma mất trí nhớ sẽ hành xử thế nào?

Nếu trở lại quá khứ, phải lòng một cô gái của quá khứ, biết các biến cố của cuộc đời cô, chàng trai liệu có can đảm thay đổi lịch sử để cứu lấy người yêu? Trong trường hợp, sự sống của cô sẽ gây họa cho anh, thì thế nào?

Quyền năng hơn ma quỷ, trải qua sáu kiếp sống để nếm đủ cảm giác mất mát của con người, anh là ai?

Một chuyện tình xảy ra ở quá khứ và được báo mộng trong chuỗi giấc mơ của một họa sĩ, vì sao?

Biết đâu có những sinh linh kì bí đang sốn song song với bạn, cư ngụ trên con phố ngày ngày bạn đi qua mà mắt trần của bạn không nhìn thấy chúng?..."

Hãy vứt bỏ lại mọi lo toan đời thường, mọi logic sáo rỗng tầm thường của cuộc sống. Hãy để Ploy và trí tưởng tượng bất tận của cô nàng Bạch Dương này đưa bạn tới những miền đất kì diệu.

Và hãy đọc TRÁI ĐẤT TRÒN KHÔNG GÌ LÀ KHÔNG THỂ để nhận ra một điều: Hạnh phúc thực sự chỉ đến với những ai đủ khùng điên để tin rằng nó luôn tồn tại trong cuộc đời này.', N'Image\trai_dat_tron_khong_gi_la_khong_the_1000x1455.jpg', 26, 6)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1058, N'ÁN MẠNG TRÊN CHUYẾN TÀU TỐC HÀNH PHƯƠNG ĐÔNG', 82500, 0, N'NXB Trẻ', N'NXB Trẻ', N'Agatha Christie', NULL, N'13 x 20 cm', 306, 400, N'Bìa Mềm', CAST(N'2017-01-01T00:00:00' AS SmallDateTime), N'Kẻ sát nhân đang đồng hành cùng chúng ta – trên chuyến tàu này…”

Vừa quá nửa đêm, chuyến tàu tốc hành phương Đông nổi tiếng buộc phải ngừng lại vì tuyết rơi quá dày. Vào buổi sáng, tay triệu phú Simon Ratchett được phát hiện nằm chết trong toa riêng của mình với mười hai nhát dao, cửa khoang được khóa từ bên trong. Một trong những hành khách có mặt trên chuyến tàu là thủ phạm.

Một mình giữa cơn bão tuyết cùng nhân dạng mù mờ về tên sát nhân qua lời chứng của mọi người, thám tử Hercule Poirot phải tìm ra chân tướng kẻ thủ ác giữa mười hai kẻ thù của nạn nhân, trước khi tên giết người kịp đào thoát…

***

Phiên bản đặc biệt này dựa trên phim điện ảnh Án mạng trên chuyến tàu tốc hành phương Đông. Bộ phim dự kiến công chiếu ngày 1/12/2017 tại Việt Nam, quy tụ nhiều diễn viên nổi tiếng như Johnny Depp, Willem Dafoe, Penelope Cruz, Judi Dench, Michelle Pfeiffer…', N'Image\an_mang_kinh_hoang.jpg', 40, 6)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1059, N'THÁNH GIÁ RỖNG', 68600, 0, N'AZ Việt Nam', N'NXB Văn Học', N'Higashino Keigo', N'Nguyễn Hải Hà', N'13.5 x 20.5 cm ', NULL, 400, N'Bìa Mềm', CAST(N'2016-01-01T00:00:00' AS SmallDateTime), N'Đằng sau mỗi vụ án mạng luôn có một câu chuyện đau lòng và đầy nước mắt. Nhưng liệu rằng tử hình có phải là hình phạt thích đáng cuối cùng cho mọi tội ác? Công lý có thực sự được thực thi? Liệu rằng khi lời tuyên bố án tử được vang lên trước tòa, thân nhân của người bị hại có thực sự thấy yên lòng, nỗi đau có phần nào được bù đắp và kẻ gây nên tội ác có chút nào ăn năn, hối cải?

Nếu bạn cũng băn khoăn và chưa tìm được lời giải cho những câu hỏi này, hãy tự đi tìm câu trả lời trong cuốn tiểu thuyết “Thánh giá rỗng” của nhà văn bậc thầy trinh thám hàng đầu Nhật Bản - Higashino Keigo.

“Thánh giá rỗng” là câu chuyện xoay quanh hai vụ án mạng tàn khốc trong cùng một gia đình. Ngày 21 tháng 9 của mười một năm về trước, cô bé Manami ngây thơ, vô tội đã bị sát hại tại nhà riêng. Đúng mười một năm sau, mẹ cô bé - Sayoko, cũng bị giết hại dã man trên con đường thuộc quận Koto. Nakahara - một người chồng, một người cha bất hạnh đã hai lần phải cảm nhận nỗi đau mất người thân. Cái chết đầy uẩn khúc của Sayoko đã khiến anh tạm gác lại niềm riêng để bước vào cuộc hành trình tìm kiếm sự thật.

Trên con đường tìm lời giải đáp cho mọi thắc mắc của mình, Nakahara vô tình tìm ra mối liên hệ giữa vụ án mạng của vợ anh và một bí mật động trời khác đã được chôn giấu suốt hai mươi mốt năm trời.

Bằng giọng văn giản dị nhưng không kém phần sắc bén Higashino Keigo lại một lần nữa dẫn dắt người đọc đi hết từ ngạc nhiên này đến ngạc nhiên khác, lần tìm về quá khứ để từng bước, từng bước gỡ những nút thắt chưa được giải.

Không có những pha rượt đổi gay cấn đến nghẹt thở, không có những màn phá án li kì đến xuất thần, nhưng “Thánh giá rỗng” - cuốn sách có mặt trong top 5 các tiểu thuyết trinh thám hay nhất do Shukan Bunshun bình chọn, bằng một cách rất riêng vẫn ám ảnh và lôi cuốn người đọc vào những câu chuyện cảm động, đầy nước mắt của tình bạn, tình yêu, và tình phụ tử thiêng liêng...', N'Image\thanhgiarong.jpg', 50, 6)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1060, N'MÙA THU CỦA MÈO HOLMES', 71200, 0, N'Skynovel', N'NXB Phụ Nữ', N'Akagawa Jiro', N'Hải Đường', N'13cm x 20cm ', 256, NULL, N'Bìa Mềm', CAST(N'2017-04-01T00:00:00' AS SmallDateTime), N'Hành trình phá án ly kỳ của chú mèo thám tử

*Cuốn sách trinh thám đã làm say mê hàng triệu độc giả Nhật Bản.

*Được chuyển thể thành phim gây được tiếng vang lớn với lượt xem kỷ lục!

“Bi kịch của cuộc đời không phải là nó kết thúc quá sớm, mà là chúng ta đã đợi quá lâu để bắt đầu...”

Katayama trở thành thanh tra cảnh sát theo di nguyện của cha mình - người được biết đến là một thám tử vĩ đại. Tuy nhiên bởi vì chứng sợ máu, anh thậm chí còn không thể bước vào hiện trường các vụ án mạng.

Chính vì lý do như thế, Katayama đã không ít lần cố gắng bỏ nghề. Cho đến một ngày, khi đang hoàn toàn tuyệt vọng, thì anh tìm thấy một chú mèo - được đặt theo tên của vị thám tử nổi tiếng - Holmes.

Dù mang vẻ ngoài bình thường như bao chú mèo khác, nhưng kỳ lạ thay, mỗi khi có án mạng xảy ra là Holmes lại lùng sục khắp nơi, tìm kiếm chứng cứ, cào vào những đồ đạc có tính chất quyết định,… như thể đang cố gắng đưa ra gợi ý cho mọi người xung quanh vậy.

Chính nhờ sự trợ giúp của mèo Holmes, Katayama đã lần lượt phá giải được hàng loạt những vụ án tưởng chừng đã đi vào ngõ cụt.

Và rồi, cuộc đời của Katayama từ đó cũng bắt đầu lật sang trang mới.

Một vị thanh tra cảnh sát vô cảm với nghề nghiệp của chính mình…

Một chú mèo tam thể kỳ lạ hiểu được tiếng người cùng khả năng ý phá án tài tình…

Câu chuyện của họ sẽ đi về đâu?

Hãy cùng đón đọc cuốn tiểu thuyết trinh thám mới nhất từ SkyNovel: “Mùa thu của mèo Holmes” để tham gia vào chuyến hành trình đầy hấp dẫn của họ nhé!

Được chắp bút bởi nhà văn đại tài Agakawa Jiro, “Mùa thu của mèo Holmes” sẽ đưa bạn đến những vụ án mạng hóc búa cùng hàng loạt những tình tiết ly kỳ. Với sự đồng hành của vị thanh tra Katayama lập dị và chú mèo Holmes thông minh, từng vụ án sẽ được phá giải theo cách mà bạn không ngờ đến nhất!', N'mua_thu_cua_meo_homes_535x830.jpg', 70, 6)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1061, N'KHI MỌI ĐIỂM TỰA ĐỀU MẤT', 52500, 0, N'First News Trí Việt ', N'NXB TP. Thành Phố Hồ Chí Minh', N'Marci Shimoff', NULL, N'13 x 20.5 cm ', 277, 250, N'Bìa Mềm', CAST(N'2016-09-01T00:00:00' AS SmallDateTime), N'Với Happy for No Reason – Khi mọi điểm tựa đều mất, tác giả Marci Shimoff đã có một cuộc cách mạng về quan niệm hạnh phúc. Trong khi phần lớn những quyển sách ở thể loại này hướng vào việc giúp con người tìm kiếm hạnh phúc từ những yếu tố bên ngoài thì Happy for No Reason lại hướng vào những yếu tố nội tâm. Nhờ vậy, bạn sẽ tìm thấy những phương thức tuy đơn giản nhưng lại rất hữu hiệu giúp bạn trải nghiệm một cảm xúc mới – hạnh phúc tự thân – bất kể mọi tác động tiêu cực từ bên ngoài. Quyển sách sẽ gửi đến bạn nền tảng cơ bản nhất, giúp bạn duy trì một trạng thái hạnh phúc bền vững và trọn vẹn.

Thông qua một nghiên cứu được trình bày trong cuốn sách chúng ta nhận ra rằng: 50% giới hạn hạnh phúc được quy định do kiểu gen, phần còn lại là do chúng ta tích lũy. Và trong 50% còn lại chỉ 10% trong số đó là phụ thuộc vào những yếu tố như: sự giàu có, tình trạng hôn nhân và công việc; còn 40% cuối cùng là kết quả của những suy nghĩ, cảm giác, ngôn từ và hành động của con người.

Đọc cuốn sách để thấy rằng hạnh phúc là điều vô cùng giản dị và gần gũi bởi vì nó ở ngay bên trong mỗi chúng ta, ta không đi tìm hoặc nắm bắt hạnh phúc mà chúng ta rèn luyện để có được hạnh phúc. Vì vậy chúng ta hãy ngưng việc theo đuổi một điều không có kết quả và tốt hơn là nên bắt đầu rèn luyện để có được hạnh phúc bằng cách hình thành và trau dồi những thói quen.

Những trải nghiệm có thật trong cuộc sống cũng như những nghiên cứu của tác giả đã ảnh hưởng đến suy nghĩ của tác giả về hạnh phúc. Theo đó, có bảy bước rất đơn giản giúp bạn trải nghiệm niềm hạnh phúc đích thực. Với hình ảnh Ngôi nhà ẩn dụ cho cuộc sống con người, tác giả đã mượn hình ảnh này làm biểu tượng cho ý tưởng của mình: bảy bước để xây dựng “ngôi nhà hạnh phúc”. Bảy bước này có liên quan đến bảy đối tượng mà bạn cần quan tâm trong cuộc sống của mình: sức mạnh bản thân, tinh thần, con tim, cơ thể, tâm hồn, mục tiêu và con người.

Trân trọng giới thiệu !', N'Image\khi_moi_diem_tua_deu_mat.jpg', 65, 7)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1062, N'SỬ VIỆT – 12 KHÚC TRÁNG CA (TÁI BẢN)', 79200, 0, N'Bão', N'NXB Hội Nhà Văn', N'Dũng Phan', NULL, N'12 x 19 cm ', 272, 250, N'Bìa Mềm', CAST(N'2017-08-01T00:00:00' AS SmallDateTime), N'Tác phẩm “Sử Việt - 12 khúc tráng ca” kể về 12 câu chuyện dựng nước và giữ nước thời phong kiến, được chọn lọc theo tính chất quan trọng và hùng tráng trong dòng chảy lịch sử Việt Nam. Cuốn sách là sự kết hợp của những tư liệu lịch sử đã được kiểm chứng, xen kẽ với nhận định và đánh giá của người biên soạn. Tác phẩm kể lại các câu chuyện Sử Việt đầy hấp dẫn bằng một cách tiếp cận hoàn toàn mới, không phải như tiểu thuyết dã sử, nhưng cũng không phải là một tài liệu chuyên khảo khô khan.

Đây là cuốn sách dành cho tất cả mọi thế hệ. Bởi chỉ cần là người Việt Nam, thì đều có thể tìm kiếm được trong đây tình yêu với sử nhà bởi tính chất hấp dẫn, bi hùng và những bài học của tiền nhân để lại thông qua những câu chuyện đặc sắc.

Không chỉ đưa người đọc đến với những vị anh hùng như Lý Thường Kiệt, Trần Hưng Đạo… cuốn sách còn đến với những nhân vật quan trọng chưa được đánh giá đúng mực (Khúc Hạo), hay những địa danh bị bụi phủ mờ (thành Bình Lỗ, đầm Thi Nại), càng không chỉ nói sơ qua chiến tích ở Bạch Đằng, mà còn giúp hiểu thêm kĩ thuật đóng cọc trên sông. Bên cạnh giải đáp chuyện bí ẩn Quang Trung hành quân thần tốc, còn lý giải vì sao lãnh thổ dân tộc có diện mạo hình chữ S như ngày hôm nay.

“Sử Việt – 12 khúc tráng ca” hệt như một cuốn phim li kì, với hàng loạt câu hỏi về các nghi án lịch sử, những tranh đoạt hoàng quyền trong các triều đại phong kiến Việt Nam. Cuốn sách như một bản nhạc, khi thì dồn dập, khi thì bi ai, khi thì hùng tráng, khi thì trầm mặc. Những câu chuyện trập trùng xen kẽ như các khúc ca thăng trầm của dân tộc Việt Nam.

Trân trọng giới thiệu!', N'Image\suviet.jpg', 33, 7)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1063, N'BIÊN BẢN CHIẾN TRANH 1-2-3-4.75 (TÁI BẢN 2016)', 139000, 0, N'Thái Hà Books', N'	Nhà Xuất Bản Chính Trị Quốc Gia', N'Trần Mai Hạnh', NULL, N'14 x 20.5 cm ', 550, 550, N'Bìa Mềm', CAST(N'2016-01-01T00:00:00' AS SmallDateTime), N'Tác giả Trần Mai Hạnh từng là phóng viên chiến trường của Thông tấn xã Việt Nam ở chiến trường miền Nam, đầu năm 1975, ông được cử tham gia chiến dịch Hồ Chí Minh lịch sử với nhiệm vụ là phóng viên đặc biệt. Những tài liệu nguyên bản thu được, những trang ghi chép tại chỗ trong quá trình tham gia chiến dịch cùng những tài liệu quý giá ông thu thập được đã giúp tác giả viết nên Biên bản chiến tranh 1-2-3-4.75.

"Những sự kiện lịch sử chỉ diễn ra có một lần, cũng như đời mỗi con người chỉ sống có một lần. Nhưng để hiểu hết chân giá trị của lịch sử, để hiểu đúng một con người lại cần có thời gian, nhiều khi không thể chỉ đánh giá một lần. Lịch sử và cuộc sống luôn là một dòng chảy liên tục bất tận. Trong cuộc sống hiện tại ngày hôm nay có nền tảng và những giá trị tinh thần vô giá của quá khứ, đồng thời nó cũng chứa đựng mầm sống và sức sống mãnh liệt của tương lai."

(Trần Mai Hạnh)

Trân trọng giới thiệu!', N'Image\chientranh_501x484.jpg', 26, 7)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1064, N'KHỞI NGHIỆP THÔNG MINH - BÍ QUYẾT TỐI ƯU HỆ THỐNG VẬN HÀNH TỪ KHI KHỞI NGHIỆP', 95000, 0, N'AlphaBooks', N'NXB Thế Giới', N'	Ngô Công Trường', NULL, N'13 x 20.5 cm', 167, 200, N'Bìa Mềm', CAST(N'2018-01-01T00:00:00' AS SmallDateTime), N'Đọc Khởi Nghiệp Thông Minh để khởi nghiệp thành công! 

Là một người khởi nghiệp và tham gia đào tạo về khởi nghiệp, tôi hiểu rõ những khó khăn và rủi ro khi bạn bước đi trên con đường này. Tôi ước ao có những tài liệu thiết thực, tổng quát, đầy đủ để các bạn trẻ khởi nghiệp dựa vào đó, học hỏi và tránh được những va vấp không đáng có.

Có thể nói cho đến nay, Khởi nghiệp thông minh là một trong những cuốn sách đầu tiên của tác giả Việt Nam viết về đề tài này. Tác giả cũng còn khá trẻ và đã khởi nghiệp thành công. 

Cuốn sách nêu bật những kiến thức cơ bản mà bất kỳ doanh nhân trẻ nào cũng cần hiểu rõ khi quyết định đầu tư công sức, tiền bạc vào “đứa con” của mình. Từ những lý do cần tránh khi khởi nghiệp đến các bước chuẩn bị cho khởi nghiệp, từ mô hình  SMARTUP đến cách “thoát” khỏi công ty sau khi khởi nghiệp thành công – một trong những nội dung thú vị nhất của quyển sách!

Trong bối cảnh toàn xã hội quan tâm đến khởi nghiệp như hiện nay,  theo tôi, Khởi Nghiệp Thông Minh là một cẩm nang cần thiết và có giá trị không chỉ đối với những bạn trẻ đam mê khởi nghiệp.', N'Image\khoi_nghiep_thong_minh_304x472.jpg', 11, 7)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1065, N'BẦU TRỜI KHÔNG CHỈ CÓ MÀU XANH - TỰ TRUYỆN CỦA LÝ QUÍ TRUNG - NGƯỜI ĐỒNG SÁNG LẬP THƯƠNG HIỆU PHỞ 24', 52000, 0, N'NXB Trẻ', N'Đang cập nhật', N'Lý Qui Chung', NULL, N'13 x 20.5 cm', 182, 200, N'Bìa Mềm', CAST(N'2017-07-01T00:00:00' AS SmallDateTime), N'Đã từng được độc giả biết đến với vai trò là tác giả của những quyển sách viết về nhượng quyền thương hiệu và thương hiệu của Việt Nam, tác giả - doanh nhân Lý Quí Trung lại chia sẻ với bạn đọc câu chuyện về cuộc đời mình.

Đó là câu chuyện truyền cảm hứng về ước mơ và xây dựng ước mơ, về khởi nghiệp và đưa công ty trở thành có thương hiệu, về những khó khăn gặp phải trong cuộc đời và cách vượt qua cũng như bài học rút ra từ đó…

Với cách viết chân thành và gần gũi, bạn đọc, đặc biệt là bạn đọc trẻ, có thể hiểu được những thông điệp mà tác giả gửi gắm trong đó: đó là khi ước mơ của ta đủ lớn và có quyết tâm, thì mọi trở ngại trên con đường đều có thể vượt qua và xem đó là những bài học và kinh nghiệm quý báu trên con đường thành công trong sự nghiệp và gia đình.

Hy vọng quyển sách sẽ giúp được nhiều bạn trẻ có thêm đam mê và niềm tin trên con đường phát triển sự nghiệp của mình, vì đây cũng là một trong số ít ỏi những doanh nhân viết sách về cuộc đời mình ở thị trường Việt Nam.

Xem thêm: Chỉ Có Đam Mê - 20 Điều Chia Sẻ Cùng Người Khởi Nghiệp 

Thế Giới Sách Online trân trọng giới thiệu!', N'Image\BAU_TROI_KHONG_CHI_CO_MAU_XANH_400x628.jpg', 30, 7)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1066, N'BỘ LUẬT TỐ TỤNG HÌNH SỰ', 52000, 0, N'Trí Việt', N'Nhà xuất bản Lao Động', N'Đang cập nhật', NULL, N'13 x 19 cm', 0, 0, N'Bìa Mềm', CAST(N'2015-09-01T00:00:00' AS SmallDateTime), N'Nội dung sách bao gồm các văn bản quy phạm pháp luật quy định trình tự, thủ tục khởi tố, điều tra, truy tố, xét xử và thi hành án hình sự; chức năng, nhiệm vụ, quyền hạn và mối quan hệ giữa các cơ quan tiến hành tố tụng; nhiệm vụ, quyền hạn và trách nhiệm của những người tiến hành tố tụng; quyền và nghĩa vụ của những người tham gia tố tụng...', N'Image\luathinhsu.jpg', 25, 7)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1067, N'LA BÀN KHỞI NGHIỆP', 54400, 0, N'Tri ThứcTrẻ Books', N'NXB Dân Trí', N'Huỳnh Đức Vinh', NULL, N'14.5 x 20.5 cm', 100, 150, N'Bìa Mềm', CAST(N'2016-12-01T00:00:00' AS SmallDateTime), N'La Bàn Khởi Nghiệp quyển sách chứa đựng nhiều bài học kinh doanh cô đọng và xúc tích, góp phần phản ánh hiện trạng kinh doanh hiện tại của Việt Nam sẽ là kim chỉ nam hỗ trợ cho các doanh nhân trẻ thêm tự tin khi bước vào chốn thương trường. Quyển sách khéo léo kết hợp giữa lý luận kinh doanh gắn kết với việc phân tích thương trường đầy tin cậy, đồng thời kèm theo những luận cứ chặt chẽ nhằm làm rõ bản chất của kinh doanh; cũng như nhấn mạnh các tố chất cần thiết mà một nhà khởi nghiệp cần phải có để thành công. Dựa trên sự kết hợp rộng rãi dưới góc độ văn hóa, lịch sử, kinh tế, chính trị,...quyển sách mang đến cách nhìn thú vị đầy màu sắc về khởi nghiệp, giúp bạn trẻ nhìn nhận kinh doanh theo hướng đa chiều hơn và sâu rộng hơn.', N'Image\labankhoinghiep.jpg', 20, 7)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1068, N'CẨM NANG KHỞI NGHIỆP KINH DOANH', 134400, 0, N'	Tri Thức Trẻ Books', N'NXB Dân Trí', N'Ngô Thế Vinh', NULL, N'16 x 24 Cm ', 256, 300, N'Bìa Mềm', CAST(N'2017-01-01T00:00:00' AS SmallDateTime), N'Hà Lan là đất nước vốn có truyền thống lâu đời trong lĩnh vực kinh doanh và đã sản sinh ra rất nhiều những nhà khởi nghiệp vĩ đại. Dù được sinh ra ở Hà Lan hay không, họ đều được sống trong môi trường thuận lợi cho phép họ biến những ý tưởng của mình thành hiện thực. Nếu chúng ta muốn duy trì vị thế là một thế lực kinh tế đáng kể trong tương lai, chúng ta phải tiếp tục tạo nên những người khởi nghiệp đó.


Nếu bạn đã cầm cuốn sách hướng dẫn này lên vì đang có sẵn một ý tưởng kinh doanh tiềm năng, muốn mở doanh nghiệp để thực hiện nó, tôi khuyên bạn hãy chớp lấy cơ hội này và tham gia vào cuộc thi của chúng tôi.


Cuốn sách được chia làm 4 phần như sau:
Phần 1: Thành lập công ty – những công ty phát triển như thế nào
Phần 2: Tạo dựng ý tưởng kinh doanh và trình bày
Phần 3: Xây dựng kế hoạch kinh doanh
Phần 4: Định giá công ty khởi nghiệp nâng vốn góp', N'Image\khoi_su_kinh_doanh_267x400.jpg', 20, 7)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1069, N'CÓ MỘT NGÔI NHÀ ĐỂ TRỞ VỀ', 46610, 0, N'Thái Hà Books', N'NXB Lao Động', N'Chap ZeN', NULL, N'13 x 19 cm', 224, 300, N'Bìa mềm', CAST(N'2018-01-01T00:00:00' AS SmallDateTime), N'Mỗi ngày trôi qua, dù không cần cố gắng nhớ lại, bạn vẫn có thể biết mình đã có những cảm xúc gì, vui, buồn, khó chịu hay tức giận ra sao. Chúng luôn sống ở trong ta, có thể thế chỗ cho nhau lúc này, lúc kia và chi phối tính cách, cảm xúc của mỗi người. Nếu đó là một cảm giác mạnh hoặc ấn tượng, nó sẽ theo bạn suốt cả đời và để lại một vết khắc nào đó trong đời sống tình cảm của chúng ta. Dù ta có thể quên trong một thời gian dài nhưng chúng vẫn có thể trở lại mà không hẹn trước. Cuộc đời con người, vì thế, là chuỗi ngày ‘rong chơi’ của các cảm xúc và cảm giác.

Những cảm xúc này ẩn nấp dưới tên gọi của tình yêu, hạnh phúc, đam mê, khát vọng, trách nhiệm… Nếu chúng ta làm được, thực hiện được thì không sao, nhưng nếu ngược lại thì nó khiến ta rơi vào trạng thái cảm xúc tiêu cực. Mà thật buồn thay, phần lớn đời người lại sống trong những cảm xúc này. Người ta thường tìm đến những hoạt động thể chất, những trò giải trí cho tinh thần. Tưởng như càng làm thì càng xua tan được những cảm xúc tiêu cực này vậy. Tuy nhiên, những điều ấy chỉ giải quyết một phần nào đó, và, ở bên ngoài. Còn bên trong, ‘vấn đề’ vẫn nằm đó. Điều chúng ta thực sự cần, chính là một hành trình tâm linh.

Có một ngôi nhà để trở về là những mảng màu trong sáng nhưng cũng đầy dữ dội và tương phản trên bức tranh tâm của một con người cũng chất chứa nhiều nỗi niềm như bất kỳ người nào khác. Ở đó, chúng ta có thể thấy cuộc đấu tranh nội tâm không ngừng nghỉ trước những niềm vui ngắn ngủi, những mơ ước nhỏ nhoi, những hạnh phúc bình dị nhưng mong manh dễ vỡ cùng hoài nghi về tình yêu, hạnh phúc và một trăn trở tìm về sự bình yên trong tâm hồn. Đối mặt với những xúc cảm ấy, tác giả nhìn nhận những thứ bấy lâu chi phối bên trong mình một cách rõ ràng và cũng vị tha hơn. Đó là cách mà tác giả đã thực hiện hành trình tâm linh của mình. Hành trình tâm linh ấy chính là sự trở về với tâm mình, ‘ngôi nhà’ cho mọi thứ trong ta nương tựa. Mà ‘ngôi nhà’ ấy, chúng ta ai cũng có, để trở về.

', N'Image\Co_Mot_Ngoi_Nha_De_Tro_Ve_550x550.jpg', 20, 7)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1070, N'DOANH NGHIỆP TINH GỌN', 149250, 0, N'AlphaBooks', N'	NXB Công Thương', N'Ash Maurya', NULL, N'16 x 24 cm', 272, 280, N'Bìa Mềm', CAST(N'2018-01-01T00:00:00' AS SmallDateTime), N'Những doanh nghiệp lớn đã dùng kỹ thuật tinh gọn để xét lại mọi thứ: từ quản lý tài chính đến vận hành; từ kiến trúc hệ thống đến văn hóa tổ chức để theo đuổi sự tăng trưởng vượt trội bằng cách nào?

- Bằng cách sử dụng kỹ thuật Tinh gọn để tập trung vào con người và độ nhóm ở mọi cấp độ.

- Bằng cách tiếp cận phương thức giải quyết vấn đề kiểu thử nghiệm, khám phá ra các giải pháp, kiểm chứng các giả thiết và nhận phản hồi từ người dùng thật sự.

- Bằng cách dẫn dắt và quản lý các chương trình quy mô lớn thông qua việc trao quyền cho nhân viên, gia tăng tốc độ và chất lượng giao hàng đồng thời hạ thấp chi phí.

- Bằng cách thực thi những ý tưởng dựa trên kỹ thuật Khởi nghiệp tinh gọn ngay cả trong những môi trường phức tạp.

Cùng nhiều cách thức mới mẻ và hiệu quả khác nữa...', N'Image\doanh_nghiep_tinh_gon_304x472.jpg', 20, 7)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1071, N'CUỐN SỔ VẬN MỆNH', 66400, 0, N'Asbooks', N'NXB Thế Giới', N'Carey Jones', NULL, N'13 cm x 19 cm ', 312, NULL, N'Bìa Mềm', CAST(N'2018-08-24T00:00:00' AS SmallDateTime), N'Đã bao giờ bạn làm điều gì đó để rồi hối hận? Đã bao giờ bạn tự trách bản thân hàng trăm lần và lặp đi lặp lại mãi hai chữ “nếu như”? Đã bao giờ bạn tiếc nuối vì quá khứ không trở lại để cho bạn sửa sai?

Chúng ta thường đắm mình trong quá khứ để tiếc nuối những thứ đã qua mà lại bỏ quên hiện tại và tương lai. Quá khứ đã qua rồi và không thể trở lại, nhưng hiện tại và tương lai là thứ bạn có thể thay đổi.

Cuốn sổ vận mệnh – Kể chuyện tương lai 12 chòm sao là một cuốn sách đầy thú vị và đặc sắc với vô số cách giúp bạn khám phá tương lai của bản thân thông qua các yếu tố như ngày sinh, hoàng đạo cùng những yếu tố bí ẩn khác. Với cuốn sách này, bạn có thể dễ dàng nhận ra những điềm báo về vận may hay cơ hội, rủi ro và nghịch cảnh để có những phương án giải quyết thông minh khôn ngoan nhất, tránh lặp lại vết xe đổ của sai lầm, tăng tốc trên con đường tiến tới thành công, giành được hạnh phúc của bản thân.

Đừng bỏ quên mình trong quá khứ, hãy cứu mình từ những gì của hiện tại và tự tạo cơ hội cho mình từ điềm báo từ tương lai. Cuốn sổ vận mệnh – Kể chuyện tương lai 12 chòm sao, cuốn sách giúp cuộc sống bạn tươi sáng và ngọt ngào hơn.', N'Image\cuon_so_van_menh_624x960.jpg', 20, 9)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1072, N'VỀ NHÀ ĂN CƠM (BẢN CÓ CHỮ KÍ ĐỘC QUYỀN)', 151200, 0, N'	I Love Cook Books', N'NXB Thế Giới', N'Đức Nguyễn', NULL, N'17 cm x 24 cm ', 224, NULL, N'Bìa Mềm', CAST(N'2018-08-01T00:00:00' AS SmallDateTime), N'Ăn chay không chỉ còn nằm ở khuôn khổ tâm linh mà ngày nay còn đang dần trở thành xu hướng được nhiều người chọn lựa kể cả những bạn trẻ.

Bởi vậy, càng ngày đồ ăn chay càng được chế biến đa dạng, cầu kì và nhiều dinh dưỡng hơn. Món ăn chay hiện nay không đơn thuần là những món ăn đơn giản với những nguyên liệu chủ yếu từ rau củ, đậu nành, đậu hũ... lặp đi lặp lại như trước nữa. Với những nguyên liệu mới, phong phú và cách chế biến đa dạng, món chay đã trở thành món ăn cao cấp, sang trọng với hương vị mới mẻ và được trình bày đẹp mắt.

Với 45 công thức thuần chay đơn giản, dễ nấu trong “Về nhà ăn cơm”- cái tên thân thương gợi lên bữa cơm gia đình đầm ấm sẽ thổi một làn gió mới vào căn bếp nhỏ trong mỗi gia đình để các bạn được tiếp thêm cảm hứng với lối ăn uống lành mạnh này cũng như sẽ đập tan được mọi định kiến của bạn về “ăn chay giả thịt”, hay ăn chay là nhạt nhẽo đã tồn tại trong tâm thức của người Việt suốt một thời gian dài.', N'Image\ve_nha_an_com_663x960.jpg', 15, 9)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1073, N'2 3 DZÔÔÔÔÔ', 169600, 0, N'	I Love Cooks Books', N'NXB Thế Giới', N'Nguyễn Mạnh Hùng', NULL, N'18 cm x 23 cm ', 224, NULL, N'Bìa Mềm', CAST(N'2018-08-01T00:00:00' AS SmallDateTime), N'Khi vấn đề an toàn vệ sinh thực phẩm đã trở thành mối lo ngại khiến những "cuộc vui" ở hàng quán sẽ kém vui một chút vì mối lo "thực phẩm bẩn" thì nhậu tại gia chính là một giải pháp tuyệt vời. Nhưng nhậu tại gia biết nấu gì làm mồi nhắm?

Bạn yên tâm đi bởi bạn hoàn toàn có thể xắn tay áo, tự tin vào bếp thực hiện những món ăn với hơn 40 công thức có trong “2 3 Dzôôôôô”- Cuốn sách đầu tiên viết về các món nhậu tại Việt Nam, để có thể hô biến những cuộc nhậu tại gia trở thành những bữa tiệc linh đình ở các nhà hàng sang trọng. Và cuốn sách này sẽ góp phần giúp bạn trở thành một "đầu bếp chuyên nghiệp" trong mắt của người thân và những người khách được chào đón tại ngôi nhà của bạn, với những món ăn tưởng không dễ nhưng thật ra lại dễ không tưởng cho những bữa ăn hằng ngày hay thậm chí là mâm cỗ thịnh soạn đã khách.

Không chỉ vậy cuốn sách này còn đánh dấu sự trở lại của Chef Hungazit- một người nấu bếp bằng cả trái tim sau hai cuốn cookbook đình đám “Trái tim của chef” và “Chef- Đầu bếp chuyên nghiệp”', N'Image\2___3_zoo_727x960.jpg', 15, 9)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1074, N'HÀNH TRÌNH CAO NGUYÊN ĐÁ', 72000, 0, N'Tri Thức Trẻ', N'	NXB Giao Thông Vận Tải', N'Hachi8', NULL, N'13 x 20 cm', 240, 250, N'Bìa Mềm', CAST(N'2016-08-01T00:00:00' AS SmallDateTime), N'Hành trình cao nguyên đá là cuốn cẩm nang du lịch về phượt riêng vùng cao nguyên đá Hà Giang. Trong sách đầy ắp những thông tin bổ ích cho những người yêu phượt như "phượt là gì", "Đi phượt cần những gì?", "Đi xe máy như thế nào", cả thông tin về nhà hàng khách sạn trong suốt chuyến đi đều được tác giả chia sẻ một cách nhiệt tình.

Bằng tình yêu cháy bỏng của bản thân đối với vùng đất xinh đẹp say đắm lòng người này. Cặp phượt thủ trẻ đã khắc họa một vùng cao nguyên đá trải dài không khô cằn mà đẹp theo một cách rất riêng. Đẹp vì những mùa hoa nở rộ tưởng chừng đối lập mà hợp nhau lạ thường. Đẹp vì những khối đá đủ hình thù đặc biệt sinh động khiến ai một lần trông thấy cũng ngỡ ngàng đến choáng ngợp . Đep vì những phiên chợ nhộn nhịn kẻ bán, người mua, những chén rượu ngô nhấm nháp bên bàn thắng cố. Để những ai đã từng biết đến Hà Giang thêm hiểu và thêm yêu, những người chưa biết thì ôm mộng về một vùng đất đẹp mộc mạc trên quê hương Việt Nam.', N'Image\hanh_trinh_cao_nguyen_da_260x429.jpg', 10, 9)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1075, N'NHẬT BẢN ĐẾN VÀ YÊU', 63200, 0, N'AlphaBooks', N'NXB Thế giới', N'Dương Linh', NULL, N'14 x 20.5 cm', 280, 250, N'Bìa Mềm', CAST(N'2016-06-01T00:00:00' AS SmallDateTime), N'Bạn hoang mang vì không biết học tiếng Nhật thế nào?

Bạn hoang mang vì không biết tìm việc làm ở Nhật ra sao?

Bạn hoang mang làm thế nào để tự tin trong môi trường làm việc ở Nhật?

Cuốn sách Nhật Bản đến và yêu của Dương Linh là một cẩm nang bổ ích giúp bạn trả lời những câu hỏi trên, để có thể vững tin sống và thật sự hạnh phúc trên đất Nhật Bản.

“Một tôi với những ngày tháng còn xanh non với tiếng Nhật.

Một tôi mang trong mình ước mơ và khát khao đi Nhật.

Một tôi với đầy ắp những trải nghiệm đáng nhớ ở Nhật.

Một tôi chất chứa biết bao tâm sự, xúc cảm, hoài niệm.

Một tôi trưởng thành sau 5 năm tròn trĩnh ở Nhật.”', N'Image\0_nhat_ban_den_va_yeu_367x588.jpg', 10, 9)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1076, N'CHUYỆN CỦA BÁNH', 119200, 0, N'	I Love Cook Books', N'NXB Thế Giới', N'Nguyễn Bảo Anh Thư', NULL, N'15.6 cm x 21 cm ', 146, NULL, N'Bìa Cứng', CAST(N'2013-11-01T00:00:00' AS SmallDateTime), N'Chuyện của bánh, câu chuyện được kể bằng ngôn ngữ bánh trái của Nguyễn Bảo Anh Thư, cô gái bước ra từ sân chơi Masterchef Việt Nam mùa đầu tiên với biệt danh Công chúa bánh ngọt.

Cuốn sách với 26 công thức xuyên suốt bốn mùa với ý nghĩa mỗi mùa trong năm đều là mùa của bánh, và mùa nào cũng có những câu chuyện riêng. Tất cả đều gắn với những kỷ niệm, trải nghiệm và cả những bài học cuộc sống của Anh Thư. Sách được chia làm 4 phần, mỗi phần tương thích với một mùa trong năm, dựa trên cảm hứng từ các nguyên liệu cơ bản theo mùa dành cho từng loại bánh. Những chiếc bánh Mùa Xuân căng tràn sức sống với màu đỏ của các loại dâu, cà rốt và hoa hồng. Mùa Hạ rực rỡ cùng hương vị nhiệt đới từ những trái chanh, dứa và trà xanh. Thu đến dịu dàng cùng sắc vàng của táo thơm mùi quế, lê ngọt vị đường nâu và lát cheesecake bí ngô mềm mịn. Mùa Đông lạnh giá cũng là lúc những ngọt ngào ấm áp của bánh quy Noel và chocolate lên ngôi.

Chúng ta nên trông đợi gì vào mỗi cuốn sách dạy làm bánh từ I love Cookbook? Có phải là những công thức được hướng dẫn tỉ mỉ chính xác, những kinh nghiệm cực kỳ quý giá mà các MasterChef đã tích lũy theo thời gian cùng sự nỗ lực vượt trội, hay những câu chuyện cuộc sống đầy lý thú ẩn chứa cả một kho tàng bài học mà không dễ gì ta có cơ hội được trải qua. Câu trả lời là TẤT CẢ.', N'Image\chuyen_cua_banh_569x768.jpg', 14, 9)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1077, N'TUYỆT ĐỈNH MÓN CHAY', 108000, 0, N'	I Love Cook Books', N'NXB Thế Giới', N'Audrey Cosson', N'Hồng Nhung', N'17 cm x 24 cm ', 144, NULL, N'Bìa Cứng', CAST(N'2018-01-01T00:00:00' AS SmallDateTime), N'Ăn chay trở thành xu hướng lựa chọn của nhiều gia đình. Nhưng liệu nấu món chay có phức tạp lắm không? Xin đừng lo lắng, bạn sẽ không tốn nhiều thời gian nếu làm theo những thực đơn có trong Tuyệt đỉnh món chay.

Cuốn sách đến từ nước Pháp của tác giả nổi tiếng Audrey Cosson với 52 công thức cho những món chay tuyệt hảo sẽ giúp cho các bà nội trợ thực hiện được những món chay thật đẹp mắt và ngon miệng nhưng hết sức đơn giản từ rau, củ, các loại quả, hạt…

Ăn chay không dành cho riêng ai cả, bạn và gia đình hoàn toàn có thể có những bữa ăn chay thanh đạm vào những dịp đặc biệt trong tháng, vừa để thay đổi khẩu vị lại rất tốt cho sức khỏe.

Theo nghiên cứu của Viện Dinh dưỡng Quốc gia, ngoại trừ vấn đề tâm linh, chỉ tính riêng về mặt sức khỏe, ăn chay rất tốt nếu chúng ta hiểu biết và được tư vấn chính xác. Chế độ ăn này vừa đảm bảo năng lượng cho cơ thể hoạt động, không thừa, thiếu các vitamin và muối khoáng, giúp tăng cường sức khỏe.

Ăn chay vẫn có thể cung cấp đầy đủ cho cơ thể chất đạm, chất béo, chất bột đường vitamin và khoáng chất. Ngoài ra, lợi thế lớn nhất của các món chay là chứa các chất đạm và chất béo có nguồn gốc từ thực vật nên không chứa cholesterol, đồng thời rất dồi dào chất xơ “Người lớn tuổi, bệnh mạn tính, bệnh nhân rối loạn chuyển hóa, tiểu đường, cao huyết áp, tim mạch, có rối loạn tụy tạng, nên áp dụng chế độ ăn này”.', N'Image\tuyet_dinh_mon_chay_592x800.jpg', 18, 9)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1078, N'NHỮNG NGÓN TAY VANI - NGÀY VÀNG HẠNH PHÚC', 180000, 0, N'	I Love Cook Books', N'	NXB Văn Hóa Thông Tin', N'Huỳnh Đức Hùng', NULL, N'	20 cm x 24 cm', 208, NULL, N'Bìa Cứng', CAST(N'2014-12-01T00:00:00' AS SmallDateTime), N'Sau Những Ngón Tay Vani và La Vie en Rose, Ngày Vàng Hạnh Phúc là ấn phẩm thứ 3 trong series Những Ngón Tay Vani của Yun Lukas - chàng food blogger hiện nay đã trở thành một trong những tác giả trẻ nổi tiếng nhất của dòng sách cookbook cao cấp ở Việt Nam.

Nếu như Những Ngón Tay Vani là câu chuyện kể về niềm đam mê bếp bánh bắt nguồn từ những cảm hứng bé nhỏ trong truyền thống gia đình, và cuộc sống của chàng trai trẻ mới chập chững vào ngưỡng cửa cuộc đời; La Vie en Rose là những khoảnh khắc tình yêu của tuổi đôi mươi dịu ngọt thì Ngày Vàng Hạnh Phúc chính là quá trình trải nghiệm đầy đủ mọi cung bậc cuộc sống của một người đàn ông trưởng thành, đầy sức sống để theo đuổi và sống vì đam mê nhưng cũng biết dung hòa và trân trọng hạnh phúc giản dị. Vẫn với tinh thần “mookbook = mood + cookbook” của series Những Ngón Tay Vani, Ngày Vàng Hạnh Phúc sẽ là bức tranh ẩm thực và văn hóa sinh động nhất được vẽ lên bằng nguồn cảm hứng bất tận từ cuộc sống, thiên nhiên, cảnh quan và con người xung quanh tác giả Yun Lukas.

Cuốn sách sẽ là một cuộc hành trình đưa bạn chu du từ Thủ Đô cổ kính tới cực Bắc cheo leo đầy nông sản tươi ngọt, từ Sài Gòn hoa lệ lấp lánh tới Đà Lạt mù sương với những thức uống ấm nồng. Rồi cả mùa Thu của nước Nhật - mang trong mình sẵn đầy chất huyền ảo thơ mộng hay mùa Đông của nước Úc giá lạnh mà đắm say. Không chỉ là những công thức “cá tính và mới mẻ” đậm chất Yun Lukas, Ngày Vàng Hạnh Phúc thực sự sẽ là một cuốn nhật ký cảm hứng có thể theo bạn trong mọi cuộc du ngoạn của cuộc đời - để cảm thấy sẵn lòng đón nhận hơn, khát khao khám phá hơn và yêu thương cuộc sống muôn màu hơn.

Bốn mùa trong năm ngoài việc mang tới những cảm xúc, kỷ niệm khác nhau, cũng mang đến những món sản vật tuyệt tác khác nhau mà thiên nhiên ban tặng, 34 công thức bánh ngọt và món ăn trong Ngày Vàng Hạnh Phúc lấy cảm hứng từ chủ đề “Mùa vàng” sẽ luôn khiến gian bếp nhỏ nhà bạn tràn đầy sức sống cùng những bữa ăn đủ đầy hương vị và ấm nồng tình yêu. Đặc biệt, là một người đặc biệt yêu thích Giáng Sinh, Greeting Season của Ngày Vàng Hạnh Phúc giống như một thước phim quay chậm từ những ngày bắt đầu tháng 12 man mác, khi thành phố bắt đầu chuyển mình và những thân cây xám xịt bên phố cũng được trang hoàng thêm những dây đèn rực rỡ, đến những buổi giữa mùa từng khung cửa sổ mỗi gia đình bắt đầu lấp lánh thứ ánh sáng từ những quả châu xanh - đỏ và tới sát ngày Chúa giáng sinh thì những hộp quà xinh xắn, những bông tuyết long lanh, những viên truffles hương rượu Rum nồng nàn hay món Yule Log truyền thống sẽ làm bữa tiệc của đêm thực sự đúng điệu, an lành và hạnh phúc hệt như cái cách chúng ta luôn mong đợi.

Vậy, bạn đã sẵn sàng mang Giáng Sinh về nhà chưa? 

Thế giới sách Online Como.vn trân trọng giới thiệu!
BÌNH LUẬN

SẢN PHẨM LIÊN QUAN


















 Cập nhật thông tin khuyến mãi nhanh nhất

Đăng ký email
 Đăng ký

MIỄN PHÍ VẬN CHUYỂN
Cho đơn hàng trên 500k

SHIP COD TRÊN TOÀN QUỐC
Thanh Toán Khi Nhận Hàng

MIỄN PHÍ ĐỔI TRẢ
Trong vòng 7 ngày - Dễ dàng

HOTLINE 096.254.1710
Báo Giá Sách và Phí Giao Hàng

 Logo
Công Ty TNHH DV & TM Văn Hóa Green Books
Mã số thuế: 0108187956
Địa chỉ: Số 49, Ngõ 172 Đường Phú Diễn
Phường Phú Diễn, Bắc Từ Liêm, Hà Nội 
Điện thoại : 0966.956.570 
VỀ CHÚNG TÔI
Giới thiệu
Tin Tức 
Tuyển Dụng
Liên hệ
FaceBook Tư Vấn Sách
HỖ TRỢ KHÁCH HÀNG
Chính sách Thanh toán 
Chính sách Vận chuyển
Chính sách Đổi trả 
Câu hỏi thường gặp?
GIAN HÀNG NHÀ SÁCH
Trên Trang TMĐT LAZADA
Trên Trang TMĐT Shopee
Trên Trang TMĐT Adayroi!
Trên Nền Tảng Zalo
KẾT NỐI VỚI CHÚNG TÔI
Facebook Nhà Sách
Cộng Đồng Mọt Sách COMO.VN
Youtube Review Sách
Instagram
Back to top
Giỏ hàng
', N'Image\nhung_ngon_tay_vani_ngay_vang_hanh_phuc_514x611.jpg', 26, 9)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1079, N'40 CÔNG THỨC BÁNH PIE - TART TUYỆT ĐỈNH', 103200, 0, N'	I Love Cook Books', N'	NXB Mỹ Thuật', N'	I Love Cook Books ', NULL, N'	15.6 cm x 21 cm ', 140, NULL, N'Bìa Mềm', CAST(N'2016-02-01T00:00:00' AS SmallDateTime), N'Pie - Tart là cuốn sách thứ 2 do team I love Cookbook thực hiện, cũng là sản phẩm thứ 3 của dòng sách “Ready to cook” nhận được sự ủng hộ nhiệt tình từ độc giả. Ấn phẩm được phát hành vào tháng 3 trên toàn quốc.

Cũng giống như bất kì không gian nghệ thuật nào khác, thế giới bánh trái cũng có muôn vàn câu chuyện. Câu chuyện về mối huyền giao khăng khít giữa hai người anh em không chung huyết thống “Pie - Tart” sẽ khơi mãi nguồn cảm hứng bất tận trong những trái tim đam mê ẩm thực. Đó là điều thôi thúc I love Cookbook khai sinh riêng một cuốn sách cookbook mà chính tên hai loại bánh đã tạo nên một nhiệm mầu: Pie - Tart.

Điều đặc biệt hơn nữa ở Pie - Tart, đây là cuốn sách cookbook 100% “made in Vietnam”. Từ công thức, những bức ảnh foody được styling tỉ mỉ, … tất cả đều chứa đựng tâm huyết, tài năng và dấu ấn của nhóm tác giả Trung Hiếu - Trang Minh và Thu Hà. Với dòng sách “Ready to cook” thực hiện bởi các tác giả Việt Nam, đặc biệt là các food-blogger, đầu bếp chuyên nghiệp, I love Cookbook vẫn đang nỗ lực đặt nền móng cho sách cookbook Việt trên thị trường sách ngày càng hội nhập.

Không dừng lại ở việc giới thiệu một chiếc tart táo kinh điển, Pie - Tart mở ra một “menu” phong phú mời gọi tất cả xắn tay áo và bước ngay vào căn bếp thiên đường. Bạn mong muốn điều gì ở một cuốn cookbook? Công thức chuẩn, hình ảnh đẹp, chất lượng tốt, giá hợp lý hay một sự gợi hứng? Tìm đến Pie - Tart, bạn sẽ có tất cả.

', N'Image\hinh_minh_hoa_pie_tart_888x1200.jpg', 30, 9)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1080, N'Miếng Nhỏ Đậm Đà', 159200, 0, N'	I Love Cook Books', N'NXB Thế Giới', N'	Dương Hải Anh', NULL, N'18 cm x 24 cm', 160, NULL, N'Bìa Mềm', CAST(N'2015-07-01T00:00:00' AS SmallDateTime), N'Finger Food at Nineteen 11 - Miếng nhỏ đậm đà là những “miếng cắn cỡ nhỏ đầy hương vị” trong cuộc du hành đầy màu sắc mà bếp trưởng Dương Hải Anh muốn gửi tới các bạn độc giả. Thấu hiểu tâm lý của những bà nội trợ, Chef Hải Anh biết rằng thế giới ẩm thực nhà hàng vô cùng hấp dẫn, thú vị, nhưng quy mô của nó lại lớn hơn nhiều so với quy mô giới hạn của những căn bếp gia đình.

Thật không dễ cho chúng ta trong việc thực hiện những “món ăn kiểu nhà hàng” tại nhà mình bởi các yêu cầu khắt khe về không gian, nguyên liệu, dụng cụ, hay quy trình chế biến của nó. Giản lược đi các công đoạn chế biến, đơn giản hóa các nguyên liệu phức tạp, chú trọng vào việc gìn giữ trọn vẹn hương vị và màu sắc món ăn, Chef Hải Anh đã tạo ra những “miếng ngon trên đầu đũa” thỏa mãn chúng ta cả về thị giác lẫn vị giác qua ấn phẩm cookbookMiếng nhỏ đậm đà. Đặc biệt, với thời gian thực hiện các món ăn chỉ từ 10 -15 phút, bạn có thể tự tin biến căn bếp của mình trở thành địa điểm tụ họp bạn bè ấm cúng, hay một không gian cho bữa tối 2 người, thậm chí hoàn toàn có thế tự tin bài trí thành những bữa tiệc gặp gỡ sang trọng.

Miếng nhỏ đậm đà ra đời như một cuốn cẩm nang ẩm thực hữu hiệu giúp hiện thực hóa ước mơ của những bà nội trợ. Nhỏ xinh từ tên gọi cho đến hình dáng nhưng cuốn sách của Chef Hải Anh lại mang trong mình sứ mệnh lớn lao: Đưa ẩm thực nhà hàng đến gần hơn với mỗi gia đình nhỏ. Bạn sẽ không nhất thiết phải chi những tờ hóa đơn đắt đỏ mà vẫn có thể thưởng thức những món ăn ngon lành, độc đáo; đặc biệt hơn, những đĩa thức ăn tuyệt đẹp trên mặt bàn kia được đưa ra từ chính Bếp-của-bạn.', N'Image\mieng_nho_dam_da_500x667.jpg', 27, 9)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1081, N'COMBO MÌNH ĐỪNG QUÊN NHAU - ANH CHÍNH LÀ THANH XUÂN CỦA EM', 122500, 0, N'	AZ Việt Nam ', N'	NXB Phụ Nữ ', N'Hiên - Hạ Vũ ', NULL, N'	13 x 20.5 cm ', 220, 500, N'Bìa Mềm', CAST(N'2018-01-01T00:00:00' AS SmallDateTime), N'Thanh xuân, hai chữ giản dị nhất, nhưng cũng chứa đựng nhiều điều khó nói nhất của một đời người. Không có khoảng thời gian nào mà người ta lại khao khát quay trở lại như thời điểm ấy. Khoảng thời gian mà dẫu có buồn nhiều hơn vui, đau lòng nhiều hơn hạnh phúc, tiếc nuối nhiều hơn hài lòng, người ta vẫn muốn quay trở lại, chỉ để được sống trong cảm giác tươi đẹp, gặp được người mình thương năm ấy một lần nữa…

“Anh chính là thanh xuân của em” là một cuốn sách đầy lưu luyến như thế. Khi còn nhiều lắm những day dứt chẳng kịp thổ lộ với một người. Hóa ra ai đó nói đúng, trưởng thành rồi, người ta sẽ chẳng hối hận về những điều mình đã làm, mà hối hận hơn về những điều mình chưa làm.

Những lời chưa nói ấy, biết còn cơ hội nào trong đời để bộc bạch không?

Có thể có nhiều điều còn dang dở, có thể đã có rất nhiều nỗi buồn, và có thể chẳng thể gặp lại nhau lần nữa. Nhưng giữa những điều không vui đấy, chẳng phải vẫn luôn có một điều tuyệt đẹp là người đó đã xuất hiện hay sao?

Bởi vì người đó xuất hiện, nên tháng năm ấy mới hiểu thương, hiểu nhớ, hiểu vì một người là thế nào

Bởi vì người đó xuất hiện, nên mới có những niềm vui giản dị như là một buổi chiều, người ấy cười với mình một cái, mình vui tới tận 3,4 ngày sau

Bởi vì người đó xuất hiện, nên thanh xuân ấy mới ngập tràn ánh nắng như vậy, mới có chuyện để mà nhớ,  mà kể những năm tháng về sau.

Thanh xuân ấy, suy cho cùng mà nói. Sau tất cả mọi vui buồn lẫn lộn, vẫn muốn cảm ơn người một lời. Dẫu chúng ta chẳng là gì cả, dẫu không hứa hẹn, cũng chưa một lần từng nói lời yêu thương, nhưng người biết không, người là ký ức đẹp đẽ nhất để tạo nên hai chữ “thanh xuân” trong trái tim của tôi.

“Anh chính là thanh xuân của em”, một giai điệu dịu dàng, cũng không kém phần sâu lắng, sẽ là món quà tuyệt vời nhất mà Hạ Vũ dành tặng cho bạn trong mùa hè này.

Bất kể bạn đã, đang hay sẽ đi qua thanh xuân ấy hay chưa, “Anh chính là thanh xuân của em” cũng sẽ khiến bạn được đắm mình trong những cảm giác đẹp đẽ ấy một lần nữa.

Hãy đọc để thêm một lần tiếc nuối, tiếc nuối để trưởng thành, tiếc nuối để biết trân trọng và tiếc nuối để yêu thương nhiều hơn !', N'Image\Combo_Chuan_550x550.jpg', 50, 10)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1082, N'BÍ MẬT NGƯỜI DO THÁI DẠY CON LÀM GIÀU (TÁI BẢN 2017)', 84500, 0, N'	KNBooks', N'	NXB Đại Học Quốc Gia Hà Nội', N'	Mordecai Nadav', NULL, N'	14.5 x 20.5 cm', 173, 180, N'Bìa Cứng', CAST(N'2017-12-01T00:00:00' AS SmallDateTime), N'Tình yêu thương của cha mẹ đều giống nhau, chỉ khác nhau về cách giáo dục. Có những bậc cha mẹ muốn con học giỏi nhưng lại học theo một cách máy móc hay còn gọi là “ học như vẹt”. Lại có kiểu giáo dục cho rằng” thương cho roi cho vọt” mới hiệu quả. Thực tế sự thành công ở những cách giáo dục này không nhiều, chúng ta nên giáo dục con trẻ một cách khoa học. Do vậy, tác giả cuốn sách Bí mật người Do Thái dạy con làm giàu người đang sống và làm việc tại đất nước của những con người thông minh muốn tặng cuốn sách "Bí mật người Do Thái dạy con làm giàu" cho các gia đình  để cùng họ sớm hoàn thành tâm nguyện của mình.', N'Image\bi_mat_nguoi_do_thai_day_con_lam_giau.jpg', 80, 10)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1083, N'BẠN CHỈ CẦN SỐNG TỐT TRỜI XANH TỰ AN BÀI', 71200, 0, N'	SkyBooks', N'	NXB Thế Giới', N'	Kotaha Yao', N'	Nguyễn Ngọc Anh', N'	13 cm x 19 cm ', 200, NULL, N'Bìa Mềm', CAST(N'2018-08-01T00:00:00' AS SmallDateTime), N'Chẳng phải có ai đó đã từng nói rằng: Trên đời này, ta thường quên mất việc của bản thân, thích xen vào việc của người khác và lo lắng chuyện của ông trời. Vậy thì muốn vui vẻ, chỉ cần để tâm đến việc của mình, đừng xen vào việc của người khác và hãy để trời xanh tự an bài.

Làm người, nên hiểu mệnh, đừng xem mệnh. Mệnh ở đây chính là những điều ta đã gieo trong quá khứ, việc đang làm trong hiện tại và tất cả sẽ ảnh hưởng đến tương lai. Hiểu mình là ai, đang đứng ở vị trí nào, cần sống và cư xử ra sao để trước hết thấy bản thân tự tại, trung dung. Thế giới của người khác, vận của trời, nếu không bước vào được thì đừng cố chen vào, làm khó người khó mình. Hà tất phải như vậy?

“Bạn chỉ cần sống tốt, trời xanh tự an bài” sẽ kéo ta về với chân mệnh của mỗi người, rồi khi gấp lại cuốn sách, ta nhận ra rằng:

Đừng bao giờ gắn chặt đời mình với người khác. Ai là chân chính, ai là sắt son. Không ai là của ai cả, đừng vơ mọi chuyện vào mình.

Ai rồi cũng quay trở về với cát bụi. Cớ sao lại không cho mình cơ hội trân trọng thế giới này, tự sống một đời vui vẻ.

Chỉ có ta mới tự ngắt kết nối với Trái Đất, bịt đôi tai, nhắm đôi mắt để không thấy thế giới xung quanh. Chứ thực ra, Trái Đất vẫn bao dung và đợi chờ ta.

Thời điểm ta bất an nhất chính là khoảnh khắc dễ bị lay động nhất. Nếu như thân thể cần ăn thì thâm tâm cũng cần được nuôi dưỡng từ những điều dung dị, tĩnh lặng.

Vạn vật trên thế gian này đều xoay chuyển theo quy luật tự nhiên. Nếu phạm vào luật tự nhiên, dù ta biết hay không, cũng coi là phạm luật. Thời gian tuần tự bốn mùa, con người có sinh có tử, ắt vạn vật có sinh sôi, có héo tàn.

Vậy thì, ở đời, chỉ cần chầm chậm sống, xuôi theo như dòng nước. Không phân cao thấp, không chia trước sau. Từ từ mà chảy, tĩnh tại mà trôi. Còn mọi chuyện, hãy để trời xanh tự an bài.', N'Image\ban_chi_can_song_tot_troi_xanh_tu_an_bai_646x960.jpg', 60, 10)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1084, N'FACEBOOK MARKETING 4.0', 96000, 0, N'	MediazBooks', N'	NXB Thế Giới', N'	MediaZ', NULL, N'	14 x 20.5 cm ', 250, 250, N'Bìa Mềm', CAST(N'2018-01-01T00:00:00' AS SmallDateTime), N'Bước vào thời đại marketing 4.0, khi kỷ nguyên công nghệ số đã và đang vươn lên một tầm cao mới, con người được lấy làm trọng tâm của sự phát triển. Những thách thức mới đặt ra cho các nhà Marketers là làm sao để khiến khách hàng tự tìm đến sản phẩm, dịch vụ của mình và kết nối họ bằng cảm xúc chân thật nhất thông qua quá trình tương tác nhằm đưa thương hiệu của doanh nghiệp đi sâu vào lòng khách hàng bởi sự chân thành.

Tiếp nối cuốn sách “Facebook Marketing từ A đến Z version 2.0” do MediaZ Book biên soạn, “Facebook Marketing 4.0” ra đời là phiên bản cập nhật nhằm bắt kịp với xu hướng marketing của thời đại. Cuốn sách là sự kết hợp giữa phương pháp marketing chính thống trên Facebook cùng với phương pháp marketing thời đại 4.0 để tạo nên sự khác biệt trong chính những chiến dịch mà bạn thực hiện. Cuốn sách được hệ thống lại thành 11 chương chính và được bổ sung thêm một phần phụ lục sẽ giúp bạn:

Nghiên cứu, thiết lập và target các đối tượng quảng cáo của Facebook.

Giới thiệu các loại hình quảng cáo mới nhất của Facebook và cách thiết lập chiến dịch quảng cáo. Ngoài ra, bạn còn được giới thiệu về các công cụ cũng như cách thiết lập chatbot tin nhắn tự động để tiện hơn trong việc chăm sóc khách hàng những lúc cần thiết và kịp thời nhất.

Để cho quảng cáo Facebook hiệu quả các bạn sẽ phải học cách tối ưu các chỉ số mặc định cũng như theo dõi các yếu tố biến thiên khác.

Bạn cũng sẽ được đào sâu hơn về cách remarketing trên Facebook nhằm tăng tỷ lệ chuyển đổi với tập khách hàng cũ. Hơn nữa, đọc xong phần này, bạn sẽ hiểu được 5 pha trong dòng chảy tư duy của người tiêu dùng thông qua mô hình AISAS và mô hình phễu trong marketing.

Bạn có thể hiểu được quy trình chiến lược và các mẹo vặt để làm Facebook Marketing một cách hiệu quả nhất. Cùng với đó là cách xử lý các sự cố như quảng cáo không trừ tiền, quảng cáo bị lỗi phần thanh toán, backup dữ liệu từ tài khoản bị khóa…

Kết hợp Facebook với các kênh Digital Marketing khác để tăng nhận diện thương hiệu, hay việc sử dụng cả Profile, Fanpage, Group cùng đẩy cho một chiến dịch.

Bạn sẽ biết cách backup tài sản doanh nghiệp trên Facebook bằng hệ thống

Business Manager, cũng như việc làm sao để nuôi giữ Pixel bất tử.

Có thể nói, Facebook hiện đang là nền tảng hỗ trợ rất tốt cho việc phát triển thương hiệu, tiếp cận khách hàng và chuyển đổi bán hàng. Tuy là làm Facebook marketing hiện tại đã khó khăn hơn trước rất nhiều, nhưng thực tế đây vẫn đang còn là một sân chơi lớn cho những cá nhân và doanh nghiệp phát triển mạnh mẽ hơn nữa, đặc biệt là khi chúng ta biết kết hợp với các kênh khác nữa.', N'Image\bia_facebook_4_0_470x688.png', 55, 10)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1085, N'
Xách Ba Lô Lên Và Đi - Tập 2: Đừng Chết Ở Châu Phi!Xách Ba Lô Lên Và Đi ', 78200, 0, N'	Quảng Văn Books', N'	NXB Văn Học', N'	Huyền Chip ', NULL, N'	13 x 21 cm ', 330, 350, N'Bìa Mềm', CAST(N'2013-09-01T00:00:00' AS SmallDateTime), N'“Những ai yêu mến Huyền Chip và theo dõi cuộc hành trình của châu Á của cô trong tập một “Xách ba lô lên và Đi” - “Châu Á là nhà. Đừng khóc !” có lẽ đã đủ kinh ngạc trước cái máu phiêu lưu của cô bạn nhỏ bé này. Đến tập hai, “Đừng chết ở châu Phi”, bạn đọc còn thấm thía hơn trước sự liều lĩnh của Chip. Chỉ có lòng can đảm lấp đầy trong ba lô, Chip hăng hái lên đường ngược xuôi châu Phi hoang dã.

Đi dọc châu Phi một mình mặc những lời cảnh báo từ anh bạn thân Asher, Huyền Chip trải qua cung đường nguy hiểm nhất, đối mặt với cô đơn đến cùng cực, với cái đói, khát và căn bệnh thế kỷ. Cô trải qua những khó khăn mà mình chưa bao giờ tưởng tượng ra, những thách thức đã trở thành nỗi ám ảnh: bị sáu tên cướp cầm dao dí vào cổ, dân địa phương dai dẳng đeo bám xin tiền… Tuy nhiên, những điều đó không hạ gục được cô bạn nhỏ bé này và châu Phi vẫn là nơi cô mang nợ. Trái tim ấm áp của con người châu Phi khiến tất cả của vùng đất này trở thành nỗi nhớ day dứt trong Huyền', N'Image\xach_balo_len_va_di_2_355x550.jpg', 45, 10)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1086, N'Người Bán Hàng Vĩ Đại', 48000, 0, N'Firts New', N'	NXB Tổng Hợp', N'Og Mandino', NULL, N'	13 x 20.5 cm ', 130, 130, N'Bìa Mềm', CAST(N'2017-04-01T00:00:00' AS SmallDateTime), N'Ở cuốn đầu tiên Og Mandino đã kể về cách mà mười cuộn giấy về thành công và hạnh phúc rơi vào tay một cậu bé chăn lạc đà can đảm, khi cậu vô tình ghé vào một hang lừa tại Bethlehem đêm nọ. Cuộc đời của cậu từ đó bước sang một trang mới với tất cả sự thay đổi về nhận thức để trở thành một người bán hàng vĩ đại, một nhân cách lớn, con người rộng lượng, cảm thông, chia sẻ các mà cậu ta học được từ mười cuộn da dê', N'Image\nguoibanhangvidai_tap2.jpg', 40, 10)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1087, N'TÔI THÍCH BẢN THÂN NỖ LỰC HƠN', 76800, 0, N'	MintBooks', N'	NXB Văn Học', N'	
Chu Xung', N'	Tú Phương', N'	14.5 cm x 20.5 cm ', 380, NULL, N'Bìa Mềm', CAST(N'2018-07-01T00:00:00' AS SmallDateTime), N'(Tặng kèm 1 bookmark cây xương rồng + 1 postcard có chữ kí tác giả)

“Một là không có bối cảnh, hai là không có tiền, ba là không có mối quan hệ, chỉ có thể trông cậy vào chính mình”. Nếu bạn đã từng có ý nghĩ như vậy, thì một cuốn sách như “Tôi thích bản thân nỗ lực hơn” chính là tiếng lòng dành cho bạn.

Bạn có từng bị ngăn cấm, bị coi là gàn dở khi từ bỏ một công việc “ ổn định, nhàn hạ” để theo đuổi thứ gọi là “đam mê” mà bạn chấp nhận đánh đổi bằng bất cứ giá nào? Thất bại ư? Nhưng nếu bạn thực sự thành công như tác giả của cuốn sách này ...

Liệu mẹ bạn sẽ nói “Trước đây mẹ cũng thấy con ngốc, không ngờ người ngốc cũng có phúc của người ngốc, số mạng cũng không tệ…”

“Mẹ à, chớ tin vào số mạng, phải tin vào chính mình!', N'Image\toi_thich_ban_than_no_luc_hon_628x1000.jpg', 38, 10)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1088, N'KHI TA MUỐN TA SẼ TÌM CÁCH, KHI KHÔNG MUỐN TA TÌM LÍ DO', 52500, 0, N'	GuBooks', N'NXB Phụ Nữ', N'Phi Tuyết', NULL, N'	13.5 cm x 20.cm ', 262, NULL, N'Bìa Mềm', CAST(N'2018-07-01T00:00:00' AS SmallDateTime), N'Ai cũng ước mơ một thanh xuân rực rỡ

Nhưng ai cũng âm thầm tìm lí do cho một thanh xuân bị bỏ lỡ

Cuốn sách này không cho bạn lí do, nhưng cho bạn cách để có được cuộc sống như mơ!

Chúng ta hóa ra có thể sống khác đi theo rất nhiều cách, tách mình ra một chút để nhìn rõ xung quanh, cuộc đời hóa ra không quá phức tạp như ta nghĩ. Ngẫm một chút, nghĩ một chút, những điều nhỏ nhặt hóa ra có thể hé mở nhiều sự thật tuyệt vời, cho ta thấy thêm nhiều điều mới. “Vì cuộc đời là những dấu hiệu” và những điều kì diệu vẫn ở khắp quanh ta, chỉ cần một chút ngẫm nghĩ  để mở nó ra.

Bạn có thể đổi thay thế giới – thật đấy, rồi bạn sẽ thấy những ý tưởng nhỏ có sức mạnh to đến thế nào. Dù ta chấp nhận hay vật lộn với cái chán thì nó vẫn ở đó, đi rồi lại đến. Cách tốt hơn là hãy nhận thức nó cho rõ để tìm được cách sống bình an. Sứ mệnh có phải điều gì quá xa xỉ giữa những lo toan bộn bề, những nhu cầu rất đỗi trần tục ta vẫn thấy mình cần đảm bảo? Không đề. Sứ mệnh là điều căn bản, cốt lõi mà bạn hãy chọn cho mình để sống được bình thường, lành mạnh. Hãy tìm cách sống tốt hơn từ những điều tưởng như nhỏ nhặt nhất, hãy biến đời bạn thành một mảnh đất lành

Những suy  nghĩ của cô gái này chẳng phải điều gì rất mới, nhưng nó lại có một sức mạnh tuyệt vời mang lại cho cô ấy một cuộc sống như mơ.  Sức mạnh ấy đến từ đâu? Cuốn sách này sẽ cho bạn câu trả lời!

Cuốn sách tập hợp những bài viết của tác giả Phi Tuyết, những câu chuyện nhỏ thường ngày mở ra những điều không ngày thường chút nào.', N'Image\khi_ta_muon_ta_se_tim_cach_khi_khong_muon_ta_tim_ly_do_450x652.jpg', 20, 10)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1089, N'NGÀY MAI VẪN LÀ TUỔI TRẺ', 127200, 0, N'	SkyBooks', N'	NXB Thế Giới', N'	
Ốc Sên Gió', NULL, N'	14.5 cm x 20.5 cm ', 296, NULL, N'Bìa Mềm', CAST(N'2018-07-01T00:00:00' AS SmallDateTime), N'Trong cuộc đời chúng ta, bất kể là ai, cũng sẽ có những ngày mệt mỏi đến mức muốn bỏ hết tất cả mà đi.

Những ngày mà đủ thứ áp lực dồn lên đầu bạn, tình cảm, công việc, học hành, thi cử, gia đình... Bạn sẽ cảm thấy chẳng có ai hiểu mình trên thế gian này. Cô độc và mệt nhoài. Cũng chẳng có tinh thần để làm bất cứ việc gì, mọi việc cứ trì trệ, bất lực đến mức hít thở thôi cũng rất cực nhọc.

Những ngày bạn cần được sống nhiều hơn là vòng lặp diễn ra hàng ngày. Thức dậy, làm việc, học tập, ăn rồi lại ngủ, loanh quanh chỉ có thể, vậy là một ngày trôi qua. Chắng có chút vui sống, hứng khởi gì

Những ngày đó bạn cần phải đặt chân đến nơi đâu đó thật xa, hít thở không khí trong lành, làm mới mẻ bản thân và vượt ra khỏi giới hạn của chính mình.

"Ngày mai vẫn là tuổi trẻ" được viết trong những ngày như thế. Những ngày bạn cần tìm lại một nguồn cảm hứng, một lý do, một động lực để sống và nỗ lực hơn.

Con người hay máy móc cũng giống nhau cả mà thôi. Không có gì có thể hoạt động mãi mà không cần bảo dưỡng. Và thứ để nuôi dưỡng cảm hứng, động lực của con người, chính là những chuyến đi.', N'Image\ngay_mai_van_la_tuoi_tre_678x960.jpg', 25, 10)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1090, N'HƯỚNG NGHIỆP 4.0', 112500, 0, N'	Tri Thứ Trẻ', N'	NXB Thanh Niên', N'	Vũ Tuấn Anh ', NULL, N'14.5 x 20.5 cm', 256, 400, N'Bìa Mềm', CAST(N'2018-07-01T00:00:00' AS SmallDateTime), N'Cuộc cách mạng 4.0 đang thay đổi tất cả trong cuộc sống của chúng ta.Nhân loại đang chứng kiến các công nghệ mới xuất hiện và tích hợp chung nhau tạo ra những thay đổi sâu sắc và hệ thống như vậy trong lịch sử loài người. Cũng như trong các cuộc cách mạng 1.0- 2.0 và 3.0 trong những thế kỷ trước, thế giới sẽ chia ra những cá nhân vươn lên tận dụng những cơ hội của công nghệ để thành công bên cạnh những thiểu số không vượt qua được thách thức và chịu chấp nhận đi sau thời đại.

Nghề nghiệp là một trong những mục tiêu quan trọng nhất của cả đời người. Quyển sách hướng nghiệp 4.0 do hai tác giả tâm huyết với thế hệ trẻ Ths Vũ Tuấn An và Ths Đào Trung Thành cùng thực hiện nhằm giúp cho phụ huynh và các em học sinh lớp 12 năm nay thực hiện hướng nghiệp 4.0 hiệu quả lựa chọn được cơ hội để làm bàn đạp cho nghề nghiệp của mình trong tương lai.', N'Image\huongnghiep40.jpg', 35, 10)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1091, N'ĐỘT PHÁ 8+ KÌ THI THPT QUỐC GIA MÔN HÓA', 199000, 25, N'CCBooks ', N'	NXB ĐH Quốc Gia Hà Nội', N'Chưa cập nhật', NULL, N'22 x 27 cm', 300, 300, N'Bìa Mềm', CAST(N'2018-01-01T00:00:00' AS SmallDateTime), N'Đột Phá 8+ Kì Thi THPT Quốc Gia Môn Hóa Học

Để đạt điểm cao trong cả 3 năm học cũng như trong kỳ thi tốt nghiệp THPT Quốc gia, ngoài những kiến thức cơ bản trong sách giáo khoa các em học sinh cũng cần trang bị thêm kiến thức kỹ năng làm bài mới có thể tối ưu điểm số. Nhằm giải quyết những khó khăn đó cho các em CCbook đã nghiên cứu và cho ra mắt bộ sách Đột phá 8+ kì thi THPT Quốc gia. Bộ sách đã giải tỏa được “cơn khát” tài liệu ôn thi cho cả giáo viên và  các em học sinh trên cả nước.

Trong thời điểm cuối cấp nhu cầu về tài liệu tham khảo, ôn thi được tăng lên nhưng trên thị trường những loại tài liệu ôn thi chất lượng lại không có nhiều. Các sĩ tử đang loay hoay chưa thể tìm ra cho mình được tài liệu nào phù hợp. Sự lo lắng của các em học sinh và các bậc phụ huynh đã được giải quyết khi có sự xuất hiện của bộ sách Đột phá 8+ kì thi THPT Quốc gia.

Cuốn sách do Nhà xuất bản Đại học Quốc gia cùng thương hiệu phát hành sách CCBook và đội ngũ các thầy cô có chuyên môn cao đã biên soạn. Ngày 10/07/2018 Bộ sách được chính thức phát hành đã tạo nên “cơn sốt” làm các teen 2k1 trên cả nước “đứng ngồi không yên”. Có rất nhiều lý do mà bộ sách được các em học sinh trên cả nước “săn đón” và tin tưởng.

Đột phá 8+ kì thi THPT Quốc gia – bộ sách luyện thi chuẩn cho kì thi THPT quốc gia

Đây là bộ sách đầu tiên trên thị trường tổng hợp đầy đủ kiến thức cho cả 3 lớp 10, 11 và 12. Giúp các em học sinh có thể tổng hợp ôn lại những kiến thức của lớp 10, 11 và nắm bắt được những kiến thức chuyên sâu, quan trọng trong lớp 12

Bộ sách gồm 9 cuốn bao gồm: Môn toán 2 cuốn và các cuốn còn lại tương ứng với các môn: Lý, Hóa, Sinh, Anh, Văn, Sử và Địa

Sách bao gồm đầy đủ các kiến thức về lý thuyết và bài tập. Lý thuyết chi tiết được trình bày theo hệ thống, có kèm theo các ví dụ minh họa giúp học sinh dễ hiểu, dễ nhớ. Các dạng bài tập phong phú, đầy đủ với 4 mức độ trong đề thi từ nhận biết, thông hiểu, vận dụng, đến vận dụng cao giúp học sinh học tập một cách hoa học.

Đột phá 8+ kì thi THPT Quốc gia – bộ sách tiên phong tích hợp các tiện ích kèm theo

Hiện nay trên thị trường bộ sách Đột phá 8+ kì thi THPT Quốc gia được đánh giá là một trong những bộ sách tiên phong ứng dụng các tiện ích công nghệ hỗ trợ tối đa việc học tập của các em học sinh. Các tiện ích công nghệ giúp sinh động bài học, dễ nhớ dễ thuộc và không bị nhàm chán

Khóa học online là các video bài giảng do tác giả trực tiếp ghi hình, chữa hết các bài tập khó, chuyên sâu hướng dẫn cho học sinh cách làm bài chi tiết, làm bài nhanh và các lỗi sai cần tránh

Khóa luyện đề, thi thử online trên CCTest với hơn 1.000.000 câu hỏi, cam kết chuẩn định hướng thi của Bộ. Các đề thi thử chuẩn cấu trúc, không giới hạn giúp các em học sinh tập ôn thi một cách hiệu quả và khoa học nhất

Tham gia các group học tập trên Facebook các môn, được các thầy cô giải đáp nhiệt tình mọi thắc mắc giúp các em hiểu đúng, hiểu rõ mọi vấn đề khó

Với những ưu điểm và tiện ích vượt bậc trên nên chỉ mới ra mắt đọc giả và các em học sinh gần 1 tháng nhưng bộ sách Đột phá 8+ kì thi THPT Quốc gia đã tạo nên một cơn sốt chưa thể dừng lại, vẫn được các em học sinh cả nước không ngừng tìm kiếm. Sau ngày ra mắt  bộ sách đã có nhiều báo đưa tin về những ưu điểm vượt trội của bộ sách và chia sẻ của các em học sinh khi sở hữu được kho kiến thức khổng lồ này.

Vào cuối tháng 8 tới CCbook sẽ cho ra mắt tới độc giả đầy đủ 9 cuốn của bộ sách Đột phá 8+ kì thi THPT Quốc gia và được đánh giá là bộ sách không thể bỏ qua giúp các em rèn luyện tư duy sáng tạo không chỉ trong bài thi quan trọng mà còn trong cả quá trình học tập, giúp các em khẳng định bản thân và leo lên đỉnh vinh quang của kiến thức.

Trân trọng giới thiệu!', N'Image\hoa_960x960.png', 41, 8)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1092, N'ĐỘT PHÁ 8+ KÌ THI THPT QUỐC GIA MÔN SINH HỌC', 199000, 25, N'CCBooks ', N'CCBooks', N'Chưa Cập nhật', NULL, N'22 x 27 cm', 300, 300, N'Bìa Mềm', CAST(N'2018-01-01T00:00:00' AS SmallDateTime), N'Đột Phá 8+ Kì Thi THPT Quốc Gia Môn Sinh Học

Lí thuyết trọng tâm: được trình bày chi tiết, đầy đủ các kiến thức có liên quan. Song song với mỗi phần lí thuyết đó có một ví dụ mẫu để làm rõ vấn đề.

Các dạng bài tập: chia thành các dạng bài tập nhỏ, sau đó có phương pháp giải chi tiết kèm theo các ví dụ minh họa và phân tích ví dụ theo lối tư duy ngược để rèn tư duy logic cho học sinh.

Sau mỗi ví dụ minh họa là các lưu ý cho học sinh khi giải bài tập ở dạng đó. Ngoài ra, các em học sinh còn được làm thêm các bài tập tự luyện ngay sau đó kèm lời giải chi tiết trong hệ thống CCtest.

Bài tập tổng hợp: đưa ra các bài tập của cả chương/ chuyên đề đó dưới hình thức các câu hỏi trắc nghiệm và bảng đáp án ở cuối cho học sinh kiểm tra sau khi làm bài xong có gợi ý giải cho các câu hỏi khó. Lời giải chi tiết của các bài tập được cho trong hệ thống CCtest.

Các bài tập và ví dụ minh họa đầy đủ các dạng từ cơ bản – vận dụng – vận dụng cao, nhưng chủ yếu vẫn phân bổ nhiều ở mức vận dụng, vận dụng cao.

Kiến thức lớp 12 được trình bày chi tiết, tỉ mỉ về các dạng bài và ví dụ minh họa. Lớp 10 và lớp 11 trình bày cô đọng những kiến thức trọng tâm.

Mỗi bài tập tự luyện và bài tập tổng hợp đều tích hợp mã ID để truy cập hệ thống CCTest – xem lời giải chi tiết và phân tích các đáp án gây nhiễu, làm các đề thi thử theo chuẩn cấu trúc của Bộ.

Mỗi cuốn sách còn kèm theo VIDEO bài giảng nhằm giải đáp những vấn đề mà các em học sinh thường vướng mắc.

 Sách có đi kèm nhóm hỗ trợ học tập trên Facebook 24/24 giúp việc giải đáp học tập giữa giáo viên và học sinh dễ dàng mọi lúc, mọi nơi.

Trân trọng giới thiệu! ', N'Image\sinh_960x960.png', 63, 8)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1093, N'ĐỘT PHÁ 8+ KÌ THI THPT QUỐC GIA MÔN NGỮ VĂN', 199000, 25, N'CCBooks', N'NXB ĐH Quốc Gia Hà Nội', N'Chưa cập nhật', NULL, N'22 x 27 cm', 300, 300, N'Bìa Mềm', CAST(N'2018-01-01T00:00:00' AS SmallDateTime), N'Đột Phá 8+ Kì Thi THPT Quốc Gia Môn Ngữ Văn

Cuốn sách là sản phẩm của đội ngũ giáo viên đầy nhiệt huyết của CCBook. Sách bao gồm kiến thức 3 lớp 10, 11,12 với mong muốn hỗ trợ học sinh ôn thi THPT  đạt điểm số môn Ngữ Văn cao nhất trong kỳ thi THPT Quốc gia năm 2019.


Trọng tâm kiến thức cuốn sách được bố cục thành 3 chuyên đề tương ứng với bố cục trong đề thi THPTQG bao gồm: Đọc hiểu; Nghị luận xã hội và Nghị luận văn học.Kiến thức lớp 12 được trình bày chi tiết, tỉ mỉ theo mô hình sơ đồ tư duy, gợi ý Đọc hiểu và Bài viết tham khảo.Chương trình lớp 10 và lớp 11 trình bày cô đọng những kiến thức trọng tâm theo thể loại và theo chủ đề.

Cấu trúc cuốn sách :

+ Chuyên đề Đọc hiểu:

+ Chuyên đề Nghị luận xã hội:

+ Chuyên đề Nghị luận văn học:

Trân trọng giới thiệu!', N'Image\van_280x280.jpg', 47, 8)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1094, N'ĐỘT PHÁ 8+ THI THPT QUỐC GIA MÔN TOÁN - TẬP 1: ĐẠI SỐ VÀ GIẢI TÍCH', 199000, 25, N'	CCBooks - Đọc Là Đỗ', N'NXB Đại Học Quốc Gia Hà Nội', N'Nguyễn Thị Tuyết', N'', N'16 x 26.5 cm', 448, 500, N'Bìa mềm', CAST(N'2017-01-01T00:00:00' AS SmallDateTime), N'Đột phá 8+ thi THPT quốc gia môn Toán – Tập 1: Đại số và Giải tích 

Nội dung của sách:
+ Kiến thức: Bao gồm 3 lớp 10, 11, 12

+ Kiến thức trong sách được viết theo chương, chuyên đề

+ Lí thuyết: Được trình bày chi tiết, đầy đủ các kiến thức có liên quan. Song song với mỗi phần lí thuyết đó có một ví dụ mẫu để làm rõ vấn đề.

+ Bài tập: Được chia thành các dạng bài tập nhỏ, sau đó có phương pháp giải chi tiết kèm theo các ví dụ minh họa và phân tích ví dụ theo lối tư duy ngược để rèn tư duy logic cho học sinh.

Sau mỗi ví dụ minh họa là các lưu ý cho học sinh khi giải bài tập ở dạng đó. Ngoài ra, các em học sinh còn được làm thêm các bài tập tự luyện ngay sau đó kèm lời giải chi tiết trong hệ thống CCtest.

+ Bài tập tổng hợp: đưa ra các bài tập của cả chương/ chuyên đề đó dưới hình thức các câu hỏi trắc nghiệm và bảng đáp án ở cuối cho học sinh kiểm tra sau khi làm bài xong có gợi ý giải cho các câu hỏi khó. Lời giải chi tiết của các bài tập được cho trong hệ thống CCtest.

+ Các bài tập và ví dụ minh họa đầy đủ các dạng từ cơ bản – vận dụng – vận dụng cao, nhưng chủ yếu vẫn phân bổ nhiều ở mức vận dụng, vận dụng cao.

+ Kiến thức lớp 12 được trình bày chi tiết, tỉ mỉ về các dạng bài và ví dụ minh họa. Lớp 10 và lớp 11 trình bày cô đọng những kiến thức trọng tâm.

Ưu điểm nổi bật của sách:
+ Lý thuyết được trình bày rõ ràng, có ví dụ mẫu song song để mô tả.

+ Trong mục “Ví dụ minh họa” có đưa ra nhận xét tâm huyết của tác giả về dạng toán và chú ý cho học sinh.

+ Mỗi bài tập tự luyện và bài tập tổng hợp đều tích hợp mã ID để truy cập hệ thống CCTest – xem lời giải chi tiết và phân tích các đáp án gây nhiễu, làm các đề thi thử theo chuẩn cấu trúc của Bộ.

+ Mỗi cuốn sách còn kèm theo VIDEO bài giảng nhằm giải đáp những vấn đề mà các em học sinh thường vướng mắc.

+ Sách có nhóm hỗ trợ học tập trên Facebook 24/24 để giải đáp mọi thắc mắc của các em trong quá trình học

Đối tượng sử dụng sách:
+ Học sinh bắt đầu học chương trình lớp 12 có lực học từ trung bình – khá trở lên: dùng làm tài liệu học và ôn thi.

+ Giáo viên chuyên môn và các bạn gia sư dùng làm tài liệu tham khảo trong quá trình giảng dạy.

Bạn sẽ đạt được những gì sau khi sử dụng sách:
+ Giúp học sinh làm quen và luyện kiến thức cơ bản lớp 12 một cách chi tiết.

+ Dùng cho học sinh lớp 10, 11 ôn tập kiến thức để chuẩn bị cho các kì thi.

+ Kiến thức quan trọng của lớp 10 & 11 đều được tổng hợp lại.

+ Luyện thành thạo các dạng bài tập thường gặp trong đề thi THPTQG cả lớp 10, 11 và 12.

+ Sách dùng để phục vụ cho học sinh ôn thi THPTQG, Cao đẳng, Đại học.

+ Học sinh sẽ thi đạt từ 8 điểm môn Sinh học trở nên nếu học tốt cuốn sách này.

Trân trọng giới thiệu!', N'Image\Dai_so_va_giai_tich_960x960.png', 48, 8)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1095, N'ĐỘT PHÁ 8+ KÌ THI THPT QUỐC GIA MÔN TOÁN - TẬP 2: HÌNH HỌC', 199000, 25, N'CCBooks ', N'NXB ĐH Quốc Gia Hà Nội', N'Lê Phương Anh', NULL, N'22 x 27 cm', 300, 300, N'Bìa Mềm', CAST(N'2018-01-01T00:00:00' AS SmallDateTime), N'Đột phá 8+ kì thi THPT Quốc gia môn Toán Hình

- Phạm vi kiến thức: Bao gồm 3 lớp 10, 11 và 12

- Các kiến thức về hình học được chia thành chương/ chuyên đề cụ thể

- Lí thuyết trọng tâm: Trình bày chi tiết, đầy đủ những kiến thức trong tâm về Hình học không gian, hình học phẳng. Tổng hợp các công thức tính nhanh thể tích khối đa diện, diện tích, chiều cao hình đặc biệt…

Song song với mỗi phần lí thuyết đó có một ví dụ mẫu để làm rõ vấn đề. Các ví dụ đều có hình vẽ minh họa để học sinh dễ hiểu.

- Các dạng bài tập: chia thành các dạng bài tập nhỏ. Ứng với mỗi dạng bài sẽ có hướng dẫn giải cụ thể và kèm theo các ví dụ minh họa. Phân tích dạng bài từ những giả thuyết có sẵn giúp rèn tư duy logic cho học sinh.

Sau mỗi ví dụ minh họa là các lưu ý cho học sinh khi giải bài tập. Các em sẽ được hướng dẫn cách nhìn hình nhanh, áp dụng những định lý hình học linh hoạt để làm bài.

Các em học sinh còn được làm thêm các bài tập tự luyện ngay sau đó kèm lời giải chi tiết trong hệ thống CCtest.

Bài tập tự luyện:

- Bài tập tổng hợp: Đưa ra các bài tập của cả chương/ chuyên đề đó dưới hình thức các câu hỏi trắc nghiệm. Học sinh có thể tự kiểm tra được kiến thức đã học được sau 1 chương. Với những câu hỏi khó sẽ có gợi ý để các em làm bài. Bảng đáp án được đặt ở cuối để các em đối sách với kết quả thực của mình.  Học sinh có thêr tham khảo lời giải chi tiết của các bài tập được có trong hệ thống CCtest.

- Các bài tập và ví dụ minh họa đầy đủ các dạng từ cơ bản – vận dụng – vận dụng cao, nhưng chủ yếu vẫn phân bổ nhiều ở mức vận dụng, vận dụng cao.

-  Kiến thức lớp 12 được trình bày chi tiết, tỉ mỉ về các dạng bài và ví dụ minh họa. Lớp 10 và lớp 11 trình bày cô đọng những kiến thức trọng tâm, liên quan đề thi THPT Quốc gia.

Ưu điểm nổi bật của sách:

- Lý thuyết được trình bày rõ ràng, có hình và ví dụ mẫu song song để mô tả giúp dễ hiểu.

- Trong mục “Ví dụ minh họa” có đưa ra nhận xét tâm huyết của tác giả về dạng toán và chú ý cho học sinh.

- Mỗi bài tập tự luyện và bài tập tổng hợp đều tích hợp mã ID để truy cập hệ thống CC Test – xem lời giải chi tiết và phân tích các đáp án gây nhiễu, làm các đề thi thử theo chuẩn cấu trúc của Bộ.

- Mỗi cuốn sách còn kèm theo Video Bài Giảng nhằm giải đáp những vấn đề mà các em học sinh thường vướng mắc.

Sách có đi kèm nhóm hỗ trợ bạn đọc vừa học ở sách, vừa có thể trao đổi với thầy cô 24/24 giúp việc giải đáp học tập giữa giáo viên và học sinh dễ dàng mọi lúc, mọi nơi.

Đối tượng sử dụng sách:

- Học sinh bắt đầu học chương trình lớp 12 có lực học từ trung bình – khá trở lên: dùng làm tài liệu học và ôn thi.

- Giáo viên chuyên môn và các bạn gia sư vè Toán dùng làm tài liệu tham khảo trong quá trình giảng dạy.

Bạn sẽ đạt được những gì sau khi sử dụng sách:

- Giúp học sinh làm quen và luyện kiến thức hình học giải tích cơ bản lớp 12 một cách chi tiết.

- Dùng cho học sinh lớp 10, 11 ôn tập kiến thức về hình phẳng, hình không gian liên quan đến các đề thi.

- Nhắc lại các kiến thức quan trọng của lớp 10 và 11

- Luyện thành thạo các dạng bài tập thường gặp trong đề thi THPTQG cả lớp 10, 11 và 12.

- Phục vụ cho học sinh ôn thi THPTQG, Cao đẳng, Đại học.

- Học sinh sẽ thi đạt từ 8 điểm môn Toán trở nên nếu khai thác và học hiệu quả cuốn sách luyện thi THPT Quốc gia môn Toán này.

Trân trọng giới thiệu! ', N'Image\Toan_hinh_960x960.png', 76, 8)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1096, N'LÀM CHỦ MÔN TOÁN TRONG 30 NGÀY - HÌNH HỌC LỚP 10', 250000, 20, N'SPBooks', N'NXB Đại Học Quốc Gia Hà Nội', N'Lê Hồng Đức', NULL, N'16 x 26.5 cm', 560, 550, N'Bìa Mềm', CAST(N'2017-01-01T00:00:00' AS SmallDateTime), N'COMO.VN - Chủ Môn Toán Trong 30 Ngày - Hình Học Lớp 10

Cuốn sách Làm Chủ Môn Toán Trong 30 Ngày - Hình Học Lớp 10 trình bày các kiến thức nằm trong chương trình Toán Hình học lớp 10 theo 3 chương:

Chương 1: Vec tơ
Chương 2: Tích vô hướng của 2 vec tơ và ứng dụng
Chương 3: Phương pháp tọa độ trong mặt phẳng
Tương ứng với từng chương, các nội dung được sắp xếp theo bố cục 3 phần:

Phần 1: Tổng hợp lại kiến thức lý thuyết Hình học lớp 10 cần nhớ
Phần 2: Phân loại và nêu phương pháp giải cho từng dạng bài tập Hình học 10
Phần 3: Sơ đồ tư duy tổng kết kiến thức
Các bài tập đều có đáp án và hướng dẫn giải chi tiết giúp học sinh hiểu được bản chất của bài tập và nắm chắc kiến thức

Đối tượng có thể dùng sách:

Học sinh lớp 10 có học lực từ Trung Bình trở lên
Học sinh lớp 9 – lựa chọn sách làm tài liệu tham khảo, đọc và chuẩn bị trước kiến thức Toán Hình học 10
Giáo viên và các bạn gia sư trẻ – dùng sách làm tài liệu tham khảo cho quá trình giảng dạy môn Toán của mình
Ưu điểm nổi bật của sách:

Sách có tích hợp cùng Hệ sinh thái Học dễ 6.0 của Spbook với 6 tiện ích hỗ trợ việc học và ôn thi Hình học 10 dễ dàng và hiệu quả
Bài tập minh họa và bài tập tự luyện được phân chia theo tỉ lệ 70% tự luận – 305 trắc nghiệm – giúp học sinh hiểu sâu về bản chất Toán học, từ đó có thể tự mình ứng biến với rất nhiều câu hỏi trắc nghiệm khác nhau.
Có lộ trình chuẩn để học hiệu quả từng chương phù hợp với các mức học lực từ Trung bình – Khá – giỏi
40 video bài giảng lý thuyết và hướng dẫn giải các bài tập điển hình.
Hệ thống Mindmap được thiết kế khoa học, được đính kèm mỗi chương, giúp người học có cái nhìn bao quát về kiến thức và ghi nhớ nhanh, nhớ sâu kiến thức của từng chương.
Có nhóm bí mật giải đáp thắc mắc về sách và hỗ trợ em học Toán 24/24.
Sách được tích hợp cùng hệ thống SPTest – nguồn đề thi, bài tập tự luyện các kiến thức Hình học 10 chuẩn cấu trúc đề thi của Bộ Giáo dục và Đào tạo.

Trân trọng giới thiệu!', N'Image\origin_Lam_chu_mon_Toan_trong_30_ngay_Hinh_hoc_10_1511514986_500x500.png', 69, 8)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1097, N'Làm Chủ Môn Toán Trong 30 Ngày - Đại Số Lớp 10
LÀM CHỦ MÔN TOÁN TRONG 30 NGÀY - ĐẠI SỐ LỚP 10', 250000, 20, N'SPBooks', N'	NXB Đại Học Quốc Gia Hà Nội', N'Lê Hồng Đức', NULL, N'16 x 26.5 cm', 560, 550, N'Bìa Mềm', CAST(N'2017-11-01T00:00:00' AS SmallDateTime), N'COMO.VN - Cuốn sách Làm Chủ Môn Toán Trong 30 Ngày - Đại Số Lớp 10 

Trình bày các kiến thức nằm trong chương trình Toán Đại số 10 theo 5 chương:

Chương 1: Mệnh đề – Tổ hợp
Chương 2: Hàm số
Chương 3: Phương trình bậc nhất – bậc hai
Chương 4: Bất đẳng thức – Bất phương trình
Chương 5: Thống kê
Tương ứng với từng chương, các nội dung được sắp xếp theo bố cục 3 phần:

Phần 1: Tổng hợp lại kiến thức lý thuyết cần nhớ
Phần 2: Phân loại và nêu phương pháp giải cho từng dạng bài tập
Phần 3: Sơ đồ tư duy tổng kết
Các bài tập đều có đáp án và hướng dẫn giải chi tiết giúp học sinh hiểu được bản chất của bài tập và nắm chắc kiến thức

Đối tượng có thể dùng sách:

Học sinh lớp 10 có học lực từ Trung Bình trở lên
Học sinh lớp 9 – lựa chọn sách làm tài liệu tham khảo, đọc và chuẩn bị trước kiến thức Toán Đại số 10
Giáo viên và các bạn gia sư trẻ – dùng sách làm tài liệu tham khảo cho quá trình giảng dạy môn Toán của mình
Ưu điểm nổi bật của sách:

Sách có tích hợp cùng Hệ sinh thái Học dễ 6.0 của SPBook với 6 tiện ích hỗ trợ việc học và ôn thi Đại số 10 dễ dàng và hiệu quả
Bài tập minh họa và bài tập tự luyện được phân chia theo tỉ lệ 70% tự luận – 305 trắc nghiệm – giúp học sinh hiểu sâu về bản chất Toán học, từ đó có thể tự mình ứng biến với rất nhiều câu hỏi trắc nghiệm khác nhau.
Có lộ trình chuẩn để học hiệu quả từng chương phù hợp với các mức học lực từ Trung bình – Khá – giỏi
49 video bài giảng lý thuyết và hướng dẫn giải các bài tập điển hình.
Hệ thống Mindmap được thiết kế khoa học, được đính kèm mỗi chương, giúp người học có cái nhìn bao quát về kiến thức và ghi nhớ nhanh, nhớ sâu kiến thức của từng chương.
Có nhóm bí mật giải đáp thắc mắc về sách và hỗ trợ em học Toán 24/24.
Sách được tích hợp cùng hệ thống SPTest – nguồn đề thi, bài tập tự luyện các kiến thức Đại số 10 chuẩn cấu trúc đề thi của Bộ Giáo dục và Đào tạo.
Trân trọng giới thiệu!', N'Image\lam_chu_mon_toan_trong_30_dai_so_10_470x470.png', 46, 8)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1098, N'LÀM CHỦ MÔN TOÁN TRONG 30 NGÀY - ĐẠI SỐ VÀ GIẢI TÍCH 11 TẬP 1', 200000, 20, N'SP Book', N'	Đại học quốc gia Hà Nội', N'	Nhóm tác giả Lê Hồng Đức', NULL, N'19 x 27 cm', 448, 500, N'Bìa Mềm', CAST(N'2017-10-01T00:00:00' AS SmallDateTime), N'Nội dung chi tiết của sách Làm chủ môn Toán trong 30 ngày Đại số và Giải tích 11 tập 1
Sách trình bày kiến thức Đại số và giải tích 11 thuộc 2 chương

Chương 1: Góc lượng giác và các công thức lượng giác

Chương 2: Hàm số lượng giác và phương trình lượng giác

Tương ứng với từng chương, kiến thức sẽ được triển khai theo bố cục 3 phần

Phần 1: Tổng hợp lại các kiến thức lý thuyết cần nhớ

Phần 2: Phân loại và nêu phương pháp giải cho từng dạng bài

Phần 3: Sơ đồ tư duy hệ thống lại kiến thức cần nhớ

Theo đó, các chương sẽ được chia nhỏ với nhiều dạng bài tập khác nhau. Khai thác đầy đủ, toàn diện và đi sâu vào việc giúp học sinh hiểu rõ bản chất của từng dạng để có thể chủ động trong cách tư duy.

Đối tượng có thể dùng sách
Học sinh có học lực từ trung bình, khá, giỏi

Học sinh lớp 10, 11, 12 đều có thể dùng sách để tự học kiến thức Toán để cải thiện điểm số, ôn thi Học sinh Giỏi và ôn thi THPT Quốc gia – xét tuyển ĐH, Cao đẳng

Ưu điểm nổi bật của sách
Sách có tích hợp cùng Hệ sinh thái Học dễ 6.0 của SPBook với 6 tiện ích hỗ trợ việc học và ôn thi Hình học 10 dễ dàng và hiệu quả
Bài tập minh họa và bài tập tự luyện được phân chia theo tỉ lệ 70% tự luận – 30% trắc nghiệm – giúp học sinh hiểu sâu về bản chất Toán học, từ đó có thể tự mình ứng biến với rất nhiều câu hỏi trắc nghiệm khác nhau.
Sách được in màu rõ ràng, đầy đặn dễ học, kích thích sự hứng thú với việc học
Có lộ trình chuẩn để học hiệu quả từng chương phù hợp với các mức học lực từ Trung bình – Khá – Giỏi
Sách có 30 video bài giảng được đính kèm sách: đây là những video do chính giáo viên chuyên môn của SPBook thực hiện, có nội dung hướng dẫn học sinh các thao tác, các kĩ năng thuộc về thủ thuật để có thể giải nhanh ra một bài toán trắc nghiệm.
Hệ thống Mindmap được thiết kế khoa học, được đính kèm mỗi chương, giúp người học có cái nhìn bao quát về kiến thức và ghi nhớ nhanh, nhớ sâu kiến thức của từng chương.
Có nhóm bí mật giải đáp thắc mắc về sách và hỗ trợ em học Toán 24/24. Đây là một ưu đãi đặc biệt sau khi mua sách, khác biệt hoàn toàn với các cuốn sách tham khảo khác đang được bán trên thị trường.
Sách được viết bởi nhóm tác giả Lê Hồng Đức, với sự chủ biên của thầy Lê Hồng Đức – một tác giả có nhiều kinh nghiệm trong việc biên soạn các tài liệu tham khảo, tài liệu luyện thi Toán ở bậc Trung học phổ thông.
Ngoài ra, sách được tích hợp cùng hệ thống thi thử SPTest của SPBook với ngân hàng đề thi trắc nghiệm Toán 11 phong phú và bao quát được tất cả các dạng bài thi như: bài kiểm tra 15′, kiểm tra 1 tiết, kiểm tra học kì và thi THPT Quốc Gia.
Trân trọng giới thiệu! ', N'Image\lam_chu_toan_30_ngay_dai_so_va_giai_tich_11_1000x1000.png', 98, 8)
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1099, N'ĐỘT PHÁ 8+ KÌ THI THPT QUỐC GIA MÔN LỊCH SỬ', 199000, 20, N'CCBooks ', N'	NXB ĐH Quốc Gia Hà Nội', N'Chưa cập nhật', NULL, N'22 x 27 cm', 300, 300, N'Bìa mềm', CAST(N'2018-01-01T00:00:00' AS SmallDateTime), N'Đột Phá 8+ Kì Thi THPT Quốc Gia Môn Lịch Sử

Nội dung cuốn sách: Bao gồm kiến thức lớp 10, 11, 12 

- Hệ thống lại các kiến thức lịch sử trọng tâm lớp 10, 11 và trình bày những kiến thức mới năm 12 theo từng chương/chuyên đề cụ thể.

- Những sự kiện lịch sử quan trọng, thường xuất hiện trong đề thi THPT Quốc gia được trình bày dưới dạng sơ đồ khối. Các trình bày logic, ngắn gọn, trực quan, sinh động giúp học sinh dễ dàng ghi nhớ các mốc thời gian diễn ra sự kiện, hiểu sâu được vấn đề và dễ dàng ôn tập lại khi cần thiết.

- Các câu hỏi ôn tập kiến thức lịch sử được trình bày song song với lý thuyết. Với mỗi một chủ đề đều sẽ có các câu hỏi ôn tập dưới hình thức câu hỏi trắc nghiệm, bao quát nội dung cả chủ đề với đầy đủ 4 mức độ từ nhận biết, thông hiểu đến vận dụng và vận dụng cao.

- Ở cuối mỗi chủ đề sẽ có phần đáp án của các câu hỏi để học sinh đối chiếu kết quả sau khi làm bài xong.

Những kiến thức trọng tâm lớp 10, 11 được trình bày cô đọng. Kiến thức mới lớp 12 được trình bày chi tiết và tỉ mỉ về các bài, các chủ đề.

Bạn đạt được điều gì từ sách:

- Cuốn sách giúp học sinh làm quen và luyện kiến thức Lịch sử cơ bản lớp 12 một cách chi tiết.

- Giúp học sinh lớp 10, 11 hệ thống lại những chuỗi sự kiện, dấu mốc, các nhân vật quan trọng trong lịch sử đã học được để chuẩn bị cho các kì thi.

- Luyện thành thạo các dạng bài tập thường gặp trong đề thi THPTQG môn Lịch sử ở cả lớp 10, 11 và 12.

- Phục vụ cho học sinh ôn thi THPTQG, Cao đẳng, Đại học.

- Học sinh sẽ thi đạt từ 8 điểm môn Lịch sử trở nên nếu khai thác hiệu quả cuốn sách luyện thi THPT Quốc gia môn Lịch Sử này

Trân trọng giới thiệu! ', N'Image\41991436_1011225465722682_7861870088377335808_n_960x960.jpg', 35, 8)
GO
INSERT [dbo].[Book] ([BookID], [Name], [Price], [Discount], [Bookpublishers], [PublishingHouse], [Author], [Translator], [Size], [PageNumber], [Weight], [CoverType], [PublicTime], [Description], [Image], [Amount], [CategoryID]) VALUES (1100, N'ĐỘT PHÁ 8+ KÌ THI THPT QUỐC GIA MÔN VẬT LÝ
', 199000, 20, N'CCBooks ', N'	NXB ĐH Quốc Gia Hà Nội', N'Chưa cập nhật', NULL, N'22 x 27 cm', 300, 300, N'Bìa Mềm', CAST(N'2018-01-01T00:00:00' AS SmallDateTime), N'Đột Phá 8+ Kì Thi THPT Quốc Gia Môn Vật Lý

Hướng dẫn dùng máy tính để giải nhanh một số dạng bài tập.

Bổ sung phương pháp chuẩn hóa số liệu, giản đồ véc-tơ, bài toán đồ thị và bài toán sai số.

 Lí thuyết trọng tâm: được trình bày chi tiết, đầy đủ các kiến thức có liên quan. Song song với mỗi phần lí thuyết đó có một ví dụ mẫu để làm rõ vấn đề.

Các dạng bài tập: chia thành các dạng bài tập nhỏ, sau đó có phương pháp giải chi tiết kèm theo các ví dụ minh họa và phân tích ví dụ theo lối tư duy ngược để rèn tư duy logic cho học sinh.

Sau mỗi ví dụ minh họa là các lưu ý cho học sinh khi giải bài tập ở dạng đó. Ngoài ra, các em học sinh còn được làm thêm các bài tập tự luyện ngay sau đó kèm lời giải chi tiết trong hệ thống CCtest.

Trân trọng giới thiệu!', N'Image\ly_1_1000x1000.png', 86, 8)
SET IDENTITY_INSERT [dbo].[Book] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [Name], [Index]) VALUES (1, N'Sách kinh tế quản trị ', N'kinhtequantri')
INSERT [dbo].[Category] ([CategoryID], [Name], [Index]) VALUES (2, N'Sách kỹ năng', N'sachkynang')
INSERT [dbo].[Category] ([CategoryID], [Name], [Index]) VALUES (3, N'Sách văn học', N'sachvanhoc')
INSERT [dbo].[Category] ([CategoryID], [Name], [Index]) VALUES (4, N'Sách ngoại ngữ -  Từ điển', N'sachngoaingutudien')
INSERT [dbo].[Category] ([CategoryID], [Name], [Index]) VALUES (5, N'Sách mẹ và bé', N'sachmevabe')
INSERT [dbo].[Category] ([CategoryID], [Name], [Index]) VALUES (6, N'Truyện-Manga-Comic', N'truyenmangacomic')
INSERT [dbo].[Category] ([CategoryID], [Name], [Index]) VALUES (7, N'Tủ Sách', N'tusach')
INSERT [dbo].[Category] ([CategoryID], [Name], [Index]) VALUES (8, N'Sách Tham Khảo - Luyện thi', N'sachthamkhao')
INSERT [dbo].[Category] ([CategoryID], [Name], [Index]) VALUES (9, N'Sách Thưởng Thức - Đời sống', N'sachthuongthuc')
INSERT [dbo].[Category] ([CategoryID], [Name], [Index]) VALUES (10, N'Sản phẩm khác', N'sanphamkhac')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Member] ON 

INSERT [dbo].[Member] ([MemberID], [FullName], [Email], [Password], [Phone], [Adress], [RoleID]) VALUES (1, N'Admin', N'Admin@gmail.com', N'Admin', N'0976568986     ', N'Bắc từ liêm hà nội', 1)
INSERT [dbo].[Member] ([MemberID], [FullName], [Email], [Password], [Phone], [Adress], [RoleID]) VALUES (2, N'sa', N'sa', N'sa', N'0987678543     ', N'Nam từ liêm hà nội', 1)
INSERT [dbo].[Member] ([MemberID], [FullName], [Email], [Password], [Phone], [Adress], [RoleID]) VALUES (3, N'Nguyễn Thế Anh', N'theanh@a.com', N'theanh', N'0986780954     ', N'nghệ an', 2)
INSERT [dbo].[Member] ([MemberID], [FullName], [Email], [Password], [Phone], [Adress], [RoleID]) VALUES (5, N'Nguyễn Bá An', N'baan@gmail.com', N'nguyenbaan', N'0967852636     ', N'Thành hóa', 2)
INSERT [dbo].[Member] ([MemberID], [FullName], [Email], [Password], [Phone], [Adress], [RoleID]) VALUES (14, N'test', N'test@gmail.com', N'test1', N'0123456789     ', NULL, 2)
SET IDENTITY_INSERT [dbo].[Member] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [Name], [Index]) VALUES (1, N'Admin', N'admin')
INSERT [dbo].[Role] ([RoleID], [Name], [Index]) VALUES (2, N'Member', N'member')
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Index [UQ__Book__3DE0C226D59BF54E]    Script Date: 11/14/2018 5:18:39 PM ******/
ALTER TABLE [dbo].[Book] ADD UNIQUE NONCLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Category__19093A2A15D9E546]    Script Date: 11/14/2018 5:18:39 PM ******/
ALTER TABLE [dbo].[Category] ADD UNIQUE NONCLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Category__9A5B62290FA4811E]    Script Date: 11/14/2018 5:18:39 PM ******/
ALTER TABLE [dbo].[Category] ADD UNIQUE NONCLUSTERED 
(
	[Index] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Member__0CF04B39B0337874]    Script Date: 11/14/2018 5:18:39 PM ******/
ALTER TABLE [dbo].[Member] ADD UNIQUE NONCLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Member__A9D105347B173700]    Script Date: 11/14/2018 5:18:39 PM ******/
ALTER TABLE [dbo].[Member] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__OderDeta__53D880E1A6C56DF8]    Script Date: 11/14/2018 5:18:39 PM ******/
ALTER TABLE [dbo].[OderDetail] ADD UNIQUE NONCLUSTERED 
(
	[OrderDetail_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Order__C3905BAE8007B0B1]    Script Date: 11/14/2018 5:18:39 PM ******/
ALTER TABLE [dbo].[Order] ADD UNIQUE NONCLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Role__8AFACE3B697402E3]    Script Date: 11/14/2018 5:18:39 PM ******/
ALTER TABLE [dbo].[Role] ADD UNIQUE NONCLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Role__9A5B622932A72B54]    Script Date: 11/14/2018 5:18:39 PM ******/
ALTER TABLE [dbo].[Role] ADD UNIQUE NONCLUSTERED 
(
	[Index] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Member]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[OderDetail]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
ALTER TABLE [dbo].[OderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
USE [master]
GO
ALTER DATABASE [BookStore] SET  READ_WRITE 
GO
