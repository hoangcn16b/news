-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 15, 2022 lúc 01:15 PM
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
(1, 'Liverpool chỉ được nâng Cup phiên bản nếu vô địch hôm nay', 1, '<p>Đội b&oacute;ng th&agrave;nh phố cảng sẽ kh&ocirc;ng n&acirc;ng Cup nguy&ecirc;n bản nếu vượt mặt Man City ở v&ograve;ng cuối Ngoại hạng Anh.</p>\r\n\r\n<p>Liverpool k&eacute;m Man City một điểm trước khi tiếp Wolverhampton tr&ecirc;n s&acirc;n nh&agrave; Anfield v&agrave;o ng&agrave;y Chủ Nhật. Ở trận đấu c&ugrave;ng giờ, Man City sẽ l&agrave;m kh&aacute;ch tới s&acirc;n Brighton v&agrave; biết một chiến thắng sẽ gi&uacute;p họ bảo vệ th&agrave;nh c&ocirc;ng ng&ocirc;i v&ocirc; địch. Kể từ khi c&aacute;c trận v&ograve;ng cuối Ngoại hạng Anh sẽ chơi đồng loạt c&ugrave;ng l&uacute;c, ban tổ chức phải đặt một chiếc cup phi&ecirc;n bản giống thật tại Anfield ph&ograve;ng trường hợp Liverpool v&ocirc; địch. Chiếc cup giả n&agrave;y thường được d&ugrave;ng trong c&aacute;c sự kiện quảng b&aacute; của Ngoại hạng Anh.&nbsp;</p>', 'L3Yuzln8II.png', 'active', '2019-04-29 00:00:00', 'featured', 'hailan', 'hailan', '2019-05-03 17:00:00', '2019-05-16 17:00:00'),
(2, 'Bottas giành pole chặng thứ ba liên tiếp', 1, '<p>Tay đua Phần Lan đ&aacute;nh bại đồng đội Lewis Hamilton ở v&ograve;ng ph&acirc;n hạng GP T&acirc;y Ban Nha h&ocirc;m 11/5.</p>\r\n\r\n<p>Valtteri Bottas nhanh hơn Hamilton 0,634 gi&acirc;y v&agrave; nhanh hơn người về thứ ba&nbsp;Sebastian Vettel 0,866 gi&acirc;y. Tay đua của Red Bull&nbsp;Max Verstappen nhanh thứ tư, trong khi&nbsp;Charles Leclerc về thứ năm.</p>', 'iQ1RXPioFZ.jpeg', 'active', '2019-04-28 00:00:00', 'featured', 'hailan', 'hailan', '2019-05-03 17:00:00', '2019-05-16 17:00:00'),
(3, 'HLV Cardiff: \'Man Utd sẽ không vô địch trong 10 năm tới\'', 1, '<p>Neil Warnock tỏ ra nghi ngờ về tương lai của Man Utd dưới thời HLV Solskjaer.</p>\r\n\r\n<p>&quot;Một số người nghĩ Man Utd cần từ hai đến ba kỳ chuyển nhượng nữa để gi&agrave;nh danh hiệu&quot;, HLV Neil Warnock chia sẻ. &quot;T&ocirc;i th&igrave; nghĩ c&oacute; thể l&agrave; 10 năm. T&ocirc;i kh&ocirc;ng thấy học&oacute; khả năng bắt kịp hai CLB h&agrave;ng đầu trong khoảng bốn hay năm năm tới&quot;.</p>\r\n\r\n<p>Lần cuối Man Utd v&ocirc; địch l&agrave; m&ugrave;a 2012-2013 dưới thời HLV Sir Alex Ferguson. Kể từ đ&oacute; đến nay, &quot;Quỷ đỏ&quot; kh&ocirc;ng c&ograve;n duy tr&igrave; được vị thế ứng cử vi&ecirc;n v&ocirc; địch h&agrave;ng đầu.&nbsp;</p>', 'ReChSfB95C.jpeg', 'active', '2019-05-30 00:00:00', 'featured', 'hailan', 'hailan', '2019-05-03 17:00:00', '2019-05-16 17:00:00'),
(4, 'Đại học Anh đưa khóa học hạnh phúc vào chương trình giảng dạy', 2, '<p>Kh&oacute;a học diễn ra trong 12 tuần, sinh vi&ecirc;n năm nhất Đại học Bristol sẽ được kh&aacute;m ph&aacute; hạnh ph&uacute;c l&agrave; g&igrave; v&agrave; l&agrave;m thế n&agrave;o để đạt được n&oacute;.</p>\r\n\r\n<p>Đại học Bristol (Anh) quyết định đưa kh&oacute;a học hạnh ph&uacute;c v&agrave;o giảng dạy từ th&aacute;ng 9 năm nay nhằm giảm thiểu t&igrave;nh trạng tự tử ở sinh vi&ecirc;n, sau khi 12 sinh vi&ecirc;n ở một trường kh&aacute;c quy&ecirc;n sinh trong ba năm qua. Gi&aacute;o sư Bruce Hood, nh&agrave; t&acirc;m l&yacute; học chuy&ecirc;n nghi&ecirc;n cứu về c&aacute;ch thức hoạt động của bộ n&atilde;o v&agrave; con người, sẽ giảng dạy m&ocirc;n học mới n&agrave;y.</p>', 'hoyOyXJrzx.png', 'active', '2019-05-05 00:00:00', 'featured', 'hailan', 'hailan', '2019-05-03 17:00:00', '2019-05-16 17:00:00'),
(5, '11 cách đơn giản dạy trẻ quản lý thời gian', 5, '<p>Phụ huynh h&atilde;y tạo cảm gi&aacute;c vui vẻ, hướng dẫn trẻ thiết lập những ưu ti&ecirc;n h&agrave;ng ng&agrave;y để ch&uacute;ng c&oacute; thể tự quản l&yacute; thời gian hiệu quả.</p>\r\n\r\n<p>&quot;Nhanh l&ecirc;n&quot;, &quot;Con c&oacute; biết mấy giờ rồi kh&ocirc;ng&quot;, &quot;Điều g&igrave; l&agrave;m con mất nhiều thời gian như vậy&quot;..., l&agrave; những c&acirc;u n&oacute;i quen thuộc của phụ huynh để nhắc nhở con về kh&aacute;i niệm thời gian. Thay v&igrave; n&oacute;i những c&acirc;u tr&ecirc;n, phụ huynh c&oacute; thể dạy con c&aacute;ch quản l&yacute; giờ giấc ngay từ khi ch&uacute;ng c&ograve;n nhỏ.</p>', 'Phe2pSOC5Q.jpeg', 'active', '2019-07-30 00:00:00', 'normal', 'hailan', 'hailan', '2019-05-03 17:00:00', '2019-05-16 17:00:00'),
(6, 'Vì sao không hút thuốc vẫn bị ung thư phổi?', 3, '<p>D&ugrave; kh&ocirc;ng h&uacute;t thuốc, bạn vẫn c&oacute; nguy cơ ung thư phổi do h&iacute;t phải kh&oacute;i thuốc, tiếp x&uacute;c với kh&iacute; radon hoặc sống trong m&ocirc;i trường &ocirc; nhiễm.&nbsp;</p>\r\n\r\n<p>Người kh&ocirc;ng h&uacute;t thuốc vẫn c&oacute; thể bị ung thư phổi.&nbsp;Tr&ecirc;n&nbsp;<em>Journal of the Royal Society of Medicine</em>,&nbsp;c&aacute;c nh&agrave; khoa học từ&nbsp;Hiệp hội Ung thư Mỹ cho biết 20% bệnh nh&acirc;n ung thư phổi kh&ocirc;ng bao giờ h&uacute;t thuốc.&nbsp;Nghi&ecirc;n cứu 30 năm tr&ecirc;n 1,2 triệu người của tổ chức n&agrave;y cũng chỉ ra số người kh&ocirc;ng h&uacute;t thuốc bị ung thư phổi đang gia tăng. Hầu hết bệnh nh&acirc;n chỉ được chẩn đo&aacute;n khi đ&atilde; bước sang giai đoạn nghi&ecirc;m trọng kh&ocirc;ng thể điều trị.&nbsp;</p>', 'tPa7bgOesm.png', 'active', '2019-08-30 00:00:00', 'normal', 'hailan', 'hailan', '2019-05-03 17:00:00', '2019-05-16 17:00:00'),
(7, '10 hãng hàng không tốt nhất thế giới năm 2019', 4, '<p>Qatar l&agrave; quốc gia duy nhất tr&ecirc;n thế giới c&oacute; h&atilde;ng h&agrave;ng kh&ocirc;ng v&agrave; s&acirc;n bay tốt nhất năm 2019.</p>\r\n\r\n<p>C&aacute;c s&acirc;n bay được đ&aacute;nh gi&aacute; dựa tr&ecirc;n 3 yếu tố: hiệu suất đ&uacute;ng giờ, chất lượng dịch vụ, thực phẩm v&agrave; lựa chọn mua sắm. Yếu tố đầu ti&ecirc;n chiếm 60% số điểm, hai ti&ecirc;u ch&iacute; c&ograve;n lại chiếm 20%. Dữ liệu của AirHelp được dựa tr&ecirc;n thống k&ecirc; từ nhiều nh&agrave; cung cấp thương mại, c&ugrave;ng cơ sở dữ liệu đ&aacute;nh gi&aacute; ri&ecirc;ng v&agrave; 40.000 khảo s&aacute;t h&agrave;nh kh&aacute;ch được thu thập từ hơn 40 quốc gia trong năm 2018.</p>', '8GlYE3KYtZ.png', 'active', '2019-09-30 00:00:00', 'normal', 'hailan', 'hailan', '2019-05-03 17:00:00', '2019-05-16 17:00:00'),
(8, 'Phát hiện bụt mọc cổ thụ hơn 2.600 tuổi ở Mỹ', 5, '<p>Ph&aacute;t hiện mới gi&uacute;p bụt mọc trở th&agrave;nh một trong những c&acirc;y sinh sản hữu t&iacute;nh gi&agrave; nhất thế giới, vượt xa ước t&iacute;nh trước đ&acirc;y của c&aacute;c chuy&ecirc;n gia.</p>\r\n\r\n<p>C&aacute;c nh&agrave; khoa học ph&aacute;t hiện một c&acirc;y bụt mọc &iacute;t nhất đ&atilde; 2.624 tuổi ở v&ugrave;ng đầm lầy s&ocirc;ng Black, bang Bắc Carolina, Mỹ, theo nghi&ecirc;n cứu đăng tr&ecirc;n tạp ch&iacute;&nbsp;<em>Environmental Research Communications</em>&nbsp;h&ocirc;m 9/5.&nbsp;</p>\r\n\r\n<p>Nh&oacute;m nghi&ecirc;n cứu bắt gặp bụt mọc cổ thụ n&agrave;y trong l&uacute;c nghi&ecirc;n cứu v&ograve;ng tuổi của c&acirc;y để t&igrave;m hiểu về lịch sử kh&iacute; hậu tại miền đ&ocirc;ng nước Mỹ. Ngo&agrave;i thể hiện tuổi thọ, độ rộng v&agrave; m&agrave;u sắc của v&ograve;ng tuổi tr&ecirc;n th&acirc;n c&acirc;y c&ograve;n cho biết mức độ ẩm ướt hay kh&ocirc; hạn của năm tương ứng.</p>', 'a09zB7BiwV.jpeg', 'active', '2019-05-12 00:00:00', 'normal', 'hailan', 'hailan', '2019-05-11 17:00:00', '2019-05-16 17:00:00'),
(9, 'Apple có thể không nâng cấp iOS 13 cho iPhone SE, 6', 6, '<p>Những mẫu iPhone ra mắt từ 2014 v&agrave; iPhone SE c&oacute; thể kh&ocirc;ng được l&ecirc;n đời hệ điều h&agrave;nh iOS 13 ra mắt th&aacute;ng 6 tới.</p>\r\n\r\n<p>Theo&nbsp;<em>Phone Arena</em>, hệ điều h&agrave;nh iOS 13 sắp tr&igrave;nh l&agrave;ng tại hội nghị WWDC 2019 sẽ kh&ocirc;ng hỗ trợ một loạt iPhone đời cũ của Apple. Trong đ&oacute;, đ&aacute;ng ch&uacute; &yacute; l&agrave; c&aacute;c mẫu iPhone vẫn c&ograve;n được nhiều người d&ugrave;ng sử dụng như iPhone 6, 6s Plus hay SE.&nbsp;</p>', '9jOZGc7BJK.png', 'active', '2019-05-10 00:00:00', 'normal', 'hailan', 'hailan', '2019-05-11 17:00:00', '2019-05-16 17:00:00'),
(10, 'Hình dung về Honda Jazz thế hệ mới', 7, '<p>Thế hệ thứ tư của mẫu hatchback Honda tiết chế bớt những đường n&eacute;t g&acirc;n guốc, thể thao để thay bằng n&eacute;t trung t&iacute;nh, hợp mắt người d&ugrave;ng hơn.&nbsp;</p>\r\n\r\n<p>Những h&igrave;nh ảnh đầu ti&ecirc;n về Honda Jazz (Fit tại Nhật Bản) thế hệ mới bắt đầu xuất hiện tr&ecirc;n đường thử. D&ugrave; chưa phải thiết kế ho&agrave;n chỉnh, thay đổi của mẫu hatchback cỡ B cho thấy những đường n&eacute;t trung t&iacute;nh m&agrave; xe sắp sở hữu. Điều n&agrave;y tr&aacute;i ngược với tạo h&igrave;nh g&acirc;n guốc, thể thao ở thế hệ thứ ba hiện tại của Jazz.&nbsp;</p>', 'g2c7mYXBPW.png', 'active', '2019-05-12 00:00:00', 'normal', 'hailan', 'hailan', '2019-05-11 17:00:00', '2019-05-16 17:00:00'),
(11, 'Hà Nội vào vòng knock-out AFC Cup', 1, '<p>ĐKVĐ V-League đ&aacute;nh bại&nbsp;Tampines Rovers 2-0 v&agrave;o chiều 15/5 để đứng đầu bảng F.</p>\r\n\r\n<p>Tiếp đối thủ đến từ Singapore trong t&igrave;nh thế buộc phải thắng để tự quyết v&eacute; đi tiếp, H&agrave; Nội đ&atilde; c&oacute; trận đấu dễ d&agrave;ng. C&oacute; thể n&oacute;i, kết quả của trận đấu được định đoạt trong hiệp một khi Oseni v&agrave; Th&agrave;nh Chung lần lượt ghi b&agrave;n cho đội chủ nh&agrave;. Trong khi đ&oacute;, Tampines Rovers phải trả gi&aacute; cho lối chơi th&ocirc; bạo khi Yasir Hanapi nhận thẻ v&agrave;ng thứ hai rời s&acirc;n. Tiền vệ n&agrave;y bị trừng phạt bởi pha đ&aacute;nh nguội với Th&agrave;nh Chung ở đầu trận, sau đ&oacute; l&agrave; t&igrave;nh huống phạm lỗi &aacute;c &yacute; với Đ&igrave;nh Trọng.</p>', 'e7YyFZJCc8.jpeg', 'active', '2019-05-10 00:00:00', 'featured', 'hailan', 'hailan', '2019-05-14 17:00:00', '2019-05-16 17:00:00'),
(12, 'Man City vẫn dự Champions League mùa 2019-2020', 1, '<p>Việc điều tra vi phạm luật c&ocirc;ng bằng t&agrave;i ch&iacute;nh của chủ s&acirc;n Etihad chưa thể ho&agrave;n th&agrave;nh trong v&ograve;ng một năm tới.</p>\r\n\r\n<p><em>Sports Mail</em>&nbsp;(Anh)&nbsp;cho biết, &aacute;n phạt cấm tham dự Champions League một m&ugrave;a với Man City, do vi phạm luật c&ocirc;ng bằng t&agrave;i ch&iacute;nh (FFP), chỉ được đưa ra sớm nhất v&agrave;o m&ugrave;a 2020-2021.</p>\r\n\r\n<p>Trong bức thư ngỏ gửi tới truyền th&ocirc;ng Anh, Man City viết: &quot;Ch&uacute;ng t&ocirc;i hợp t&aacute;c một c&aacute;ch thiện ch&iacute; với Tiểu ban kiểm so&aacute;t t&agrave;i ch&iacute;nh c&aacute;c CLB của UEFA (CFCB). CLB tin tưởng v&agrave;o sự độc lập v&agrave; cam kết của CFCB h&ocirc;m 7/3, rằng sẽ kh&ocirc;ng kết luận g&igrave; trong thời gian điều tra&quot;.</p>', 'exzJEG4WDU.jpeg', 'active', '2019-05-10 00:00:00', 'featured', 'hailan', 'hailan', '2019-05-14 17:00:00', '2019-05-16 17:00:00'),
(13, 'Những câu đố giúp rèn luyện trí não', 1, '<p>Bạn cần quan s&aacute;t, suy luận logic v&agrave; c&oacute; vốn từ vựng tiếng Anh để giải quyết những c&acirc;u đố dưới đ&acirc;y.</p>\r\n\r\n<p>C&acirc;u 1:&nbsp;Mike đến một buổi phỏng vấn xin việc. Anh đ&atilde; g&acirc;y ấn tượng với gi&aacute;m đốc về những kỹ năng v&agrave; kinh nghiệm của m&igrave;nh. Tuy nhi&ecirc;n, để quyết định c&oacute; nhận Mike hay kh&ocirc;ng, nữ gi&aacute;m đốc đưa ra một c&acirc;u đố h&oacute;c b&uacute;a v&agrave; y&ecirc;u cầu Mike trả lời trong 30 gi&acirc;y.</p>\r\n\r\n<p>Nội dung c&acirc;u đố: H&atilde;y đưa ra 30 từ tiếng Anh kh&ocirc;ng c&oacute; chữ &quot;a&quot; xuất hiện trong đ&oacute;?&nbsp;</p>\r\n\r\n<p>Mike dễ d&agrave;ng giải quyết c&acirc;u đố. Theo bạn anh ấy n&oacute;i những từ tiếng Anh n&agrave;o để kịp trả lời trong 30 gi&acirc;y?</p>', 'TpcocqUjob.png', 'active', '2019-05-10 00:00:00', 'featured', 'hailan', 'hailan', '2019-05-14 17:00:00', '2019-05-16 17:00:00'),
(14, 'Cách nhận biết mật ong nguyên chất và pha trộn', 3, '<p>Mật ong nguy&ecirc;n chất sẽ kh&ocirc;ng thấm qua tờ giấy, lắng xuống đ&aacute;y ly nước v&agrave; bị kiến ăn, kh&aacute;c với mật ong bị pha trộn tạp chất.</p>\r\n\r\n<p>Dược sĩ V&otilde; H&ugrave;ng Mạnh, Trưởng khoa Dược Bệnh viện Y học d&acirc;n tộc cổ truyền B&igrave;nh Định, cho biết thị trường c&oacute; nhiều loại mật ong bị pha trộn, chỉ nh&igrave;n bề ngo&agrave;i hay ngửi m&ugrave;i chưa chắc ph&acirc;n biệt được.</p>\r\n\r\n<p>Theo dược sĩ H&ugrave;ng, một c&aacute;ch ph&acirc;n biệt thật giả l&agrave; lấy cọng h&agrave;nh tươi nh&uacute;ng v&agrave;o lọ mật ong, lấy ra chừng v&agrave;i ph&uacute;t. Cọng l&aacute; h&agrave;nh sẽ chuyển từ m&agrave;u xanh l&aacute; sang sậm nếu mật ong thật. Ngo&agrave;i ra, c&oacute; thể nhỏ giọt mật v&agrave;o nơi c&oacute; kiến, nếu kiến kh&ocirc;ng bu giọt mật th&igrave; cũng l&agrave; mật ong thật.</p>\r\n\r\n<p>Ng&agrave;y nay, nhiều người đặt mật ong v&agrave;o ngăn đ&aacute; tủ lạnh, sau 24 giờ m&agrave; kh&ocirc;ng c&oacute; hiện tượng đ&ocirc;ng đ&aacute; th&igrave; l&agrave; mật thật.</p>', 'xvEqmF5uyJ.png', 'active', '2019-05-10 00:00:00', 'normal', 'hailan', 'hailan', '2019-05-14 17:00:00', '2019-05-16 17:00:00'),
(15, 'Nhiều tour mùa hè giảm giá hàng chục triệu đồng', 4, '<p>C&aacute;c tour trong v&agrave; ngo&agrave;i nước đều được giảm gi&aacute; mạnh để k&iacute;ch cầu du lịch trong dịp h&egrave;, nhiều chương tr&igrave;nh khuyến m&atilde;i l&ecirc;n đến h&agrave;ng chục triệu đồng.</p>\r\n\r\n<p>Sau khi so s&aacute;nh tiền v&eacute; m&aacute;y bay, ph&ograve;ng kh&aacute;ch sạn ở Bali để chuẩn bị cho kỳ nghỉ h&egrave; của gia đ&igrave;nh, anh Sơn (ngụ quận 2, TP HCM) quyết định chuyển sang mua tour trọn g&oacute;i v&igrave; tiết kiệm hơn.</p>', 'd2ABCeBzoR.jpeg', 'active', '2019-05-15 00:00:00', 'featured', 'hailan', 'hailan', '2019-05-14 17:00:00', '2019-05-16 17:00:00'),
(16, 'BMW i8 Roadster - xe mui trần dẫn đường ở Formula E', 7, '<p>Dịp cuối tuần qua, BMW giới thiệu chiếc xe dẫn đường, l&agrave;m nhiệm vụ đảm bảo an to&agrave;n tại giải đua xe Formula E. Giải đua tương tự giải F1, nhưng to&agrave;n bộ xe đua sử dụng động cơ điện.</p>\r\n\r\n<p>i8 Roadster Safety Car dựa tr&ecirc;n chiếc i8 Roadster ti&ecirc;u chuẩn, nhưng c&oacute; những thay đổi để trở th&agrave;nh chiếc xe dẫn đường chuy&ecirc;n dụng. Ngoại h&igrave;nh c&oacute; một số đặc điểm ấn tượng hơn so với nguy&ecirc;n bản. K&iacute;nh chắn gi&oacute; kiểu d&agrave;nh cho xe đua, trọng t&acirc;m hạ thấp 15 mm.</p>', '9fbeUKTBpU.png', 'active', '2019-05-10 00:00:00', 'normal', 'hailan', 'hailan', '2019-05-14 17:00:00', '2019-05-16 17:00:00'),
(17, 'Tia cực tím tại Hà Nội ở mức \'nguy hiểm\'', 3, '<p>Chỉ số tia UV tại H&agrave; Nội ng&agrave;y 18-19/5 l&ecirc;n tới 11, mức được đ&aacute;nh gi&aacute; l&agrave; &quot;nguy hiểm&quot; dễ khiến da, mắt bị bỏng nhiệt.</p>\r\n\r\n<p>H&agrave; Nội đang trải qua đợt nắng n&oacute;ng gay gắt. Theo Trung t&acirc;m Dự b&aacute;o Kh&iacute; tượng Thủy văn Quốc gia, nhiệt độ cao nhất ở H&agrave; Nội ng&agrave;y 18/5 dao động trong khoảng 37 đến 39 độ C, c&oacute; nơi tr&ecirc;n 39 độ.&nbsp;Trang&nbsp;<em>World Weather Online</em>&nbsp;của Anh dự b&aacute;o chỉ số tia cực t&iacute;m tại H&agrave; Nội hai ng&agrave;y 18-19/5 đạt mức 11.&nbsp;</p>', 'C4DtP4ico8.png', 'active', '2019-05-16 00:00:00', 'normal', 'hailan', 'hailan', '2019-05-16 17:00:00', '2019-05-16 17:00:00'),
(18, 'Blockchain và trí tuệ nhân tạo AI làm thay đổi giáo dục trực tuyến', 2, '<p>Blockchain khiến dữ liệu trở n&ecirc;n c&ocirc;ng khai, minh bạch với người học, AI gi&uacute;p cải thiện khả năng tương t&aacute;c v&agrave; giảng dạy với từng c&aacute; nh&acirc;n.</p>\r\n\r\n<p>Sự b&ugrave;ng nổ của Internet v&agrave; những c&ocirc;ng nghệ mới như chuỗi khối (Blockchain) v&agrave; tr&iacute; tuệ nh&acirc;n tạo (AI) đ&atilde; g&oacute;p phần l&agrave;m thay đổi nền gi&aacute;o dục tr&ecirc;n to&agrave;n thế giới, h&igrave;nh th&agrave;nh những nền tảng Online Learning với nhiều ưu thế.</p>\r\n\r\n<p><strong>Mobile Learning dự b&aacute;o l&agrave; &quot;Cuộc c&aacute;ch mạng tiếp theo&quot; của gi&aacute;o dục trực tuyến</strong></p>\r\n\r\n<p>Theo nghi&ecirc;n cứu của Global Market Insights, thị trường gi&aacute;o dục trực tuyến to&agrave;n cầu đang c&oacute; tốc độ ph&aacute;t triển nhanh chưa từng thấy khi nền tảng hạ tầng Internet ng&agrave;y c&agrave;ng ho&agrave;n thiện v&agrave; phủ s&oacute;ng rộng khắp. Gi&aacute; trị c&aacute;c start-up về EdTech (C&ocirc;ng ty c&ocirc;ng nghệ chuy&ecirc;n về gi&aacute;o dục) to&agrave;n cầu được ước t&iacute;nh hơn 190 tỷ USD v&agrave;o năm 2018 v&agrave; dự kiến vượt hơn 300 tỷ USD v&agrave;o năm 2025.</p>', 'gCPGos7mhY.png', 'active', '2019-05-16 00:00:00', 'featured', 'hailan', 'hailan', '2019-05-16 17:00:00', '2019-05-16 17:00:00'),
(19, 'Huawei nói lệnh cấm sẽ khiến Mỹ tụt hậu về 5G', 6, '<p>Huawei khẳng định sắc lệnh mới của Mỹ sẽ chỉ c&agrave;ng khiến qu&aacute; tr&igrave;nh triển khai c&ocirc;ng nghệ 5G ở nước n&agrave;y th&ecirc;m chậm chạp v&agrave; đắt đỏ.</p>\r\n\r\n<p>H&atilde;ng c&ocirc;ng nghệ Trung Quốc tự nhận l&agrave; &quot;người dẫn đầu kh&ocirc;ng ai s&aacute;nh kịp về c&ocirc;ng nghệ 5G&quot;, n&ecirc;n việc bị hạn chế kinh doanh ở Mỹ chỉ dẫn đến kết cục l&agrave; Mỹ sẽ bị &quot;tụt lại ph&iacute;a sau&quot; trong việc triển khai c&ocirc;ng nghệ kết nối di động thế hệ mới</p>', 'nt1QxhKUXM.jpeg', 'inactive', '2019-05-16 00:00:00', 'featured', 'hailan', '', '2019-05-16 17:00:00', NULL),
(20, 'Asus ra mắt Zenfone 6 với camera lật tự động', 6, '<p>Với thiết kế m&agrave;n h&igrave;nh tr&agrave;n viền ho&agrave;n to&agrave;n kh&ocirc;ng tai thỏ, camera ch&iacute;nh 48 megapixel tr&ecirc;n Zenfone 6 c&oacute; thể lật từ sau ra trước biến th&agrave;nh camera selfie.</p>\r\n\r\n<p>Zenfone 6 l&agrave; một trong những smartphone c&oacute; viền m&agrave;n h&igrave;nh mỏng nhất tr&ecirc;n thị trường với tỷ lệ m&agrave;n h&igrave;nh hiển thị chiếm tới 92% diện t&iacute;ch mặt trước. M&aacute;y c&oacute; m&agrave;n h&igrave;nh 6,4 inch tr&agrave;n viền ra cả bốn cạnh, kh&ocirc;ng tai thỏ như một số mẫu Zenfone trước v&agrave; cũng kh&ocirc;ng d&ugrave;ng thiết kế đục lỗ như Galaxy S10, S10+</p>', 'aiC6j6fWZY.png', 'inactive', '2019-05-16 00:00:00', 'normal', 'hailan', '', '2019-05-16 17:00:00', NULL);

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
(1, 'Root', 'active', 'no', NULL, NULL, NULL, NULL, '2022-08-10 23:30:54', 1, 32, NULL),
(2, 'Thể thao', 'active', 'yes', 'list', 'admin', 'hailan', '2019-05-03 17:00:00', '2022-08-14 23:24:14', 2, 3, 1),
(3, 'Giáo dục', 'active', 'yes', 'grid', 'admin', 'hailan', '2019-05-03 17:00:00', '2022-08-11 01:04:56', 4, 9, 1),
(4, 'Sức khỏe', 'inactive', 'no', 'list', 'admin', 'hailan', '2019-05-03 17:00:00', '2019-05-15 08:04:33', 10, 11, 1),
(5, 'Du lịch', 'inactive', 'no', 'grid', 'admin', 'hailan', '2019-05-03 17:00:00', '2022-08-10 09:43:46', 12, 13, 1),
(6, 'Khoa học', 'active', 'no', 'list', 'admin', 'hailan', '2019-05-03 17:00:00', '2022-08-10 23:30:54', 14, 21, 1),
(7, 'Số hóa', 'active', 'no', 'grid', 'admin', 'hailan', '2019-05-03 17:00:00', '2022-08-11 01:30:45', 26, 29, 1),
(8, 'Xe - Ô tô', 'active', 'no', 'list', 'admin', 'hailan', '2019-05-03 17:00:00', '2022-08-10 23:30:54', 22, 23, 1),
(9, 'Kinh doanh', 'active', 'no', 'list', 'hailan', 'hailan', '2019-05-11 17:00:00', '2022-08-11 01:31:18', 30, 31, 1),
(28, 'tin 1-1', 'inactive', NULL, NULL, 'hailan', 'hailan', '2022-08-10 17:00:00', '2022-08-10 23:21:39', 27, 28, 7),
(29, 'tin - root', 'active', NULL, NULL, 'hailan', 'hailan', '2022-08-10 17:00:00', '2022-08-11 00:34:47', 24, 25, 1),
(32, 'tin gd 1', 'inactive', NULL, NULL, 'hailan', NULL, '2022-08-10 17:00:00', '2022-08-11 01:14:53', 5, 6, 3),
(33, 'Tin gd 2', 'inactive', NULL, NULL, 'hailan', NULL, '2022-08-10 17:00:00', '2022-08-11 01:15:13', 7, 8, 3),
(34, 'Khoa học _1', 'inactive', NULL, NULL, 'hailan', NULL, '2022-08-10 17:00:00', '2022-08-11 01:32:05', 15, 20, 6),
(35, 'Khoa học _1_1', 'inactive', NULL, NULL, 'hailan', NULL, '2022-08-10 17:00:00', '2022-08-11 01:32:24', 16, 17, 34),
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
(46, '2022_08_09_142645_edit_categories_table', 14);

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
(3, 'Ưu đãi học phí', 'Tổng hợp các trương trình ưu đãi học phí hàng tuần, hàng tháng đến tất các các bạn với các mức giảm đặc biệt 50%, 70%,..', 'https://zendvn.com/uu-dai-hoc-phi-tai-zendvn/', 'LWi6hINpXz.jpeg', 'active', 'hailan', 'hailan', '2019-04-23 17:00:00', '2021-07-09 17:00:00');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

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
