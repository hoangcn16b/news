-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 29, 2022 lúc 03:40 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project_news_test`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_at` datetime DEFAULT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `name`, `category_id`, `content`, `thumb`, `status`, `publish_at`, `type`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Liverpool chỉ được nâng Cup phiên bản nếu vô địch hôm nay', 4, '<p>Đội b&oacute;ng th&agrave;nh phố cảng sẽ kh&ocirc;ng n&acirc;ng Cup nguy&ecirc;n bản nếu vượt mặt Man City ở v&ograve;ng cuối Ngoại hạng Anh.</p>\r\n\r\n<p>Liverpool k&eacute;m Man City một điểm trước khi tiếp Wolverhampton tr&ecirc;n s&acirc;n nh&agrave; Anfield v&agrave;o ng&agrave;y Chủ Nhật. Ở trận đấu c&ugrave;ng giờ, Man City sẽ l&agrave;m kh&aacute;ch tới s&acirc;n Brighton v&agrave; biết một chiến thắng sẽ gi&uacute;p họ bảo vệ th&agrave;nh c&ocirc;ng ng&ocirc;i v&ocirc; địch. Kể từ khi c&aacute;c trận v&ograve;ng cuối Ngoại hạng Anh sẽ chơi đồng loạt c&ugrave;ng l&uacute;c, ban tổ chức phải đặt một chiếc cup phi&ecirc;n bản giống thật tại Anfield ph&ograve;ng trường hợp Liverpool v&ocirc; địch. Chiếc cup giả n&agrave;y thường được d&ugrave;ng trong c&aacute;c sự kiện quảng b&aacute; của Ngoại hạng Anh.&nbsp;</p>', 'L3Yuzln8II.png', 'active', '2019-04-29 00:00:00', 'featured', 'hailan', 'hailan', '2019-05-03 17:00:00', '2019-05-16 17:00:00'),
(2, 'Bottas giành pole chặng thứ ba liên tiếp', 4, '<p>Tay đua Phần Lan đ&aacute;nh bại đồng đội Lewis Hamilton ở v&ograve;ng ph&acirc;n hạng GP T&acirc;y Ban Nha h&ocirc;m 11/5.</p>\r\n\r\n<p>Valtteri Bottas nhanh hơn Hamilton 0,634 gi&acirc;y v&agrave; nhanh hơn người về thứ ba&nbsp;Sebastian Vettel 0,866 gi&acirc;y. Tay đua của Red Bull&nbsp;Max Verstappen nhanh thứ tư, trong khi&nbsp;Charles Leclerc về thứ năm.</p>', 'iQ1RXPioFZ.jpeg', 'active', '2019-04-28 00:00:00', 'featured', 'hailan', 'hailan', '2019-05-03 17:00:00', '2019-05-16 17:00:00'),
(3, 'HLV Cardiff: \'Man Utd sẽ không vô địch trong 10 năm tới\'', 4, '<p>Neil Warnock tỏ ra nghi ngờ về tương lai của Man Utd dưới thời HLV Solskjaer.</p>\r\n\r\n<p>&quot;Một số người nghĩ Man Utd cần từ hai đến ba kỳ chuyển nhượng nữa để gi&agrave;nh danh hiệu&quot;, HLV Neil Warnock chia sẻ. &quot;T&ocirc;i th&igrave; nghĩ c&oacute; thể l&agrave; 10 năm. T&ocirc;i kh&ocirc;ng thấy học&oacute; khả năng bắt kịp hai CLB h&agrave;ng đầu trong khoảng bốn hay năm năm tới&quot;.</p>\r\n\r\n<p>Lần cuối Man Utd v&ocirc; địch l&agrave; m&ugrave;a 2012-2013 dưới thời HLV Sir Alex Ferguson. Kể từ đ&oacute; đến nay, &quot;Quỷ đỏ&quot; kh&ocirc;ng c&ograve;n duy tr&igrave; được vị thế ứng cử vi&ecirc;n v&ocirc; địch h&agrave;ng đầu.&nbsp;</p>', 'ReChSfB95C.jpeg', 'active', '2019-05-30 00:00:00', 'featured', 'hailan', 'hailan', '2019-05-03 17:00:00', '2019-05-16 17:00:00'),
(4, 'Đại học Anh đưa khóa học hạnh phúc vào chương trình giảng dạy', 4, '<p>Kh&oacute;a học diễn ra trong 12 tuần, sinh vi&ecirc;n năm nhất Đại học Bristol sẽ được kh&aacute;m ph&aacute; hạnh ph&uacute;c l&agrave; g&igrave; v&agrave; l&agrave;m thế n&agrave;o để đạt được n&oacute;.</p>\r\n\r\n<p>Đại học Bristol (Anh) quyết định đưa kh&oacute;a học hạnh ph&uacute;c v&agrave;o giảng dạy từ th&aacute;ng 9 năm nay nhằm giảm thiểu t&igrave;nh trạng tự tử ở sinh vi&ecirc;n, sau khi 12 sinh vi&ecirc;n ở một trường kh&aacute;c quy&ecirc;n sinh trong ba năm qua. Gi&aacute;o sư Bruce Hood, nh&agrave; t&acirc;m l&yacute; học chuy&ecirc;n nghi&ecirc;n cứu về c&aacute;ch thức hoạt động của bộ n&atilde;o v&agrave; con người, sẽ giảng dạy m&ocirc;n học mới n&agrave;y.</p>', 'hoyOyXJrzx.png', 'active', '2019-05-05 00:00:00', 'featured', 'hailan', 'hailan', '2019-05-03 17:00:00', '2019-05-16 17:00:00'),
(5, '11 cách đơn giản dạy trẻ quản lý thời gian', 4, '<p>Phụ huynh h&atilde;y tạo cảm gi&aacute;c vui vẻ, hướng dẫn trẻ thiết lập những ưu ti&ecirc;n h&agrave;ng ng&agrave;y để ch&uacute;ng c&oacute; thể tự quản l&yacute; thời gian hiệu quả.</p>\r\n\r\n<p>&quot;Nhanh l&ecirc;n&quot;, &quot;Con c&oacute; biết mấy giờ rồi kh&ocirc;ng&quot;, &quot;Điều g&igrave; l&agrave;m con mất nhiều thời gian như vậy&quot;..., l&agrave; những c&acirc;u n&oacute;i quen thuộc của phụ huynh để nhắc nhở con về kh&aacute;i niệm thời gian. Thay v&igrave; n&oacute;i những c&acirc;u tr&ecirc;n, phụ huynh c&oacute; thể dạy con c&aacute;ch quản l&yacute; giờ giấc ngay từ khi ch&uacute;ng c&ograve;n nhỏ.</p>', 'Phe2pSOC5Q.jpeg', 'active', '2019-07-30 00:00:00', 'normal', 'hailan', 'hailan', '2019-05-03 17:00:00', '2019-05-16 17:00:00'),
(6, 'Vì sao không hút thuốc vẫn bị ung thư phổi?', 4, '<p>D&ugrave; kh&ocirc;ng h&uacute;t thuốc, bạn vẫn c&oacute; nguy cơ ung thư phổi do h&iacute;t phải kh&oacute;i thuốc, tiếp x&uacute;c với kh&iacute; radon hoặc sống trong m&ocirc;i trường &ocirc; nhiễm.&nbsp;</p>\r\n\r\n<p>Người kh&ocirc;ng h&uacute;t thuốc vẫn c&oacute; thể bị ung thư phổi.&nbsp;Tr&ecirc;n&nbsp;<em>Journal of the Royal Society of Medicine</em>,&nbsp;c&aacute;c nh&agrave; khoa học từ&nbsp;Hiệp hội Ung thư Mỹ cho biết 20% bệnh nh&acirc;n ung thư phổi kh&ocirc;ng bao giờ h&uacute;t thuốc.&nbsp;Nghi&ecirc;n cứu 30 năm tr&ecirc;n 1,2 triệu người của tổ chức n&agrave;y cũng chỉ ra số người kh&ocirc;ng h&uacute;t thuốc bị ung thư phổi đang gia tăng. Hầu hết bệnh nh&acirc;n chỉ được chẩn đo&aacute;n khi đ&atilde; bước sang giai đoạn nghi&ecirc;m trọng kh&ocirc;ng thể điều trị.&nbsp;</p>', 'tPa7bgOesm.png', 'active', '2019-08-30 00:00:00', 'normal', 'hailan', 'hailan', '2019-05-03 17:00:00', '2019-05-16 17:00:00'),
(7, '10 hãng hàng không tốt nhất thế giới năm 2019', 4, '<p>Qatar l&agrave; quốc gia duy nhất tr&ecirc;n thế giới c&oacute; h&atilde;ng h&agrave;ng kh&ocirc;ng v&agrave; s&acirc;n bay tốt nhất năm 2019.</p>\r\n\r\n<p>C&aacute;c s&acirc;n bay được đ&aacute;nh gi&aacute; dựa tr&ecirc;n 3 yếu tố: hiệu suất đ&uacute;ng giờ, chất lượng dịch vụ, thực phẩm v&agrave; lựa chọn mua sắm. Yếu tố đầu ti&ecirc;n chiếm 60% số điểm, hai ti&ecirc;u ch&iacute; c&ograve;n lại chiếm 20%. Dữ liệu của AirHelp được dựa tr&ecirc;n thống k&ecirc; từ nhiều nh&agrave; cung cấp thương mại, c&ugrave;ng cơ sở dữ liệu đ&aacute;nh gi&aacute; ri&ecirc;ng v&agrave; 40.000 khảo s&aacute;t h&agrave;nh kh&aacute;ch được thu thập từ hơn 40 quốc gia trong năm 2018.</p>', '8GlYE3KYtZ.png', 'active', '2019-09-30 00:00:00', 'normal', 'hailan', 'hailan', '2019-05-03 17:00:00', '2019-05-16 17:00:00'),
(8, 'Phát hiện bụt mọc cổ thụ hơn 2.600 tuổi ở Mỹ', 4, '<p>Ph&aacute;t hiện mới gi&uacute;p bụt mọc trở th&agrave;nh một trong những c&acirc;y sinh sản hữu t&iacute;nh gi&agrave; nhất thế giới, vượt xa ước t&iacute;nh trước đ&acirc;y của c&aacute;c chuy&ecirc;n gia.</p>\r\n\r\n<p>C&aacute;c nh&agrave; khoa học ph&aacute;t hiện một c&acirc;y bụt mọc &iacute;t nhất đ&atilde; 2.624 tuổi ở v&ugrave;ng đầm lầy s&ocirc;ng Black, bang Bắc Carolina, Mỹ, theo nghi&ecirc;n cứu đăng tr&ecirc;n tạp ch&iacute;&nbsp;<em>Environmental Research Communications</em>&nbsp;h&ocirc;m 9/5.&nbsp;</p>\r\n\r\n<p>Nh&oacute;m nghi&ecirc;n cứu bắt gặp bụt mọc cổ thụ n&agrave;y trong l&uacute;c nghi&ecirc;n cứu v&ograve;ng tuổi của c&acirc;y để t&igrave;m hiểu về lịch sử kh&iacute; hậu tại miền đ&ocirc;ng nước Mỹ. Ngo&agrave;i thể hiện tuổi thọ, độ rộng v&agrave; m&agrave;u sắc của v&ograve;ng tuổi tr&ecirc;n th&acirc;n c&acirc;y c&ograve;n cho biết mức độ ẩm ướt hay kh&ocirc; hạn của năm tương ứng.</p>', 'a09zB7BiwV.jpeg', 'active', '2019-05-12 00:00:00', 'normal', 'hailan', 'hailan', '2019-05-11 17:00:00', '2019-05-16 17:00:00'),
(9, 'Apple có thể không nâng cấp iOS 13 cho iPhone SE, 6', 4, '<p>Những mẫu iPhone ra mắt từ 2014 v&agrave; iPhone SE c&oacute; thể kh&ocirc;ng được l&ecirc;n đời hệ điều h&agrave;nh iOS 13 ra mắt th&aacute;ng 6 tới.</p>\r\n\r\n<p>Theo&nbsp;<em>Phone Arena</em>, hệ điều h&agrave;nh iOS 13 sắp tr&igrave;nh l&agrave;ng tại hội nghị WWDC 2019 sẽ kh&ocirc;ng hỗ trợ một loạt iPhone đời cũ của Apple. Trong đ&oacute;, đ&aacute;ng ch&uacute; &yacute; l&agrave; c&aacute;c mẫu iPhone vẫn c&ograve;n được nhiều người d&ugrave;ng sử dụng như iPhone 6, 6s Plus hay SE.&nbsp;</p>', '9jOZGc7BJK.png', 'active', '2019-05-10 00:00:00', 'normal', 'hailan', 'hailan', '2019-05-11 17:00:00', '2019-05-16 17:00:00'),
(10, 'Hình dung về Honda Jazz thế hệ mới', 4, '<p>Thế hệ thứ tư của mẫu hatchback Honda tiết chế bớt những đường n&eacute;t g&acirc;n guốc, thể thao để thay bằng n&eacute;t trung t&iacute;nh, hợp mắt người d&ugrave;ng hơn.&nbsp;</p>\r\n\r\n<p>Những h&igrave;nh ảnh đầu ti&ecirc;n về Honda Jazz (Fit tại Nhật Bản) thế hệ mới bắt đầu xuất hiện tr&ecirc;n đường thử. D&ugrave; chưa phải thiết kế ho&agrave;n chỉnh, thay đổi của mẫu hatchback cỡ B cho thấy những đường n&eacute;t trung t&iacute;nh m&agrave; xe sắp sở hữu. Điều n&agrave;y tr&aacute;i ngược với tạo h&igrave;nh g&acirc;n guốc, thể thao ở thế hệ thứ ba hiện tại của Jazz.&nbsp;</p>', 'g2c7mYXBPW.png', 'active', '2019-05-12 00:00:00', 'normal', 'hailan', 'hailan', '2019-05-11 17:00:00', '2019-05-16 17:00:00'),
(11, 'Hà Nội vào vòng knock-out AFC Cup', 4, '<p>ĐKVĐ V-League đ&aacute;nh bại&nbsp;Tampines Rovers 2-0 v&agrave;o chiều 15/5 để đứng đầu bảng F.</p>\r\n\r\n<p>Tiếp đối thủ đến từ Singapore trong t&igrave;nh thế buộc phải thắng để tự quyết v&eacute; đi tiếp, H&agrave; Nội đ&atilde; c&oacute; trận đấu dễ d&agrave;ng. C&oacute; thể n&oacute;i, kết quả của trận đấu được định đoạt trong hiệp một khi Oseni v&agrave; Th&agrave;nh Chung lần lượt ghi b&agrave;n cho đội chủ nh&agrave;. Trong khi đ&oacute;, Tampines Rovers phải trả gi&aacute; cho lối chơi th&ocirc; bạo khi Yasir Hanapi nhận thẻ v&agrave;ng thứ hai rời s&acirc;n. Tiền vệ n&agrave;y bị trừng phạt bởi pha đ&aacute;nh nguội với Th&agrave;nh Chung ở đầu trận, sau đ&oacute; l&agrave; t&igrave;nh huống phạm lỗi &aacute;c &yacute; với Đ&igrave;nh Trọng.</p>', 'e7YyFZJCc8.jpeg', 'active', '2019-05-10 00:00:00', 'featured', 'hailan', 'hailan', '2019-05-14 17:00:00', '2019-05-16 17:00:00'),
(12, 'Man City vẫn dự Champions League mùa 2019-2020', 4, '<p>Việc điều tra vi phạm luật c&ocirc;ng bằng t&agrave;i ch&iacute;nh của chủ s&acirc;n Etihad chưa thể ho&agrave;n th&agrave;nh trong v&ograve;ng một năm tới.</p>\r\n\r\n<p><em>Sports Mail</em>&nbsp;(Anh)&nbsp;cho biết, &aacute;n phạt cấm tham dự Champions League một m&ugrave;a với Man City, do vi phạm luật c&ocirc;ng bằng t&agrave;i ch&iacute;nh (FFP), chỉ được đưa ra sớm nhất v&agrave;o m&ugrave;a 2020-2021.</p>\r\n\r\n<p>Trong bức thư ngỏ gửi tới truyền th&ocirc;ng Anh, Man City viết: &quot;Ch&uacute;ng t&ocirc;i hợp t&aacute;c một c&aacute;ch thiện ch&iacute; với Tiểu ban kiểm so&aacute;t t&agrave;i ch&iacute;nh c&aacute;c CLB của UEFA (CFCB). CLB tin tưởng v&agrave;o sự độc lập v&agrave; cam kết của CFCB h&ocirc;m 7/3, rằng sẽ kh&ocirc;ng kết luận g&igrave; trong thời gian điều tra&quot;.</p>', 'exzJEG4WDU.jpeg', 'active', '2019-05-10 00:00:00', 'featured', 'hailan', 'hailan', '2019-05-14 17:00:00', '2019-05-16 17:00:00'),
(13, 'Những câu đố giúp rèn luyện trí não', 4, '<p>Bạn cần quan s&aacute;t, suy luận logic v&agrave; c&oacute; vốn từ vựng tiếng Anh để giải quyết những c&acirc;u đố dưới đ&acirc;y.</p>\r\n\r\n<p>C&acirc;u 1:&nbsp;Mike đến một buổi phỏng vấn xin việc. Anh đ&atilde; g&acirc;y ấn tượng với gi&aacute;m đốc về những kỹ năng v&agrave; kinh nghiệm của m&igrave;nh. Tuy nhi&ecirc;n, để quyết định c&oacute; nhận Mike hay kh&ocirc;ng, nữ gi&aacute;m đốc đưa ra một c&acirc;u đố h&oacute;c b&uacute;a v&agrave; y&ecirc;u cầu Mike trả lời trong 30 gi&acirc;y.</p>\r\n\r\n<p>Nội dung c&acirc;u đố: H&atilde;y đưa ra 30 từ tiếng Anh kh&ocirc;ng c&oacute; chữ &quot;a&quot; xuất hiện trong đ&oacute;?&nbsp;</p>\r\n\r\n<p>Mike dễ d&agrave;ng giải quyết c&acirc;u đố. Theo bạn anh ấy n&oacute;i những từ tiếng Anh n&agrave;o để kịp trả lời trong 30 gi&acirc;y?</p>', 'TpcocqUjob.png', 'active', '2019-05-10 00:00:00', 'featured', 'hailan', 'hailan', '2019-05-14 17:00:00', '2019-05-16 17:00:00'),
(14, 'Cách nhận biết mật ong nguyên chất và pha trộn', 4, '<p>Mật ong nguy&ecirc;n chất sẽ kh&ocirc;ng thấm qua tờ giấy, lắng xuống đ&aacute;y ly nước v&agrave; bị kiến ăn, kh&aacute;c với mật ong bị pha trộn tạp chất.</p>\r\n\r\n<p>Dược sĩ V&otilde; H&ugrave;ng Mạnh, Trưởng khoa Dược Bệnh viện Y học d&acirc;n tộc cổ truyền B&igrave;nh Định, cho biết thị trường c&oacute; nhiều loại mật ong bị pha trộn, chỉ nh&igrave;n bề ngo&agrave;i hay ngửi m&ugrave;i chưa chắc ph&acirc;n biệt được.</p>\r\n\r\n<p>Theo dược sĩ H&ugrave;ng, một c&aacute;ch ph&acirc;n biệt thật giả l&agrave; lấy cọng h&agrave;nh tươi nh&uacute;ng v&agrave;o lọ mật ong, lấy ra chừng v&agrave;i ph&uacute;t. Cọng l&aacute; h&agrave;nh sẽ chuyển từ m&agrave;u xanh l&aacute; sang sậm nếu mật ong thật. Ngo&agrave;i ra, c&oacute; thể nhỏ giọt mật v&agrave;o nơi c&oacute; kiến, nếu kiến kh&ocirc;ng bu giọt mật th&igrave; cũng l&agrave; mật ong thật.</p>\r\n\r\n<p>Ng&agrave;y nay, nhiều người đặt mật ong v&agrave;o ngăn đ&aacute; tủ lạnh, sau 24 giờ m&agrave; kh&ocirc;ng c&oacute; hiện tượng đ&ocirc;ng đ&aacute; th&igrave; l&agrave; mật thật.</p>', 'xvEqmF5uyJ.png', 'active', '2019-05-10 00:00:00', 'normal', 'hailan', 'hailan', '2019-05-14 17:00:00', '2019-05-16 17:00:00'),
(15, 'Nhiều tour mùa hè giảm giá hàng chục triệu đồng', 4, '<p>C&aacute;c tour trong v&agrave; ngo&agrave;i nước đều được giảm gi&aacute; mạnh để k&iacute;ch cầu du lịch trong dịp h&egrave;, nhiều chương tr&igrave;nh khuyến m&atilde;i l&ecirc;n đến h&agrave;ng chục triệu đồng.</p>\r\n\r\n<p>Sau khi so s&aacute;nh tiền v&eacute; m&aacute;y bay, ph&ograve;ng kh&aacute;ch sạn ở Bali để chuẩn bị cho kỳ nghỉ h&egrave; của gia đ&igrave;nh, anh Sơn (ngụ quận 2, TP HCM) quyết định chuyển sang mua tour trọn g&oacute;i v&igrave; tiết kiệm hơn.</p>', 'd2ABCeBzoR.jpeg', 'active', '2019-05-15 00:00:00', 'featured', 'hailan', 'hailan', '2019-05-14 17:00:00', '2019-05-16 17:00:00'),
(16, 'BMW i8 Roadster - xe mui trần dẫn đường ở Formula E', 4, '<p>Dịp cuối tuần qua, BMW giới thiệu chiếc xe dẫn đường, l&agrave;m nhiệm vụ đảm bảo an to&agrave;n tại giải đua xe Formula E. Giải đua tương tự giải F1, nhưng to&agrave;n bộ xe đua sử dụng động cơ điện.</p>\r\n\r\n<p>i8 Roadster Safety Car dựa tr&ecirc;n chiếc i8 Roadster ti&ecirc;u chuẩn, nhưng c&oacute; những thay đổi để trở th&agrave;nh chiếc xe dẫn đường chuy&ecirc;n dụng. Ngoại h&igrave;nh c&oacute; một số đặc điểm ấn tượng hơn so với nguy&ecirc;n bản. K&iacute;nh chắn gi&oacute; kiểu d&agrave;nh cho xe đua, trọng t&acirc;m hạ thấp 15 mm.</p>', '9fbeUKTBpU.png', 'active', '2019-05-10 00:00:00', 'normal', 'hailan', 'hailan', '2019-05-14 17:00:00', '2019-05-16 17:00:00'),
(17, 'Tia cực tím tại Hà Nội ở mức \'nguy hiểm\'', 4, '<p>Chỉ số tia UV tại H&agrave; Nội ng&agrave;y 18-19/5 l&ecirc;n tới 11, mức được đ&aacute;nh gi&aacute; l&agrave; &quot;nguy hiểm&quot; dễ khiến da, mắt bị bỏng nhiệt.</p>\r\n\r\n<p>H&agrave; Nội đang trải qua đợt nắng n&oacute;ng gay gắt. Theo Trung t&acirc;m Dự b&aacute;o Kh&iacute; tượng Thủy văn Quốc gia, nhiệt độ cao nhất ở H&agrave; Nội ng&agrave;y 18/5 dao động trong khoảng 37 đến 39 độ C, c&oacute; nơi tr&ecirc;n 39 độ.&nbsp;Trang&nbsp;<em>World Weather Online</em>&nbsp;của Anh dự b&aacute;o chỉ số tia cực t&iacute;m tại H&agrave; Nội hai ng&agrave;y 18-19/5 đạt mức 11.&nbsp;</p>', 'C4DtP4ico8.png', 'active', '2019-05-16 00:00:00', 'normal', 'hailan', 'hailan', '2019-05-16 17:00:00', '2019-05-16 17:00:00'),
(18, 'Blockchain và trí tuệ nhân tạo AI làm thay đổi giáo dục trực tuyến', 4, '<p>Blockchain khiến dữ liệu trở n&ecirc;n c&ocirc;ng khai, minh bạch với người học, AI gi&uacute;p cải thiện khả năng tương t&aacute;c v&agrave; giảng dạy với từng c&aacute; nh&acirc;n.</p>\r\n\r\n<p>Sự b&ugrave;ng nổ của Internet v&agrave; những c&ocirc;ng nghệ mới như chuỗi khối (Blockchain) v&agrave; tr&iacute; tuệ nh&acirc;n tạo (AI) đ&atilde; g&oacute;p phần l&agrave;m thay đổi nền gi&aacute;o dục tr&ecirc;n to&agrave;n thế giới, h&igrave;nh th&agrave;nh những nền tảng Online Learning với nhiều ưu thế.</p>\r\n\r\n<p><strong>Mobile Learning dự b&aacute;o l&agrave; &quot;Cuộc c&aacute;ch mạng tiếp theo&quot; của gi&aacute;o dục trực tuyến</strong></p>\r\n\r\n<p>Theo nghi&ecirc;n cứu của Global Market Insights, thị trường gi&aacute;o dục trực tuyến to&agrave;n cầu đang c&oacute; tốc độ ph&aacute;t triển nhanh chưa từng thấy khi nền tảng hạ tầng Internet ng&agrave;y c&agrave;ng ho&agrave;n thiện v&agrave; phủ s&oacute;ng rộng khắp. Gi&aacute; trị c&aacute;c start-up về EdTech (C&ocirc;ng ty c&ocirc;ng nghệ chuy&ecirc;n về gi&aacute;o dục) to&agrave;n cầu được ước t&iacute;nh hơn 190 tỷ USD v&agrave;o năm 2018 v&agrave; dự kiến vượt hơn 300 tỷ USD v&agrave;o năm 2025.</p>', 'gCPGos7mhY.png', 'active', '2019-05-16 00:00:00', 'featured', 'hailan', 'hailan', '2019-05-16 17:00:00', '2019-05-16 17:00:00'),
(19, 'Huawei nói lệnh cấm sẽ khiến Mỹ tụt hậu về 5G', 4, '<p>Huawei khẳng định sắc lệnh mới của Mỹ sẽ chỉ c&agrave;ng khiến qu&aacute; tr&igrave;nh triển khai c&ocirc;ng nghệ 5G ở nước n&agrave;y th&ecirc;m chậm chạp v&agrave; đắt đỏ.</p>\r\n\r\n<p>H&atilde;ng c&ocirc;ng nghệ Trung Quốc tự nhận l&agrave; &quot;người dẫn đầu kh&ocirc;ng ai s&aacute;nh kịp về c&ocirc;ng nghệ 5G&quot;, n&ecirc;n việc bị hạn chế kinh doanh ở Mỹ chỉ dẫn đến kết cục l&agrave; Mỹ sẽ bị &quot;tụt lại ph&iacute;a sau&quot; trong việc triển khai c&ocirc;ng nghệ kết nối di động thế hệ mới</p>', 'nt1QxhKUXM.jpeg', 'active', '2019-05-16 00:00:00', 'featured', 'hailan', '', '2019-05-16 17:00:00', NULL),
(20, 'Asus ra mắt Zenfone 6 với camera lật tự động', 3, '<p>Với thiết kế m&agrave;n h&igrave;nh tr&agrave;n viền ho&agrave;n to&agrave;n kh&ocirc;ng tai thỏ, camera ch&iacute;nh 48 megapixel tr&ecirc;n Zenfone 6 c&oacute; thể lật từ sau ra trước biến th&agrave;nh camera selfie.</p>\r\n\r\n<p>Zenfone 6 l&agrave; một trong những smartphone c&oacute; viền m&agrave;n h&igrave;nh mỏng nhất tr&ecirc;n thị trường với tỷ lệ m&agrave;n h&igrave;nh hiển thị chiếm tới 92% diện t&iacute;ch mặt trước. M&aacute;y c&oacute; m&agrave;n h&igrave;nh 6,4 inch tr&agrave;n viền ra cả bốn cạnh, kh&ocirc;ng tai thỏ như một số mẫu Zenfone trước v&agrave; cũng kh&ocirc;ng d&ugrave;ng thiết kế đục lỗ như Galaxy S10, S10+</p>', 'aiC6j6fWZY.png', 'active', '2019-05-16 00:00:00', 'featured', 'hailan', 'hailan', '2019-05-16 17:00:00', '2022-08-23 06:58:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `product_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(27, 'color', '164', 'active', NULL, NULL, NULL, NULL),
(28, 'size', '164', 'active', NULL, NULL, NULL, NULL),
(29, 'material', '164', 'active', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `name`, `attribute_id`, `product_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(4, 'red', '27', '164', NULL, NULL, NULL, NULL),
(5, 'blue', '27', '164', NULL, NULL, NULL, NULL),
(6, 'green', '27', '164', NULL, NULL, NULL, NULL),
(7, 's', '28', '164', NULL, NULL, NULL, NULL),
(8, 'm', '28', '164', NULL, NULL, NULL, NULL),
(9, 'l', '28', '164', NULL, NULL, NULL, NULL),
(10, 'jean', '29', '164', NULL, NULL, NULL, NULL),
(11, 'cotton', '29', '164', NULL, NULL, NULL, NULL),
(12, 'thun', '29', '164', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `is_home`, `display`, `created_by`, `updated_by`, `created_at`, `updated_at`, `_lft`, `_rgt`, `parent_id`) VALUES
(1, 'Root', 'active', 'no', NULL, NULL, NULL, NULL, '2022-08-10 23:30:54', 1, 44, NULL),
(2, 'Thể thao', 'active', 'yes', 'list', 'admin', 'hailan', '2019-05-03 17:00:00', '2022-08-18 17:00:00', 2, 3, 1),
(3, 'Giáo dục', 'active', 'yes', 'grid', 'admin', 'hailan', '2019-05-03 17:00:00', '2022-08-11 01:04:56', 4, 9, 1),
(4, 'Sức khỏe', 'active', 'no', 'list', 'admin', 'hailan', '2019-05-03 17:00:00', '2019-05-15 08:04:33', 10, 11, 1),
(5, 'Du lịch', 'active', 'no', 'grid', 'admin', 'hailan', '2019-05-03 17:00:00', '2022-08-10 09:43:46', 12, 13, 1),
(6, 'Khoa học', 'active', 'no', 'list', 'admin', 'hailan', '2019-05-03 17:00:00', '2022-08-10 23:30:54', 14, 21, 1),
(7, 'Số hóa', 'active', 'no', 'grid', 'admin', 'hailan', '2019-05-03 17:00:00', '2022-08-11 01:30:45', 26, 41, 1),
(8, 'Xe - Ô tô', 'active', 'no', 'list', 'admin', 'hailan', '2019-05-03 17:00:00', '2022-08-10 23:30:54', 22, 23, 1),
(9, 'Kinh doanh', 'active', 'no', 'list', 'hailan', 'hailan', '2019-05-11 17:00:00', '2022-08-11 01:31:18', 42, 43, 1),
(28, 'tin 1-1', 'inactive', NULL, NULL, 'hailan', 'hailan', '2022-08-10 17:00:00', '2022-08-10 23:21:39', 27, 28, 7),
(29, 'tin - root', 'inactive', NULL, NULL, 'hailan', 'hailan', '2022-08-10 17:00:00', '2022-08-11 00:34:47', 24, 25, 1),
(32, 'tin gd 1', 'inactive', NULL, NULL, 'hailan', NULL, '2022-08-10 17:00:00', '2022-08-11 01:14:53', 5, 6, 3),
(33, 'Tin gd 2', 'inactive', NULL, NULL, 'hailan', NULL, '2022-08-10 17:00:00', '2022-08-11 01:15:13', 7, 8, 3),
(34, 'Khoa học _1', 'inactive', NULL, NULL, 'hailan', NULL, '2022-08-10 17:00:00', '2022-08-11 01:32:05', 15, 20, 6),
(35, 'Khoa học _1_1', 'active', NULL, NULL, 'hailan', NULL, '2022-08-10 17:00:00', '2022-08-11 01:32:24', 16, 17, 34),
(36, 'Khoa học _1_2', 'inactive', NULL, NULL, 'hailan', NULL, '2022-08-10 17:00:00', '2022-08-11 01:32:44', 18, 19, 34);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `status`, `email`, `content`, `ip`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'hoàng', NULL, 'inactive', 'hoangalt0198@gmail.com', 'nội dung', '', '', '', '2022-07-26 17:32:27', NULL),
(2, 'hoangalt0098', '0358623322', 'inactive', 'hoangalt0098@gmail.com', 'đfsdfsd', '127.0.0.1', '', '', '2022-07-26 11:22:43', NULL),
(3, 'hoangalt0098', '0358623322', 'inactive', 'hoangalt0098@gmail.com', 'ưewqewe', '127.0.0.1', '', '', '2022-08-01 02:15:52', NULL),
(4, 'hoangalt0098', '0358623322', 'inactive', 'hoangalt0098@gmail.com', 'ưewqewe', '127.0.0.1', '', '', '2022-08-01 02:16:06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `democategories`
--

CREATE TABLE `democategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `democategories`
--

INSERT INTO `democategories` (`id`, `name`, `status`, `is_home`, `display`, `_lft`, `_rgt`, `parent_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `category_type`) VALUES
(1, 'store', 'active', NULL, 'list', 1, 20, NULL, 'admin', 'hailan', NULL, NULL, '1'),
(2, 'notebooks', 'active', NULL, 'list', 2, 7, 1, 'admin', 'hailan', NULL, NULL, '1'),
(3, 'apple', 'active', NULL, 'list', 3, 4, 2, 'admin', 'hailan', NULL, NULL, '2'),
(4, 'lenovo', 'active', NULL, 'list', 5, 6, 2, 'admin', 'hailan', NULL, NULL, '1'),
(5, 'mobile', 'active', NULL, 'list', 8, 19, 1, 'admin', 'hailan', NULL, NULL, '1'),
(6, 'nokia', 'active', NULL, 'list', 9, 10, 5, 'admin', 'hailan', NULL, NULL, '1'),
(7, 'samsung', 'active', NULL, 'list', 11, 14, 5, 'admin', 'hailan', NULL, NULL, '1'),
(8, 'galaxy', 'active', NULL, 'list', 12, 13, 7, 'admin', 'hailan', NULL, NULL, '2'),
(9, 'sony', 'active', NULL, 'list', 15, 16, 5, 'admin', 'hailan', NULL, NULL, '1'),
(10, 'lenovo', 'active', NULL, 'list', 17, 18, 5, 'admin', 'hailan', NULL, NULL, '1'),
(11, 'store_2', 'active', NULL, 'list', 21, 22, NULL, 'admin', 'hailan', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_table` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_open` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 10
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `type`, `link`, `in_table`, `type_open`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `ordering`) VALUES
(1, 'Trang chủ', 'link', 'http://lar-exam.xyz/news69', '', '_self', 'active', '', '', NULL, NULL, 1),
(2, 'Danh mục', 'list_category', 'http://lar-exam.xyz/news69', 'categories', '_self', 'active', 'hailan', '', '2022-07-25 17:00:00', NULL, 2),
(3, 'Liên hệ', 'link', 'http://lar-exam.xyz/news69/lien-he', '', '_blank', 'active', 'hailan', '', '2022-07-25 17:00:00', NULL, 16),
(4, 'Bài viết', 'list_article', 'http://lar-exam.xyz/news69', '', '_blank', 'active', 'hailan', NULL, '2022-08-07 17:00:00', NULL, 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_08_01_093251_create_jobs_table', 1),
(5, '2022_08_02_162823_create_slider_table', 1),
(6, '2022_08_02_164822_add_paid_to_users_table', 2),
(7, '2022_08_02_170629_update_sliders_table', 3),
(8, '2022_08_02_171119_create_sliders_table', 3),
(9, '2022_08_03_074208_create_categories_table', 4),
(10, '2022_08_03_083923_create_articles_table', 5),
(11, '2022_08_03_084703_create_categories_table', 6),
(12, '2022_08_03_084810_create_contacts_table', 7),
(13, '2022_08_03_085009_create_menus_table', 7),
(14, '2022_08_03_085351_create_rsses_table', 7),
(15, '2022_08_03_085518_create_settings_table', 7),
(16, '2022_08_03_092000_edit_rsses_table', 8),
(17, '2022_08_03_092215_edit_rsses_table', 9),
(18, '2022_08_03_092507_edit_rsses_table', 10),
(19, '2022_08_03_092811_edit_menus_table', 11),
(20, '2022_08_07_124812_create_democategories_table', 12),
(21, '2022_08_07_130228_edit_democategories_table', 13),
(22, '2022_08_09_135845_create_articles_table', 0),
(23, '2022_08_09_135845_create_categories_table', 0),
(24, '2022_08_09_135845_create_contacts_table', 0),
(25, '2022_08_09_135845_create_democategories_table', 0),
(26, '2022_08_09_135845_create_failed_jobs_table', 0),
(27, '2022_08_09_135845_create_jobs_table', 0),
(28, '2022_08_09_135845_create_menus_table', 0),
(29, '2022_08_09_135845_create_password_resets_table', 0),
(30, '2022_08_09_135845_create_rsses_table', 0),
(31, '2022_08_09_135845_create_settings_table', 0),
(32, '2022_08_09_135845_create_sliders_table', 0),
(33, '2022_08_09_135845_create_users_table', 0),
(34, '2022_08_09_140557_create_articles_table', 0),
(35, '2022_08_09_140557_create_categories_table', 0),
(36, '2022_08_09_140557_create_contacts_table', 0),
(37, '2022_08_09_140557_create_democategories_table', 0),
(38, '2022_08_09_140557_create_failed_jobs_table', 0),
(39, '2022_08_09_140557_create_jobs_table', 0),
(40, '2022_08_09_140557_create_menus_table', 0),
(41, '2022_08_09_140557_create_password_resets_table', 0),
(42, '2022_08_09_140557_create_rsses_table', 0),
(43, '2022_08_09_140557_create_settings_table', 0),
(44, '2022_08_09_140557_create_sliders_table', 0),
(45, '2022_08_09_140557_create_users_table', 0),
(46, '2022_08_09_142645_edit_categories_table', 14),
(47, '2022_08_16_155726_create_product_categories_table', 15),
(48, '2022_08_16_172403_update_product_categories_table', 16),
(49, '2022_08_17_053931_create_products_table', 17),
(50, '2022_08_20_054521_add_column_products_table', 18),
(51, '2022_08_20_054753_add_column_product_categories_table', 19),
(52, '2022_08_23_173141_create_attributes_table', 20),
(53, '2022_08_23_173418_create_attributes_table', 21),
(54, '2022_08_25_044808_create_product_attributes_table', 22),
(55, '2022_08_28_031258_create_attribute_values_table', 23),
(56, '2022_08_28_032452_create_product_attributes_table', 23),
(57, '2022_08_28_165210_edt_column_product_attributes_table', 24),
(58, '2022_08_28_180310_add_column_products_1_table', 25),
(59, '2022_08_29_084733_add_column_attributes_table', 26);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_category_id` int(11) DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_off` int(11) DEFAULT 0,
  `special` tinyint(4) DEFAULT 0,
  `ordering` int(11) DEFAULT 10,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `draft` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `product_category_id`, `thumb`, `status`, `price`, `sale_off`, `special`, `ordering`, `description`, `content`, `draft`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Áo Thun nam cá sấu mẫu mới, combo 2 áo - DBM215', 1, '{\"image\":[\"bLn3QgqBca.jpg\"],\"alt\":[null]}', 'active', '213000', 8, 0, 10, 'Áo thun cổ bẻ cá sấu siêu chất', '<p><em><strong>&Aacute;o thun cổ bẻ c&aacute; sấu si&ecirc;u chất</strong></em></p>\r\n\r\n<p>Chất liệu: Thun co gi&atilde;n 4 chiều, thấm h&uacute;t mồ h&ocirc;i tốt.</p>\r\n\r\n<p>Áo được may từ chất liệu cotton cao cấp co gi&atilde;n nhẹ, kh&ocirc;ng nh&atilde;o, kh&ocirc;ng x&ugrave;, hạn chế phai m&agrave;u, tạo cảm gi&aacute;c thoải m&aacute;i, dễ chịu khi mặc suốt ng&agrave;y d&agrave;i.</p>\r\n\r\n<p>Thiết kế ph&ugrave; hợp cho mọi phong c&aacute;ch.</p>\r\n\r\n<p>Đường may tinh tế, chỉnh chu, n&uacute;t đơm kh&eacute;o l&eacute;o, chắc chắn.</p>\r\n\r\n<p>Form &aacute;o su&ocirc;ng rộng r&atilde;i với 6 size S,M, L, XL, XXL, 3XL d&agrave;nh cho người từ 35-95kg.</p>\r\n\r\n<p>&Aacute;o thun nam cổ bẻ vải c&aacute; sấu: Vải c&aacute; sấu 4 chiều ngoại nhập kh&ocirc;ng bao giờ đổ l&ocirc;ng, bền với thời gian, kh&ocirc;ng xuống m&agrave;u.&nbsp; &nbsp;</p>\r\n\r\n<p>Thiết kế cổ bẻ đơn giản, cực kỳ năng động, khỏe khoắn, nhưng kh&ocirc;ng k&eacute;m phần s&agrave;nh điệu, hợp mốt. &nbsp;</p>\r\n\r\n<p>M&agrave;u sắc trẻ trung, dễ d&agrave;ng phối c&ugrave;ng nhiều kiểu jeans bụi phủi, kaki lịch l&atilde;m. &nbsp;</p>\r\n\r\n<p>Vải mềm mịn, tho&aacute;ng m&aacute;t tạo sự thoải m&aacute;i khi mặc. &nbsp;</p>\r\n\r\n<p>&Aacute;o thun nam cổ bẻ vải c&aacute; sấu l&agrave; trang phục gi&uacute;p c&aacute;c ch&agrave;ng trai l&agrave;m mới phong c&aacute;ch của ch&iacute;nh m&igrave;nh. &nbsp;</p>\r\n\r\n<p>Đ&acirc;y l&agrave; d&ograve;ng sản phẩm rất được c&aacute;c bạn trẻ ưa chuộng v&igrave; t&iacute;nh năng dễ phối trang phục v&agrave; ph&ugrave; hợp với hầu hết c&aacute;c buổi đi chơi, đi l&agrave;m. &nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra &aacute;o thun nam cổ bẻ gi&uacute;p người mặc tự tin khẳng định phong c&aacute;ch của m&igrave;nh. &nbsp;</p>\r\n\r\n<p>Rất đẹp, dễ mặc, dễ phối đồ, ph&ugrave; hợp với tất cả bạn nam, d&ugrave; trẻ hay gi&agrave; đều mặc đẹp với d&aacute;ng người của m&igrave;nh.</p>\r\n\r\n<p>Dễ d&agrave;ng kết hợp với quần ngắn (quần thun, Jean hay Short Kaki&hellip;), quần d&agrave;i (Jean, Kaki, quần &acirc;u&hellip;) - C&oacute; thể mặc đi dạo phố, đi chơi, chơi thể thao như tập gym, học tập, l&agrave;m việc hay mặc thường ng&agrave;y ở nh&agrave;!</p>', '0', NULL, 'hailan', NULL, '2022-08-21 12:18:47'),
(2, 'Áo thun polo nam ngắn tay, chất thun vải mềm mịn, thiết kế phần bo tay và cổ áo phối màu độc lạ - FORMEN SHOP - FMPS176', 1, '{\"image\":[\"jbBxWm0ebS.jpg\"],\"alt\":[null]}', 'inactive', '250000', 41, 0, 10, 'Áo thun polo nam ngắn tay, chất thun vải mềm mịn, thiết kế phần bo tay và cổ áo phối màu độc lạ - FORMEN SHOP - FMPS176', '<p>&Aacute;o thun polo nam ngắn tay, chất thun vải mềm mịn, thiết kế phần bo tay v&agrave; cổ &aacute;o phối m&agrave;u độc lạ - FORMEN SHOP - FMPS176</p>\r\n\r\n<p>&Aacute;o thun polo nam c&oacute; bo cổ polo phối sọc c&aacute;ch điệu của FORMEN SHOP l&agrave; 1 chiếc &aacute;o thun nam polo ho&agrave;n hảo d&agrave;nh cho ph&aacute;i mạnh với thiết kế t&ocirc;n d&aacute;ng, những đường kẻ sọc nam t&iacute;nh, logo th&ecirc;u thương hiệu tinh tế v&agrave; thanh lịch.</p>\r\n\r\n<p>Sản phẩm c&oacute; Video quay trực tiếp sản phẩm để kh&aacute;ch h&agrave;ng tham khảo.</p>\r\n\r\n<p>Th&ocirc;ng tin sản phẩm &aacute;o thun nam tay ngắn c&oacute; bo cổ polo phối sọc c&aacute;ch điệu:</p>\r\n\r\n<p>- Ch&acirc;t liệu thun cotton h&agrave;n quốc 4 chiều co gi&atilde;n tốt, mềm mịn v&agrave; thấm h&uacute;t mồ h&ocirc;i.</p>\r\n\r\n<p>- Thun cotton d&agrave;y dặn tạo sự thanh lịch cho ph&aacute;i mạnh.</p>\r\n\r\n<p>- C&ocirc;ng nghệ sợi vải dệt ti&ecirc;u chuẩn gi&uacute;p thấm h&uacute;t mồ h&ocirc;i v&agrave; kh&aacute;ng khuẩn.</p>\r\n\r\n<p>- Form &aacute;o thiết kế rộng r&atilde;i thoải m&aacute;i d&aacute;ng đứng ph&ugrave; hợp cho mọi hoạt động trong ng&agrave;y.</p>\r\n\r\n<p>- Xuất xứ: Việt Nam.</p>\r\n\r\n<p>Bảng m&agrave;u: Đỏ - Trắng - Xanh đen</p>\r\n\r\n<p>&nbsp;&Aacute;o thun nam tay ngắn c&oacute; bo cổ polo phối sọc c&aacute;ch điệu của FORMEN SHOP l&agrave; sản phẩm chắc chắn bạn phải c&oacute; trong tủ quần &aacute;o với bảng m&agrave;u v&ocirc; c&ugrave;ng đa dạng, gi&uacute;p bạn c&oacute; thể thay đổi phong c&aacute;ch h&agrave;ng ng&agrave;y.</p>\r\n\r\n<p>K&iacute;ch thước:</p>\r\n\r\n<p>+ M Chiều cao 1M6-1M68 / C&acirc;n nặng: 50-60 kg</p>\r\n\r\n<p>+ L Chiều cao 1M62-1M72 / C&acirc;n nặng: 60-70 kg</p>\r\n\r\n<p>+ XL Chiều cao 1M65-1M75 / C&acirc;n nặng: 70-76 kg</p>\r\n\r\n<p>+ XXL Chiều cao 1M70-1M80 / C&acirc;n nặng: 76-85 kg</p>\r\n\r\n<p>+ XXXL Chiều cao 1M75-1M85 / C&acirc;n nặng: 85-95 kg</p>\r\n\r\n<p>(Số đo người mẫu: 68kg &ndash; 1M77 mặc size XL)</p>\r\n\r\n<p>Li&ecirc;n hệ ngay với FORMEN SHOP để được tư vấn size khi cần bạn nh&eacute;.</p>\r\n\r\n<p>Hướng dẫn sử dụng v&agrave; bảo quản:</p>\r\n\r\n<p>- Giặt ở nhiệt độ b&igrave;nh thường với chu k&igrave; ngắn.</p>\r\n\r\n<p>- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Hạn chế sử dụng m&aacute;y sấy, ủi ở nhiệt độ th&iacute;ch hợp.</p>\r\n\r\n<p>- Lộn mặt tr&aacute;i khi phơi tr&aacute;nh bị phai m&agrave;u.</p>\r\n\r\n<p><strong>CHƯƠNG TR&Igrave;NH HỖ TRỢ MUA H&Agrave;NG AN T&Acirc;M - CHỈ C&Oacute; TẠI FORMEN SHOP</strong>&nbsp;:</p>\r\n\r\n<p>- 15 Ng&agrave;y ĐỔI/ TRẢ với bất kỳ l&yacute; do.</p>\r\n\r\n<p>- Cam kết hỗ trợ 100% chi ph&iacute; nếu sản phẩm lỗi do nh&agrave; sản xuất hoặc gửi sai sản phẩm.</p>\r\n\r\n<p>- Chuẩn bị h&agrave;ng v&agrave; giao h&agrave;ng cho đơn vị vận chuyển trễ nhất trong v&ograve;ng 2 ng&agrave;y l&agrave;m việc. 80% đơn đặt h&agrave;ng sẽ được đi trong v&ograve;ng 1 ng&agrave;y, cho anh/ chị nhận được h&agrave;ng nhanh ch&oacute;ng.</p>\r\n\r\n<p>- Hỗ trợ ph&iacute; ship đổi size lần 1 nếu kh&ocirc;ng vừa đối với kh&aacute;ch h&agrave;ng th&acirc;n thiết của FORMEN SHOP.</p>\r\n\r\n<p>LƯU &Yacute;: Khi bạn gặp bất k&igrave; vấn đề g&igrave; về sản phẩm đừng vội đ&aacute;nh gi&aacute; m&agrave; h&atilde;y li&ecirc;n hệ Shop để đc hỗ trợ 1 c&aacute;ch tốt nhất nh&eacute; FORMEN SHOP xin cảm ơn bạn v&agrave; mong bạn c&oacute; trải nghiệm tốt nhất khi mua h&agrave;ng tại Shop ạ.</p>', '0', NULL, 'hailan', NULL, '2022-08-21 12:18:19'),
(3, 'Áo Thun Nam Polo Ngắn Tay 5S (APC21013) Chất Liêu 100% Coolmax Phối Viền Năng Động, Trẻ Trung, Nam Tính', 1, '{\"image\":[\"m38PuaWHpF.jpg\"],\"alt\":[null]}', 'active', '359000', 47, 0, 10, '- Áo Thun Nam Polo Ngắn Tay 5S (APC21013) Chất Liêu 100% Coolmax Phối Viền Năng Động, Trẻ Trung, Nam Tính có thiết kế kiểu dáng cơ bản với dáng ôm vừa, cổ bẻ, tay ngắn in logo 5S, kiểu dáng thể thao.\r\n\r\n- Áo Thun Nam Polo Ngắn Tay 5S (APC21013) Chất Liêu 100% Coolmax Phối Viền Năng Động, Trẻ Trung, Nam Tính, dễ dàng phối cùng quần jeans hoặc shorts, giày thể thao hoặc giày lười, thích hợp sử dụng trong các dịp đi chơi, gặp gỡ bạn bè và các hoạt động ngoài trời.', '<p><strong>KIỂU D&Aacute;NG:</strong>&nbsp;Slim Fit</p>\r\n\r\n<p><strong>CHI TIẾT:</strong></p>\r\n\r\n<p>- &Aacute;o Thun Nam Polo Ngắn Tay 5S (APC21013) Chất Li&ecirc;u 100% Coolmax Phối Viền Năng Động, Trẻ Trung, Nam T&iacute;nh c&oacute; thiết kế kiểu d&aacute;ng cơ bản với d&aacute;ng &ocirc;m vừa, cổ bẻ, tay ngắn in logo 5S, kiểu d&aacute;ng thể thao.</p>\r\n\r\n<p>- &Aacute;o Thun Nam Polo Ngắn Tay 5S (APC21013) Chất Li&ecirc;u 100% Coolmax Phối Viền Năng Động, Trẻ Trung, Nam T&iacute;nh, dễ d&agrave;ng phối c&ugrave;ng quần jeans hoặc shorts, gi&agrave;y thể thao hoặc gi&agrave;y lười, th&iacute;ch hợp sử dụng trong c&aacute;c dịp đi chơi, gặp gỡ bạn b&egrave; v&agrave; c&aacute;c hoạt động ngo&agrave;i trời.</p>\r\n\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n\r\n<p>- COOLMAX ưu điểm tự nhi&ecirc;n mềm mại, tho&aacute;ng m&aacute;t, xốp nhẹ. Đồng thời c&oacute; dộ bền chắc. M&agrave;u sắc n&eacute;t của sợi Polyester. &Aacute;o c&oacute; độ co d&atilde;n thoải m&aacute;i khi vận động nhờ spandex</p>\r\n\r\n<p><strong>M&Agrave;U SẮC:</strong>&nbsp;Trắng, Ghi, Cam Đất, Xanh Cổ Vịt</p>\r\n\r\n<p><strong>SIZE:</strong>&nbsp;38/S - 39/M - 40/L - 41/XL - 42/2XL</p>\r\n\r\n<p><strong>Sản Xuất:</strong>&nbsp;Việt Nam</p>', '0', 'hailan', 'hailan', '2022-08-17 08:11:17', '2022-08-21 12:17:53'),
(4, 'Set 2 quần đùi nam, quần Short Gió nam thể thao Basic trẻ trung năng động, thoáng mát co giãn 4 chiều MRM Manlywear', 3, '{\"image\":[\"WexQs6Ga8F.jpg\"],\"alt\":[null]}', 'active', '399000', 33, 0, 10, 'Mô tả ngắn Quần đùi nam MR.M Ultra Sport\r\n\r\n. Chuyên dùng cho các hoạt động rèn luyện sức khỏe hoặc có thể sử dụng tại nhà như một chiếc quần ngủ đơn giản\r\n\r\n. Chất liệu Polyester cao cấp mềm mại, độ bền cao và co dãn vượt trội.\r\n\r\n. Thoải mái, thư giãn với tính năng thoát ẩm và thoáng khí tối đa\r\n\r\n. Co dãn 4 chiều, tinh tế, khoẻ khoắn.\r\n\r\n. Tự hào sản xuất tại Việt Nam', '<p><em><strong>M&ocirc; tả ngắn Quần đ&ugrave;i nam MR.M Ultra Sport</strong></em></p>\r\n\r\n<p><strong>. Chuy&ecirc;n d&ugrave;ng cho c&aacute;c hoạt động r&egrave;n luyện sức khỏe hoặc c&oacute; thể sử dụng tại nh&agrave; như một chiếc quần ngủ đơn giản</strong></p>\r\n\r\n<p><strong>. Chất liệu Polyester cao cấp mềm mại, độ bền cao v&agrave; co d&atilde;n vượt trội.</strong></p>\r\n\r\n<p><strong>. Thoải m&aacute;i, thư gi&atilde;n với t&iacute;nh năng tho&aacute;t ẩm v&agrave; tho&aacute;ng kh&iacute; tối đa</strong></p>\r\n\r\n<p><strong>. Co d&atilde;n 4 chiều, tinh tế, khoẻ khoắn.</strong></p>\r\n\r\n<p><strong>. Tự h&agrave;o sản xuất tại Việt Nam</strong></p>\r\n\r\n<p><strong>KIỂU D&Aacute;NG:&nbsp;SPORT</strong></p>\r\n\r\n<p><strong>CHI TIẾT:</strong></p>\r\n\r\n<p><strong>- Kiểu d&aacute;ng thể thao&nbsp;với độ d&agrave;i vừa phải ph&ugrave; hợp với mọi hoạt động thể thao&nbsp;hoặc c&oacute; thể mặc nh&agrave; như 1 chiếc quần ngủ đơn giản.</strong></p>\r\n\r\n<p><strong>- Phần&nbsp;t&uacute;i c&oacute; kho&aacute; k&eacute;o&nbsp;để đựng đồ c&aacute; nh&acirc;n tiện lợi m&agrave; kh&ocirc;ng bị rơi.</strong></p>\r\n\r\n<p><strong>- Phần&nbsp;chun đai quần co d&atilde;n tối đa, chống bai d&atilde;o, kết hợp d&acirc;y chun k&eacute;o&nbsp;ph&iacute;a trong gi&uacute;p người mặc tinh chỉnh ph&ugrave; hợp với v&ograve;ng bụng th&ecirc;m sự chắc chắn.</strong></p>\r\n\r\n<p><strong>- Ống quần c&oacute; đường xẻ&nbsp;3cm tạo sự thoải m&aacute;i khi hoạt động thể thao.</strong></p>\r\n\r\n<p><strong>- Logo thương hiệu in phản quang tạo điểm nhấn, chống bong tr&oacute;c khi giặt.</strong></p>\r\n\r\n<p><strong>- Đường may chắc chắn gi&uacute;p quần kh&ocirc;ng bị bung chỉ khi hoạt động mạnh.</strong></p>\r\n\r\n<p><strong>CHẤT LIỆU:</strong></p>\r\n\r\n<p><strong>- D&ugrave;ng Polyester l&agrave; nguy&ecirc;n liệu ch&iacute;nh yếu tạo n&ecirc;n sự mềm mại v&agrave; tho&aacute;ng m&aacute;t.</strong></p>\r\n\r\n<p><strong>- Polyester c&oacute; khả năng co gi&atilde;n cực tốt, tăng độ đ&agrave;n hồi gi&uacute;p sản phẩm &iacute;t bị hư d&aacute;ng v&agrave; bền chắc hơn.</strong></p>\r\n\r\n<p><strong>M&Agrave;U SẮC:&nbsp;Xanh Navy, Đen</strong></p>\r\n\r\n<p><strong>SIZE:&nbsp;M - L - XL - XXL</strong></p>', '0', 'hailan', 'hailan', '2022-08-17 09:10:45', '2022-08-21 12:17:14'),
(5, 'Quần Jean Nam Đen Trơn cao cấp thương hiệu Chandi, phong cách tôn dáng nam tính chất jean co dãn Mẫu J20', 3, '{\"image\":[\"9ufdSYgZd8.jpg\"],\"alt\":[null]}', 'active', '199000', 58, 0, 10, 'Quần Jean Nam Đen Trơn cao cấp thương hiệu Chandi, phong cách tôn dáng nam tính chất jean co dãn Mẫu J20', '<p>Quần Jean Nam Đen Trơn cao cấp thương hiệu Chandi, phong c&aacute;ch t&ocirc;n d&aacute;ng nam t&iacute;nh chất jean co d&atilde;n Mẫu J20</p>\r\n\r\n<p><strong>(Được kiểm tra h&agrave;ng trước khi thanh to&aacute;n)</strong></p>\r\n\r\n<p><strong>+ Size 28: (45 - 50kg Cao Dưới 1m65) Chiều d&agrave;i từ 95-100, Ống từ 14-18, Đ&ugrave;i từ 17-21, Eo từ 70-75<br />\r\n+ Size 29: (50-55kg Cao Dưới 1m65) Chiều d&agrave;i từ 95-100, Ống 15-19, Đ&ugrave;i từ 18-22, Eo từ 72-77<br />\r\n+ Size 30: (55- 59kg Cao Dưới 1m70) Chiều d&agrave;i từ 96-100, Ống 15-20, Đ&ugrave;i từ 19-23, Eo từ 74-79<br />\r\n+ Size 31: (60 - 64kg Cao Dưới 1m75) Chiều d&agrave;i từ 97-101, Ống 16-21, Đ&ugrave;i 20-24, Eo từ 76-81<br />\r\n+ Size 32: (65 - 70kg Cao Dưới 1m78) Chiều d&agrave;i từ 99-102, Ống 18-22, Đ&ugrave;i 21-25, Eo từ 78-83<br />\r\n+ Size 34: (71 &ndash; 77kg Cao Tr&ecirc;n 1m78) Chiều d&agrave;i từ 99-102, Ống 19-23, Đ&ugrave;i 22-26, Eo từ 80-850.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Mẫu ảnh của Chandi</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Quần Jean được l&agrave;m từ chất vải jean mềm mịn, kh&ocirc;ng bai gi&atilde;o, co gi&atilde;n nhẹ v&agrave; rất &iacute;t bị nhăn khi gập.<br />\r\nQuần Jean c&oacute; phom d&aacute;ng &ocirc;m cơ thể, ống c&ocirc;n b&oacute; vừa phải, nhẹ nh&agrave;ng t&ocirc;n d&aacute;ng người mặc.<br />\r\nĐường may của Quần Jean rất chắc chắn c&ugrave;ng với chất liệu vải jean co gi&atilde;n thoải m&aacute;i cho người sử dụng c&oacute; thể vận động.<br />\r\nT&uacute;i quần s&acirc;u thoải m&aacute;i cho người sử dụng c&oacute; thể để đồ đạc như điện thoại, ch&igrave;a kh&oacute;a, v&iacute;,<br />\r\nGồm 5 size từ 28 đến 34<br />\r\nKiểu D&aacute;ng : C&ocirc;ng Sở, Hẹn H&ograve;, Đi Chơi</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>NỘI DUNG SẢN PHẨM: Quần jean nam</strong><br />\r\n<br />\r\n<strong>- Kiểu d&aacute;ng thời trang, s&agrave;nh điệu.</strong><br />\r\n<br />\r\n<strong>- Tổng thể m&agrave;u s&aacute;c h&agrave;i h&ograve;a phối r&aacute;ch t&aacute;o bạo tạo sự năng động, c&aacute; t&iacute;nh.</strong><br />\r\n<br />\r\n<strong>- Chất liệu jean cotton bền đẹp, chắc chắn, kh&ocirc;ng phai m&agrave;u, kh&ocirc;ng co r&uacute;t khi giặt.</strong><br />\r\n<br />\r\n<strong>- Đường chỉ may chắc chắn, tỉ mỉ, tinh tế cả những chi tiết nhỏ</strong><br />\r\n<br />\r\n<strong>- Ph&ugrave; hợp nhiều lứa tuổi n&ecirc;n bạn sẽ ho&agrave;n to&agrave;n an t&acirc;m khi mặc sản phẩm.</strong><br />\r\n<br />\r\n<strong>- Với Kiểu d&aacute;ng trẻ trung, sẽ ph&ugrave; hợp hơn cả với c&aacute;c bạn tuổi teen, dễ d&agrave;ng thay đổ c&aacute;c mẫu thời trang với gi&aacute; hợp l&yacute;.</strong><br />\r\n<br />\r\n<strong>- C&oacute; thể kết hợp c&ugrave;ng nhiều trang phục kh&aacute;c nhau để mang tới cho m&igrave;nh một phong c&aacute;ch c&aacute; t&iacute;nh ri&ecirc;ng.</strong></p>\r\n\r\n<p>&nbsp;Lộn tr&aacute;i quần ra v&agrave; sử dụng nước giặt để giữ sản phẩm bền m&agrave;u.</p>\r\n\r\n<p>- Sau khi giặt, vắt kh&ocirc; v&agrave; giũ mạnh rồi mới mang đi phơi để quần kh&ocirc;ng bị nhăn.</p>\r\n\r\n<p>- Để quần kh&ocirc; tự nhi&ecirc;n, phơi trong b&oacute;ng r&acirc;m tho&aacute;ng m&aacute;t.</p>\r\n\r\n<p>- Kh&ocirc;ng sử dụng h&oacute;a chất, thuốc tẩy trực tiếp l&ecirc;n sản phẩm.</p>\r\n\r\n<p>- Kh&ocirc;ng ng&acirc;m qu&aacute; l&acirc;u trong dung dịch tẩy.</p>\r\n\r\n<p>Vải jean tương đối mịn, chất mềm vừa phải, &iacute;t b&aacute;m bụi giữ d&aacute;ng kh&ocirc;ng bai gi&atilde;o cho d&ugrave; giặt nhiều lần.</p>\r\n\r\n<p>Chất vải n&agrave;y rất bền chắc gi&uacute;p người mặc c&oacute; thể thoải m&aacute;i vận động m&agrave; kh&ocirc;ng lo vải quần bị x&ugrave; l&ocirc;ng hay bung chỉ.</p>', '0', 'hailan', 'hailan', '2022-08-17 09:12:48', '2022-08-21 12:16:55'),
(6, 'Quần Jean Nam 5S (3 Màu) Cơ Bản, Chất Cotton Cực Mềm Mại, Co Giãn Tốt, Không Bai Xù, Bền Màu, Phom Trẻ Trung (QBD)', 3, '{\"image\":[\"plBIcnCwp4.png\"],\"alt\":[null]}', 'active', '639000', 42, 0, 10, 'Quần Jean Nam 5S (3 Màu) Cơ Bản, Chất Cotton Cực Mềm Mại, Co Giãn Tốt, Không Bai Xù, Bền Màu, Phom Trẻ Trung (QBD)', '<p><strong>Quần Jean Nam 5S (3 M&agrave;u) Cơ Bản, Chất Cotton Cực Mềm Mại, Co Gi&atilde;n Tốt, Kh&ocirc;ng Bai X&ugrave;, Bền M&agrave;u, Phom Trẻ Trung (QBD)</strong></p>\r\n\r\n<p>ƯU Đ&Atilde;I KHI MUA TẠI 5S:</p>\r\n\r\n<p>- Click &ldquo;Theo d&otilde;i&rdquo; shop để nhận ngay VOUCHER giảm gi&aacute;.</p>\r\n\r\n<p>- Nhận h&agrave;ng đ&aacute;nh gi&aacute; 5* k&egrave;m h&igrave;nh ảnh sản phẩm v&agrave; video, nhắn tin 5S ngay để nhận QU&Agrave; nh&eacute;!</p>\r\n\r\n<p>** 5S OFFICIAL cảm ơn qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; tin tưởng v&agrave; đồng h&agrave;nh c&ugrave;ng shop. Ch&uacute;c bạn c&oacute; một ng&agrave;y mua sắm thật thoải m&aacute;i c&ugrave;ng 5S nh&eacute;! Đừng ngần ngại nhắn tin cho shop để được hỗ trợ nhanh nhất bạn nh&eacute;!</p>\r\n\r\n<p>#quần_jean_nam #Quan_jean_nam #Quần_b&ograve;_nam #Quan_bo_nam #Quần_jean #Quần_b&ograve; #Quần_jean_nam_đẹp #Quần_b&ograve;_nam_đẹp #Quần_jean_h&agrave;ng_hiệu #Quần_jean_ch&iacute;nh_h&atilde;ng #Quần_jean_nam_h&agrave;ng_hiệu #quần_jean_nam_r&aacute;ch #5S #quần_jean_xanh</p>', '0', 'hailan', 'hailan', '2022-08-17 09:15:11', '2022-08-21 12:16:08'),
(7, 'Áo hoodie nỉ bông unisex Homies liền mũ có túi in hình UNFL, Áo hoodie unisex nam nữ nỉ Unfl Studio video thật tại Shop ,Áo nỉ bông ulzzang unisex nam nữ siêu đẹp, Áo khoác Nỉ Có Mũ Túi Bụng Phong Cách Hàn Quốc', 5, '{\"image\":[\"TMoeVWhDfW.jpg\"],\"alt\":[null]}', 'active', '135000', 30, 0, 10, 'NAM NỮ COUPLE ĐỀU MẶC ĐƯỢC, HÀNG BÁN SHOP STORE DÀY DẶN HÌNH THẬT (ĐỪNG SO SÁNH VỚI HÀNG GIÁ RẺ NHÉ KHÁCH ƠI!!!)', '<p><strong>NAM NỮ COUPLE ĐỀU MẶC ĐƯỢC, H&Agrave;NG B&Aacute;N SHOP STORE D&Agrave;Y DẶN H&Igrave;NH THẬT (ĐỪNG SO S&Aacute;NH VỚI H&Agrave;NG GI&Aacute; RẺ NH&Eacute; KH&Aacute;CH ƠI!!!)</strong></p>\r\n\r\n<p>* Chất liệu: Thun Nỉ cao cấp mềm mịn, co giản tốt, from chuẩn, kh&ocirc;ng x&ugrave;, thấm h&uacute;t mồ h&ocirc;i tốt, tạo cảm gi&aacute;c thoải m&aacute;i v&agrave; th&ocirc;ng tho&aacute;ng cho người mặc.</p>\r\n\r\n<p><strong>*&nbsp;</strong>Được thiết kế mang phong c&aacute;ch thời trang thời thượng. Mẫu &aacute;o hoodie n&agrave;y kh&ocirc;ng chỉ gi&uacute;p bạn giữ ấm trong m&ugrave;a lạnh m&agrave; c&ograve;n c&oacute; thể chống nắng, chống gi&oacute;, chống bụi, chống r&eacute;t, chống tia UV cực tốt, rất tiện lợi nh&eacute;!!! (Được sử dụng nhiều trong dịp Lễ hội, Đi chơi, Da ngoại, Dạo phố, Du lịch)</p>\r\n\r\n<ul>\r\n	<li>Form: Form rộng mang lại sự thoải m&aacute;i, trẻ trung.</li>\r\n	<li>Chất lượng: sản phẩm tốt, gi&aacute; cả hợp l&yacute;.</li>\r\n	<li>Kiểu d&aacute;ng: Thiết kế đơn giản, dễ mặc, dễ phối đồ.</li>\r\n</ul>', '0', 'hailan', 'hailan', '2022-08-17 09:16:47', '2022-08-21 12:15:28'),
(8, 'Áo hoodie nam nữ form rộng Unisex một màu cá tính Hàn Quốc – FORMEN SHOP – FM14GV016', 5, '{\"image\":[\"dXHFtld.jpg\"],\"alt\":[null]}', 'active', '190000', 35, 0, 10, 'Áo hoodie nỉ bông trơn một màu cá tính Hàn Quốc, màu kem – FORMEN SHOP - FM14GV016\r\nHoodie unisex form rộng là 1 sản phẩm phù hợp cho cả nam và nữ, thích hợp là chiếc áo cặp cho các cặp đôi. Chiếc áo khoác hoodie phong cách Hàn Quốc tạo sự cá tính, thời trang.\r\n\r\nÁo Hoodie nam là sản phẩm top 1 ngành Áo hoodie nam trong năm nay đã chứng tỏ độ HOT của sản phẩm này.', '<h1>&Aacute;o hoodie nỉ b&ocirc;ng trơn một m&agrave;u c&aacute; t&iacute;nh H&agrave;n Quốc, m&agrave;u kem &ndash; FORMEN SHOP - FM14GV016</h1>\r\n\r\n<p>Hoodie unisex form rộng l&agrave; 1 sản phẩm ph&ugrave; hợp cho cả nam v&agrave; nữ, th&iacute;ch hợp l&agrave; chiếc &aacute;o cặp cho c&aacute;c cặp đ&ocirc;i. Chiếc &aacute;o kho&aacute;c hoodie phong c&aacute;ch H&agrave;n Quốc tạo sự c&aacute; t&iacute;nh, thời trang.</p>\r\n\r\n<p>&Aacute;o Hoodie nam l&agrave; sản phẩm top 1 ng&agrave;nh&nbsp;<strong>&Aacute;o hoodie nam</strong>&nbsp;trong năm nay đ&atilde; chứng tỏ độ HOT của sản phẩm n&agrave;y.</p>\r\n\r\n<p>Sản phẩm c&oacute; Video quay trực tiếp sản phẩm để kh&aacute;ch h&agrave;ng tham khảo.</p>\r\n\r\n<p>Th&ocirc;ng tin sản phẩm &Aacute;o hoodie thời trang unisex chất d&agrave;y ấm &aacute;p phong c&aacute;ch năng động c&aacute; t&iacute;nh</p>\r\n\r\n<p>- Ch&acirc;t liệu vải nỉ b&ocirc;ng, mềm, mịn, nhẹ v&agrave; đặc biệt khả năng giữ ẩm tốt</p>\r\n\r\n<p>- Tay &aacute;o bo viền chắc chắn, bền, đẹp.</p>\r\n\r\n<p>- C&ocirc;ng nghệ sợi vải dệt ti&ecirc;u chuẩn gi&uacute;p thấm h&uacute;t mồ h&ocirc;i v&agrave; kh&aacute;ng khuẩn.</p>\r\n\r\n<p>- Form &aacute;o rộng theo phong c&aacute;ch H&agrave;n Quốc thời thượng, trẻ trung.</p>\r\n\r\n<p>- Xuất xứ: Việt Nam.</p>\r\n\r\n<p>Bảng m&agrave;u: Kem</p>\r\n\r\n<p>&Aacute;o hoodie nữ của FORMEN SHOP l&agrave; sản phẩm chắc chắn bạn phải c&oacute; trong tủ, với 2 tone m&agrave;u nhẹ nh&agrave;ng dễ d&agrave;ng phối đồ gi&uacute;p bạn c&oacute; thể thay đổi phong c&aacute;ch h&agrave;ng ng&agrave;y.</p>\r\n\r\n<p>K&iacute;ch thước:</p>\r\n\r\n<p>+ M Chiều cao 1M6-1M68 / C&acirc;n nặng: 50-60 kg</p>\r\n\r\n<p>+ L Chiều cao 1M62-1M72 / C&acirc;n nặng: 60-70 kg</p>\r\n\r\n<p>+ XL Chiều cao 1M65-1M75 / C&acirc;n nặng: 70-76 kg</p>\r\n\r\n<p>(Số đo người mẫu: 68kg &ndash; 1M77 mặc size XL)</p>\r\n\r\n<p>Li&ecirc;n hệ ngay với FORMEN SHOP để được tư vấn size khi cần bạn nh&eacute;.</p>\r\n\r\n<p>Hướng dẫn sử dụng v&agrave; bảo quản:</p>\r\n\r\n<p>- Giặt ở nhiệt độ b&igrave;nh thường với chu k&igrave; ngắn.</p>\r\n\r\n<p>- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.</p>\r\n\r\n<p>- Hạn chế sử dụng m&aacute;y sấy, ủi ở nhiệt độ th&iacute;ch hợp.</p>\r\n\r\n<p>- Lộn mặt tr&aacute;i khi phơi tr&aacute;nh bị phai m&agrave;u.</p>\r\n\r\n<p><strong>CHƯƠNG TR&Igrave;NH HỖ TRỢ MUA H&Agrave;NG AN T&Acirc;M - CHỈ C&Oacute; TẠI FORMEN SHOP</strong>&nbsp;:</p>\r\n\r\n<p>- 15 Ng&agrave;y ĐỔI/ TRẢ với bất kỳ l&yacute; do.</p>\r\n\r\n<p>- Cam kết hỗ trợ 100% chi ph&iacute; nếu sản phẩm lỗi do nh&agrave; sản xuất hoặc gửi sai sản phẩm.</p>\r\n\r\n<p>- Chuẩn bị h&agrave;ng v&agrave; giao h&agrave;ng cho đơn vị vận chuyển trễ nhất trong v&ograve;ng 2 ng&agrave;y l&agrave;m việc. 80% đơn đặt h&agrave;ng sẽ được đi trong v&ograve;ng 1 ng&agrave;y, cho anh/ chị nhận được h&agrave;ng nhanh ch&oacute;ng.</p>\r\n\r\n<p>- Hỗ trợ ph&iacute; ship đổi size lần 1 nếu kh&ocirc;ng vừa đối với kh&aacute;ch h&agrave;ng th&acirc;n thiết của FORMEN SHOP.</p>\r\n\r\n<p>FORMEN SHOP lu&ocirc;n c&oacute; rất nhiều ƯU Đ&Atilde;I- Li&ecirc;n hệ với nh&acirc;n vi&ecirc;n tư vấn khi mua h&agrave;ng để nhận hỗ trợ cung như c&aacute;c ưu đ&atilde;i của ch&uacute;ng t&ocirc;i:</p>\r\n\r\n<ul>\r\n	<li>Voucher của Shop</li>\r\n	<li>Gi&aacute; tốt khi mua từ 2 sản phẩm</li>\r\n	<li>Mua k&egrave;m Deal shock c&aacute;c sản phẩm HOT</li>\r\n</ul>\r\n\r\n<p>LƯU &Yacute;: Khi bạn gặp bất k&igrave; vấn đề g&igrave; về sản phẩm đừng vội đ&aacute;nh gi&aacute; m&agrave; h&atilde;y li&ecirc;n hệ Shop để đc hỗ trợ 1 c&aacute;ch tốt nhất nh&eacute; FORMEN SHOP xin cảm ơn bạn v&agrave; mong bạn c&oacute; trải nghiệm tốt nhất khi mua h&agrave;ng tại Shop ạ.</p>', '0', 'hailan', 'hailan', '2022-08-17 09:18:37', '2022-08-21 12:14:45'),
(9, 'Áo Hoodie nỉ ngoại gấu rỗng đủ màu (unisex nam nữ đều mặc được)', 5, '{\"image\":[\"11U2gfd97L.jpg\"],\"alt\":[null]}', 'active', '129000', 10, 0, 10, 'Áo nỉ Hoodie dài form rộng style Hàn Quốc, 1 item không thể thiếu trong tủ quần áo của những anh chàng hay cô nàng năng động cá tính.', '<p>&Aacute;o nỉ Hoodie d&agrave;i form rộng style H&agrave;n Quốc, 1 item kh&ocirc;ng thể thiếu trong tủ quần &aacute;o của những anh ch&agrave;ng hay c&ocirc; n&agrave;ng năng động c&aacute; t&iacute;nh.</p>\r\n\r\n<p>V&igrave; sao n&oacute; lại l&agrave; 1 item kh&ocirc;ng thể thiếu?</p>\r\n\r\n<p>V&igrave; n&oacute; c&oacute; thể phối được nhiều loại quần như quần jean, quần short, quầnkaki, jogger, &aacute;y jean, v&aacute;y b&uacute;t ch&igrave;, v&aacute;y với nhiều m&agrave;u sắc v&agrave; nhiều style kh&aacute;c nhau</p>\r\n\r\n<p>=&gt; cực k&igrave; tiện dụng lu&ocirc;n đ&uacute;ng kh&ocirc;ng ạ</p>\r\n\r\n<p>+ Để diện &aacute;o tay d&agrave;i đi học, c&aacute;c bạn h&atilde;y kết hợp với quần jean hay quần kaki.</p>\r\n\r\n<p>V&igrave; &aacute;o tay d&agrave;i c&oacute; d&aacute;ng su&ocirc;ng rộng n&ecirc;n c&aacute;c bạn cần mix với quần jeans, kaki c&oacute; độ &ocirc;m s&aacute;t để tạo cảm gi&aacute;c gọn g&agrave;ng.</p>\r\n\r\n<p>+ Khi đi chơi với bạn b&egrave; th&igrave; bạn h&atilde;y chọn kết hợp &aacute;o tay d&agrave;ic&ugrave;ng với shorts.</p>\r\n\r\n<p>Như vậy phần &quot;top&quot; của bạn đ&atilde; trở n&ecirc;n &quot;ấm &aacute;p&quot; hơn rất nhiều rồi.</p>\r\n\r\n<p>Đảm bảo vẫn cực đẹp v&agrave; x&igrave;-tai.</p>\r\n\r\n<p>&Aacute;o sweater form rộng size từ 70kg trở xuống.</p>\r\n\r\n<p>&Aacute;o c&oacute; chiều d&agrave;i khoảng 65 - 68cm, chiều ngang khoảng 51 - 53cm, kh&aacute;ch c&oacute; thể tự ước lượng gi&uacute;p shop nh&eacute; do lưng của mỗi người mỗi kh&aacute;c ạ!</p>\r\n\r\n<p>Thiết kế Streetwear mới nhất</p>\r\n\r\n<p>Chất liệu nỉ b&ocirc;ng d&agrave;y dặn, form oversize rộng</p>\r\n\r\n<p>Vải giặt kh&ocirc;ng x&ugrave; l&ocirc;ng, kh&ocirc;ng ra m&agrave;u</p>\r\n\r\n<p>H&igrave;nh in shop sử dụng mực in dẻo, decal cao cấp,</p>\r\n\r\n<p>KH&Ocirc;NG BONG TR&Oacute;C v&agrave; AN TO&Agrave;N với sức khoẻ</p>\r\n\r\n<p>H&agrave;ng giống h&igrave;nh, kh&aacute;ch inbox shop gửi ảnh thật nh&eacute;</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', '0', 'hailan', 'hailan', '2022-08-17 09:20:48', '2022-08-23 14:29:49'),
(10, 'Áo Khoác Dù Nam Dokafashion Cao Cấp 2 Lớp Vải Dù Ấm Áp Cản Gió Đi Nắng, Chống Nước EZDS23', 4, '{\"image\":[\"1cT7XsZkkY.png\"],\"alt\":[null]}', 'active', '209000', 26, 0, 10, 'Chất liệu: vải dù cán 2 lớp dày dặn. bên trong có lớp lót vải giúp thoáng khí mát mẽ.\r\n\r\nĐảm Bảo Ko Ra Màu , Ko Phai Màu Suốt Quá Trình Sữ Dụng.\r\n\r\nBên trong lót lớp thoáng khí giúp không bị nóng.\r\n\r\nTúi được thiết kế sâu có thể đưng nhiều vật dụng.\r\n\r\nSize xem bên phần chi tiết sản phẩm.\r\n\r\nÁo khoác dù tạo điểm nhấn và sành điệu đường chỉ may tỉ mỉ, tinh tế.\r\n\r\nDây khóa nhẹ nhàng kết hợp với túi trong thuận tiện.\r\n\r\nPhối bo thun tay và đáy áo giúp giữ kín tránh gió và bung áo khi đi đường.\r\n\r\nĐi nắng không nóng - Chống tia UV, an toàn cho da.\r\n\r\nCó thể mặc đi dạo phố, đi chơi, chơi thể thao như tập gym, học tập, làm việc hay mặc thường ngày ở nhà!', '<p>Chất liệu: vải d&ugrave; c&aacute;n 2 lớp d&agrave;y dặn. b&ecirc;n trong c&oacute; lớp l&oacute;t vải gi&uacute;p tho&aacute;ng kh&iacute; m&aacute;t mẽ.</p>\r\n\r\n<p>Đảm Bảo Ko Ra M&agrave;u , Ko Phai M&agrave;u Suốt Qu&aacute; Tr&igrave;nh Sữ Dụng.</p>\r\n\r\n<p>B&ecirc;n trong l&oacute;t lớp tho&aacute;ng kh&iacute; gi&uacute;p kh&ocirc;ng bị n&oacute;ng.</p>\r\n\r\n<p>T&uacute;i được thiết kế s&acirc;u c&oacute; thể đưng nhiều vật dụng.</p>\r\n\r\n<p>Size xem b&ecirc;n phần chi tiết sản phẩm.</p>\r\n\r\n<p>&Aacute;o kho&aacute;c d&ugrave; tạo điểm nhấn v&agrave; s&agrave;nh điệu đường chỉ may tỉ mỉ, tinh tế.</p>\r\n\r\n<p>D&acirc;y kh&oacute;a nhẹ nh&agrave;ng kết hợp với t&uacute;i trong thuận tiện.</p>\r\n\r\n<p>Phối bo thun tay v&agrave; đ&aacute;y &aacute;o gi&uacute;p giữ k&iacute;n tr&aacute;nh gi&oacute; v&agrave; bung &aacute;o khi đi đường.</p>\r\n\r\n<p>Đi nắng kh&ocirc;ng n&oacute;ng - Chống tia UV, an to&agrave;n cho da.</p>\r\n\r\n<p>C&oacute; thể mặc đi dạo phố, đi chơi, chơi thể thao như tập gym, học tập, l&agrave;m việc hay mặc thường ng&agrave;y ở nh&agrave;!</p>\r\n\r\n<p>HƯỚNG DẪN CHỌN SIZE</p>\r\n\r\n<p>Size M: 45 - 55kg / Cao 1m50 - 1m65</p>\r\n\r\n<p>Size L: 55 - 62kg / Cao 1m65 - 1m70</p>\r\n\r\n<p>Size XL: 62 - 70kg / Cao 1m70 - 1m75</p>\r\n\r\n<p>Size 2XL: 70 - 80kg / Cao 1m70 - 1m80</p>\r\n\r\n<p>Size 3XL: 80 - 100kg / Cao Tr&ecirc;n 1m80</p>', '0', 'hailan', 'hailan', '2022-08-17 09:23:41', '2022-08-21 12:13:30'),
(11, 'Áo khoác jean nam Hahaman thời trang cao cấp AKJ06', 4, '{\"image\":[\"qZbMKxR4MF.jpg\"],\"alt\":[null]}', 'active', '245000', 39, 0, 10, 'Chất liệu vải Kaki jean mềm mại, không phai màu, không nhàu.\r\nMàu vải được Wash kỹ hạn chế ra màu khi giặt.\r\nForm áo vừa vặn, đường may tinh tế, chuẩn từng chi tiết.\r\nThiết kế nổi bật, phong cách\r\nCó thể phối với nhiều trang phục khác nhau: sơ mi, jean,\r\nThích hợp đi chơi, đi học', '<p>Chất liệu vải Kaki jean mềm mại, kh&ocirc;ng phai m&agrave;u, kh&ocirc;ng nh&agrave;u.<br />\r\nM&agrave;u vải được Wash kỹ hạn chế ra m&agrave;u khi giặt.<br />\r\nForm &aacute;o vừa vặn, đường may tinh tế, chuẩn từng chi tiết.<br />\r\nThiết kế nổi bật, phong c&aacute;ch<br />\r\nC&oacute; thể phối với nhiều trang phục kh&aacute;c nhau: sơ mi, jean,<br />\r\nTh&iacute;ch hợp đi chơi, đi học</p>\r\n\r\n<p>Xuất xứ : Việt nam.</p>\r\n\r\n<p>Size M: 45 - 55 kg</p>\r\n\r\n<p>Size L: từ 56 - 65 kg</p>\r\n\r\n<p>Size XL: 66 -&nbsp; 75kg</p>', '0', 'hailan', 'hailan', '2022-08-17 09:25:00', '2022-08-23 14:24:17'),
(12, 'Áo khoác jean nam King168 , áo khoác bò cao cấp AK17', 4, '{\"image\":[\"aOmP3Tfjzn.jpg\"],\"alt\":[null]}', 'active', '175000', 32, 0, 10, 'Áo khoác jean nam King168 , áo khoác bò cao cấp AK17', '<p>&Aacute;o kho&aacute;c jean nam King168 , &aacute;o kho&aacute;c b&ograve; cao cấp AK17</p>\r\n\r\n<p>TH&Ocirc;NG TIN CHI TIẾT SẢN PHẨM:</p>\r\n\r\n<p>+ Chất liệu vải jean demin cao cấp</p>\r\n\r\n<p>+ Được thiết kế ph&ugrave; hợp với độ tuổi từ 18 đến 30 tuổi</p>\r\n\r\n<p>+ Quần vải jean mềm mại thấm h&uacute;t mồ h&ocirc;i tốt, thoải m&aacute;i khi mặc</p>\r\n\r\n<p>+ Quần c&oacute; thể kết hợp với nhiều loại trang phục để mặc ở nh&agrave; hay đi chơi, du lịch,&hellip;</p>\r\n\r\n<p>C&Aacute;CH SỦ DỤNG V&Agrave; BẢO QUẢN:</p>\r\n\r\n<p>+ Giặt bằng m&aacute;y phơi kh&ocirc; dưới ảnh nắng trực tiếp</p>\r\n\r\n<p>BẢNG SIZE THAM KHẢO:</p>\r\n\r\n<p>Size M: 45-55kg CAO M:150cm -&gt; 165cm</p>\r\n\r\n<p>Size L: 56-65kg CAO L:165cm -170cm</p>\r\n\r\n<p>Size XL: 65-75kg CAO XL:170cm -&gt; 175cm</p>\r\n\r\n<p>SHOP&hellip; XIN CAM KẾT</p>\r\n\r\n<p>+ Sản phẩm chất lượng tốt, đ&uacute;ng như m&ocirc; tả</p>\r\n\r\n<p>+ Giao h&agrave;ng ngay khi nhận được đơn</p>\r\n\r\n<p>+ Đổi, trả với những sản phẩm lỗi do nh&agrave; sản xuất</p>\r\n\r\n<p>+ M&agrave;u sản phẩm c&oacute; thể ch&ecirc;nh lệch với sản phẩm nhận dc l&agrave; 6% do độ s&aacute;ng khi chụp h&igrave;nh c&oacute; thể thay đổi</p>\r\n\r\n<ul>\r\n</ul>', '0', 'hailan', 'hailan', '2022-08-17 09:26:24', '2022-08-21 12:12:00'),
(13, 'Áo sơ mi nam TUTO5 Slim fit Oxford công sở trơn tay dài đẹp kiểu dáng Hàn quốc trẻ trung cotton chống nhăn cao cấp SMT01', 2, '{\"image\":[\"AMAdssoXux.png\"],\"alt\":[null]}', 'active', '299000', 46, 0, 10, 'Giới Thiệu\r\n\r\n- Chất Vải :\r\n\r\nVải lụa mềm mịn, ít nhăn, ít bám bụi giữ dáng không bai gião cho dù giặt nhiều lần.\r\n\r\nChất vải này rất bền chắc giúp người mặc có thể thoải mái vận động mà không lo vải áo bị xù lông hay bung chỉ.\r\n\r\n- Kiểu dáng :\r\n\r\nDáng áo sơ mi ôm sát cơ thể, đặc biệt là cổ áo và dáng lưng áo ôm nhẹ giúp tôn dáng người mặc trông trẻ trung nam tính hơn.\r\n\r\nCổ tay áo là ống côn bo gọn và được máy chắc giúp người mặc thoải mái vận động di chuyển mà không lo bị vướng.\r\n\r\n- Màu sắc :\r\n\r\nTrắng,Đen, Xanh Dương,Xanh Đen,Tím Đậm, Tím Nhạt...\r\n\r\n- Bảo quản :\r\n\r\nÁo sơ mi được làm bằng chất vải lụa nến ít thấm nước nên anh em có thể ngâm nước một chút trước khi giặt để quần giặt sạch sẽ hơn.', '<p><strong>Giới Thiệu</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- Chất Vải :</strong></p>\r\n\r\n<p>Vải lụa mềm mịn, &iacute;t nhăn, &iacute;t b&aacute;m bụi giữ d&aacute;ng kh&ocirc;ng bai gi&atilde;o cho d&ugrave; giặt nhiều lần.</p>\r\n\r\n<p>Chất vải n&agrave;y rất bền chắc gi&uacute;p người mặc c&oacute; thể thoải m&aacute;i vận động m&agrave; kh&ocirc;ng lo vải &aacute;o bị x&ugrave; l&ocirc;ng hay bung chỉ.</p>\r\n\r\n<p><strong>- Kiểu d&aacute;ng :</strong></p>\r\n\r\n<p>D&aacute;ng &aacute;o sơ mi &ocirc;m s&aacute;t cơ thể, đặc biệt l&agrave; cổ &aacute;o v&agrave; d&aacute;ng lưng &aacute;o &ocirc;m nhẹ gi&uacute;p t&ocirc;n d&aacute;ng người mặc tr&ocirc;ng trẻ trung nam t&iacute;nh hơn.</p>\r\n\r\n<p>Cổ tay &aacute;o l&agrave; ống c&ocirc;n bo gọn v&agrave; được m&aacute;y chắc gi&uacute;p người mặc thoải m&aacute;i vận động di chuyển m&agrave; kh&ocirc;ng lo bị vướng.</p>\r\n\r\n<p><strong>-&nbsp;M&agrave;u sắc :</strong></p>\r\n\r\n<p>Trắng,Đen, Xanh Dương,Xanh Đen,T&iacute;m Đậm, T&iacute;m Nhạt...</p>\r\n\r\n<p><strong>- Bảo quản :</strong></p>\r\n\r\n<p>&Aacute;o sơ mi được l&agrave;m bằng chất vải lụa nến &iacute;t thấm nước n&ecirc;n anh em c&oacute; thể ng&acirc;m nước một ch&uacute;t trước khi giặt để quần giặt sạch sẽ hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ảnh Thời Trang</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>--------------------------------------------<br />\r\n<strong>Hướng Dẫn Bảo Quản Sử Dụng</strong></p>\r\n\r\n<p>- Lộn tr&aacute;i &aacute;o ra v&agrave; sử dụng nước giặt để giữ sản phẩm bền m&agrave;u.</p>\r\n\r\n<p>- Sau khi giặt xong, vắt kiệt nước v&agrave; giũ mạnh rồi phơi để sản phẩm kh&ocirc;ng bị nhăn.</p>\r\n\r\n<p>- Để &aacute;o kh&ocirc; tự nhi&ecirc;n, phơi trong b&oacute;ng r&acirc;m tho&aacute;ng m&aacute;t.</p>\r\n\r\n<p>- Kh&ocirc;ng sử dụng h&oacute;a chất, thuốc tẩy trực tiếp l&ecirc;n sản phẩm.</p>\r\n\r\n<p>- Kh&ocirc;ng ng&acirc;m qu&aacute; l&acirc;u trong dung dịch tẩy.</p>\r\n\r\n<p>- L&agrave; ủi ở nhiệt độ dưới 100 độ C.</p>', '0', 'hailan', 'hailan', '2022-08-17 09:28:15', '2022-08-21 12:08:42'),
(14, 'Áo Sơ Mi Nam Dài Tay Sọc Chữ Mã GM11 Thời Trang EMEY LUXURY Thiết Kế Nam Tính Lịch Lãm Chuẩn Form', 2, '{\"image\":[\"kgIroixYgF.jpg\"],\"alt\":[null]}', 'active', '160000', 25, 0, 10, 'Áo sơ mi nam dài tay, vải đẹp cao cấp loại 1 trên thị trường\r\n\r\nÁO sơ mi nam (sơ mi nam) được thiết kế với form dáng trẻ trung với form áo ôm, rất chuẩn như hình.\r\n\r\nChúng tôi hiện nay cung cấp áo sơ mi nam với giá bán lẻ tốt nhất trên thị trường.\r\n\r\n️Giá cạnh tranh nhất do chính nhà máy sản xuất với số lượng lớn.', '<p>&Aacute;o sơ mi nam d&agrave;i tay, vải đẹp cao cấp loại 1 tr&ecirc;n thị trường</p>\r\n\r\n<p>&Aacute;O sơ mi nam (sơ mi nam) được thiết kế với form d&aacute;ng trẻ trung với form &aacute;o &ocirc;m, rất chuẩn như h&igrave;nh.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i hiện nay cung cấp &aacute;o sơ mi nam với gi&aacute; b&aacute;n lẻ tốt nhất tr&ecirc;n thị trường.</p>\r\n\r\n<p>️Gi&aacute; cạnh tranh nhất do ch&iacute;nh nh&agrave; m&aacute;y sản xuất với số lượng lớn.</p>\r\n\r\n<p>️Ch&uacute;ng t&ocirc;i kh&ocirc;ng n&oacute;i sản phẩm của m&igrave;nh c&oacute; chất lượng cao nhưng phải khẳng định chất lượng sản phẩm vượt trội so với gi&aacute; tiền.</p>\r\n\r\n<p>️Uy t&iacute;n b&aacute;n h&agrave;ng được đặt l&ecirc;n h&agrave;ng đầu, kh&ocirc;ng kinh doanh chộp giật.</p>\r\n\r\n<p>️V&igrave; sản phẩm được sản xuất với số lượng lớn để c&oacute; gi&aacute; cạnh tranh n&ecirc;n kh&ocirc;ng thể tr&aacute;nh được sai s&oacute;t. Nếu qu&yacute; kh&aacute;ch h&agrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ đổi trả.</p>\r\n\r\n<p>️Rất mong nhận được &yacute; kiến đ&oacute;ng g&oacute;p của Qu&yacute; kh&aacute;ch h&agrave;ng để ch&uacute;ng t&ocirc;i cải thiện chất lượng dịch vụ tốt hơn.</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết sản phẩm:</p>\r\n\r\n<p>️Chất vải sờ mịn kh&ocirc;ng nhăn, kh&ocirc;ng bai, kh&ocirc;ng x&ugrave; .</p>\r\n\r\n<p>️Cổ Trụ v&agrave; tay l&agrave;m bằng chất liệu cao cấp, kh&ocirc;ng sợ bong tr&oacute;c, &eacute;p keo cực kỳ kỹ lưỡng .</p>\r\n\r\n<p>️Fom Body cực chuẩn, &ocirc;m trọn bờ vai mặc cực trẻ trung v&agrave; phong c&aacute;ch, ph&ugrave; hợp mọi ho&agrave;n cảnh kể cả đi l&agrave;m v&agrave; đi chơi</p>\r\n\r\n<p>Sản phẩm c&oacute; c&aacute;c size như sau:</p>\r\n\r\n<p>SIZE M: C&acirc;n nặng 48-55kg, Cao 1m50 - 1m62, &quot; &Aacute;o D&agrave;i giữa cổ sau đến lai bầu 68cm, Vai 38cm, V&ograve;ng ngực 88cm, Chiết eo 76cm, D&agrave;i tay 54cm&quot;</p>\r\n\r\n<p>SIZE L: Can nặng 55- 60kg, Cao 1m60 - 1m68, &quot; &Aacute;o D&agrave;i giữa cổ sau đến lai bầu 70cm, Vai 40cm, V&ograve;ng Ngực 92cm, Chiết eo 80cm, D&agrave;i tay 56cm&quot;</p>\r\n\r\n<p>SIZE XL: c&acirc;n nặng 60 - 65kg, Cao 1m65 - 1m72, &quot; &Aacute;o D&agrave;i giữa cổ sau xuống lai bầu 72cm, Vai 42cm, V&ograve;ng ngực 96cm, Chiết eo 84cm, D&agrave;i tay 58cm&quot;</p>\r\n\r\n<p>SIZE XXL: C&acirc;n nặng 65 -69kg Cao 1m7. - 1m80, &Aacute;o D&agrave;i giữa cổ sau xuống lai bầu 74cm, Vai 46cm, V&ograve;ng Ngực 100cm, Chiết eo 90cm, D&agrave;i tay 60cm&quot;</p>\r\n\r\n<ul>\r\n</ul>', '0', 'hailan', 'hailan', '2022-08-17 09:29:29', '2022-08-21 12:07:57'),
(15, 'Áo Sơ Mi Nam Dài Tay Công Sở Trung Niên Anton Xanh Caro Sợi Tre Thoáng Mát, Thấm Hút Mồ Hôi - AC130', 2, '{\"image\":[\"XTSjgHRaNb.jpg\"],\"alt\":[null]}', 'active', '425000', 0, 0, 10, 'Áo sơ mi nam trung niên, Áo sơ mi nam công sở Anton, Áo sơ mi nam dài tay họa tiết caro\r\n\r\nVải cotton thoáng mát, thấm hút tốt, mềm mịn không xù', '<p>&Aacute;o sơ mi nam trung ni&ecirc;n, &Aacute;o sơ mi nam c&ocirc;ng sở Anton, &Aacute;o sơ mi nam d&agrave;i tay họa tiết caro</p>\r\n\r\n<p>Vải cotton tho&aacute;ng m&aacute;t, thấm h&uacute;t tốt, mềm mịn kh&ocirc;ng x&ugrave;</p>\r\n\r\n<p>Q&uacute;y kh&aacute;ch tham khảo bảng size của shop để chọn size ph&ugrave; hợp cho m&igrave;nh:</p>\r\n\r\n<p>39: 55-60kg</p>\r\n\r\n<p>40: 60-65kg</p>\r\n\r\n<p>41: 65-70 kg</p>\r\n\r\n<p>42: 70-75 kg</p>\r\n\r\n<p>43: 80-85 kg</p>\r\n\r\n<p>44: &gt;85 kg</p>\r\n\r\n<p>&Aacute;o sơ mi nam trung ni&ecirc;n d&agrave;i tay caro từ thương hiệu Sơ Mi C&ocirc;ng Sở ANTON ch&iacute;nh l&agrave; gợi &yacute; tuyệt vời cho ph&aacute;i mạnh</p>\r\n\r\n<p>mỗi khi lựa chọn trang phục sơ mi đi l&agrave;m mỗi ng&agrave;y.&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sơ mi C&ocirc;ng sở Anton l&agrave; nh&agrave; sản xuất v&agrave; b&aacute;n lẻ &aacute;o sơ mi nam trung ni&ecirc;n tr&ecirc;n to&agrave;n quốc. Từng chiếc &aacute;o sơ mi đều</p>\r\n\r\n<p>được ho&agrave;n thiện bởi những thợ may l&agrave;nh nghề đến từ nh&agrave; m&aacute;y MAY10 của Việt Nam, với hơn 10 năm kinh nghiệm tr&ecirc;n</p>\r\n\r\n<p>thị trường.&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sơ mi c&ocirc;ng sở Anton l&agrave; sự lựa chọn số 1 của người l&agrave;m việc văn ph&ograve;ng, nam giới tuổi trung ni&ecirc;n.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&Aacute;o sơ mi trung ni&ecirc;n d&agrave;i tay caro vải mềm m&aacute;t form rộng ph&ugrave; hợp l&agrave;m sơ mi cho người lớn tuổi</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;---------------------------</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ch&iacute;nh s&aacute;ch</p>\r\n\r\n<p>- Cam kết sản phẩm &aacute;o sơ mi nam thương hiệu Anton.</p>\r\n\r\n<p>- Vận chuyển to&agrave;n quốc.</p>\r\n\r\n<p>- Đổi size trong 7 ng&agrave;y đầu nhận h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>️SƠ MI C&Ocirc;NG SỞ ANTON C&Aacute;M ƠN!</p>\r\n\r\n<p>&ldquo;C&aacute;m ơn kh&aacute;ch h&agrave;ng th&acirc;n y&ecirc;u đ&atilde; đồng h&agrave;nh c&ugrave;ng sơ mi trung ni&ecirc;n Anton trong từng đơn h&agrave;ng, từng đ&aacute;nh gi&aacute; để gi&uacute;p</p>\r\n\r\n<p>sơ mi Anton ho&agrave;n thiện hơn mỗi ng&agrave;y. Đ&ocirc;i khi shop c&oacute; vấn đề trong việc gửi h&agrave;ng như sai m&agrave;u, sai size, qu&yacute; kh&aacute;ch h&atilde;y</p>\r\n\r\n<p>b&igrave;nh tĩnh li&ecirc;n hệ với shop, Anton rất mong nhận được sự th&ocirc;ng cảm của qu&yacute; kh&aacute;ch. Sự ghi nhận của qu&yacute; kh&aacute;ch l&agrave; động</p>\r\n\r\n<p>lực để Anton cố gắng cho ra mắt nhiều sản phẩm mới v&agrave; dịch vụ chất lượng. H&atilde;y tiếp tục đồng h&agrave;nh c&ugrave;ng Sơ mi C&ocirc;ng sở</p>\r\n\r\n<p>Anton nh&eacute;!&rdquo;</p>', '0', 'hailan', 'hailan', '2022-08-17 09:30:34', '2022-08-21 12:06:28'),
(16, 'áo thun 1_2', 7, '{\"image\":[\"S2lkgQeAi3.webp\"],\"alt\":[null]}', 'inactive', '24000', 0, 0, 10, NULL, NULL, '0', 'hailan', 'hailan', '2022-08-21 05:54:10', '2022-08-22 08:23:38'),
(17, 'áo thun 1_234', 9, '{\"image\":[\"BGmrqnzuyI.jpg\",\"cVc4YZKmG6.jpg\",\"6BPIDJNdI5.jpg\",\"o0n7xWSKw1.jpg\"],\"alt\":[\"add new pic23\",\"add new pic 1edited\",\"add 1\",\"add2\"]}', 'active', '45000', 0, 0, 10, NULL, NULL, '0', 'hailan', 'hailan', '2022-08-21 10:17:44', '2022-08-26 14:29:35'),
(18, 'áo thun 1_2345', 1, '[]', 'active', '540000', 7, 0, 10, 'fds', '<p>fdsf</p>', '0', 'hailan', 'hailan', '2022-08-22 09:28:33', '2022-08-25 12:08:08'),
(19, '32321312', 1, '[]', 'active', '8787800', 0, 0, 10, NULL, NULL, '0', 'hailan', 'hailan', '2022-08-27 06:54:43', '2022-08-28 10:31:53'),
(20, 'Trần Mạnh Hoàng', 1, '{\"image\":[\"9kmZqO8ixs.webp\"],\"alt\":[\"Tr\\u1ea7n+M\\u1ea1nh+Ho\\u00e0ng\"]}', 'active', '24000', 0, 0, 10, NULL, NULL, '0', 'hailan', 'hailan', '2022-08-27 06:55:39', '2022-08-28 12:29:25'),
(30, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-28 18:17:20', '2022-08-28 18:17:20'),
(74, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 04:28:14', '2022-08-29 04:28:14'),
(75, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 04:32:46', '2022-08-29 04:32:46'),
(76, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 04:33:13', '2022-08-29 04:33:13'),
(77, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 04:34:55', '2022-08-29 04:34:55'),
(78, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 04:38:33', '2022-08-29 04:38:34'),
(79, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 04:39:18', '2022-08-29 04:39:18'),
(80, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 04:47:24', '2022-08-29 04:47:24'),
(81, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 04:49:53', '2022-08-29 04:49:53'),
(82, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 04:50:35', '2022-08-29 04:50:35'),
(83, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 04:51:17', '2022-08-29 04:51:17'),
(84, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 04:52:22', '2022-08-29 04:52:22'),
(85, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:04:33', '2022-08-29 05:04:33'),
(86, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:06:09', '2022-08-29 05:06:09'),
(87, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:07:36', '2022-08-29 05:07:36'),
(88, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:08:29', '2022-08-29 05:08:29'),
(89, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:08:52', '2022-08-29 05:08:52'),
(90, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:10:31', '2022-08-29 05:10:31'),
(91, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:11:49', '2022-08-29 05:11:49'),
(92, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:12:31', '2022-08-29 05:12:31'),
(93, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:13:29', '2022-08-29 05:13:29'),
(94, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:14:14', '2022-08-29 05:14:14'),
(95, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:17:17', '2022-08-29 05:17:17'),
(96, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:19:15', '2022-08-29 05:19:15'),
(97, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:19:29', '2022-08-29 05:19:29'),
(98, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:46:51', '2022-08-29 05:46:51'),
(99, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:48:54', '2022-08-29 05:48:54'),
(100, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:50:06', '2022-08-29 05:50:06'),
(101, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:50:56', '2022-08-29 05:50:56'),
(102, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:51:12', '2022-08-29 05:51:12'),
(103, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:51:19', '2022-08-29 05:51:19'),
(104, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:51:24', '2022-08-29 05:51:24'),
(105, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:51:25', '2022-08-29 05:51:25'),
(106, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:53:15', '2022-08-29 05:53:15'),
(107, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:53:30', '2022-08-29 05:53:30'),
(108, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:54:24', '2022-08-29 05:54:24'),
(109, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:56:11', '2022-08-29 05:56:11'),
(110, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:57:27', '2022-08-29 05:57:27'),
(111, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:57:28', '2022-08-29 05:57:28'),
(112, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:58:29', '2022-08-29 05:58:29'),
(113, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:58:32', '2022-08-29 05:58:32'),
(114, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 05:59:23', '2022-08-29 05:59:23'),
(115, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:01:27', '2022-08-29 06:01:27'),
(116, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:02:34', '2022-08-29 06:02:34'),
(117, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:03:06', '2022-08-29 06:03:06'),
(118, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:04:08', '2022-08-29 06:04:08'),
(119, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:04:11', '2022-08-29 06:04:11'),
(120, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:05:59', '2022-08-29 06:05:59'),
(121, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:06:37', '2022-08-29 06:06:37'),
(122, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:29:46', '2022-08-29 06:29:46'),
(123, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:30:19', '2022-08-29 06:30:19'),
(124, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:32:22', '2022-08-29 06:32:22'),
(125, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:33:44', '2022-08-29 06:33:45'),
(126, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:35:31', '2022-08-29 06:35:31'),
(127, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:37:58', '2022-08-29 06:37:58'),
(128, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:38:25', '2022-08-29 06:38:25'),
(129, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:38:41', '2022-08-29 06:38:41'),
(130, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:39:09', '2022-08-29 06:39:09'),
(131, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:39:26', '2022-08-29 06:39:26'),
(132, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:46:37', '2022-08-29 06:46:37'),
(133, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:47:08', '2022-08-29 06:47:08'),
(134, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:49:11', '2022-08-29 06:49:11'),
(135, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:49:24', '2022-08-29 06:49:24'),
(136, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:51:27', '2022-08-29 06:51:27'),
(137, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:51:47', '2022-08-29 06:51:47'),
(138, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 06:58:54', '2022-08-29 06:58:54'),
(139, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 07:28:05', '2022-08-29 07:28:05'),
(140, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 07:35:59', '2022-08-29 07:35:59'),
(141, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 07:39:42', '2022-08-29 07:39:42'),
(142, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 07:42:59', '2022-08-29 07:42:59'),
(143, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 07:48:38', '2022-08-29 07:48:38'),
(144, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 07:55:52', '2022-08-29 07:55:52'),
(145, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 08:00:38', '2022-08-29 08:00:38');
INSERT INTO `products` (`id`, `name`, `product_category_id`, `thumb`, `status`, `price`, `sale_off`, `special`, `ordering`, `description`, `content`, `draft`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(146, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 08:02:56', '2022-08-29 08:02:56'),
(147, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 08:08:14', '2022-08-29 08:08:14'),
(148, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 08:22:23', '2022-08-29 08:22:23'),
(149, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 08:23:38', '2022-08-29 08:23:38'),
(150, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 08:26:12', '2022-08-29 08:26:12'),
(151, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 08:30:25', '2022-08-29 08:30:25'),
(152, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 08:42:01', '2022-08-29 08:42:01'),
(153, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 08:48:47', '2022-08-29 08:48:47'),
(154, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 08:49:38', '2022-08-29 08:49:38'),
(155, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 08:54:13', '2022-08-29 08:54:13'),
(156, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 09:06:35', '2022-08-29 09:06:35'),
(157, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 09:15:50', '2022-08-29 09:15:50'),
(158, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 09:16:38', '2022-08-29 09:16:38'),
(159, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 09:27:14', '2022-08-29 09:27:14'),
(160, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 09:31:24', '2022-08-29 09:31:24'),
(161, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 09:33:42', '2022-08-29 09:33:42'),
(162, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 09:44:17', '2022-08-29 09:44:17'),
(163, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 09:45:07', '2022-08-29 09:45:07'),
(164, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 09:46:49', '2022-08-29 09:46:49'),
(165, NULL, NULL, '[]', NULL, NULL, 0, 0, 10, NULL, NULL, '1', NULL, NULL, '2022-08-29 13:03:32', '2022-08-29 13:03:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_value_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 10,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `status`, `thumb`, `special`, `ordering`, `created_by`, `updated_by`, `created_at`, `updated_at`, `_lft`, `_rgt`, `parent_id`) VALUES
(1, 'Áo thun nam', 'active', 'N4vCadBJAZ.webp', 'inactive', 10, NULL, 'hailan', NULL, '2022-08-19 23:55:13', 2, 9, 6),
(2, 'Áo sơ mi nam', 'inactive', '54Kooe9dxQ.jpg', 'active', 10, NULL, 'hailan', NULL, '2022-08-19 23:54:56', 10, 11, 6),
(3, 'Quần nam', 'active', '2fuwCUV0u5.png', 'inactive', 9, 'hailan', 'hailan', '2022-08-16 10:29:04', '2022-08-19 23:54:56', 12, 13, 6),
(4, 'Áo vest - Áo khoác nam', 'active', 'NJk7C5cmPA.jpg', 'inactive', 10, 'hailan', NULL, '2022-08-17 01:58:02', '2022-08-19 23:54:56', 14, 15, 6),
(5, 'Áo Hoody nam', 'active', 'lXcBjF7U1p.webp', 'inactive', 10, 'hailan', NULL, '2022-08-17 01:58:52', '2022-08-19 23:54:56', 16, 17, 6),
(6, 'Root', 'inactive', NULL, NULL, 10, NULL, NULL, NULL, '2022-08-19 23:55:13', 1, 18, NULL),
(7, 'áo thun 1', 'active', 'czO30Q5Fex.jpg', 'inactive', 10, 'hailan', NULL, '2022-08-19 23:51:37', '2022-08-19 23:55:13', 3, 8, 1),
(8, 'áo thun 1_2  1', 'inactive', 'ZJwYA9KeLt.jpg', 'active', 7, 'hailan', 'hailan', '2022-08-19 23:54:55', '2022-08-20 00:17:47', 5, 6, 9),
(9, 'áo thun 1_2', 'active', 'ZK23lMd5oI.jpg', 'inactive', 10, 'hailan', NULL, '2022-08-20 00:12:46', '2022-08-20 00:12:46', 4, 7, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rsses`
--

CREATE TABLE `rsses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 10
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rsses`
--

INSERT INTO `rsses` (`id`, `name`, `link`, `status`, `source`, `created_by`, `updated_by`, `created_at`, `updated_at`, `ordering`) VALUES
(1, 'Thế Giới VNExpress', 'https://vnexpress.net/rss/the-gioi.rss', 'active', 'vnexpress', 'hailan', 'hailan', '2021-07-10 17:00:00', '2021-07-11 17:00:00', 1),
(2, 'Thế Giới TuoiTre', 'https://tuoitre.vn/rss/the-gioi.rss', 'inactive', 'tuoitre', 'hailan', '', '2021-07-10 17:00:00', NULL, 4),
(3, 'Thời sự VNEx', 'https://vnexpress.net/rss/thoi-su.rss', 'inactive', 'vnexpress', 'hailan', 'hailan', '2021-07-11 17:00:00', '2021-07-11 17:00:00', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key_value`, `value`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'setting-general', '{\"hotline\":\"[{\\\"value\\\":\\\"0987654321\\\"},{\\\"value\\\":\\\"12345678\\\"},{\\\"value\\\":\\\"432432432\\\"},{\\\"value\\\":\\\"3213213213\\\"}]\",\"timezone\":\"24\\/24\",\"copyright\":\"Zendvn.com\",\"address\":\"Qu\\u1eadn 3, TPHCM\",\"introduction\":\"<p>3232131<\\/p>\",\"logo\":\"logozend.png\"}', '', '', NULL, '2022-08-08 00:54:57'),
(2, 'setting-email', '{\"email\":\"hoangalt0098@gmail.com\",\"password\":\"123456\"}', '', '', NULL, NULL),
(3, 'setting-bcc', '{\"bcc\":\"[{\\\"value\\\":\\\"hoangalt0098@gmail.com\\\"},{\\\"value\\\":\\\"hoangcn16b@gmail.com\\\"},{\\\"value\\\":\\\"342342343\\\"}]\"}', '', '', NULL, NULL),
(4, 'setting-social', '\"[{\\\"value\\\":\\\"https:\\/\\/www.facebook.com\\/profile.php?id=100006215655785\\\"},{\\\"value\\\":\\\"423423432\\\"}]\"', '', '', NULL, '2022-08-08 00:45:58'),
(5, 'setting-video', '\"[{\\\"value\\\":\\\"https:\\/\\/www.youtube.com\\\"},{\\\"value\\\":\\\"423432\\\"},{\\\"value\\\":\\\"4324324dsadsadsa\\\"},{\\\"value\\\":\\\"sadsadsad\\\"},{\\\"value\\\":\\\"4324324\\\"}]\"', '', '', NULL, '2022-08-08 00:45:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `description`, `link`, `thumb`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Khóa học lập trình Frontend Master', 'Khóa học sẽ giúp bạn trở thành một chuyên gia Frontend với đầy đủ các kiến thức về HTML, CSS, JavaScript, Bootstrap, jQuery, chuyển PSD thành HTML ...', 'https://zendvn.com/khoa-hoc-lap-trinh-frontend-master/', 'rEpDUQCxe4.jpeg', 'active', 'hailan', 'hailan', '2019-04-14 17:00:00', '2019-04-24 06:28:03'),
(2, 'Học lập trình trực tuyến', 'Học trực tuyến giúp bạn tiết kiệm chi phí, thời gian, cập nhật được nhiều kiến thức mới nhanh nhất và hiệu quả nhất', 'https://zendvn.com/', 'K6B1O6UNCb.jpeg', 'active', 'hailan', 'hailan', '2019-04-17 17:00:00', '2019-04-24 06:28:06'),
(3, 'Ưu đãi học phí', 'Tổng hợp các trương trình ưu đãi học phí hàng tuần, hàng tháng đến tất các các bạn với các mức giảm đặc biệt 50%, 70%,..', 'https://zendvn.com/uu-dai-hoc-phi-tai-zendvn/', 'LWi6hINpXz.jpeg', 'inactive', 'hailan', 'hailan', '2019-04-23 17:00:00', '2021-07-09 17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `fullname`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `link`, `avatar`, `level`, `status`, `created_by`, `updated_by`) VALUES
(1, 'admin', 'admin123456', '', 'admin@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, '2014-12-10 01:55:35', '2022-08-07 22:37:09', NULL, '1ctW8mj8vq.png', 'admin', 'active', 'admin', 'hailan'),
(2, 'hailan', 'hailan', '', 'hailan@gmail.com', NULL, '7c6f3ef49405d8a330aaa19ca0d0f6af', NULL, '2014-12-13 00:20:03', '2019-05-04 01:47:04', NULL, '1eSGmvZ3gM.jpeg', 'member', 'active', 'admin', 'hailan'),
(3, 'user123', 'user123', '', 'test@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, '2019-05-03 17:00:00', '2019-05-04 01:47:07', NULL, 'Hb1QSn1CL8.png', 'member', 'inactive', 'admin', 'hailan'),
(4, 'user456', 'user456', '', 'user456@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, '2019-05-03 17:00:00', '2022-07-29 17:00:00', NULL, 'J1uknUz0T6.png', 'member', 'inactive', 'admin', 'hailan'),
(5, 'hoang', 'hoang123', '', 'hoangalt0098@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, NULL, 'active', '', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `democategories`
--
ALTER TABLE `democategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `democategories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Chỉ mục cho bảng `rsses`
--
ALTER TABLE `rsses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `democategories`
--
ALTER TABLE `democategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT cho bảng `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `rsses`
--
ALTER TABLE `rsses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
