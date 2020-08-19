-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 13, 2019 lúc 02:59 SA
-- Phiên bản máy phục vụ: 5.7.14
-- Phiên bản PHP: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `haimivn4_cre8tion`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `location` varchar(150) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `name`, `image_link`, `link`, `location`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(4, 'DUO GEL & LACQUER', '2Dwy2_Duo-01_ff236284-1ef3-4284-ae39-cfcb07fa46fc.jpg', NULL, '1', 1, NULL, '2019-04-04 09:17:09', '2019-04-04 02:17:09'),
(3, 'DUO COLLECTION 288 COLORS', 'amxoG_duo-06_500x.jpg', 'http://cre8tion.vn/18-soaf-of-gel/Super-Cat-Eye.html', '1', 1, NULL, '2019-02-25 04:50:49', '2019-02-25 04:50:49'),
(5, 'NAIL LACQUER', 'Qfhn5_FullLine_Duo_500x.jpg', NULL, '1', 1, NULL, '2019-02-25 04:49:54', '2019-02-25 04:49:54'),
(6, 'DIP POWDER', 'WysuV_RusticCollection_FullLine.jpg', NULL, '1', 1, NULL, '2019-02-25 04:49:18', '2019-02-25 04:49:18'),
(11, 'Cat Eye Glaze', 'G9g9U_Logo_CAT_EYE_GLAZE_Trans.png', NULL, '4', 1, NULL, '2018-08-26 23:36:07', '2018-08-26 23:36:07'),
(12, 'Glow In The Dark', 'nSTUB_Logo_Glow_in_Dark.png', NULL, '4', 1, NULL, '2018-08-26 23:36:24', '2018-08-26 23:36:24'),
(13, 'mood changing', 'jBd9W_Logo_Mood_Changing_Trans.png', NULL, '4', 1, NULL, '2018-08-26 23:36:43', '2018-08-26 23:36:43'),
(14, 'Platinum', '0DfSy_Logo_PLATINUM.png', NULL, '4', 1, NULL, '2018-08-26 23:36:54', '2018-08-26 23:36:54'),
(15, 'Stone', 'e4cwH_Logo_STONE_Trans.png', NULL, '4', 1, NULL, '2018-08-26 23:37:08', '2018-08-26 23:37:08'),
(16, 'Seashell', 'abFyk_seasheel.png', NULL, '4', 1, NULL, '2018-10-01 20:18:32', '2018-10-01 20:18:32'),
(17, 'Marble Effect', 'g7SCh_marbleeffect.png', NULL, '4', 1, NULL, '2018-10-01 20:19:17', '2018-10-01 20:19:17'),
(18, 'Candy Shop', 'kMjd9_candyshop.png', NULL, '4', 1, NULL, '2018-10-01 20:19:45', '2018-10-01 20:19:45'),
(19, 'Signature Designer', 'ulyNp_signature+designer+gel.png', NULL, '4', 1, NULL, '2018-10-01 20:20:44', '2018-10-01 20:20:44'),
(20, 'slide 11', 'GtNhB_banner4.jpg', 'dsad', 'pagetop', 1, 3123, '2019-04-01 23:45:54', '2019-04-01 23:45:54'),
(21, 'slide 11', 'ABIXJ_banner3.jpg', 'dsad', 'pagetop', 1, 3123, '2019-04-02 09:48:18', '2019-04-02 02:48:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `date_order` date NOT NULL,
  `total` varchar(255) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `payment`, `note`, `created_at`, `updated_at`) VALUES
(48, 56, '2018-12-15', '250.000', 'COD', NULL, '2018-12-14 21:10:01', '2018-12-14 21:10:01'),
(47, 55, '2018-12-15', '250.000', 'COD', NULL, '2018-12-14 20:35:08', '2018-12-14 20:35:08'),
(46, 54, '2018-12-15', '750.000', 'COD', NULL, '2018-12-14 20:34:02', '2018-12-14 20:34:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_bill` int(11) NOT NULL,
  `id_product` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `item_code` varchar(100) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `totalprice` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `product_name`, `item_code`, `quantity`, `price`, `totalprice`, `created_at`, `updated_at`) VALUES
(49, 48, '43b65ba74d9272d45a318ef9a5a4657f', 'Seashell Soak Off Gel .5oz SS06', '0916-0760', 1, 250000, '250000', '2018-12-14 21:10:01', '2018-12-14 21:10:01'),
(48, 47, 'e470ca4a75b07da86205f5f03feb1d7a', 'Seashell Soak Off Gel .5oz SS01', '0916-0755', 1, 250000, '250000', '2018-12-14 20:35:08', '2018-12-14 20:35:08'),
(47, 46, 'e470ca4a75b07da86205f5f03feb1d7a', 'Seashell Soak Off Gel .5oz SS01', '0916-0755', 2, 250000, '500000', '2018-12-14 20:34:02', '2018-12-14 20:34:02'),
(46, 46, '2cba54bb2f3cb8488f2ebe2fa5c1407b', 'Seashell Soak Off Gel .5oz SS02', '0916-0756', 1, 250000, '250000', '2018-12-14 20:34:02', '2018-12-14 20:34:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `keyword` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `sort_order`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(17, 'Soaf Of Gel', 'soaf-of-gel', 1, 2, 'cre8tion, gel, Soaf Of Gel', 'Soaf Of Gel', '2019-04-05 09:21:18', '2019-04-05 02:21:18'),
(19, 'Nail Art', 'nail-art', 1, 4, 'Nail Art', 'Nail Art', '2018-12-14 09:05:50', '2018-12-14 02:05:50'),
(18, 'Dipping Powder', 'dipping-powder', 1, 3, 'cre8tion, dipping powders', 'cre8tion, dipping powders', '2018-12-14 09:05:39', '2018-12-14 02:05:39'),
(20, 'Nail Machines', 'nail-machines', 1, 5, 'Nail Machines', 'Nail Machines', '2018-12-14 09:05:56', '2018-12-14 02:05:56'),
(21, 'Categories', 'categories', 1, 1, 'cre8tion', 'cre8tion', '2019-02-26 07:06:11', '2019-02-26 07:06:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `company` varchar(150) NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `hotline` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `content` varchar(500) NOT NULL,
  `keyword` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `fanpage` text NOT NULL,
  `boxchat` text NOT NULL,
  `address` varchar(250) NOT NULL,
  `gpdk` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`id`, `title`, `company`, `logo`, `favicon`, `hotline`, `phone`, `email`, `content`, `keyword`, `description`, `fanpage`, `boxchat`, `address`, `gpdk`, `created_at`, `updated_at`) VALUES
(1, 'Cre8tion Sản phẩm nails| Sơn gel| Đèn led nail| | Đèn UV 111', 'CÔNG TY TNHH MTV QUỐC TẾ HẢI MI', 'RcamJ_favicon.ico', 'onQXv_ZmTgi_favicon.ico', '028.3515 6082', '028.3515 6082', 'pvcuong.haimi@gmail.com', 'cre8tion,sơn móng,gel,sơn móng tay, son mong tay, vsx móng, ve mong', 'cre8tion, sản phẩm nails, Sơn gel,Sơn móng tay, móng bột, dap bot,Gel cứng,Đèn led nail, den led nail,Đèn UV', 'cre8tion, sản phẩm nails, Sơn gel, son gel,Sơn móng tay, son mong tay, Đắp bột, móng bột, dap bot, mong bot,Gel cứng,Đèn led nail, den led nail,Đèn UV, den UV', '<p>\r\n	<iframe allow="encrypted-media" allowtransparency="true" frameborder="0" height="250" scrolling="no" src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fcre8tionvietnam%2F&amp;tabs=timeline&amp;width=340&amp;height=250&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId" style="border:none;overflow:hidden" width="340"></iframe></p>', '<div>\r\n	<style type="text/css">\r\n</div>\r\n<div>\r\n	.fb-livechat, .fb-widget{display: none}.ctrlq.fb-button, .ctrlq.fb-close{position: fixed; right: 24px; cursor: pointer}.ctrlq.fb-button{z-index: 999; background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/PjwhRE9DVFlQRSBzdmcgIFBVQkxJQyAnLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4nICAnaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkJz48c3ZnIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDEyOCAxMjgiIGhlaWdodD0iMTI4cHgiIGlkPSJMYXllcl8xIiB2ZXJzaW9uPSIxLjEiIHZpZXdCb3g9IjAgMCAxMjggMTI4IiB3aWR0aD0iMTI4cHgiIHhtbDpzcGFjZT0icHJlc2VydmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPjxnPjxyZWN0IGZpbGw9IiMwMDg0RkYiIGhlaWdodD0iMTI4IiB3aWR0aD0iMTI4Ii8+PC9nPjxwYXRoIGQ9Ik02NCwxNy41MzFjLTI1LjQwNSwwLTQ2LDE5LjI1OS00Niw0My4wMTVjMCwxMy41MTUsNi42NjUsMjUuNTc0LDE3LjA4OSwzMy40NnYxNi40NjIgIGwxNS42OTgtOC43MDdjNC4xODYsMS4xNzEsOC42MjEsMS44LDEzLjIxMywxLjhjMjUuNDA1LDAsNDYtMTkuMjU4LDQ2LTQzLjAxNUMxMTAsMzYuNzksODkuNDA1LDE3LjUzMSw2NCwxNy41MzF6IE02OC44NDUsNzUuMjE0ICBMNTYuOTQ3LDYyLjg1NUwzNC4wMzUsNzUuNTI0bDI1LjEyLTI2LjY1N2wxMS44OTgsMTIuMzU5bDIyLjkxLTEyLjY3TDY4Ljg0NSw3NS4yMTR6IiBmaWxsPSIjRkZGRkZGIiBpZD0iQnViYmxlX1NoYXBlIi8+PC9zdmc+) center no-repeat #0084ff; width: 60px; height: 60px; text-align: center; bottom: 30px; border: 0; outline: 0; border-radius: 60px; -webkit-border-radius: 60px; -moz-border-radius: 60px; -ms-border-radius: 60px; -o-border-radius: 60px; box-shadow: 0 1px 6px rgba(0, 0, 0, .06), 0 2px 32px rgba(0, 0, 0, .16); -webkit-transition: box-shadow .2s ease; background-size: 80%; transition: all .2s ease-in-out}.ctrlq.fb-button:focus, .ctrlq.fb-button:hover{transform: scale(1.1); box-shadow: 0 2px 8px rgba(0, 0, 0, .09), 0 4px 40px rgba(0, 0, 0, .24)}.fb-widget{background: #fff; z-index: 1000; position: fixed; width: 360px; height: 435px; overflow: hidden; opacity: 0; bottom: 0; right: 24px; border-radius: 6px; -o-border-radius: 6px; -webkit-border-radius: 6px; box-shadow: 0 5px 40px rgba(0, 0, 0, .16); -webkit-box-shadow: 0 5px 40px rgba(0, 0, 0, .16); -moz-box-shadow: 0 5px 40px rgba(0, 0, 0, .16); -o-box-shadow: 0 5px 40px rgba(0, 0, 0, .16)}.fb-credit{text-align: center; margin-top: 8px}.fb-credit a{transition: none; color: #bec2c9; font-family: Helvetica, Arial, sans-serif; font-size: 12px; text-decoration: none; border: 0; font-weight: 400}.ctrlq.fb-overlay{z-index: 0; position: fixed; height: 100vh; width: 100vw; -webkit-transition: opacity .4s, visibility .4s; transition: opacity .4s, visibility .4s; top: 0; left: 0; background: rgba(0, 0, 0, .05); display: none}.ctrlq.fb-close{z-index: 4; padding: 0 6px; background: #365899; font-weight: 700; font-size: 11px; color: #fff; margin: 8px; border-radius: 3px}.ctrlq.fb-close::after{content: "X"; font-family: sans-serif}.bubble{width: 20px; height: 20px; background: #c00; color: #fff; position: absolute; z-index: 999999999; text-align: center; vertical-align: middle; top: -2px; left: -5px; border-radius: 50%;}.bubble-msg{width: 120px; left: -140px; top: 5px; position: relative; background: rgba(59, 89, 152, .8); color: #fff; padding: 5px 8px; border-radius: 8px; text-align: center; font-size: 13px;}	</style>\r\n</div>\r\n<div>\r\n	<div class="fb-livechat">\r\n		&nbsp;</div>\r\n	<div>\r\n		<div class="ctrlq fb-overlay">\r\n			&nbsp;</div>\r\n	</div>\r\n	<div>\r\n		<div class="fb-widget">\r\n			&nbsp;</div>\r\n		<div>\r\n			<div class="ctrlq fb-close">\r\n				&nbsp;</div>\r\n		</div>\r\n		<div>\r\n			<div class="fb-page" data-height="400" data-hide-cover="true" data-href="https://www.facebook.com/cre8tionvietnam" data-show-facepile="false" data-small-header="true" data-tabs="messages" data-width="360">\r\n				&nbsp;</div>\r\n		</div>\r\n		<div>\r\n			<div class="fb-credit">\r\n				&nbsp;</div>\r\n		</div>\r\n		<div>\r\n			<div id="fb-root">\r\n				&nbsp;</div>\r\n		</div>\r\n		<div>\r\n			&nbsp;</div>\r\n	</div>\r\n	<div>\r\n		<a class="ctrlq fb-button" href="https://m.me/cre8tionvietna" title="Gửi tin nhắn cho chúng tôi qua Facebook">&nbsp;</a></div>\r\n	<a class="ctrlq fb-button" href="https://m.me/cre8tionvietna" title="Gửi tin nhắn cho chúng tôi qua Facebook"> </a>\r\n	<div>\r\n		<div class="bubble">\r\n			<a class="ctrlq fb-button" href="https://m.me/cre8tionvietna" title="Gửi tin nhắn cho chúng tôi qua Facebook">1</a></div>\r\n	</div>\r\n	<div>\r\n		<div class="bubble-msg">\r\n			<a class="ctrlq fb-button" href="https://m.me/cre8tionvietna" title="Gửi tin nhắn cho chúng tôi qua Facebook">Bạn cần hỗ trợ?</a></div>\r\n	</div>\r\n	<div>\r\n		<a class="ctrlq fb-button" href="https://m.me/cre8tionvietna" title="Gửi tin nhắn cho chúng tôi qua Facebook"> </a></div>\r\n</div>\r\n<div>\r\n	<script src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.9"></script></div>\r\n<div>\r\n	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script></div>\r\n<div>\r\n	<script></div>\r\n<div>\r\n	$(document).ready(function()</div>\r\n<div>\r\n	{function detectmob()</div>\r\n<div>\r\n	{if( navigator.userAgent.match(/Android/i) || navigator.userAgent.match(/webOS/i) || navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i) || navigator.userAgent.match(/iPod/i) || navigator.userAgent.match(/BlackBerry/i) || navigator.userAgent.match(/Windows Phone/i) ){return true;}else{return false;}}var t={delay: 125, overlay: $(".fb-overlay"), widget: $(".fb-widget"), button: $(".fb-button")}; setTimeout(function(){$("div.fb-livechat").fadeIn()}, 8 * t.delay); if(!detectmob()){$(".ctrlq").on("click", function(e){e.preventDefault(), t.overlay.is(":visible") ? (t.overlay.fadeOut(t.delay), t.widget.stop().animate({bottom: 0, opacity: 0}, 2 * t.delay, function(){$(this).hide("slow"), t.button.show()})) : t.button.fadeOut("medium", function(){t.widget.stop().show().animate({bottom: "30px", opacity: 1}, 2 * t.delay), t.overlay.fadeIn(t.delay)})})}});</script></div>', '1A Nguyễn Văn Đậu, P. 5, Q. Phú Nhuận, TP. HCM', 'GPKD số 0312642242 cấp ngày 06/02/2014 bởi Sở Kế hoạch và Đầu tư TP.HCM', '2019-03-29 04:25:18', '2019-03-31 21:30:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` int(20) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Phan cuong', 'pvcuong.haimi@gmail.com', 1644131806, 'aaaaa', '2018-12-20 20:43:02', '2018-12-20 20:43:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `note` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(56, 'Phan cuong', NULL, 'pvcuong.haimi@gmail.com', 'TPHCM', '1644131806', NULL, '2018-12-14 21:10:01', '2018-12-14 21:10:01'),
(55, 'Phan cuong', NULL, 'pvcuong.haimi@gmail.com', 'TPHCM', '1644131806', NULL, '2018-12-14 20:35:08', '2018-12-14 20:35:08'),
(54, 'Phan cuong', NULL, 'pvcuong.haimi@gmail.com', 'TPHCM', '1644131806', NULL, '2018-12-14 20:34:02', '2018-12-14 20:34:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `title_vi` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `content_vi` text,
  `content_en` text,
  `page` varchar(100) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_desc` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `info`
--

INSERT INTO `info` (`id`, `title_vi`, `title_en`, `content_vi`, `content_en`, `page`, `meta_key`, `meta_desc`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Giới Thiệu', 'About', '<p>\r\n	Cre8tion l&agrave; thương hiệu được đăng k&yacute; quốc tế cho c&aacute;c sản phẩm l&agrave;m đẹp v&agrave; l&agrave;m m&oacute;ng chuy&ecirc;n nghiệp. Từ năm 2005, Cre8tion đ&atilde; tập trung v&agrave;o việc x&acirc;y dựng niềm tin với kh&aacute;ch h&agrave;ng th&ocirc;ng qua chất lượng đ&aacute;ng tin cậy v&agrave; dịch vụ hỗ trợ kh&aacute;ch h&agrave;ng đ&aacute;ng 1 c&aacute;ch đ&aacute;ng tin cậy.</p>\r\n<p>\r\n	V&agrave;o năm 2018, ch&uacute;ng t&ocirc;i sẽ tiếp tục ch&agrave;o đ&oacute;n nhiều sản phẩm hơn trong d&ograve;ng sản phẩm của ch&uacute;ng t&ocirc;i dựa tr&ecirc;n y&ecirc;u cầu của kh&aacute;ch h&agrave;ng v&agrave; nhu cầu của ng&agrave;nh.</p>\r\n<p>\r\n	Để Kh&ocirc;ng bao giờ bỏ lỡ th&ocirc;ng b&aacute;o của ch&uacute;ng t&ocirc;i - h&atilde;y theo d&otilde;i ch&uacute;ng t&ocirc;i tr&ecirc;n phương tiện truyền th&ocirc;ng x&atilde; hội v&agrave; giữ li&ecirc;n lạc với đại diện b&aacute;n h&agrave;ng địa phương của bạn để t&igrave;m c&aacute;c sản phẩm Cre8tion mới nhất!</p>\r\n<p>\r\n	&nbsp;</p>', '<p>\r\n	Cre8tion is an international registered brand for professional nail and beauty products. Since 2005, Cre8tion has focused on building confidence with our customers through reliable quality and dependable customer service and support.</p>\r\n<p>\r\n	In 2018, we will continue welcoming more products into our line up based on customer requests and industry demand.</p>\r\n<p>\r\n	Never miss our announcements - follow us on social media and keep in touch with your local sales representative to find the newest Cre8tion products!</p>\r\n<p style="font-family: &quot;Helvetica Neue&quot;, Arial, sans-serif; line-height: 1.8em; font-size: 14px; margin: 0px 0px 1.8em; overflow-wrap: break-word; color: rgb(92, 92, 92);">\r\n	&nbsp;</p>', 'gioithieu', NULL, NULL, 1, '2018-10-04 02:56:56', '2018-10-03 19:56:56'),
(2, 'Chính sách bảo mật', 'update', '<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	<strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top;">Mục đ&iacute;ch v&agrave; phạm vi thu thập</strong></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 0px 30px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	C&ocirc;ng ty chung t&ocirc;i cần kh&aacute;ch h&agrave;ng cũng cấp c&aacute;c th&ocirc;ng tin về họ t&ecirc;n, điện thoại, emali, địa chỉ. C&aacute;c th&ocirc;ng tin n&agrave;y chung t&ocirc;i d&ugrave;ng đ&ecirc; li&ecirc;n hệ khi giao h&agrave;ng v&agrave; hổ trợ kh&aacute;ch h&agrave;ng khi c&oacute; y&ecirc;u cầu.</p>\r\n<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	<strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top;">Phạm vi sử dụng th&ocirc;ng tin</strong></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 0px 30px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	Chung t&ocirc;i sử dụng nhưng th&ocirc;ng tin kh&aacute;ch h&agrave;ng cung cấp&nbsp;để li&ecirc;n lạc, gởi&nbsp;thư ngỏ,&nbsp;đơn đặt h&agrave;ng, thư cảm ơn, th&ocirc;ng tin về chương&nbsp;tr&igrave;nh khuyến m&atilde;i v&agrave; h&agrave;ng mới về...</p>\r\n<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	<strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top;">Thời gian lưu trữ th&ocirc;ng tin</strong></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 0px 30px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	Th&ocirc;ng tin của kh&aacute;ch hang sẻ&nbsp;được lưu trữ tr&ecirc;n server của c&ocirc;ng ty,&nbsp;cho&nbsp;đ&ecirc;n khi kh&aacute;ch h&agrave;ng&nbsp;c&oacute; y&ecirc;u cầu huỷ bỏ.</p>\r\n<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	<strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top;">Phương tiện v&agrave; c&ocirc;ng cụ&nbsp;để người d&ugrave;ng tiếp cận v&agrave; chỉnh sữa dữ&nbsp;liệu c&aacute; nh&acirc;n của m&igrave;nh</strong></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 0px 30px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	Khi kh&aacute;ch h&agrave;ng muốn cập nhật hoạc huỷ bỏ th&ocirc;ng tin c&aacute; nh&acirc;n th&igrave; c&oacute; thể y&ecirc;u c&acirc;u quản trị vi&ecirc;n&nbsp;thực hi&ecirc;n việc n&agrave;y.</p>\r\n<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	<strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top;">Bảo mật th&ocirc;ng tin</strong></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 0px 30px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	Ch&uacute;ng t&ocirc;i sẽ kh&ocirc;ng bao giờ b&aacute;n, tiết lộ, chia sẻ th&ocirc;ng tin của bạn trong bất cứ trường hợp n&agrave;o.</p>\r\n<p style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	<strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top;">Mọi thắc mắc Qu&yacute; Kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ trực tiếp tới số&nbsp;</strong><strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top;">028.3515 6082</strong></p>\r\n<p align="center" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	<strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top;">C&Ocirc;NG TY TNHH MTV QUỐC TẾ HẢI MI</strong></p>\r\n<p align="center" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	<strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top;">Địa chỉ:&nbsp;</strong>1A Nguyễn Văn Đậu, P. 5, Q. Ph&uacute; Nhuận,&nbsp;TP. HCM<br style="box-sizing: border-box; margin: 0px; padding: 0px; border: none;" />\r\n	<strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top;">Email:&nbsp;</strong><a href="mailto:haimivietnam@gmail.com" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; color: rgb(102, 102, 102); text-decoration-line: none; font-weight: inherit; vertical-align: top; outline: none !important;">haimivietnam@gmail.com</a><br style="box-sizing: border-box; margin: 0px; padding: 0px; border: none;" />\r\n	<strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top;">Hotline:&nbsp;</strong><strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top;">028.3515 6082</strong></p>', '<p>\r\n	Updating ...</p>', 'chinhsachbaomat', NULL, NULL, 1, '2018-09-03 20:25:25', '2018-09-03 20:25:25'),
(3, 'Chính sách mua hàng', 'update', '<p style="box-sizing: border-box; margin: 0px 0px 0px 30px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	<strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top;">Ch&iacute;nh s&aacute;ch bảo h&agrave;nh</strong></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 0px 60px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	Bảo h&agrave;nh 1 th&aacute;ng đời với c&aacute;c loại nước sơn.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 0px 60px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	Bảo h&agrave;nh 6 th&aacute;ng với&nbsp;đền Cre8tion.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 0px 60px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	Bảo h&agrave;nh 12 th&aacute;ng với đ&egrave;n gelish.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 0px 30px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	<strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top;">Ch&iacute;nh s&aacute;ch đổi trả hang</strong></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 0px 60px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	Đổi h&agrave;ng khi giao nhầm&nbsp;sản phẩm.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 0px 60px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	Đổi h&agrave;ng do lỗi từ nh&agrave; sản xuất.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 0px 30px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	<strong style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top;">Ch&iacute;nh s&aacute;ch vận chuyển</strong></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 0px 60px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	Miễn ph&iacute; giao h&agrave;ng với c&aacute;c đơn hang c&oacute; gi&aacute; trị tr&ecirc;n 2 Triệu</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 0px 60px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	Thời gian giao h&agrave;ng</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 0px 60px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	Giao h&agrave;ng từ 1 &ndash; 2 ng&agrave;y đối với c&aacute;c đơn hang tại Tp HCM</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 0px 60px; padding: 0px; border: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; outline: 0px; vertical-align: top; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;">\r\n	Giao h&agrave;ng từ 2 &ndash; 3 ng&agrave;y đối với c&aacute;c đơn h&agrave;ng tỉnh</p>', '<p>\r\n	updating ...</p>', 'chinhsachmuahang', NULL, NULL, 1, '2018-09-03 20:31:13', '2018-09-03 20:31:13'),
(4, 'Liên hệ', 'Contact', '<p>\r\n	Đang cập nhật ...</p>', '<p>\r\n	Updating ...</p>', 'liênhe', NULL, NULL, 1, '2018-09-03 20:32:49', '2018-09-03 20:32:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_ressts`
--

CREATE TABLE `password_ressts` (
  `email` varchar(150) NOT NULL,
  `token` int(255) NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `item_code` varchar(25) DEFAULT NULL,
  `id_type` int(11) DEFAULT NULL,
  `detail` text,
  `image_link` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount_price` float DEFAULT NULL,
  `keyword` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `alias`, `item_code`, `id_type`, `detail`, `image_link`, `price`, `discount_price`, `keyword`, `description`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(25, 'Stone - ST09', 'stone-st09', '0916-0735', 15, NULL, 'YsBgk_ST09_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:23:14', '2018-10-29 19:26:58'),
(24, 'Stone - ST08', 'stone-st08', '0916-0734', 15, NULL, 'ftKfy_ST08_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:23:01', '2018-10-29 19:38:20'),
(23, 'Stone - ST07', 'stone-st07', '0916-0733', 15, NULL, '22N4j_ST07_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:22:45', '2018-10-29 19:38:25'),
(22, 'Stone - ST06', 'stone-st06', '0916-0732', 15, NULL, 'yVk88_ST06_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:22:26', '2018-10-29 19:38:30'),
(21, 'Stone - ST05', 'stone-st05', '0916-0731', 15, NULL, 'sXcl2_ST05_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:22:09', '2018-10-29 19:38:36'),
(20, 'Stone - ST04', 'stone-st04', '0916-0730', 15, NULL, 'EtOkQ_ST04_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:21:56', '2018-10-29 19:38:41'),
(19, 'Stone - ST03', 'stone-st03', '0916-0729', 15, NULL, 'EEhog_ST03_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:21:40', '2018-10-29 19:38:52'),
(18, 'Stone - ST02', 'stone-st02', '0916-0728', 15, NULL, 'Tbjmw_ST02_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:21:23', '2018-10-29 19:38:47'),
(17, 'Stone - ST01', 'stone-st01', '0916-0727\n', 15, NULL, 'BJsB6_ST01_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:21:07', '2018-10-29 19:39:04'),
(26, 'Stone - ST10', 'stone-st10', '0916-0736', 15, NULL, 'Nq6x2_ST10_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:23:28', '2018-10-29 19:39:11'),
(27, 'Stone - ST11', 'stone-st11', '0916-0737', 15, NULL, 'JcYIk_ST11_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:23:54', '2018-10-29 19:39:19'),
(28, 'Stone - ST12', 'stone-st12', '0916-0738', 15, NULL, 'T6cTl_ST12_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:24:08', '2018-10-29 19:38:59'),
(29, 'Holographic .5oz HG01', 'holographic-5oz-hg01', '0916-0583', 16, NULL, 'GI4a5_HG01_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:25:57', '2018-10-29 19:40:31'),
(30, 'Holographic .5oz HG02', 'holographic-5oz-hg02', '0916-0584', 16, NULL, 'nLv81_HG02_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:26:11', '2018-10-29 19:40:39'),
(31, 'Holographic .5oz HG03', 'holographic-5oz-hg03', '0916-0585', 16, NULL, 'Y97oV_HG03_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:26:24', '2018-10-29 19:40:44'),
(32, 'Holographic .5oz HG04', 'holographic-5oz-hg04', '0916-0586', 16, NULL, 'Lyk2W_HG04_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:26:42', '2018-10-29 19:40:51'),
(33, 'Holographic .5oz HG05', 'holographic-5oz-hg05', '0916-0587', 16, NULL, 'YjIBI_HG05_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:29:44', '2018-10-29 19:40:57'),
(34, 'Holographic .5oz HG06', 'holographic-5oz-hg06', '0916-0588', 16, NULL, 'NjRAb_HG06_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:30:06', '2018-10-29 19:41:15'),
(35, 'Holographic .5oz HG07', 'holographic-5oz-hg07', '0916-0589', 16, NULL, 'hXgmh_HG07_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:30:24', '2018-10-29 19:41:08'),
(36, 'Holographic .5oz HG08', 'holographic-5oz-hg08', '0916-0590', 16, NULL, '1mLcV_HG08_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:30:43', '2018-10-29 19:41:02'),
(37, 'Holographic .5oz HG09', 'holographic-5oz-hg09', '0916-0591', 16, NULL, 'olFRl_HG09_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:30:59', '2018-12-07 20:50:10'),
(38, 'Holographic .5oz HG10', 'holographic-5oz-hg10', '0916-0592', 16, NULL, 'vdc22_HG10_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:31:15', '2018-12-07 20:50:22'),
(39, 'Holographic .5oz HG11', 'holographic-5oz-hg11', '0916-0593', 16, NULL, 'IR2im_HG11_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:31:35', '2018-12-07 20:50:38'),
(40, 'Holographic .5oz HG12', 'holographic-5oz-hg12', '0916-0594', 16, NULL, '2c8X5_HG12_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:32:20', '2018-12-07 20:50:48'),
(41, 'Fur - F01', 'fur-f01', '0916-0438', 17, NULL, 'LzUjf_F01.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:34:54', '2018-12-07 21:33:42'),
(42, 'Fur - F02', 'fur-f02', '0916-0439', 17, NULL, 'z1vYl_F02.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:35:06', '2018-08-21 23:35:06'),
(43, 'Fur - F03', 'fur-f03', '0916-0440', 17, NULL, '1PR4S_F03.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:35:19', '2018-08-21 23:35:19'),
(44, 'Fur - F04', 'fur-f04', '0916-0441', 17, NULL, 'leiWM_F04.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:35:34', '2018-08-21 23:35:34'),
(45, 'Fur - F05', 'fur-f05', '0916-0442', 17, NULL, 'Rg8o8_F05.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:35:44', '2018-08-21 23:35:44'),
(46, 'Fur - F06', 'fur-f06', '0916-0443', 17, NULL, 'ZPVXG_F06.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:35:54', '2018-08-21 23:35:54'),
(47, 'Fur - F07', 'fur-f07', '0916-0444', 17, NULL, 'wNNOq_F07.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:36:04', '2018-08-21 23:36:04'),
(48, 'Fur - F08', 'fur-f08', '0916-0445', 17, NULL, 'hgq36_F08.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:36:16', '2018-08-21 23:36:16'),
(49, 'Fur - F09', 'fur-f09', '0916-0446', 17, NULL, '5kV07_F09.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:36:27', '2018-08-21 23:36:27'),
(50, 'Fur - F10', 'fur-f10', '0916-0447', 17, NULL, 'zGBrS_F10.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:36:39', '2018-08-21 23:36:39'),
(51, 'Fur - F11', 'fur-f11', '0916-0448', 17, NULL, 'EfXQ0_F11.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:36:51', '2018-08-21 23:36:51'),
(52, 'Fur - F12', 'fur-f12', '0916-0449', 17, NULL, 'rhZ0d_F12.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:37:04', '2018-08-21 23:37:04'),
(54, 'Fur - F13', 'fur-f13', '0916-0451', 17, NULL, 'xDv4e_F13.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:37:29', '2018-08-21 23:37:29'),
(55, 'Fur - F14', 'fur-f14', '0916-0452', 17, NULL, 'bbJWT_F14.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:37:41', '2018-08-21 23:37:41'),
(56, 'Fur - F15', 'fur-f15', '0916-0453', 17, NULL, 'Z0nDg_F15.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:37:53', '2018-08-21 23:37:53'),
(57, 'Fur - F16', 'fur-f16', '0916-0454', 17, NULL, 'XTQda_F16.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:38:06', '2018-08-21 23:38:06'),
(58, 'Fur - F17', 'fur-f17', '0916-0455', 17, NULL, 'XHKTG_F17.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:38:21', '2018-08-21 23:38:21'),
(59, 'Fur - F18', 'fur-f18', '0916-0456', 17, NULL, 'Xoqtd_F18.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:38:34', '2018-08-21 23:38:34'),
(60, 'Fur - F19', 'fur-f19', '0916-0457', 17, NULL, 'yVbiu_F19.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:38:46', '2018-08-21 23:38:46'),
(61, 'Fur - F20', 'fur-f20', '0916-0458', 17, NULL, 'Uxqri_F20.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:39:10', '2018-08-21 23:39:10'),
(62, 'Fur - F21', 'fur-f21', '0916-0459', 17, NULL, 'n2WCf_F22.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:40:01', '2018-08-21 23:40:01'),
(63, 'Fur - F22', 'fur-f22', '0916-0460', 17, NULL, 'H6J40_F22.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:40:17', '2018-08-21 23:40:17'),
(64, 'Fur - F23', 'fur-f23', '0916-0461', 17, NULL, '5RDeU_F23.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:40:29', '2018-08-21 23:40:29'),
(65, 'Fur - F24', 'fur-f24', '0916-0462', 17, NULL, '1GfBw_F24.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-21 23:40:40', '2018-08-21 23:40:40'),
(66, 'Super Cat Eye - SC01', 'super-cat-eye-sc01', '0916-1008', 18, 'Super Cat Eye 0.4 oz - SC01', 'SGhyb_SC01_grande.png', 250000, 0, 'Super Cat Eye 0.4 oz - SC01', NULL, 1, NULL, '2018-08-23 23:34:20', '2018-12-07 21:36:53'),
(67, 'Super Cat Eye - SC01', 'super-cat-eye-sc02', '0916-1009', 18, 'Super Cat Eye 0.4 oz - SC02', 'mgqFh_SC02_grande.png', 250000, 0, 'Super Cat Eye 0.4 oz - SC02', 'Super Cat Eye 0.4 oz - SC02', 1, NULL, '2018-08-23 23:36:16', '2018-08-23 23:36:16'),
(68, 'Super Cat Eye - SC03', 'super-cat-eye-sc03', '0916-1010', 18, 'Super Cat Eye 0.4 oz - SC03', 'uW6Mh_SC03_grande.png', 250000, 0, 'Super Cat Eye 0.4 oz - SC03', 'Super Cat Eye 0.4 oz - SC03', 1, NULL, '2018-08-23 23:36:38', '2018-08-23 23:36:38'),
(69, 'Super Cat Eye - SC04', 'super-cat-eye-sc04', '0916-1011\n', 18, 'Super Cat Eye 0.4 oz - SC04', 'g769S_SC04_grande.png', 250000, 0, 'Super Cat Eye 0.4 oz - SC04', 'Super Cat Eye 0.4 oz - SC04', 1, NULL, '2018-08-23 23:37:17', '2018-08-23 23:37:17'),
(70, 'Super Cat Eye - SC05', 'super-cat-eye-sc05', '0916-1012', 18, 'Super Cat Eye 0.4 oz - SC05', 'rcyEp_SC05_grande.png', 250000, 0, 'Super Cat Eye 0.4 oz - SC05', 'Super Cat Eye 0.4 oz - SC05', 1, NULL, '2018-08-23 23:37:48', '2018-08-23 23:37:48'),
(71, 'Super Cat Eye - SC06', 'super-cat-eye-sc06', '0916-1013', 18, 'Super Cat Eye 0.4 oz - SC06', 'yEjBs_SC06_grande.png', 250000, 0, 'Super Cat Eye 0.4 oz - SC06', 'Super Cat Eye 0.4 oz - SC06', 1, NULL, '2018-08-23 23:38:11', '2018-08-23 23:38:11'),
(72, 'Cat Eye Chameleon .5 oz. CE01', 'cat-eye-chameleon-5-oz-ce01', '0916-0571', 19, 'Cat Eye Chameleon .5 oz. CE01', 'tYqFr_CE01_large.jpg', 250000, 0, 'Cat Eye Chameleon .5 oz. CE01', NULL, 1, NULL, '2018-08-24 00:33:57', '2018-12-10 02:26:05'),
(73, 'Cat Eye Chameleon .5 oz. CE02', 'cat-eye-chameleon-5-oz-ce02', '0916-0572', 19, NULL, 'PeOXb_CE02_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:34:18', '2018-12-10 02:26:13'),
(74, 'Cat Eye Chameleon .5 oz. CE03', 'cat-eye-chameleon-5-oz-ce03', '0916-0573', 19, NULL, 'AHVMw_CE03.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:34:28', '2018-12-10 02:27:04'),
(75, 'Cat Eye Chameleon .5 oz. CE04', 'cat-eye-chameleon-5-oz-ce04', '0916-0574', 19, NULL, 'VCQ8J_CE04.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:34:38', '2018-12-10 02:27:40'),
(76, 'Cat Eye Chameleon .5 oz. CE05', 'cat-eye-chameleon-5-oz-ce05', '0916-0575', 19, NULL, '5aRLt_CE05.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:34:48', '2018-12-10 02:29:10'),
(77, 'Cat Eye Chameleon .5 oz. CE06', 'cat-eye-chameleon-5-oz-ce06', '0916-0576', 19, NULL, 'wVXww_CE06_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:34:58', '2018-12-10 02:29:48'),
(78, 'Cat Eye Chameleon .5 oz. CE07', 'cat-eye-chameleon-5-oz-ce07', '0916-0577', 19, NULL, 'GyvYC_CE07_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:35:09', '2018-12-10 02:29:45'),
(79, 'Cat Eye Chameleon .5 oz. CE08', 'cat-eye-chameleon-5-oz-ce08', '0916-0578', 19, NULL, 'sqyaz_CE08_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:35:19', '2018-12-10 02:29:43'),
(80, 'Cat Eye Chameleon .5 oz. CE09', 'cat-eye-chameleon-5-oz-ce09', '0916-0579', 19, NULL, '7jUks_CE09_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:35:28', '2018-12-10 02:29:41'),
(81, 'Cat Eye Chameleon .5 oz. CE10', 'cat-eye-chameleon-5-oz-ce10', '0916-0580', 19, NULL, 'sCaH7_CE10_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:35:40', '2018-12-10 02:30:07'),
(82, 'Cat Eye Chameleon .5 oz. CE11', 'cat-eye-chameleon-5-oz-ce11', '0916-0581', 19, NULL, 'vijgz_CE11_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:35:50', '2018-12-10 02:29:35'),
(83, 'Cat Eye Chameleon .5 oz. CE12', 'cat-eye-chameleon-5-oz-ce12', '0916-0582', 19, NULL, 'V3APX_CE12_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:36:07', '2018-12-10 02:29:37'),
(84, 'Cat Eye Glaze Gel .5 oz. CE13', 'cat-eye-glaze-gel-5-oz-ce13', '0916-0462', 19, NULL, 'mgmE4_CE13_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:37:45', '2018-12-10 02:29:39'),
(85, 'Cat Eye Glaze Gel .5 oz. CE14', 'cat-eye-glaze-gel-5-oz-ce14', '0916-0463', 19, NULL, 'IkWgU_CE14_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:37:58', '2018-08-24 00:37:58'),
(86, 'Cat Eye Glaze Gel .5 oz. CE15', 'cat-eye-glaze-gel-5-oz-ce15', '0916-0464', 19, NULL, 'ukhTH_CE15_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:38:12', '2018-08-24 00:38:12'),
(87, 'Cat Eye Glaze Gel .5 oz. CE16', 'cat-eye-glaze-gel-5-oz-ce16', '0916-0465', 19, NULL, 'aLseA_CE16_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:38:29', '2018-08-24 00:38:29'),
(88, 'Cat Eye Glaze Gel .5 oz. CE17', 'cat-eye-glaze-gel-5-oz-ce17', '0916-0466', 19, NULL, 'iIthK_CE17_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:38:42', '2018-08-24 00:38:42'),
(89, 'Cat Eye Glaze Gel .5 oz. CE18', 'cat-eye-glaze-gel-5-oz-ce18', '0916-0467', 19, NULL, '', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:38:53', '2018-08-24 00:38:53'),
(90, 'Cat Eye Glaze Gel .5 oz. CE19', 'cat-eye-glaze-gel-5-oz-ce19', '0916-0468', 19, NULL, 'C1Dz0_CE19_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:39:08', '2018-08-24 00:39:08'),
(91, 'Cat Eye Glaze Gel .5 oz. CE20', 'cat-eye-glaze-gel-5-oz-ce20', '0916-0469', 19, NULL, 'cVCKD_CE20_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:39:22', '2018-08-24 00:39:22'),
(92, 'Cat Eye Glaze Gel .5 oz. CE21', 'cat-eye-glaze-gel-5-oz-ce21', '0916-0470', 19, NULL, '1loBM_CE21_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:39:36', '2018-08-24 00:39:36'),
(93, 'Cat Eye Glaze Gel .5 oz. CE22', 'cat-eye-glaze-gel-5-oz-ce22', '0916-0471', 19, NULL, '73vY7_CE22_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:39:51', '2018-08-24 00:39:51'),
(94, 'Cat Eye Glaze Gel .5 oz. CE23', 'cat-eye-glaze-gel-5-oz-ce23', '0916-0472', 19, NULL, 'GFDX1_CE23_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:40:05', '2018-08-24 00:40:05'),
(95, 'Cat Eye Glaze Gel .5 oz. CE24', 'cat-eye-glaze-gel-5-oz-ce24', '0916-0473', 19, NULL, 'CuWdz_CE24_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:40:18', '2018-08-24 00:40:18'),
(96, 'Cat Eye Jade .5 oz. CE25', 'cat-eye-jade-5-oz-ce25', '0916-0828', 19, NULL, 'KADd3_CE25_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:40:33', '2018-12-10 02:30:33'),
(97, 'Cat Eye Jade .5 oz. CE26', 'cat-eye-Jade -gel-5-oz-ce26', '0916-0829', 19, NULL, 'DKzKL_CE26_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:40:47', '2018-08-24 00:40:47'),
(98, 'Cat Eye Jade .5 oz. CE27', 'cat-eye-Jade -gel-5-oz-ce27', '0916-0830', 19, NULL, '4kHeF_CE27_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:41:01', '2018-08-24 00:41:01'),
(99, 'Cat Eye Jade .5 oz. CE28', 'cat-eye-Jade -gel-5-oz-ce28', '0916-0831', 19, NULL, 'WVtpb_CE28_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:41:16', '2018-08-24 00:41:16'),
(100, 'Cat Eye Jade .5 oz. CE29', 'cat-eye-Jade -gel-5-oz-ce29', '0916-0832', 19, NULL, 'rfdVY_CE29_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:41:30', '2018-08-24 00:41:30'),
(101, 'Cat Eye Jade .5 oz. CE30', 'cat-eye-Jade -gel-5-oz-ce30', '0916-0833', 19, NULL, 'oE070_CE30_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:41:48', '2018-08-24 00:41:48'),
(102, 'Cat Eye Jade .5 oz. CE31', 'cat-eye-Jade -gel-5-oz-ce31', '0916-0834', 19, NULL, 'ZbalU_CE31_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:42:05', '2018-08-24 00:42:05'),
(103, 'Cat Eye Jade .5 oz. CE32', 'cat-eye-Jade -gel-5-oz-ce32', '0916-0835', 19, NULL, 'iHpoD_CE32_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:42:20', '2018-08-24 00:42:20'),
(104, 'Cat Eye Jade .5 oz. CE33', 'cat-eye-Jade -gel-5-oz-ce33', '0916-0836', 19, NULL, 'QpQTT_CE33_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:42:34', '2018-08-24 00:42:34'),
(105, 'Cat Eye Jade .5 oz. CE34', 'cat-eye-Jade -gel-5-oz-ce34', '0916-0837', 19, NULL, 'cSsgy_CE34_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:42:47', '2018-08-24 00:42:47'),
(106, 'Cat Eye Jade .5 oz. CE35', 'cat-eye-Jade -gel-5-oz-ce35', '0916-0838', 19, NULL, 'TgaHo_CE35_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:43:00', '2018-08-24 00:43:00'),
(107, 'Cat Eye Jade .5 oz. CE36', 'cat-eye-glaze-gel-5-oz-ce36', '0916-0839', 19, NULL, 'UuK5T_CE36_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:43:14', '2018-08-24 00:43:14'),
(108, 'Cat Eye Smoke .5 oz. CE37', 'cat-eye-smoke-5-oz-ce37', '0916-1824', 19, NULL, 'C343N_CE37_resize_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:43:27', '2018-12-10 02:30:45'),
(109, 'Cat Eye Smoke .5 oz. CE38', 'cat-eye-smoke-5-oz-ce38', '0916-1825', 19, NULL, 'OCzd6_CE38_resize_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:43:41', '2018-08-24 00:43:41'),
(110, 'Cat Eye Smoke .5 oz. CE39', 'cat-eye-smoke-5-oz-ce39', '0916-1826', 19, NULL, '5T8kL_CE39_resize_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:43:55', '2018-08-24 00:43:55'),
(111, 'Cat Eye Smoke .5 oz. CE40', 'cat-eye-smoke-5-oz-ce40', '0916-1827', 19, NULL, 'MlmMw_CE40_resize_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:44:07', '2018-08-24 00:44:07'),
(112, 'Cat Eye Smoke .5 oz. CE41', 'cat-eye-smoke-5-oz-ce41', '0916-1828', 19, NULL, '2g67Y_CE41_resize_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:44:20', '2018-08-24 00:44:20'),
(113, 'Cat Eye Smoke .5 oz. CE42', 'cat-eye-smoke-5-oz-ce42', '0916-1829', 19, NULL, '7sBrw_CE42_resize_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:44:35', '2018-08-24 00:44:35'),
(114, 'Cat Eye Smoke .5 oz. CE43', 'cat-eye-smoke-5-oz-ce43', '0916-1830', 19, NULL, 'TKyK0_CE43_resize_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:44:51', '2018-08-24 00:44:51'),
(115, 'Cat Eye Smoke .5 oz. CE44', 'cat-eye-smoke-5-oz-ce44', '0916-1831', 19, NULL, 'cd9R5_CE44_resize_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:45:05', '2018-08-24 00:45:05'),
(116, 'Cat Eye Smoke .5 oz. CE45', 'cat-eye-smoke-5-oz-ce45', '0916-1832', 19, NULL, '7vkHU_CE45_resize_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:45:20', '2018-08-24 00:45:20'),
(117, 'Cat Eye Smoke .5 oz. CE46', 'cat-eye-smoke-5-oz-ce46', '0916-1833', 19, NULL, 'dYnr4_CE46_resize_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:45:32', '2018-08-24 00:45:32'),
(118, 'Cat Eye Smoke .5 oz. CE47', 'cat-eye-smoke-5-oz-ce47', '0916-1834', 19, NULL, 'DrOZh_CE47_resize_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:45:45', '2018-08-24 00:45:45'),
(119, 'Cat Eye Smoke .5 oz. CE48', 'cat-eye-smoke-5-oz-ce48', '0916-1835', 19, NULL, 'nNizi_CE48_resize_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:45:58', '2018-08-24 00:45:58'),
(120, 'Glow In The Dark .5 oz - G01', 'glow-in-the-dark-5-oz-g01', '0916-0402', 26, NULL, 'bnbv3_G01_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:48:22', '2018-12-10 02:42:39'),
(121, 'Glow In The Dark .5 oz - G02', 'glow-in-the-dark-5-oz-g02', '0916-0403', 26, NULL, 'mB4d5_G02_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:48:35', '2018-08-24 00:48:35'),
(122, 'Glow In The Dark .5 oz - G03', 'glow-in-the-dark-5-oz-g03', '0916-0404', 26, NULL, 'odMbZ_G03_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:48:49', '2018-08-24 00:48:49'),
(123, 'Glow In The Dark .5 oz - G04', 'glow-in-the-dark-5-oz-g04', '0916-0405', 26, NULL, 'jgAsc_G04_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:49:01', '2018-08-24 00:49:01'),
(124, 'Glow In The Dark .5 oz - G05', 'glow-in-the-dark-5-oz-g05', '0916-0406', 26, NULL, '8lKpP_G05_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:49:14', '2018-08-24 00:49:14'),
(125, 'Glow In The Dark .5 oz - G06', 'glow-in-the-dark-5-oz-g06', '0916-0407', 26, NULL, 'iV3Yu_G06_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:49:27', '2018-08-24 00:49:27'),
(126, 'Glow In The Dark .5 oz - G07', 'glow-in-the-dark-5-oz-g07', '0916-0408', 26, NULL, 'E3sqz_G07_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:49:41', '2018-08-24 00:49:41'),
(127, 'Glow In The Dark .5 oz - G08', 'glow-in-the-dark-5-oz-g08', '0916-0409', 26, NULL, 'Wdt3Q_G08_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:49:54', '2018-08-24 00:49:54'),
(128, 'Glow In The Dark .5 oz - G09', 'glow-in-the-dark-5-oz-g09', '0916-0410', 26, NULL, 'gjuZ5_G09_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:50:09', '2018-08-24 00:50:09'),
(129, 'Glow In The Dark .5 oz - G10', 'glow-in-the-dark-5-oz-g10', '0916-0411', 26, NULL, 'E6UQV_G10_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:50:22', '2018-08-24 00:50:22'),
(130, 'Glow In The Dark .5 oz - G11', 'glow-in-the-dark-5-oz-g11', '0916-0412', 26, NULL, 'MTTLg_G11_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:50:36', '2018-08-24 00:50:36'),
(131, 'Glow In The Dark .5 oz - G12', 'glow-in-the-dark-5-oz-g12', '0916-0413', 26, NULL, 'qUkIi_G12_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:50:52', '2018-08-24 00:50:52'),
(132, 'Glow In The Dark .5 oz - G13', 'glow-in-the-dark-5-oz-g13', '0916-0414', 26, NULL, 'p5lZw_G13_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:51:09', '2018-08-24 00:51:09'),
(133, 'Glow In The Dark .5 oz - G14', 'glow-in-the-dark-5-oz-g14', '0916-0415', 26, NULL, 'jxbx8_G14_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:51:23', '2018-08-24 00:51:23'),
(134, 'Glow In The Dark .5 oz - G15', 'glow-in-the-dark-5-oz-g15', '0916-0416', 26, NULL, 'q5Qbe_G15_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:51:41', '2018-08-24 00:51:41'),
(135, 'Glow In The Dark .5 oz - G16', 'glow-in-the-dark-5-oz-g16', '0916-0417', 26, NULL, 'bs7a5_G16_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:51:55', '2018-08-24 00:51:55'),
(136, 'Glow In The Dark .5 oz - G17', 'glow-in-the-dark-5-oz-g17', '0916-0418', 26, NULL, 'IniBx_G17_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:52:09', '2018-08-24 00:52:09'),
(137, 'Glow In The Dark .5 oz - G18', 'glow-in-the-dark-5-oz-g18', '0916-0419', 26, NULL, 'n1rb8_G18_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:52:25', '2018-08-24 00:52:25'),
(138, 'Glow In The Dark .5 oz - G19', 'glow-in-the-dark-5-oz-g19', '0916-0420', 26, NULL, 'po6mJ_G19_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:52:37', '2018-08-24 00:52:37'),
(139, 'Glow In The Dark .5 oz - G20', 'glow-in-the-dark-5-oz-g20', '0916-0421', 26, NULL, '1Q5TW_G20_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:52:51', '2018-08-24 00:52:51'),
(140, 'Glow In The Dark .5 oz - G21', 'glow-in-the-dark-5-oz-g21', '0916-0422', 26, NULL, 'q0wW8_G21_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:53:05', '2018-08-24 00:53:05'),
(141, 'Glow In The Dark .5 oz - G22', 'glow-in-the-dark-5-oz-g22', '0916-0423', 26, NULL, 'lVOwi_G22_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:53:19', '2018-08-24 00:53:19'),
(142, 'Glow In The Dark .5 oz - G23', 'glow-in-the-dark-5-oz-g23', '0916-0424', 26, NULL, 'dc5Pz_G23_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:53:32', '2018-08-24 00:53:32'),
(143, 'Glow In The Dark .5 oz - G24', 'glow-in-the-dark-5-oz-g24', '0916-0425', 26, NULL, 'lW4Ar_G24_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:53:45', '2018-08-24 00:53:45'),
(144, 'Titanium .5oz T01', '', NULL, 21, NULL, 'G9xRu_T01_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:55:48', '2018-08-24 00:55:48'),
(145, 'Titanium .5oz T02', '', NULL, 21, NULL, 'nTXx2_T02_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:56:01', '2018-08-24 00:56:01'),
(146, 'Titanium .5oz T03', '', NULL, 21, NULL, 'pGPoc_T03_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:56:13', '2018-08-24 00:56:13'),
(147, 'Titanium .5oz T04', '', NULL, 21, NULL, 'rl6wJ_T04_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:56:28', '2018-08-24 00:56:28'),
(148, 'Titanium .5oz T05', '', NULL, 21, NULL, 'o0hbl_T05_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:56:41', '2018-08-24 00:56:41'),
(149, 'Titanium .5oz T06', '', NULL, 21, NULL, 'SQrgK_T06_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:56:55', '2018-08-24 00:56:55'),
(150, 'Titanium .5oz T07', '', NULL, 21, NULL, 'AcGVu_T07_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:57:08', '2018-08-24 00:57:08'),
(151, 'Titanium .5oz T08', '', NULL, 21, NULL, 'Iu9v1_T08_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:57:24', '2018-08-24 00:57:24'),
(152, 'Titanium .5oz T09', '', NULL, 21, NULL, 'FUpCf_T09_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:57:44', '2018-08-24 00:57:44'),
(153, 'Titanium .5oz T10', '', NULL, 21, NULL, 'SN87c_T10_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:58:21', '2018-08-24 00:58:21'),
(154, 'Titanium .5oz T11', '', NULL, 21, NULL, '6PaEB_T11_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:58:37', '2018-08-24 00:58:37'),
(155, 'Titanium .5oz T12', '', NULL, 21, NULL, 'QpanW_T11_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:58:51', '2018-08-24 00:58:51'),
(156, 'Titanium .5oz T13', '', NULL, 21, NULL, 'Q8nq1_T13_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:59:16', '2018-08-24 00:59:16'),
(157, 'Titanium .5oz T14', '', NULL, 21, NULL, 'Yoz7w_T14_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:59:31', '2018-08-24 00:59:31'),
(158, 'Titanium .5oz T15', '', NULL, 21, NULL, 'v9yGk_T15_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 00:59:44', '2018-08-24 00:59:44'),
(159, 'Titanium .5oz T16', '', NULL, 21, NULL, 'jtKJh_T16_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:00:04', '2018-08-24 01:00:04'),
(160, 'Titanium .5oz T17', '', NULL, 21, NULL, '6OF3s_T17_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:00:18', '2018-08-24 01:00:18'),
(161, 'Titanium .5oz T18', '', NULL, 21, NULL, '4zTzA_T18_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:00:32', '2018-08-24 01:00:32'),
(162, 'Titanium .5oz T19', '', NULL, 21, NULL, 'eiDLR_T19_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:00:46', '2018-08-24 01:00:46'),
(163, 'Titanium .5oz T20', '', NULL, 21, NULL, 'lzsPa_T20_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:01:01', '2018-08-24 01:01:01'),
(164, 'Titanium .5oz T21', '', NULL, 21, NULL, 'vcnfc_T21_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:01:16', '2018-08-24 01:01:16'),
(165, 'Titanium .5oz T22', '', NULL, 21, NULL, 'SiW37_T22_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:01:29', '2018-08-24 01:01:29'),
(166, 'Titanium .5oz T23', '', NULL, 21, NULL, 'TzPdc_T23_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:01:46', '2018-08-24 01:01:46'),
(167, 'Titanium .5oz T24', '', NULL, 21, NULL, 'hCuBd_T24_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:02:02', '2018-08-24 01:02:02'),
(168, 'Titanium .5oz T25', '', NULL, 21, NULL, '5C1Aa_T25_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:02:18', '2018-08-24 01:02:18'),
(169, 'Titanium .5oz T26', '', NULL, 21, NULL, 'rKgsF_T26_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:02:34', '2018-08-24 01:02:34'),
(170, 'Titanium .5oz T27', '', NULL, 21, NULL, 'POVcI_T27_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:02:51', '2018-08-24 01:02:51'),
(171, 'Titanium .5oz T28', '', NULL, 21, NULL, 'AnGaa_T28_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:03:06', '2018-08-24 01:03:06'),
(172, 'Titanium .5oz T29', '', NULL, 21, NULL, 'kj2Ic_T29_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:03:21', '2018-08-24 01:03:21'),
(173, 'Titanium .5oz T30', '', NULL, 21, NULL, 'Dk5qB_T30_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:03:36', '2018-08-24 01:03:36'),
(174, 'Titanium .5oz T31', '', NULL, 21, NULL, 'cvJCW_T31_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:03:51', '2018-08-24 01:03:51'),
(175, 'Titanium .5oz T32', '', NULL, 21, NULL, 'aZJwT_T32_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:04:04', '2018-08-24 01:04:04'),
(176, 'Titanium .5oz T33', '', NULL, 21, NULL, 'bOdxt_T33_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:04:18', '2018-08-24 01:04:18'),
(177, 'Titanium .5oz T34', '', NULL, 21, NULL, 'mfaCX_T34_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:04:33', '2018-08-24 01:04:33'),
(178, 'Titanium .5oz T35', '', NULL, 21, NULL, 'qNtmz_T35_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:04:47', '2018-08-24 01:04:47'),
(179, 'Titanium .5oz T36', '', NULL, 21, NULL, 'qB20N_T36_large.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:05:00', '2018-08-24 01:05:00'),
(180, 'Flakes Soak Off Gel .5oz 01', 'flakes-soak-off-gel-5oz-01', '0916-1631', 28, NULL, 'Yt94L_Flakes_Soak_Off_Gel__5oz_01.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:11:47', '2018-12-10 02:35:51'),
(181, 'Flakes Soak Off Gel .5oz 02', 'flakes-soak-off-gel-5oz-02', '0916-1632', 28, NULL, 'FzFqc_Flakes_Soak_Off_Gel__5oz_02.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:12:12', '2018-08-24 01:12:12'),
(182, 'Flakes Soak Off Gel .5oz 03', 'flakes-soak-off-gel-5oz-03', '0916-1633', 28, NULL, '0aLeb_Flakes_Soak_Off_Gel__5oz_03.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:12:29', '2018-08-24 01:12:29'),
(183, 'Flakes Soak Off Gel .5oz 04', 'flakes-soak-off-gel-5oz-04', '0916-1634', 28, NULL, 'c9yzS_Flakes_Soak_Off_Gel__5oz_04.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:12:45', '2018-08-24 01:12:45'),
(184, 'Flakes Soak Off Gel .5oz 05', 'flakes-soak-off-gel-5oz-05', '0916-1635', 28, NULL, 'pOt3F_Flakes_Soak_Off_Gel__5oz_05.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:13:00', '2018-08-24 01:13:00'),
(185, 'Flakes Soak Off Gel .5oz 06', 'flakes-soak-off-gel-5oz-06', '0916-1636', 28, NULL, '6QUXB_Flakes_Soak_Off_Gel__5oz_06.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:13:13', '2018-08-24 01:13:13'),
(186, 'Flakes Soak Off Gel .5oz 07', 'flakes-soak-off-gel-5oz-07', '0916-1637', 28, NULL, 'e0DKB_Flakes_Soak_Off_Gel__5oz_07.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:13:35', '2018-08-24 01:13:35'),
(187, 'Flakes Soak Off Gel .5oz 08', 'flakes-soak-off-gel-5oz-08', '0916-1638', 28, NULL, 'X7V7n_lakes_Soak_Off_Gel__5oz_08.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:14:30', '2018-08-24 01:14:30'),
(188, 'Flakes Soak Off Gel .5oz 09', 'flakes-soak-off-gel-5oz-09', '0916-1639', 28, NULL, 'nZtVU_Flakes_Soak_Off_Gel__5oz_09.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:14:49', '2018-08-24 01:14:49'),
(189, 'Flakes Soak Off Gel .5oz 10', 'flakes-soak-off-gel-5oz-10', '0916-1640', 28, NULL, 'jnX8w_Flakes_Soak_Off_Gel__5oz_10.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:15:05', '2018-08-24 01:15:05'),
(190, 'Flakes Soak Off Gel .5oz 11', 'flakes-soak-off-gel-5oz-11', '0916-1641', 28, NULL, 'eo00v_Flakes_Soak_Off_Gel__5oz_11.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:15:19', '2018-08-24 01:15:19'),
(191, 'Flakes Soak Off Gel .5oz 12', 'flakes-soak-off-gel-5oz-12', '0916-1642', 28, NULL, 'QZcxv_Flakes_Soak_Off_Gel__5oz_12.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:15:32', '2018-08-24 01:15:32'),
(192, 'Seashell Soak Off Gel .5oz SS01', 'seashell-soak-off-gel-5oz-ss01', '0916-0755', 20, NULL, 'sQADZ_ss01.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:17:44', '2018-12-10 02:39:08'),
(193, 'Seashell Soak Off Gel .5oz SS02', 'seashell-soak-off-gel-5oz-ss02', '0916-0756', 20, NULL, 'KqgGH_ss02.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:17:56', '2018-08-24 01:17:56'),
(194, 'Seashell Soak Off Gel .5oz SS03', 'seashell-soak-off-gel-5oz-ss03', '0916-0757', 20, NULL, 'JOAwO_ss03.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:18:11', '2018-08-24 01:18:11'),
(195, 'Seashell Soak Off Gel .5oz SS04', 'seashell-soak-off-gel-5oz-ss04', '0916-0758', 20, NULL, 'hNdlc_ss04.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:18:26', '2018-08-24 01:18:26'),
(196, 'Seashell Soak Off Gel .5oz SS05', 'seashell-soak-off-gel-5oz-ss05', '0916-0759', 20, NULL, 'ZHV35_ss05.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:18:38', '2018-08-24 01:18:38'),
(197, 'Seashell Soak Off Gel .5oz SS06', 'seashell-soak-off-gel-5oz-ss06', '0916-0760', 20, NULL, 'pl4HP_ss06.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:18:50', '2018-08-24 01:18:50'),
(198, 'Seashell Soak Off Gel .5oz SS07', 'seashell-soak-off-gel-5oz-ss07', '0916-0761', 20, NULL, 'VkrLS_ss07.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:19:03', '2018-08-24 01:19:03'),
(199, 'Seashell Soak Off Gel .5oz SS08', 'seashell-soak-off-gel-5oz-ss08', '0916-0762', 20, NULL, 'D7012_ss08.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:19:15', '2018-08-24 01:19:15'),
(200, 'Seashell Soak Off Gel .5oz SS09', 'seashell-soak-off-gel-5oz-ss09', '0916-0763', 20, NULL, 'doCBl_ss09.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:19:32', '2018-08-24 01:19:32'),
(201, 'Seashell Soak Off Gel .5oz SS10', 'seashell-soak-off-gel-5oz-ss10', '0916-0764', 20, NULL, '2CG7Q_ss10.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:19:45', '2018-08-24 01:19:45'),
(202, 'Seashell Soak Off Gel .5oz SS11', 'seashell-soak-off-gel-5oz-ss11', '0916-0765', 20, NULL, 'XZhGd_ss11.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:19:57', '2018-08-24 01:19:57'),
(203, 'Seashell Soak Off Gel .5oz SS12', 'seashell-soak-off-gel-5oz-ss12', '0916-0766', 20, NULL, '28UmH_ss12.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:20:09', '2018-08-24 01:20:09'),
(204, 'Candy Shop Gum Drop .5oz 01', '', NULL, 25, NULL, 'S01Ix_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_01.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:22:41', '2018-08-24 01:22:41'),
(205, 'Candy Shop Gum Drop .5oz 02', '', NULL, 25, NULL, 'hbotp_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_02.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:22:54', '2018-08-24 01:22:54'),
(206, 'Candy Shop Gum Drop .5oz 03', '', NULL, 25, NULL, 'Wwf6X_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_03.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:23:09', '2018-08-24 01:23:09'),
(207, 'Candy Shop Gum Drop .5oz 04', '', NULL, 25, NULL, 'GMJpX_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_04.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:23:27', '2018-08-24 01:23:27'),
(208, 'Candy Shop Gum Drop .5oz 05', '', NULL, 25, NULL, 'fEtMo_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_05.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:23:40', '2018-08-24 01:23:40'),
(209, 'Candy Shop Gum Drop .5oz 06', '', NULL, 25, NULL, 'o2sZm_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_06.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:23:55', '2018-08-24 01:23:55'),
(210, 'Candy Shop Gum Drop .5oz 07', '', NULL, 25, NULL, '2Sc5J_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_07.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:24:10', '2018-08-24 01:24:10'),
(211, 'Candy Shop Gum Drop .5oz 08', '', NULL, 25, NULL, '36G37_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_08.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:24:24', '2018-09-07 00:27:42'),
(212, 'Candy Shop Gum Drop .5oz 09', '', NULL, 25, NULL, 'FLGZx_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_09.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:24:39', '2018-08-24 01:24:39'),
(213, 'Candy Shop Gum Drop .5oz 10', '', NULL, 25, NULL, 'MfQpw_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_10.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:24:54', '2018-08-24 01:24:54'),
(214, 'Candy Shop Gum Drop .5oz 11', '', NULL, 25, NULL, 'sByVR_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_11.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:25:10', '2018-08-24 01:25:10'),
(215, 'Candy Shop Gum Drop .5oz 12', '', NULL, 25, NULL, 'bbcgy_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_12.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:25:26', '2018-08-24 01:25:26'),
(216, 'Candy Shop Gum Drop .5oz 13', '', NULL, 25, NULL, 'zOgXb_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_13.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:25:40', '2018-08-24 01:25:40'),
(217, 'Candy Shop Gum Drop .5oz 14', '', NULL, 25, NULL, 'GMPti_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_14.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:25:55', '2018-08-24 01:25:55'),
(218, 'Candy Shop Gum Drop .5oz 15', '', NULL, 25, NULL, 'ep7Wq_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_15.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:26:11', '2018-08-24 01:26:11'),
(219, 'Candy Shop Gum Drop .5oz 16', '', NULL, 25, NULL, 'dLDcQ_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_16.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:26:25', '2018-08-24 01:26:25'),
(220, 'Candy Shop Gum Drop .5oz 17', '', NULL, 25, NULL, 'L0w8L_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_17.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:26:39', '2018-08-24 01:26:39'),
(221, 'Candy Shop Gum Drop .5oz 18', '', NULL, 25, NULL, 'Nla0D_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_18.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:26:54', '2018-08-24 01:26:54'),
(222, 'Candy Shop Gum Drop .5oz 19', '', NULL, 25, NULL, 'obqfQ_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_19.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:27:08', '2018-08-24 01:27:08'),
(223, 'Candy Shop Gum Drop .5oz 20', '', NULL, 25, NULL, 'tU12t_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_20.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:27:21', '2018-08-24 01:27:21'),
(224, 'Candy Shop Gum Drop .5oz 21', '', NULL, 25, NULL, '5HoyD_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_21.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:27:34', '2018-08-24 01:27:34'),
(225, 'Candy Shop Gum Drop .5oz 22', '', NULL, 25, NULL, '4KHAS_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_22.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:27:49', '2018-08-24 01:27:49'),
(226, 'Candy Shop Gum Drop .5oz 23', '', NULL, 25, NULL, 's8jHB_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_23.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:28:02', '2018-08-24 01:28:02'),
(227, 'Candy Shop Gum Drop .5oz 24', '', NULL, 25, NULL, 'TJkDm_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_24.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:28:27', '2018-08-24 01:28:27'),
(228, 'Candy Shop Gum Drop .5oz 25', '', NULL, 25, NULL, 'rq3YX_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_25.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:28:40', '2018-08-24 01:28:40'),
(229, 'Candy Shop Gum Drop .5oz 26', '', NULL, 25, NULL, 'enCvo_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_26.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:28:54', '2018-08-24 01:28:54'),
(230, 'Candy Shop Gum Drop .5oz 27', '', NULL, 25, NULL, '9Hqee_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_27.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:29:09', '2018-08-24 01:29:09'),
(231, 'Candy Shop Gum Drop .5oz 28', '', NULL, 25, NULL, 'BeMS3_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_28.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:29:23', '2018-08-24 01:29:23'),
(232, 'Candy Shop Gum Drop .5oz 29', '', NULL, 25, NULL, '3Se20_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_29.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:29:37', '2018-08-24 01:29:37'),
(233, 'Candy Shop Gum Drop .5oz 30', '', NULL, 25, NULL, 'QR6EL_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_30.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:29:53', '2018-08-24 01:29:53'),
(234, 'Candy Shop Gum Drop .5oz 31', '', NULL, 25, NULL, 'eajMJ_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_31.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:30:08', '2018-08-24 01:30:08'),
(235, 'Candy Shop Gum Drop .5oz 32', '', NULL, 25, NULL, 'Dggfe_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_32.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:30:22', '2018-08-24 01:30:22'),
(236, 'Candy Shop Gum Drop .5oz 33', '', NULL, 25, NULL, '6GZa2_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_33.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:30:36', '2018-08-24 01:30:36'),
(237, 'Candy Shop Gum Drop .5oz 34', '', NULL, 25, NULL, 'kSEcy_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_34.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:30:52', '2018-08-24 01:30:52'),
(238, 'Candy Shop Gum Drop .5oz 35', '', NULL, 25, NULL, 'LjQUG_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_35.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:31:10', '2018-08-24 01:31:10'),
(239, 'Candy Shop Gum Drop .5oz 36', '', NULL, 25, NULL, 'KAYSQ_Candy_Shop_Gum_Drop_Soak_Off_Gel__5oz_36.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:31:24', '2018-08-24 01:31:24'),
(240, 'Platinum After Party .5oz 01', '', NULL, 27, NULL, 'Powoj_Platinum_After_Party_Soak_Off_Gel__5oz_01.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:34:42', '2018-08-24 01:34:42'),
(241, 'Platinum After Party .5oz 02', '', NULL, 27, NULL, 'wkVl4_Platinum_After_Party_Soak_Off_Gel__5oz_02.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:34:54', '2018-08-24 01:34:54'),
(242, 'Platinum After Party .5oz 03', '', NULL, 27, NULL, 'lhxFr_Platinum_After_Party_Soak_Off_Gel__5oz_03.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:35:10', '2018-08-24 01:35:10'),
(243, 'Platinum After Party .5oz 04', '', NULL, 27, NULL, 'W1j0Q_Platinum_After_Party_Soak_Off_Gel__5oz_04.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:35:25', '2018-08-24 01:35:25'),
(244, 'Platinum After Party .5oz 05', '', NULL, 27, NULL, 'nUqcH_Platinum_After_Party_Soak_Off_Gel__5oz_05.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:35:39', '2018-08-24 01:35:39'),
(245, 'Platinum After Party .5oz 06', '', NULL, 27, NULL, '9K6gp_Platinum_After_Party_Soak_Off_Gel__5oz_06.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:35:54', '2018-08-24 01:35:54'),
(246, 'Platinum After Party .5oz 07', '', NULL, 27, NULL, 'xCOy7_Platinum_After_Party_Soak_Off_Gel__5oz_07.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:36:08', '2018-08-24 01:36:08'),
(247, 'Platinum After Party .5oz 08', '', NULL, 27, NULL, 'ADswl_Platinum_After_Party_Soak_Off_Gel__5oz_08.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:36:24', '2018-08-24 01:36:24'),
(248, 'Platinum After Party .5oz 09', '', NULL, 27, NULL, 'vajGq_Platinum_After_Party_Soak_Off_Gel__5oz_09.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:36:39', '2018-08-24 01:36:39'),
(249, 'Platinum After Party .5oz 10', '', NULL, 27, NULL, 'XggKJ_Platinum_After_Party_Soak_Off_Gel__5oz_10.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:36:57', '2018-08-24 01:36:57'),
(250, 'Platinum After Party .5oz 11', '', NULL, 27, NULL, 'I5L7k_Platinum_After_Party_Soak_Off_Gel__5oz_11.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:37:11', '2018-08-24 01:37:11'),
(251, 'Platinum After Party .5oz 12', '', NULL, 26, NULL, 'TRDCY_Platinum_After_Party_Soak_Off_Gel__5oz_12.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:37:25', '2018-08-24 01:37:25'),
(252, 'Platinum After Party .5oz 13', '', NULL, 27, NULL, 'bSP87_Platinum_After_Party_Soak_Off_Gel__5oz_13.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:37:39', '2018-08-24 01:37:39'),
(253, 'Platinum After Party .5oz 14', '', NULL, 27, NULL, 'k5kBs_Platinum_After_Party_Soak_Off_Gel__5oz_14.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:37:54', '2018-08-24 01:37:54'),
(254, 'Platinum After Party .5oz 15', '', NULL, 27, NULL, 'bRfiO_Platinum_After_Party_Soak_Off_Gel__5oz_15.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:38:17', '2018-08-24 01:38:17'),
(255, 'Platinum After Party .5oz 16', '', NULL, 27, NULL, 'c2JKt_Platinum_After_Party_Soak_Off_Gel__5oz_16.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:38:30', '2018-08-24 01:38:30'),
(256, 'Platinum After Party .5oz 17', '', NULL, 27, NULL, 'VEdEz_Platinum_After_Party_Soak_Off_Gel__5oz_17.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:38:42', '2018-08-24 01:38:42'),
(257, 'Platinum After Party .5oz 18', '', NULL, 27, NULL, 'izwLr_Platinum_After_Party_Soak_Off_Gel__5oz_18.png', 250000, 0, NULL, NULL, 1, NULL, '2018-08-24 01:38:55', '2018-08-24 01:38:55'),
(258, 'Marble Effect .5oz 01', '', NULL, 34, NULL, 'Jbi9g_m01.png', 180000, 0, NULL, NULL, 1, NULL, '2018-08-30 20:32:06', '2018-08-30 20:32:06'),
(259, 'Marble Effect .5oz 01', '', NULL, 34, NULL, 'j9Iqs_m02.png', 180000, 0, NULL, NULL, 1, NULL, '2018-08-30 20:32:30', '2018-08-30 20:32:30'),
(260, 'Marble Effect .5oz 03', '', NULL, 34, NULL, '2zyYJ_m03.png', 180000, 0, NULL, NULL, 1, NULL, '2018-08-30 20:32:49', '2018-08-30 20:32:49'),
(261, 'Marble Effect .5oz 04', '', NULL, 34, NULL, '90kWR_m04.png', 180000, 0, NULL, NULL, 1, NULL, '2018-08-30 20:33:03', '2018-08-30 21:22:39'),
(262, 'Marble Effect .5oz 05', '', NULL, 34, NULL, 'WNIjs_m05.png', 180000, 0, NULL, NULL, 1, NULL, '2018-08-30 20:33:19', '2018-08-30 20:33:19'),
(263, 'Marble Effect .5oz 06', '', NULL, 34, NULL, '6LpRm_m06.png', 180000, 0, NULL, NULL, 1, NULL, '2018-08-30 20:33:34', '2018-08-30 20:33:34'),
(264, 'Marble Effect .5oz 07', '', NULL, 34, NULL, 'fOpqV_m07.png', 180000, 0, NULL, NULL, 1, NULL, '2018-08-30 20:33:50', '2018-08-30 20:33:50'),
(265, 'Marble Effect .5oz 08', '', NULL, 34, NULL, 'dYK18_m08.png', 180000, 0, NULL, NULL, 1, NULL, '2018-08-30 20:34:08', '2018-08-30 20:34:08'),
(266, 'Marble Effect .5oz 09', '', NULL, 34, NULL, '04pi5_m09.png', 180000, 0, NULL, NULL, 1, NULL, '2018-08-30 20:34:22', '2018-08-30 20:34:22'),
(267, 'Marble Effect .5oz 10', '', NULL, 34, NULL, 'TFMMY_m10.png', 180000, 0, NULL, NULL, 1, NULL, '2018-08-30 20:34:37', '2018-08-30 20:34:37'),
(268, 'Marble Effect .5oz 11', '', NULL, 34, NULL, 'XaHGJ_m11.png', 180000, 0, NULL, NULL, 1, NULL, '2018-08-30 20:34:55', '2018-08-30 20:34:55'),
(269, 'Marble Effect .5oz 12', '', NULL, 34, NULL, 'uSIVs_m12.png', 180000, 0, NULL, NULL, 1, NULL, '2018-08-30 20:35:09', '2018-08-30 20:35:09'),
(270, 'Signature Designer Gel A01', '', '01', 35, NULL, 'Oz6vS_SignatureDesigner GelA01.png', 180000, 0, NULL, NULL, 1, NULL, '2018-09-06 23:26:37', '2018-09-06 23:33:17'),
(271, 'Signature Designer Gel A02', '', '02', 35, NULL, 'SOSmP_Signature Designer Gel A02.png', 180000, 0, NULL, NULL, 1, NULL, '2018-09-06 23:27:02', '2018-09-06 23:27:02'),
(272, 'Signature Designer Gel A03', '', '03', 35, NULL, 'muOgs_Signature Designer Gel A03.png', 180000, 0, NULL, NULL, 1, NULL, '2018-09-06 23:27:21', '2018-09-06 23:27:21'),
(273, 'Signature Designer Gel A04', '', '04', 35, NULL, 'oFENo_Signature Designer Gel A04.png', 180000, 0, NULL, NULL, 1, NULL, '2018-09-06 23:27:42', '2018-09-06 23:27:42'),
(274, 'Signature Designer Gel A05', '', '05', 35, NULL, 'lfWOu_Signature Designer Gel A05.png', 180000, 0, NULL, NULL, 1, NULL, '2018-09-06 23:27:59', '2018-09-06 23:27:59'),
(275, 'Signature Designer Gel A06', '', '06', 35, NULL, 'jJwXg_Signature Designer Gel A06.png', 180000, 0, NULL, NULL, 1, NULL, '2018-09-06 23:28:17', '2018-09-06 23:28:17'),
(276, 'Signature Designer Gel A07', '', '07', 35, NULL, '0Wyf6_Signature Designer Gel A07.png', 180000, 0, NULL, NULL, 1, NULL, '2018-09-06 23:28:41', '2018-09-06 23:28:41'),
(277, 'Signature Designer Gel A08', '', '08', 35, NULL, '5RFH9_Signature Designer Gel A08.png', 180000, 0, NULL, NULL, 1, NULL, '2018-09-06 23:29:36', '2018-09-06 23:29:36'),
(278, 'Signature Designer Gel A09', '', '09', 35, NULL, 'K1Wmw_Signature Designer Gel A09.png', 180000, 0, NULL, NULL, 1, NULL, '2018-09-06 23:29:54', '2018-09-06 23:29:54'),
(279, 'Signature Designer Gel A10', '', '10', 35, NULL, 'uV8VQ_Signature Designer Gel A10.png', 180000, 0, NULL, NULL, 1, NULL, '2018-09-06 23:30:13', '2018-09-06 23:30:13'),
(280, 'Signature Designer Gel A11', '', '11', 35, NULL, 'euFQQ_Signature Designer Gel A11.png', 180000, 0, NULL, NULL, 1, NULL, '2018-09-06 23:30:35', '2018-09-06 23:30:35'),
(281, 'Signature Designer Gel A12', '', '12', 35, NULL, 'hjf9O_Signature Designer Gel A12.png', 180000, 0, NULL, NULL, 1, NULL, '2018-09-06 23:30:55', '2018-09-06 23:30:55'),
(282, 'Mood Changing M01-Creamy', '', '09101', 23, NULL, '4RY9d_Mood-01_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-06 23:58:49', '2018-09-06 23:58:49'),
(283, 'Mood Changing M02-Creamy', '', '09102', 23, NULL, 't7J8h_Mood-02_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-06 23:59:16', '2018-09-06 23:59:16'),
(284, 'Mood Changing M03-Frost', '', '09103', 23, NULL, 'fsLY9_Mood-03_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-06 23:59:55', '2018-09-06 23:59:55'),
(285, 'Mood Changing M04-Glitter', '', '09104', 23, NULL, 'unRQG_Mood-04_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:00:21', '2018-09-07 00:00:21'),
(286, 'Mood Changing M05', '', '09105', 23, NULL, 'eYLOm_Mood-05_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:01:32', '2018-09-07 00:01:32'),
(287, 'Mood Changing M06', '', '09106', 23, NULL, 'b0Y7B_Mood-06_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:02:00', '2018-09-07 00:02:00'),
(288, 'Mood Changing M07', '', '09107', 23, NULL, '1NMHp_Mood-07_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:02:18', '2018-09-07 00:02:18'),
(289, 'Mood Changing M08', '', '09108', 23, NULL, '7NFNg_Mood-08_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:02:35', '2018-09-07 00:02:35'),
(290, 'Mood Changing M09', '', '09109', 23, NULL, 'N1hl6_Mood-09_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:02:53', '2018-09-07 00:02:53'),
(291, 'Mood Changing M11', '', '09110', 23, NULL, 'XU1UH_Mood-11_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:10:13', '2018-09-07 00:10:13'),
(292, 'Mood Changing M12', '', '09111', 23, NULL, 'VB1W4_Mood-12_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:13:18', '2018-09-07 00:13:18'),
(293, 'Mood Changing M10', '', '09112', 23, NULL, 'tYKwm_Mood-10_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:14:20', '2018-09-07 00:14:20'),
(294, 'Mood Changing M13', '', '09113', 23, NULL, 'onmJD_Mood-13_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:14:40', '2018-09-07 00:14:40'),
(295, 'Mood Changing M14', '', '09114', 23, NULL, 'UeZAB_Mood-14_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:14:57', '2018-09-07 00:14:57'),
(296, 'Mood Changing M15', '', '09115', 23, NULL, 'QdHpn_Mood-15_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:15:17', '2018-09-07 00:15:17'),
(297, 'Mood Changing M16', '', '09116', 23, NULL, 'mOChV_Mood-16_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:15:36', '2018-09-07 00:15:36'),
(298, 'Mood Changing M17', '', '09117', 23, NULL, 'rbA2r_Mood-17_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:15:53', '2018-09-07 00:15:53'),
(299, 'Mood Changing M18', '', '09118', 23, NULL, 'WFif9_Mood-18_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:16:11', '2018-09-07 00:16:11');
INSERT INTO `products` (`id`, `name`, `alias`, `item_code`, `id_type`, `detail`, `image_link`, `price`, `discount_price`, `keyword`, `description`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(300, 'Mood Changing M19', '', '09119', 23, NULL, 'UJ86y_Mood-19_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:16:28', '2018-09-07 00:16:28'),
(301, 'Mood Changing M20', '', '09120', 23, NULL, 'a2pXx_Mood-20_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:16:57', '2018-09-07 00:16:57'),
(302, 'Mood Changing M21', '', '09121', 23, NULL, 'zAblZ_Mood-21_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:17:16', '2018-09-07 00:17:16'),
(303, 'Mood Changing M22', '', '09122', 23, NULL, 'klPJm_Mood-22_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:17:32', '2018-09-07 00:17:32'),
(304, 'Mood Changing M23', '', '09123', 23, NULL, 'C0uAh_Mood-23_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:17:48', '2018-09-07 00:17:48'),
(305, 'Mood Changing M24', '', '09124', 23, NULL, '5FXLK_Mood-24_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:18:03', '2018-09-07 00:18:03'),
(306, 'Mood Changing M25', '', '09125', 23, NULL, 'I2aoU_Mood-25_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:18:19', '2018-09-07 00:18:19'),
(307, 'Mood Changing M26', '', '09126', 23, NULL, 'rKX2y_Mood-26_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:18:36', '2018-09-07 00:18:36'),
(308, 'Mood Changing M27', '', '09127', 23, NULL, 'LKAwO_Mood-27_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:18:55', '2018-09-07 00:18:55'),
(309, 'Mood Changing M28', '', '09128', 23, NULL, 'uQXTI_Mood-28_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:19:11', '2018-09-07 00:19:11'),
(310, 'Mood Changing M29', '', '09129', 23, NULL, '8lLwu_Mood-29_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:19:28', '2018-09-07 00:19:28'),
(311, 'Mood Changing M30', '', '09130', 23, NULL, 'N5S9v_Mood-30_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:19:48', '2018-09-07 00:19:48'),
(312, 'Mood Changing M31', '', '09131', 23, NULL, 'Q3R5m_Mood-31_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:20:05', '2018-09-07 00:20:05'),
(313, 'Mood Changing M32', '', '09132', 23, NULL, '19iGT_Mood-32_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:20:23', '2018-09-07 00:20:23'),
(314, 'Mood Changing M33', '', '09133', 23, NULL, 'OlGiN_Mood-33_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:20:38', '2018-09-07 00:20:38'),
(315, 'Mood Changing M34', '', '09134', 23, NULL, 'Kpf7c_Mood-34_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:20:53', '2018-09-07 00:20:53'),
(316, 'Mood Changing M35', '', '09135', 23, NULL, 'R2Lrk_Mood-35_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:21:09', '2018-09-07 00:21:09'),
(317, 'Mood Changing M36', '', '09136', 23, NULL, '9Voua_Mood-36_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:21:26', '2018-09-07 00:21:26'),
(318, 'Mood Changing M37', '', '09137', 23, NULL, 'MLgXl_Mood-37_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:21:43', '2018-09-07 00:21:43'),
(319, 'Mood Changing M38', '', '09138', 23, NULL, 'wZfcR_Mood-38_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:22:02', '2018-09-07 00:22:02'),
(320, 'Mood Changing M39', '', '09139', 23, NULL, 'A5iFh_Mood-39_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:22:21', '2018-09-07 00:22:21'),
(321, 'Mood Changing M40', '', '09140', 23, NULL, 'Yrsju_Mood-40_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:22:40', '2018-09-07 00:22:40'),
(322, 'Mood Changing M41', '', '09141', 23, NULL, 'xjxVH_Mood-41_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:22:56', '2018-09-07 00:22:56'),
(323, 'Mood Changing M42', '', '09142', 23, NULL, 'qMHig_Mood-42_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:23:12', '2018-09-07 00:23:12'),
(324, 'Mood Changing M43', '', '09143', 23, NULL, '0gAqH_Mood-43_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:23:29', '2018-09-07 00:23:29'),
(325, 'Mood Changing M44', '', '09144', 23, NULL, '7Gu3d_Mood-44_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:23:45', '2018-09-07 00:23:45'),
(326, 'Mood Changing M45', '', '09145', 23, NULL, '3SBok_Mood-45_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:24:00', '2018-09-07 00:24:00'),
(327, 'Mood Changing M46', '', 'M46', 22, NULL, '4YbUH_Mood-46_large.jpg', NULL, 0, NULL, NULL, 1, NULL, '2018-09-07 00:24:19', '2018-09-07 00:24:19'),
(328, 'Mood Changing M47', '', '09146', 23, NULL, 'OU3ne_Mood-47_large.jpg', 250000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:24:38', '2018-09-07 00:24:38'),
(329, 'Mood Changing M48', '', 'M48', 22, NULL, '', NULL, 0, NULL, NULL, 1, NULL, '2018-09-07 00:24:55', '2018-09-07 00:24:55'),
(330, 'Ombre Pair 01', '', '01', 32, NULL, 'pTiuh_jar--tip-ombre-01_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:50:34', '2018-09-07 00:50:34'),
(331, 'Ombre Pair 02', '', '02', 32, NULL, 'VlT6p_jar--tip-ombre-02_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:50:48', '2018-09-07 00:50:48'),
(332, 'Ombre Pair 03', '', '03', 32, NULL, 'RU128_jar--tip-ombre-03_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:51:04', '2018-09-07 00:51:04'),
(333, 'Ombre Pair 04', '', '04', 32, NULL, 'Qr75E_jar--tip-ombre-04_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:51:20', '2018-09-07 00:51:20'),
(334, 'Ombre Pair 05', '', '05', 32, NULL, 'RjGpt_jar--tip-ombre-05_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:51:38', '2018-09-07 00:51:38'),
(335, 'Ombre Pair 06', '', '06', 32, NULL, 'uYpvD_jar--tip-ombre-06_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:51:53', '2018-09-07 00:51:53'),
(336, 'Ombre Pair 07', '', '07', 32, NULL, 'RoQzJ_jar--tip-ombre-07_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:52:09', '2018-09-07 00:52:09'),
(337, 'Ombre Pair 08', '', '08', 32, NULL, 'VEBNG_jar--tip-ombre-08_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:52:27', '2018-09-07 00:52:27'),
(338, 'Ombre Pair 09', '', '09', 32, NULL, 'bi2KL_jar--tip-ombre-09_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:52:53', '2018-09-07 00:52:53'),
(339, 'Ombre Pair 10', '', '10', 32, NULL, '0maQl_jar--tip-ombre-10_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:53:12', '2018-09-07 00:53:12'),
(340, 'Ombre Pair 11', '', '11', 32, NULL, '4siOk_jar--tip-ombre-11_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:53:28', '2018-09-07 00:53:28'),
(341, 'Ombre Pair 12', '', '12', 32, NULL, '3fTqW_jar--tip-ombre-12_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:53:45', '2018-09-07 00:53:45'),
(342, 'Ombre Pair 13', '', '13', 32, NULL, 'xzZkK_jar--tip-ombre-13_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:54:00', '2018-09-07 00:54:00'),
(343, 'Ombre Pair 14', '', '14', 32, NULL, 'VRo9l_jar--tip-ombre-14_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:54:16', '2018-09-07 00:54:16'),
(344, 'Ombre Pair 15', '', '15', 32, NULL, 'fW3yT_jar--tip-ombre-15_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:54:31', '2018-09-07 00:54:31'),
(345, 'Ombre Pair 16', '', '16', 32, NULL, 'rpxPO_jar--tip-ombre-16_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:54:48', '2018-09-07 00:54:48'),
(346, 'Ombre Pair 17', '', '17', 32, NULL, '2RlMl_jar--tip-ombre-17_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:55:13', '2018-09-07 00:55:13'),
(347, 'Ombre Pair 18', '', '18', 32, NULL, 'DsP0S_jar--tip-ombre-18_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:55:27', '2018-09-07 00:55:27'),
(348, 'Ombre Pair 19', '', '19', 32, NULL, 'qjA9l_jar--tip-ombre-19_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:55:42', '2018-09-07 00:55:42'),
(349, 'Ombre Pair 20', '', '20', 32, NULL, 'GnE3y_jar--tip-ombre-20_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:55:57', '2018-09-07 00:55:57'),
(350, 'Ombre Pair 21', '', '21', 32, NULL, 'cuX0o_jar--tip-ombre-21_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:56:13', '2018-09-07 00:56:13'),
(351, 'Ombre Pair 22', '', '22', 32, NULL, 'f42Qi_jar--tip-ombre-22_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:56:28', '2018-09-07 00:56:28'),
(352, 'Ombre Pair 23', '', '23', 32, NULL, '4VDll_jar--tip-ombre-23_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:56:42', '2018-09-07 00:56:42'),
(353, 'Ombre Pair 24', '', '24', 32, NULL, 'BstpV_jar--tip-ombre-24_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:56:58', '2018-09-07 00:56:58'),
(354, 'Ombre Pair 25', '', '25', 32, NULL, '5t5sw_jar--tip-ombre-25_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:57:15', '2018-09-07 00:57:15'),
(355, 'Ombre Pair 26', '', '26', 32, NULL, 'xcBaU_jar--tip-ombre-26_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:57:31', '2018-09-07 00:57:31'),
(356, 'Ombre Pair 27', '', '27', 32, NULL, '15muT_jar--tip-ombre-27_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:57:45', '2018-09-07 00:57:45'),
(357, 'Ombre Pair 28', '', '28', 32, NULL, 'Hqj6Q_jar--tip-ombre-28_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:57:59', '2018-09-07 00:57:59'),
(358, 'Ombre Pair 29', '', '29', 32, NULL, 'lXCuo_jar--tip-ombre-29_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:58:14', '2018-09-07 00:58:14'),
(359, 'Ombre Pair 30', '', '30', 32, NULL, 'XL10H_jar--tip-ombre-30_large.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-07 00:58:27', '2018-09-07 00:58:27'),
(360, 'Black 0916-1236', '', '0916-1236', 36, NULL, 'Pp0aJ_01_Black.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 20:59:04', '2018-09-12 20:59:04'),
(361, 'White 0916-1237', '', '0916-1237', 36, NULL, 'xshRL_02_White.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 20:59:29', '2018-09-12 20:59:29'),
(362, 'Red 0916-1238', '', '0916-1238', 36, NULL, 'ebsE8_03_Red.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 20:59:51', '2018-09-12 20:59:51'),
(363, 'Yellow 0916-1239', '', '0916-1239', 36, NULL, 'YMkEC_04_Yellow.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:00:18', '2018-09-12 21:00:18'),
(364, 'Green 0916-1240', '', '0916-1240', 36, NULL, 'nha11_05_Green.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:00:59', '2018-09-12 21:00:59'),
(365, 'Lavender 0916-1241', '', '0916-1241', 36, NULL, 'MD4Oj_06_Lavender.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:01:23', '2018-09-12 21:01:23'),
(366, 'Blue 0916-1242', '', '0916-1242', 36, NULL, 'miDNU_07_Blue.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:01:49', '2018-09-12 21:01:49'),
(367, 'Teal 0916-1243', '', '0916-1243', 36, NULL, 'FEDyD_08_Teal.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:02:19', '2018-09-12 21:02:19'),
(368, 'Pink 0916-1244', '', '0916-1244', 36, NULL, 'S8TnY_09_Pink.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:02:43', '2018-09-12 21:02:43'),
(369, 'Fushia 0916-1245', '', '0916-1245', 36, NULL, 'FIMvM_10_Fuschia.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:03:05', '2018-09-12 21:03:05'),
(370, 'Coral 0916-1246', '', '0916-1246', 36, NULL, 'Ywy1f_11_Coral.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:03:26', '2018-09-12 21:03:26'),
(371, 'Hot Orange 0916-1247', '', '0916-1247', 36, NULL, 'DLNe2_12_Hot+Orange.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:03:52', '2018-09-12 21:03:52'),
(372, 'Electric Blue 0916-1248', '', '0916-1248', 36, NULL, 'BJHN7_18_Electric+Blue.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:12:30', '2018-09-12 21:12:30'),
(373, 'Navy Blue 0916-1249', '', '0916-1249', 36, NULL, 'OtZcX_15_Navy+Blue.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:13:12', '2018-09-12 21:13:12'),
(374, 'Brown 0916-1250', '', '0916-1250', 36, NULL, '3bUNT_14_Brown.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:13:43', '2018-09-12 21:13:43'),
(375, 'Grey 0916-1251', '', '0916-1251', 36, NULL, 'DZ0ca_16_Grey.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:14:04', '2018-09-12 21:14:04'),
(376, 'Mauve 0916-1252', '', '0916-1252', 36, NULL, 'nkEJ7_17_Mauve.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:14:29', '2018-09-12 21:14:29'),
(377, 'Tiffany 0916-1253', '', '0916-1253', 36, NULL, 'eFnea_13_Tiffany.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:14:56', '2018-09-12 21:14:56'),
(378, 'Light Brown 0916-1254', '', '0916-1254', 36, NULL, 'A7ysu_19_Light+Brown.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:15:29', '2018-09-12 21:15:29'),
(379, 'Peach 0916-1255', '', '0916-1255', 36, NULL, 'VmAe9_20_Peach.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:15:56', '2018-09-12 21:15:56'),
(380, 'Lime 0916-1256', '', '0916-1256', 36, NULL, 'sAbNw_21_Lime.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:16:17', '2018-09-12 21:16:17'),
(381, 'Fine Gold 0916-1257', '', '0916-1257', 36, NULL, '0E8K7_22_Fine+Gold.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:16:40', '2018-09-12 21:16:40'),
(382, 'Fine Silver 0916-1258', '', '0916-1258', 36, NULL, 'n15lv_23_Fine+Silver.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:17:03', '2018-09-12 21:17:03'),
(383, 'Pink Glitter 0916-1259', '', '0916-1259', 36, NULL, 'zK47w_24_Fine+Rose+Gold.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:19:50', '2018-09-12 21:19:50'),
(384, 'Holographic Glitter 0916-1260', '', '0916-1260', 36, NULL, 'dLlN3_25_Holographic+Glitter.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:20:27', '2018-09-12 21:20:27'),
(385, 'Gold Glitter 0916-1261', '', '0916-1261', 36, NULL, 'wiFFI_26_Gold+Glitter.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:20:55', '2018-09-12 21:20:55'),
(386, 'Silver Glitter 0916-1262', '', '0916-1262', 36, NULL, 'hMTWj_27_Silver+Glitter.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:21:18', '2018-09-12 21:21:18'),
(387, 'Red Glitter 0916-1263', '', '0916-1263', 36, NULL, 'vWZQs_28_Red+Glitter.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:21:39', '2018-09-12 21:21:39'),
(388, 'Green Glitter 0916-1264', '', '0916-1264', 36, NULL, 'J0BlS_29_Green+Glitter.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:22:01', '2018-09-12 21:22:01'),
(389, 'Gold Platinum 1 0916-1265', '', '0916-1265', 36, NULL, 'NTYUN_30_Gold+Platinum.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:23:34', '2018-09-12 21:23:34'),
(390, 'Rose Gold Platinum 0916-1270', '', '0916-1270', 36, NULL, 'IHy4O_35_Rose+Gold+Platinum.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:24:07', '2018-09-12 21:24:07'),
(391, 'Red Platinum 0916-1271', '', '0916-1271', 36, NULL, '0Z6Uq_36_Red+Platinum.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:24:29', '2018-09-12 21:24:29'),
(392, 'Pink Platinum 0916-1848', '', '0916-1848', 36, NULL, 'PfIj6_37_Pink+Platinum.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:24:53', '2018-09-12 21:24:53'),
(393, 'Fushia Platinum 0916-1849', '', '0916-1849', 36, NULL, '65QQF_38_Fuschia+Platinum.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:25:18', '2018-09-12 21:25:18'),
(394, 'Blue Platinum 0916-1850', '', '0916-1850', 36, NULL, 'rE9Zq_39_Blue+Platinum.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:25:44', '2018-09-12 21:25:44'),
(395, 'Green Platium 0916-1851', '', '0916-1851', 36, NULL, 'PtiA9_40_Green+Platinum.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:26:08', '2018-09-12 21:26:08'),
(396, 'Bright Silver Platinum 0916-1852', '', '0916-1852', 36, NULL, 'NlqOq_41_Bright+Silver+Platinum.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:26:33', '2018-09-12 21:26:33'),
(397, 'Bright Holographic Silver 0916-1853', '', '0916-1853', 36, NULL, 'TnGCU_42_Bright+Holo+Silver.png', 150000, 0, NULL, NULL, 1, NULL, '2018-09-12 21:26:55', '2018-09-12 21:26:55'),
(398, 'Fairy Dust 01 - 5g', '', '01', 37, NULL, 'DusUL_Cre8tion_-_Fairy_Dust_01_2_large.jpg', NULL, 0, NULL, NULL, 1, NULL, '2018-09-14 00:46:08', '2018-09-14 00:49:27'),
(399, 'Fairy Dust 02 - 5g', '', '02', 37, NULL, 'nMIdI_Cre8tion_-_Fairy_Dust_02_2_large.jpg', NULL, 0, NULL, NULL, 1, NULL, '2018-09-14 00:46:29', '2018-09-14 00:46:29'),
(400, 'Fairy Dust 03 - 5g', '', '03', 37, NULL, 'xsclo_Cre8tion_-_Fairy_Dust_03_2_large.jpg', NULL, 0, NULL, NULL, 1, NULL, '2018-09-14 00:46:45', '2018-09-14 00:49:39'),
(401, 'Fairy Dust 04 - 5g', '', '04', 37, NULL, 'p16KK_Cre8tion_-_Fairy_Dust_04_2_large.jpg', NULL, 0, NULL, NULL, 1, NULL, '2018-09-14 00:46:59', '2018-09-14 00:49:49'),
(402, 'Fairy Dust 05 - 5g', '', '05', 37, NULL, 'GTWx8_Cre8tion_-_Fairy_Dust_05_2_large.jpg', NULL, 0, NULL, NULL, 1, NULL, '2018-09-14 00:47:15', '2018-09-14 00:49:58'),
(403, 'Fairy Dust 06 - 5g', '', '06', 37, NULL, 'znSbP_Cre8tion_-_Fairy_Dust_06_2_large.jpg', NULL, 0, NULL, NULL, 1, NULL, '2018-09-14 00:50:33', '2018-09-14 00:50:33'),
(404, 'Fairy Dust 07 - 5g', '', '07', 37, NULL, 'fFAO1_Cre8tion_-_Fairy_Dust_07_2_large.jpg', NULL, 0, NULL, NULL, 1, NULL, '2018-09-14 00:50:48', '2018-09-14 00:50:48'),
(405, 'Night Glow G01', '', 'G01', 29, 'Night Glow G01', 'MYebD_IMG_2252_copy_grande.png', 470000, 0, 'Night Glow G01', 'Night Glow G01', 1, NULL, '2018-09-25 20:59:51', '2018-09-25 20:59:51'),
(406, 'Night Glow G02', '', 'G02', 29, 'Night Glow G02', 'vds9R_IMG_2253_copy_grande.png', 470000, 0, 'Night Glow G02', 'Night Glow G02', 1, NULL, '2018-09-25 21:00:43', '2018-09-25 21:00:43'),
(407, 'Night Glow G03', '', 'G03', 29, 'Night Glow G03', 'GKRAu_IMG_2254_copy_grande.png', 470000, 0, 'Night Glow G03', 'Night Glow G03', 1, NULL, '2018-09-25 21:01:15', '2018-09-25 21:01:15'),
(408, 'Night Glow G04', '', 'G04', 29, 'Night Glow G04', 'of4uP_IMG_2255_copy_grande.png', 470000, 0, 'Night Glow G04', 'Night Glow G04', 1, NULL, '2018-09-25 21:01:56', '2018-09-25 21:01:56'),
(409, 'Night Glow G05', '', 'G05', 29, 'Night Glow G05', 'PyIjG_IMG_2256_copy_grande.png', 470000, 0, 'Night Glow G05', 'Night Glow G05', 1, NULL, '2018-09-25 21:02:56', '2018-09-25 21:02:56'),
(410, 'Night Glow G06', '', 'G06', 29, 'Night Glow G06', 'ctkPv_IMG_2257_copy_grande.png', 470000, 0, 'Night Glow G06', 'Night Glow G06', 1, NULL, '2018-09-25 21:03:38', '2018-09-25 21:03:38'),
(411, 'Night Glow G07', '', 'G07', 29, 'Night Glow G07', 'zzKcg_Glow In The Dark - 07.png', 470000, 0, 'Night Glow G07', NULL, 1, NULL, '2018-09-25 21:04:19', '2018-09-25 21:33:52'),
(412, 'Night Glow G08', '', 'G08', 29, 'Night Glow G08', 'yUCEf_Glow In The Dark - 08.png', 470000, 0, 'Night Glow G08', 'Night Glow G08', 1, NULL, '2018-09-25 21:34:56', '2018-09-25 21:34:56'),
(413, 'Night Glow G09', '', 'G09', 29, 'Night Glow G09', 'lmuEP_Glow_In_The_Dark_-_09_grande.png', 470000, 0, 'Night Glow G09', 'Night Glow G09', 1, NULL, '2018-09-25 21:35:57', '2018-09-25 21:35:57'),
(414, 'Night Glow G10', '', 'G10', 29, 'Night Glow G10', 'ftbYf_Glow_In_The_Dark_-_10_grande.png', 470000, 0, 'Night Glow G10', 'Night Glow G10', 1, NULL, '2018-09-25 21:36:18', '2018-09-25 21:36:18'),
(415, 'Night Glow G11', '', 'G11', 29, 'Night Glow G11', 'RlSKs_Glow_In_The_Dark_-_11_grande.png', 470000, 0, 'Night Glow G11', 'Night Glow G11', 1, NULL, '2018-09-25 21:36:38', '2018-09-25 21:36:38'),
(416, 'Night Glow G12', '', 'G12', 29, 'Night Glow G12', 'ZgCK4_Glow_In_The_Dark_-_12_grande.png', 470000, 0, 'Night Glow G12', 'Night Glow G12', 1, NULL, '2018-09-25 21:36:58', '2018-09-25 21:36:58'),
(417, 'Step 1 - Prep', '', '31000', 30, 'Step 1 - Prep', 'fetX8_C8_Dip_Prep1_r2_1024.png', NULL, 0, 'Step 1 - Prep', 'Step 1 - Prep', 1, NULL, '2018-09-25 21:41:16', '2018-09-25 21:41:16'),
(418, 'Step 2 - Base Coat', '', '31001', 29, 'Step 2 - Base Coat', 'WlnTt_31001.png', 470000, 0, 'Step 2 - Base Coat', 'Step 2 - Base Coat', 1, NULL, '2018-09-25 21:41:42', '2018-09-25 21:41:42'),
(419, 'Step 3 - Activator', '', '31002', 30, 'Step 3 - Activator', 'ukJV3_31002.png', NULL, 0, 'Step 3 - Activator', 'Step 3 - Activator', 1, NULL, '2018-09-25 21:42:10', '2018-09-25 21:42:10'),
(420, 'Step 4 - Top Coat', '', '31003', 30, 'Step 4 - Top Coat', 'HQUhC_31003.png', NULL, 0, 'Step 4 - Top Coat', 'Step 4 - Top Coat', 1, NULL, '2018-09-25 21:42:39', '2018-09-25 21:42:39'),
(421, 'Step 5 - Brush Restorer', '', '31004', 30, 'Step 5 - Brush Restorer', 'kexjj_C8_Brush_Restorer_1024_ba2c4b9f-ec83-4a5f-8f7b-f71edb1f0ec8.png', NULL, 0, 'Step 5 - Brush Restorer', 'Step 5 - Brush Restorer', 1, NULL, '2018-09-25 21:43:09', '2018-09-25 21:43:09'),
(422, 'Super White, 1.7oz, 31008 BB KK0911', '', '002', 40, 'Super White, 1.7oz, 31008 BB KK0911', 'Hcqj0_002_Super_White.jpg', 470000, 0, 'Super White, 1.7oz, 31008 BB KK0911', 'Super White, 1.7oz, 31008 BB KK0911', 1, NULL, '2018-09-26 19:49:30', '2018-09-26 19:49:30'),
(423, 'Soft White, 1.7oz, 31009 BB KK0911', '', '003', 40, 'Soft White, 1.7oz, 31009 BB KK0911', 'z94cT_003_Soft_White.jpg', 470000, 0, 'Soft White, 1.7oz, 31009 BB KK0911', 'Soft White, 1.7oz, 31009 BB KK0911', 1, NULL, '2018-09-26 19:52:19', '2018-09-26 19:52:19'),
(424, 'Pink 1, 1.7oz, 31010 BB KK0924', '', '004', 40, 'Pink 1, 1.7oz, 31010 BB KK0924', 'dEdyz_004_Pink_1.jpg', 470000, 0, 'Pink 1, 1.7oz, 31010 BB KK0924', 'Pink 1, 1.7oz, 31010 BB KK0924', 1, NULL, '2018-09-26 19:55:18', '2018-09-26 19:55:18'),
(425, 'Pink 2, 1.7oz, 31011 BB KK0924', '', '005', 40, 'Pink 2, 1.7oz, 31011 BB KK0924', 'YP0uV_005_Pink_2.jpg', 470000, 0, 'Pink 2, 1.7oz, 31011 BB KK0924', 'Pink 2, 1.7oz, 31011 BB KK0924', 1, NULL, '2018-09-26 19:55:52', '2018-09-26 19:55:52'),
(426, 'Pink 3, 1.7oz, 31012 BB KK0924', '', '006', 40, 'Pink 3, 1.7oz, 31012 BB KK0924', '93rRi_006_Pink_3.jpg', 470000, 0, 'Pink 3, 1.7oz, 31012 BB KK0924', 'Pink 3, 1.7oz, 31012 BB KK0924', 1, NULL, '2018-09-26 19:56:29', '2018-09-26 19:56:29'),
(427, 'Glitter In Pink, 1.7oz, 31013 BB KK0912', '', '007', 40, 'Glitter In Pink, 1.7oz, 31013 BB KK0912', 'wcVqR_007_Glitter_in_Pink.jpg', 470000, 0, 'Glitter In Pink, 1.7oz, 31013 BB KK0912', 'Glitter In Pink, 1.7oz, 31013 BB KK0912', 1, NULL, '2018-09-26 19:58:27', '2018-09-26 19:58:27'),
(428, 'Black, 1.7oz, 31015 BB KK0911', '', '009', 40, 'Black, 1.7oz, 31015 BB KK0911', '2zohY_009_Black.jpg', 470000, 0, 'Black, 1.7oz, 31015 BB KK0911', 'Black, 1.7oz, 31015 BB KK0911', 1, NULL, '2018-09-26 19:59:34', '2018-09-26 19:59:34'),
(429, 'Balcony, 1.7oz, 31017 BB KK0911', '', '011', 40, 'Balcony, 1.7oz, 31017 BB KK0911', 'bSQV2_011_Balcony.jpg', 470000, 0, 'Balcony, 1.7oz, 31017 BB KK0911', 'Balcony, 1.7oz, 31017 BB KK0911', 1, NULL, '2018-09-26 20:00:37', '2018-09-26 20:00:37'),
(430, 'First Kiss, 1.7oz, 3102 BB KK0912', '', '014', 40, 'First Kiss, 1.7oz, 3102 BB KK0912', 'YCSkd_014_First_Kiss.jpg', 470000, 0, 'First Kiss, 1.7oz, 3102 BB KK0912', 'First Kiss, 1.7oz, 3102 BB KK0912', 1, NULL, '2018-09-26 20:09:15', '2018-09-26 20:09:15'),
(431, 'Princess Fiona, 1.7oz, 31021 BB KK0911', '', '015', 40, 'Princess Fiona, 1.7oz, 31021 BB KK0911', 'cl07y_015_Princess_Fiona.jpg', 470000, 0, 'Princess Fiona, 1.7oz, 31021 BB KK0911', 'Princess Fiona, 1.7oz, 31021 BB KK0911', 1, NULL, '2018-09-26 20:10:08', '2018-09-26 20:10:08'),
(432, 'Procastination, 1.7oz, 31022 BB KK0912', '', '016', 40, 'Procastination, 1.7oz, 31022 BB KK0912', 'BMeZi_016_Procastination.jpg', 470000, 0, 'Procastination, 1.7oz, 31022 BB KK0912', 'Procastination, 1.7oz, 31022 BB KK0912', 1, NULL, '2018-09-26 20:10:58', '2018-09-26 20:10:58'),
(433, 'Perfection, 1.7oz, 31023 BB KK0911', '', '017', 29, 'Perfection, 1.7oz, 31023 BB KK0911', 'aApSt_017_Perfection.jpg', 470000, 0, 'Perfection, 1.7oz, 31023 BB KK0911', 'Perfection, 1.7oz, 31023 BB KK0911', 1, NULL, '2018-09-26 20:11:48', '2018-09-26 20:11:48'),
(434, 'I Love Pink HGM, 1.7oz, 31025 BB KK0911', '', '019', 40, 'I Love Pink HGM, 1.7oz, 31025 BB KK0911', 'T4n2u_019_I_Love_Pink.jpg', 470000, 0, 'I Love Pink HGM, 1.7oz, 31025 BB KK0911', 'I Love Pink HGM, 1.7oz, 31025 BB KK0911', 1, NULL, '2018-09-26 20:14:00', '2018-09-26 20:14:00'),
(435, 'Good Guy Don\'t Cry, 1.7oz, 31026 BB KK0912', '', '020', 40, 'Good Guy Don\'t Cry, 1.7oz, 31026 BB KK0912', 'jFPaf_020_Good_Guy_Don39t_Cry.jpg', 470000, 0, 'Good Guy Don\'t Cry, 1.7oz, 31026 BB KK0912', 'Good Guy Don\'t Cry, 1.7oz, 31026 BB KK0912', 1, NULL, '2018-09-26 20:15:12', '2018-09-26 20:15:12'),
(436, 'Sing Along, 1.7oz, 31027 BB KK0912', '', '021', 40, 'Sing Along, 1.7oz, 31027 BB KK0912', 'I86Hp_021_Sing_Along.jpg', 470000, 0, 'Sing Along, 1.7oz, 31027 BB KK0912', 'Sing Along, 1.7oz, 31027 BB KK0912', 1, NULL, '2018-09-26 20:16:12', '2018-09-26 20:16:12'),
(437, 'Mind Your Business, 1.7oz, 31028 BB KK0912', '', '022', 40, 'Mind Your Business, 1.7oz, 31028 BB KK0912', 'G1FKg_022_Mind_Your_Business.jpg', 470000, 0, 'Mind Your Business, 1.7oz, 31028 BB KK0912', 'Mind Your Business, 1.7oz, 31028 BB KK0912', 1, NULL, '2018-09-26 20:17:26', '2018-09-26 20:17:26'),
(438, 'California Dream, 1.7oz, 31029 BB KK0912', '', '023', 40, 'California Dream, 1.7oz, 31029 BB KK0912', '4PwPT_023_California_Dream.jpg', 470000, 0, 'California Dream, 1.7oz, 31029 BB KK0912', 'California Dream, 1.7oz, 31029 BB KK0912', 1, NULL, '2018-09-26 20:18:32', '2018-09-26 20:18:32'),
(439, 'Rossy Cheeks, 1.7oz, 31030 BB KK0911', '', '024', 40, 'Rossy Cheeks, 1.7oz, 31030 BB KK0911', 'YZOqs_024_Rossy_Cheeks.jpg', 470000, 0, 'Rossy Cheeks, 1.7oz, 31030 BB KK0911', 'Rossy Cheeks, 1.7oz, 31030 BB KK0911', 1, NULL, '2018-09-26 20:19:27', '2018-09-26 20:19:27'),
(440, 'Awakening, 1.7oz, 31031 BB KK0912', '', '025', 40, 'Awakening, 1.7oz, 31031 BB KK0912', 'jVYE9_025_Awakening.jpg', 470000, 0, 'Awakening, 1.7oz, 31031 BB KK0912', 'Awakening, 1.7oz, 31031 BB KK0912', 1, NULL, '2018-09-26 20:20:20', '2018-09-26 20:20:20'),
(441, 'Highly Fashioned, 1.7oz, 31032 BB KK0911', '', '026', 40, 'Highly Fashioned, 1.7oz, 31032 BB KK0911', 'tZbPC_026_Highly_Fashioned.jpg', 470000, 0, 'Highly Fashioned, 1.7oz, 31032 BB KK0911', 'Highly Fashioned, 1.7oz, 31032 BB KK0911', 1, NULL, '2018-09-26 20:21:19', '2018-09-26 20:21:19'),
(442, 'Love Is On The Move, 1.7oz, 31033 BB KK0912', '', '027', 40, 'Love Is On The Move, 1.7oz, 31033 BB KK0912', 'bMCLZ_027_Love_is_on_the_move.jpg', 470000, 0, 'Love Is On The Move, 1.7oz, 31033 BB KK0912', 'Love Is On The Move, 1.7oz, 31033 BB KK0912', 1, NULL, '2018-09-26 20:22:54', '2018-09-26 20:22:54'),
(443, 'Between The Sheets, 1.7oz, 31035 BB KK0912', '', '029', 40, 'Between The Sheets, 1.7oz, 31035 BB KK0912', '1FUIn_029_Between_the_sheets.jpg', 470000, 0, 'Between The Sheets, 1.7oz, 31035 BB KK0912', 'Between The Sheets, 1.7oz, 31035 BB KK0912', 1, NULL, '2018-09-26 20:23:56', '2018-09-26 20:23:56'),
(444, 'Bang The Deam, 1.7oz, 31036 BB KK0911', '', '030', 40, 'Bang The Deam, 1.7oz, 31036 BB KK0911', 'P8xmE_030_Bang_the_Deam.jpg', 470000, 0, 'Bang The Deam, 1.7oz, 31036 BB KK0911', 'Bang The Deam, 1.7oz, 31036 BB KK0911', 1, NULL, '2018-09-26 20:25:05', '2018-09-26 20:25:05'),
(445, 'Frankie Love You, 1.7oz, 31037 BB KK0912', '', '031', 40, 'Frankie Love You, 1.7oz, 31037 BB KK0912', 'E0qbO_031_Frankie_Love_you.jpg', 470000, 0, 'Frankie Love You, 1.7oz, 31037 BB KK0912', 'Frankie Love You, 1.7oz, 31037 BB KK0912', 1, NULL, '2018-09-26 20:25:56', '2018-09-26 20:25:56'),
(446, 'Angel Face, 1.7oz, 31038 BB KK091', '', '032', 40, 'Angel Face, 1.7oz, 31038 BB KK091', 'CTgU5_032_Angel_Face.jpg', 470000, 0, 'Angel Face, 1.7oz, 31038 BB KK091', 'Angel Face, 1.7oz, 31038 BB KK091', 1, NULL, '2018-09-26 20:26:53', '2018-09-26 20:26:53'),
(447, 'So Sweet, 1.7oz, 31039 BB KK0912', '', '033', 40, 'So Sweet, 1.7oz, 31039 BB KK0912', 'jFikC_033_So_Sweet.jpg', 470000, 0, 'So Sweet, 1.7oz, 31039 BB KK0912', 'So Sweet, 1.7oz, 31039 BB KK0912', 1, NULL, '2018-09-26 20:30:14', '2018-09-26 20:30:14'),
(448, 'Holla Hawaiian, 1.7oz, 31042 BB KK0912', '', '036', 40, 'Holla Hawaiian, 1.7oz, 31042 BB KK0912', '1WPOX_036_Holla_Hawaiian.jpg', 470000, 0, 'Holla Hawaiian, 1.7oz, 31042 BB KK0912', 'Holla Hawaiian, 1.7oz, 31042 BB KK0912', 1, NULL, '2018-09-26 20:31:09', '2018-09-26 20:31:09'),
(449, 'Apple Of My Eye, 1.7ozz, 31043 BB KK0911', '', '037', 40, 'Apple Of My Eye, 1.7ozz, 31043 BB KK0911', 'ktngL_037_Apple_of_my_eye.jpg', 470000, 0, 'Apple Of My Eye, 1.7ozz, 31043 BB KK0911', 'Apple Of My Eye, 1.7ozz, 31043 BB KK0911', 1, NULL, '2018-09-26 20:32:12', '2018-09-26 20:32:12'),
(450, 'Above Luccile, 1.7oz, 31045 BB KK0911', '', '039', 40, 'Above Luccile, 1.7oz, 31045 BB KK0911', 'ODhWY_039_Above_Luccile.jpg', 470000, 0, 'Above Luccile, 1.7oz, 31045 BB KK0911', 'Above Luccile, 1.7oz, 31045 BB KK0911', 1, NULL, '2018-09-26 20:33:06', '2018-09-26 20:33:06'),
(451, 'Mia Mia, 1.7oz, 31046 BB KK0912', '', '040', 40, 'Mia Mia, 1.7oz, 31046 BB KK0912', 'R3hsf_040_Mia_Mia.jpg', 470000, 0, 'Mia Mia, 1.7oz, 31046 BB KK0912', 'Mia Mia, 1.7oz, 31046 BB KK0912', 1, NULL, '2018-09-26 20:34:00', '2018-09-26 20:34:00'),
(452, 'Sexy Monica, 1.7oz, 31047 BB KK0912', '', '041', 40, 'Sexy Monica, 1.7oz, 31047 BB KK0912', 'sk29k_041_Sexy_Monica.jpg', 470000, 0, 'Sexy Monica, 1.7oz, 31047 BB KK0912', 'Sexy Monica, 1.7oz, 31047 BB KK0912', 1, NULL, '2018-09-26 20:36:18', '2018-09-26 20:36:18'),
(453, 'Rainbow Tropical, 1.7oz, 31048 BB KK0911', '', '042', 40, 'Rainbow Tropical, 1.7oz, 31048 BB KK0911', '96HjF_042_Rainbow_Tropical.jpg', 470000, 0, 'Rainbow Tropical, 1.7oz, 31048 BB KK0911', 'Rainbow Tropical, 1.7oz, 31048 BB KK0911', 1, NULL, '2018-09-26 20:37:15', '2018-09-26 20:37:15'),
(454, 'Fade In My Mind, 1.7oz, 31050 BB KK0911', '', '044', 40, 'Fade In My Mind, 1.7oz, 31050 BB KK0911', 'vBkOh_044_Fade_in_my_mind.jpg', 470000, 0, 'Fade In My Mind, 1.7oz, 31050 BB KK0911', 'Fade In My Mind, 1.7oz, 31050 BB KK0911', 1, NULL, '2018-09-26 20:38:06', '2018-09-26 20:38:06'),
(455, 'Christmas Red, 1.7oz, 31051 BB KK0925', '', '045', 40, 'Christmas Red, 1.7oz, 31051 BB KK0925', 'MF081_045_Christmas_Red.jpg', 470000, 0, 'Christmas Red, 1.7oz, 31051 BB KK0925', 'Christmas Red, 1.7oz, 31051 BB KK0925', 1, NULL, '2018-09-26 20:42:51', '2018-09-26 20:42:51'),
(456, 'All My Heart, 1.7oz, 31052 BB KK0911', '', '046', 40, 'All My Heart, 1.7oz, 31052 BB KK0911', 'pDpta_046_All_my_heart.jpg', 470000, 0, 'All My Heart, 1.7oz, 31052 BB KK0911', 'All My Heart, 1.7oz, 31052 BB KK0911', 1, NULL, '2018-09-26 20:43:48', '2018-09-26 20:43:48'),
(457, 'Very Me, 1.7oz, 31053 BB KK0924', '', '047', 40, 'Very Me, 1.7oz, 31053 BB KK0924', 'rWJPx_047_Very_me.jpg', 470000, 0, 'Very Me, 1.7oz, 31053 BB KK0924', 'Very Me, 1.7oz, 31053 BB KK0924', 1, NULL, '2018-09-26 20:44:46', '2018-09-26 20:44:46'),
(458, 'Forgivable, 1.7oz, 31056 BB KK0911', '', '050', 40, 'Forgivable, 1.7oz, 31056 BB KK0911', 'PH6t1_050_Forgivable.jpg', 470000, 0, 'Forgivable, 1.7oz, 31056 BB KK0911', 'Forgivable, 1.7oz, 31056 BB KK0911', 1, NULL, '2018-09-26 20:46:08', '2018-09-26 20:46:08'),
(459, 'Never Let Go, 1.7oz, 31057 BB KK0912', '', '051', 40, 'Never Let Go, 1.7oz, 31057 BB KK0912', 'Oxugs_051_Never_let_go.jpg', 470000, 0, 'Never Let Go, 1.7oz, 31057 BB KK0912', 'Never Let Go, 1.7oz, 31057 BB KK0912', 1, NULL, '2018-09-26 20:47:00', '2018-09-26 20:47:00'),
(460, 'Lies Obsession, 1.7oz, 31058 BB KK0911', '', '052', 40, 'Lies Obsession, 1.7oz, 31058 BB KK0911', 'T7EA4_052_Lies_Obsession.jpg', 470000, 0, 'Lies Obsession, 1.7oz, 31058 BB KK0911', 'Lies Obsession, 1.7oz, 31058 BB KK0911', 1, NULL, '2018-09-26 20:48:28', '2018-09-26 20:48:28'),
(461, 'So Deautiful, 1.7oz, 31060 BB KK0911', '', '054', 40, 'So Deautiful, 1.7oz, 31060 BB KK0911', 'OuG0S_054_So_beautiful.jpg', 470000, 0, 'So Deautiful, 1.7oz, 31060 BB KK0911', 'So Deautiful, 1.7oz, 31060 BB KK0911', 1, NULL, '2018-09-26 20:50:51', '2018-09-26 20:50:51'),
(462, 'Be Impossible To Foget, 1.7oz, 31062 BB', '', '056', 40, 'Be Impossible To Foget, 1.7oz, 31062 BB', 'pLOk8_056_Be_impossible_to_foget.jpg', 470000, 0, 'Be Impossible To Foget, 1.7oz, 31062 BB', 'Be Impossible To Foget, 1.7oz, 31062 BB', 1, NULL, '2018-09-26 20:51:47', '2018-09-26 20:51:47'),
(463, 'The Luxury Of Freedom, 1.7oz, 31063 BB KK0912', '', '057', 40, 'The Luxury Of Freedom, 1.7oz, 31063 BB KK0912', 'NrkGT_057_The_luxury_of_freedom.jpg', 470000, 0, 'The Luxury Of Freedom, 1.7oz, 31063 BB KK0912', 'The Luxury Of Freedom, 1.7oz, 31063 BB KK0912', 1, NULL, '2018-09-26 20:54:52', '2018-09-26 20:54:52'),
(464, 'Love Is Precious, 1.7oz, 31064 BB KK0911', '', '058', 40, 'Love Is Precious, 1.7oz, 31064 BB KK0911', 'gmguJ_058_Love_is_precious.jpg', 470000, 0, 'Love Is Precious, 1.7oz, 31064 BB KK0911', 'Love Is Precious, 1.7oz, 31064 BB KK0911', 1, NULL, '2018-09-26 20:56:13', '2018-09-26 20:56:13'),
(465, 'The Summer Heat, 1.7oz, 31065 BB KK0911', '', '059', 40, 'The Summer Heat, 1.7oz, 31065 BB KK0911', '9HbuK_059_The_summer_heat.jpg', 470000, 0, 'The Summer Heat, 1.7oz, 31065 BB KK0911', 'The Summer Heat, 1.7oz, 31065 BB KK0911', 1, NULL, '2018-09-26 20:57:11', '2018-09-26 20:57:11'),
(466, 'Witty, 1.7oz, 31066 BB KK0911', '', '060', 40, 'Witty, 1.7oz, 31066 BB KK0911', 'fe4Io_060_Witty.jpg', 470000, 0, 'Witty, 1.7oz, 31066 BB KK0911', 'Witty, 1.7oz, 31066 BB KK0911', 1, NULL, '2018-09-26 20:58:19', '2018-09-26 20:58:19'),
(467, 'Confident, 1.7oz, 31067 BB KK0911', '', '061', 40, 'Confident, 1.7oz, 31067 BB KK0911', 'xlEpY_061_Confident.jpg', 470000, 0, 'Confident, 1.7oz, 31067 BB KK0911', 'Confident, 1.7oz, 31067 BB KK0911', 1, NULL, '2018-09-26 20:59:32', '2018-09-26 20:59:32'),
(468, 'Believe In Yourself, 1.7oz, 31069 BB KK0911', '', '063', 40, 'Believe In Yourself, 1.7oz, 31069 BB KK0911', 'pB8rG_063_Believe_in_yourself.jpg', 470000, 0, 'Believe In Yourself, 1.7oz, 31069 BB KK0911', 'Believe In Yourself, 1.7oz, 31069 BB KK0911', 1, NULL, '2018-09-26 21:00:25', '2018-09-26 21:00:25'),
(469, 'Newport, 1.7oz, 31070 BB KK0911', '', '064', 40, 'Newport, 1.7oz, 31070 BB KK0911', 'CO7iX_064_Newport.jpg', 470000, 0, 'Newport, 1.7oz, 31070 BB KK0911', 'Newport, 1.7oz, 31070 BB KK0911', 1, NULL, '2018-09-26 21:03:23', '2018-09-26 21:03:23'),
(470, 'Laguna, 1.7oz, 31071 BB KK0911', '', '065', 40, 'Laguna, 1.7oz, 31071 BB KK0911', 'FV5PQ_065_Laguna.jpg', 470000, 0, 'Laguna, 1.7oz, 31071 BB KK0911', 'Laguna, 1.7oz, 31071 BB KK0911', 1, NULL, '2018-09-26 21:05:27', '2018-09-26 21:05:27'),
(471, 'Hermosa, 1.7oz, 31073 BB KK0912', '', '067', 40, 'Hermosa, 1.7oz, 31073 BB KK0912', 'tT9wU_067_Hermosa.jpg', 470000, 0, 'Hermosa, 1.7oz, 31073 BB KK0912', 'Hermosa, 1.7oz, 31073 BB KK0912', 1, NULL, '2018-09-26 21:06:32', '2018-09-26 21:06:32'),
(472, 'Magarita, 1.7oz, 31076 BB KK0911', '', '070', 40, 'Magarita, 1.7oz, 31076 BB KK0911', '5psJJ_070_Magarita.jpg', 470000, 0, 'Magarita, 1.7oz, 31076 BB KK0911', 'Magarita, 1.7oz, 31076 BB KK0911', 1, NULL, '2018-09-26 21:09:01', '2018-09-26 21:09:01'),
(473, 'Martini, 1.7oz, 31079 BB KK0911', '', '073', 40, 'Martini, 1.7oz, 31079 BB KK0911', 'XUUnD_073_Martini.jpg', 470000, 0, 'Martini, 1.7oz, 31079 BB KK0911', 'Martini, 1.7oz, 31079 BB KK0911', 1, NULL, '2018-09-26 21:10:20', '2018-09-26 21:10:20'),
(474, 'Melon Ball, 1.7oz, 31080 BB KK0911', '', '074', 40, 'Melon Ball, 1.7oz, 31080 BB KK0911', 'aGpIX_074_Melon_Ball.jpg', 470000, 0, 'Melon Ball, 1.7oz, 31080 BB KK0911', 'Melon Ball, 1.7oz, 31080 BB KK0911', 1, NULL, '2018-09-26 21:11:33', '2018-09-26 21:11:33'),
(475, 'Tequila, 1.7oz, 31081 BB KK0911', '', '075', 40, 'Tequila, 1.7oz, 31081 BB KK0911', 'Wujru_075_Tequila.jpg', 470000, 0, 'Tequila, 1.7oz, 31081 BB KK0911', 'Tequila, 1.7oz, 31081 BB KK0911', 1, NULL, '2018-09-26 21:12:38', '2018-09-26 21:12:38'),
(476, 'Daiquiri, 1.7oz, 31082 BB KK0911', '', '076', 40, 'Daiquiri, 1.7oz, 31082 BB KK0911', 'Aedsq_076_daiquiri.jpg', 470000, 0, 'Daiquiri, 1.7oz, 31082 BB KK0911', 'Daiquiri, 1.7oz, 31082 BB KK0911', 1, NULL, '2018-09-26 21:14:17', '2018-09-26 21:14:17'),
(477, 'Gone With The Wind, 1.7oz, 31084 BB KK0912', '', '078', 40, 'Gone With The Wind, 1.7oz, 31084 BB KK0912', 'B1eRo_078_Gone_with_the_wind.jpg', 470000, 0, 'Gone With The Wind, 1.7oz, 31084 BB KK0912', 'Gone With The Wind, 1.7oz, 31084 BB KK0912', 1, NULL, '2018-09-26 21:16:16', '2018-09-26 21:16:16'),
(478, 'Legendary, 1.7oz, 31086 BB KK0912', '', '080', 40, 'Legendary, 1.7oz, 31086 BB KK0912', '1aJm8_080_Legendary.jpg', 470000, 0, 'Legendary, 1.7oz, 31086 BB KK0912', 'Legendary, 1.7oz, 31086 BB KK0912', 1, NULL, '2018-09-26 21:19:22', '2018-09-26 21:19:22'),
(479, 'My Ex-Boyfriend, 1.7oz, 31087 BB KK0912', '', '081', 40, 'My Ex-Boyfriend, 1.7oz, 31087 BB KK0912', 'X56dz_081_My_Ex-boyfriend.jpg', 470000, 0, 'My Ex-Boyfriend, 1.7oz, 31087 BB KK0912', 'My Ex-Boyfriend, 1.7oz, 31087 BB KK0912', 1, NULL, '2018-09-26 21:20:37', '2018-09-26 21:20:37'),
(480, 'My Ex-Girlfriend, 1.7oz, 31088 BB KK0912', '', '082', 40, 'My Ex-Girlfriend, 1.7oz, 31088 BB KK0912', 'qdtji_082_My_Ex-girlfriend.jpg', 470000, 0, 'My Ex-Girlfriend, 1.7oz, 31088 BB KK0912', 'My Ex-Girlfriend, 1.7oz, 31088 BB KK0912', 1, NULL, '2018-09-26 21:22:29', '2018-09-26 21:22:29'),
(481, 'Las Vegas Tradeshow, 1.7oz, 31089 BB KK0912', '', '083', 40, 'Las Vegas Tradeshow, 1.7oz, 31089 BB KK0912', 'QCjLP_083_Las_Vegas_Tradeshow.jpg', 470000, 0, 'Las Vegas Tradeshow, 1.7oz, 31089 BB KK0912', 'Las Vegas Tradeshow, 1.7oz, 31089 BB KK0912', 1, NULL, '2018-09-26 21:23:55', '2018-09-26 21:23:55'),
(482, 'Casablance, 1.7oz, 31091 BB KK0912', '', '085', 40, 'Casablance, 1.7oz, 31091 BB KK0912', 'eqiQW_085_Casablance.jpg', 470000, 0, 'Casablance, 1.7oz, 31091 BB KK0912', 'Casablance, 1.7oz, 31091 BB KK0912', 1, NULL, '2018-09-26 21:25:28', '2018-09-26 21:25:28'),
(483, 'Careless Whisper, 1.7oz, 31092 BB KK0912', '', '086', 40, 'Careless Whisper, 1.7oz, 31092 BB KK0912', 'HbgQB_086_Careless_Whisper.jpg', 470000, 0, 'Careless Whisper, 1.7oz, 31092 BB KK0912', 'Careless Whisper, 1.7oz, 31092 BB KK0912', 1, NULL, '2018-09-26 21:28:48', '2018-09-26 21:28:48'),
(484, 'Sakura, 1.7oz, 31094 BB KK0912', '', '088', 40, 'Sakura, 1.7oz, 31094 BB KK0912', 'akO3U_088_Sakura.jpg', 470000, 0, 'Sakura, 1.7oz, 31094 BB KK0912', 'Sakura, 1.7oz, 31094 BB KK0912', 1, NULL, '2018-09-26 21:30:53', '2018-09-26 21:30:53'),
(485, 'Hannah\'s Passion, 1.7oz, 31096 BB KK0912', '', '090', 40, 'Hannah\'s Passion, 1.7oz, 31096 BB KK0912', 'g3DVC_090_Hannah39s_Passion.jpg', 470000, 0, 'Hannah\'s Passion, 1.7oz, 31096 BB KK0912', 'Hannah\'s Passion, 1.7oz, 31096 BB KK0912', 1, NULL, '2018-09-26 21:31:52', '2018-09-26 21:31:52'),
(486, 'I Fell In Love, 1.7oz, 31098 BB KK0911', '', '092', 40, 'I Fell In Love, 1.7oz, 31098 BB KK0911', 'KNk4S_092_I_fell_in_love.jpg', 470000, 0, 'I Fell In Love, 1.7oz, 31098 BB KK0911', 'I Fell In Love, 1.7oz, 31098 BB KK0911', 1, NULL, '2018-09-26 21:41:58', '2018-09-26 21:41:58'),
(487, 'Elegant Lady, 1.7oz, 31099 BB KK0911', '', '093', 40, 'Elegant Lady, 1.7oz, 31099 BB KK0911', 'SaiyR_093_Elegant_Lady.jpg', 470000, 0, 'Elegant Lady, 1.7oz, 31099 BB KK0911', 'Elegant Lady, 1.7oz, 31099 BB KK0911', 1, NULL, '2018-09-26 21:42:54', '2018-09-26 21:42:54'),
(488, 'So Attractive!, 1.7oz, 31100 BB KK0911', '', '094', 40, 'So Attractive!, 1.7oz, 31100 BB KK0911', 'L4Pdt_094_So_Attractive.jpg', 470000, 0, 'So Attractive!, 1.7oz, 31100 BB KK0911', 'So Attractive!, 1.7oz, 31100 BB KK0911', 1, NULL, '2018-09-26 21:44:11', '2018-09-26 21:44:11'),
(489, 'Short Hair, 1.7oz, 31102 BB KK0924', '', '096', 40, 'Short Hair, 1.7oz, 31102 BB KK0924', 'G9g4Z_096_Short_Hair.jpg', 470000, 0, 'Short Hair, 1.7oz, 31102 BB KK0924', 'Short Hair, 1.7oz, 31102 BB KK0924', 1, NULL, '2018-09-26 21:45:18', '2018-09-26 21:45:18'),
(490, 'Coffee At 7am, 1.7oz, 31103 BB KK0912', '', '097', 40, 'Coffee At 7am, 1.7oz, 31103 BB KK0912', 'HXmWe_097_Coffee_at_7am.jpg', 470000, 0, 'Coffee At 7am, 1.7oz, 31103 BB KK0912', 'Coffee At 7am, 1.7oz, 31103 BB KK0912', 1, NULL, '2018-09-26 21:46:42', '2018-09-26 21:46:42'),
(491, 'Success, 1.7oz, 31104 BB KK091', '', '098', 40, 'Success, 1.7oz, 31104 BB KK091', 'SLh5O_098_Success.jpg', 470000, 0, 'Success, 1.7oz, 31104 BB KK091', 'Success, 1.7oz, 31104 BB KK091', 1, NULL, '2018-09-26 21:47:51', '2018-09-26 21:47:51'),
(492, 'BMT, 1.7oz, 31105 BB KK0912', '', '099', 40, 'BMT, 1.7oz, 31105 BB KK0912', 's0jEv_099_BMT.jpg', 470000, 0, 'BMT, 1.7oz, 31105 BB KK0912', 'BMT, 1.7oz, 31105 BB KK0912', 1, NULL, '2018-09-26 21:49:06', '2018-09-26 21:49:06'),
(493, 'Mayo, 1.7oz, 31106 BB KK0912', '', '100', 40, 'Mayo, 1.7oz, 31106 BB KK0912', '83daO_100_Mayo.jpg', 470000, 0, 'Mayo, 1.7oz, 31106 BB KK0912', 'Mayo, 1.7oz, 31106 BB KK0912', 1, NULL, '2018-09-26 21:50:24', '2018-09-26 21:50:24'),
(494, 'Blue Blue, 1.7oz, 31107 BB KK0911', '', '101', 39, 'Blue Blue, 1.7oz, 31107 BB KK0911', 'qBEVF_101_Blue_Blue.jpg', NULL, 0, 'Blue Blue, 1.7oz, 31107 BB KK0911', 'Blue Blue, 1.7oz, 31107 BB KK0911', 1, NULL, '2018-09-26 21:51:23', '2018-09-26 21:51:23'),
(495, 'Nail Girl, 1.7oz, 31108 BB KK0912', '', '102', 40, 'Nail Girl, 1.7oz, 31108 BB KK0912', 'cx3zL_102_Nail_Girl.jpg', 470000, 0, 'Nail Girl, 1.7oz, 31108 BB KK0912', 'Nail Girl, 1.7oz, 31108 BB KK0912', 1, NULL, '2018-09-26 21:52:15', '2018-09-26 21:52:15'),
(496, 'Miss You, 1.7oz, 31110 BB KK0912', '', '104', 40, 'Miss You, 1.7oz, 31110 BB KK0912', 'Q296U_104_Miss_you.jpg', 470000, 0, 'Miss You, 1.7oz, 31110 BB KK0912', 'Miss You, 1.7oz, 31110 BB KK0912', 1, NULL, '2018-09-26 21:55:33', '2018-09-26 21:55:33'),
(497, 'Nail Melody, 1.7oz, 31111 BB KK0912', '', '105', 40, 'Nail Melody, 1.7oz, 31111 BB KK0912', '0S5Rx_105_Nail_Melody.jpg', 470000, 0, 'Nail Melody, 1.7oz, 31111 BB KK0912', 'Nail Melody, 1.7oz, 31111 BB KK0912', 1, NULL, '2018-09-26 21:57:27', '2018-09-26 21:57:27'),
(498, 'Rock Stars, 1.7oz, 31112 BB KK091', '', '106', 40, 'Rock Stars, 1.7oz, 31112 BB KK091', 'MUX9l_106_Rock_Stars.jpg', 470000, 0, 'Rock Stars, 1.7oz, 31112 BB KK091', 'Rock Stars, 1.7oz, 31112 BB KK091', 1, NULL, '2018-09-26 21:59:17', '2018-09-26 21:59:17'),
(499, 'Way Back Into Love, 1.7oz, 31113 BB KK0912', '', '107', 40, 'Way Back Into Love, 1.7oz, 31113 BB KK0912', 'btZz3_107_Way_back_into_love.jpg', 470000, 0, 'Way Back Into Love, 1.7oz, 31113 BB KK0912', 'Way Back Into Love, 1.7oz, 31113 BB KK0912', 1, NULL, '2018-09-26 22:00:47', '2018-09-26 22:00:47'),
(500, 'Orchid, 1.7oz, 31114 BB KK0912', '', '108', 40, 'Orchid, 1.7oz, 31114 BB KK0912', 'RrBU0_108_Orchid.jpg', 470000, 0, 'Orchid, 1.7oz, 31114 BB KK0912', 'Orchid, 1.7oz, 31114 BB KK0912', 1, NULL, '2018-09-26 22:01:53', '2018-09-26 22:01:53'),
(501, 'Engagement Ring,1.7oz, 31115 BB KK0911', '', '109', 40, 'Engagement Ring,1.7oz, 31115 BB KK0911', '3ZxHn_109_Engagement_Ring.jpg', 470000, 0, 'Engagement Ring,1.7oz, 31115 BB KK0911', 'Engagement Ring,1.7oz, 31115 BB KK0911', 1, NULL, '2018-09-26 23:11:53', '2018-09-26 23:11:53'),
(502, 'Love At Frist Sight,1.7oz, 31116 BB KK0911', '', '110', 40, 'Love At Frist Sight,1.7oz, 31116 BB KK0911', 'qsrWP_110_Love_at_frist_sight.jpg', 470000, 0, 'Love At Frist Sight,1.7oz, 31116 BB KK0911', 'Love At Frist Sight,1.7oz, 31116 BB KK0911', 1, NULL, '2018-09-26 23:12:51', '2018-09-26 23:12:51'),
(503, 'My Handsome Fiance, 1.7oz, 31118 BB KK0911', '', '112', 40, 'My Handsome Fiance, 1.7oz, 31118 BB KK0911', 'v9t9H_112_My_Handsome_Fiance.jpg', 470000, 0, 'My Handsome Fiance, 1.7oz, 31118 BB KK0911', 'My Handsome Fiance, 1.7oz, 31118 BB KK0911', 1, NULL, '2018-09-26 23:14:31', '2018-09-26 23:14:31'),
(504, 'BP Team, 1.7oz, 31119 BB KK0911', '', '113', 40, 'BP Team, 1.7oz, 31119 BB KK0911', 'dxMZd_113_BP_team.jpg', 470000, 0, 'BP Team, 1.7oz, 31119 BB KK0911', 'BP Team, 1.7oz, 31119 BB KK0911', 1, NULL, '2018-09-26 23:15:26', '2018-09-26 23:15:26'),
(505, 'My First Staff, 1.7oz, 31120 BB KK0912', '', '114', 40, 'My First Staff, 1.7oz, 31120 BB KK0912', 'uwVO8_114_My_First_Staff.jpg', 470000, 0, 'My First Staff, 1.7oz, 31120 BB KK0912', 'My First Staff, 1.7oz, 31120 BB KK0912', 1, NULL, '2018-09-26 23:16:26', '2018-09-26 23:16:26'),
(506, 'Mood For Purple, 1.7oz, 31121 BB KK0911', '', '115', 40, 'Mood For Purple, 1.7oz, 31121 BB KK0911', 'ufwuR_115_Mood_for_purple.jpg', 470000, 0, 'Mood For Purple, 1.7oz, 31121 BB KK0911', 'Mood For Purple, 1.7oz, 31121 BB KK0911', 1, NULL, '2018-09-26 23:17:27', '2018-09-26 23:17:27'),
(507, 'Pick Me Up, 1.7oz, 31122 BB KK0912', '', '116', 40, 'Pick Me Up, 1.7oz, 31122 BB KK0912', '3Uqj8_116_Pick_me_up.jpg', 470000, 0, 'Pick Me Up, 1.7oz, 31122 BB KK0912', 'Pick Me Up, 1.7oz, 31122 BB KK0912', 1, NULL, '2018-09-26 23:18:15', '2018-09-26 23:18:15'),
(508, 'Butterfly, 1.7oz, 31123 BB KK0912', '', '117', 40, 'Butterfly, 1.7oz, 31123 BB KK0912', 'G71Ki_117_Butterfly.jpg', 470000, 0, 'Butterfly, 1.7oz, 31123 BB KK0912', 'Butterfly, 1.7oz, 31123 BB KK0912', 1, NULL, '2018-09-26 23:19:05', '2018-09-26 23:19:05'),
(509, 'Embrace Your Life, 1.7oz, 31124 BB KK091', '', '118', 40, 'Embrace Your Life, 1.7oz, 31124 BB KK091', 'WL93w_118_Embrace_your_life.jpg', 470000, 0, 'Embrace Your Life, 1.7oz, 31124 BB KK091', 'Embrace Your Life, 1.7oz, 31124 BB KK091', 1, NULL, '2018-09-26 23:19:56', '2018-09-26 23:19:56'),
(510, 'Tropical Drinks, 1.7oz, 31126 BB KK0912', '', '120', 40, 'Tropical Drinks, 1.7oz, 31126 BB KK0912', '9sVR4_120_Tropical_Drinks.jpg', 470000, 0, 'Tropical Drinks, 1.7oz, 31126 BB KK0912', 'Tropical Drinks, 1.7oz, 31126 BB KK0912', 1, NULL, '2018-09-26 23:21:01', '2018-09-26 23:21:01'),
(511, 'Golden Egg, 1.7oz, 31131 BB KK0911', '', '125', 40, 'Golden Egg, 1.7oz, 31131 BB KK0911', '5TGvy_125_Golden_Egg.jpg', 470000, 0, 'Golden Egg, 1.7oz, 31131 BB KK0911', 'Golden Egg, 1.7oz, 31131 BB KK0911', 1, NULL, '2018-09-26 23:21:53', '2018-09-26 23:21:53'),
(512, 'Anniversary, 1.7oz, 31134 BB KK0911', '', '128', 40, 'Anniversary, 1.7oz, 31134 BB KK0911', 'jdK1e_128-anniversary-169.png', 470000, 0, 'Anniversary, 1.7oz, 31134 BB KK0911', 'Anniversary, 1.7oz, 31134 BB KK0911', 1, NULL, '2018-09-26 23:22:51', '2018-09-26 23:22:51'),
(513, 'Close to you, 1.7oz, 31135 BB KK0911', '', '129', 40, 'Close to you, 1.7oz, 31135 BB KK0911', 'TsVtj_129-close-to-you-13.png', 470000, 0, 'Close to you, 1.7oz, 31135 BB KK0911', 'Close to you, 1.7oz, 31135 BB KK0911', 1, NULL, '2018-09-26 23:23:55', '2018-09-26 23:23:55'),
(514, 'Rain Storm, 1.7oz, 31137 BB KK0912', '', '131', 40, 'Rain Storm, 1.7oz, 31137 BB KK0912', 'ATe4Q_131_Rain_Storm.jpg', 470000, 0, 'Rain Storm, 1.7oz, 31137 BB KK0912', 'Rain Storm, 1.7oz, 31137 BB KK0912', 1, NULL, '2018-09-26 23:24:59', '2018-09-26 23:24:59'),
(515, 'Milky, 1.7oz, 31141 BB KK0912', '', '135', 40, 'Milky, 1.7oz, 31141 BB KK0912', 'inUlH_135-milky-P70.png', 470000, 0, 'Milky, 1.7oz, 31141 BB KK0912', 'Milky, 1.7oz, 31141 BB KK0912', 1, NULL, '2018-09-26 23:26:04', '2018-09-26 23:26:04'),
(516, 'My Fair Lady, 1.7oz, 31146 BB KK0912', '', '140', 40, 'My Fair Lady, 1.7oz, 31146 BB KK0912', 'pXDPs_140_My_fair_lady.jpg', 470000, 0, 'My Fair Lady, 1.7oz, 31146 BB KK0912', 'My Fair Lady, 1.7oz, 31146 BB KK0912', 1, NULL, '2018-09-26 23:26:56', '2018-09-26 23:26:56'),
(517, 'Jack & Rose, 1.7oz, 31147 BB KK0912', '', '141', 40, 'Jack & Rose, 1.7oz, 31147 BB KK0912', 'REY3y_141_Jack__Rose.jpg', 470000, 0, 'Jack & Rose, 1.7oz, 31147 BB KK0912', 'Jack & Rose, 1.7oz, 31147 BB KK0912', 1, NULL, '2018-09-26 23:27:47', '2018-09-26 23:27:47'),
(518, 'Pink Lady, 1.7oz, 31148 BB KK0912', '', '142', 40, 'Pink Lady, 1.7oz, 31148 BB KK0912', 'I5lLo_142_Pink_lady.jpg', 470000, 0, 'Pink Lady, 1.7oz, 31148 BB KK0912', 'Pink Lady, 1.7oz, 31148 BB KK0912', 1, NULL, '2018-09-26 23:33:13', '2018-09-26 23:33:13'),
(519, 'Full Speed, 1.7oz, 31149 BB KK0912', '', '143', 40, 'Full Speed, 1.7oz, 31149 BB KK0912', 'qVcSG_143_Full_speed.jpg', 470000, 0, 'Full Speed, 1.7oz, 31149 BB KK0912', 'Full Speed, 1.7oz, 31149 BB KK0912', 1, NULL, '2018-09-26 23:34:04', '2018-09-26 23:34:04'),
(520, 'Lemon Drop, 1.7oz, 31150 BB KK0912', '', '144', 40, 'Lemon Drop, 1.7oz, 31150 BB KK0912', 'HNvHR_144_Lemon_drop.jpg', 470000, 0, 'Lemon Drop, 1.7oz, 31150 BB KK0912', 'Lemon Drop, 1.7oz, 31150 BB KK0912', 1, NULL, '2018-09-26 23:34:54', '2018-09-26 23:34:54'),
(521, 'Beauty Hanah, 1.7oz, 31151 BB KK0912', '', '145', 40, 'Beauty Hanah, 1.7oz, 31151 BB KK0912', '3mkfh_145-beautyhanah_32.png', 470000, 0, 'Beauty Hanah, 1.7oz, 31151 BB KK0912', 'Beauty Hanah, 1.7oz, 31151 BB KK0912', 1, NULL, '2018-09-26 23:36:08', '2018-09-26 23:36:08'),
(522, 'Pokemon Go, 1.7oz, 31155 BB KK0911', '', '149', 40, 'Pokemon Go, 1.7oz, 31155 BB KK0911', 'iHnoR_149_Pokemon_Go.jpg', 470000, 0, 'Pokemon Go, 1.7oz, 31155 BB KK0911', 'Pokemon Go, 1.7oz, 31155 BB KK0911', 1, NULL, '2018-09-26 23:41:26', '2018-09-26 23:41:26'),
(523, 'Doreamon, 1.7oz, 31156 BB KK0911', '', '150', 40, 'Doreamon, 1.7oz, 31156 BB KK0911', 'dXxJw_150_Doreamon.jpg', 470000, 0, 'Doreamon, 1.7oz, 31156 BB KK0911', 'Doreamon, 1.7oz, 31156 BB KK0911', 1, NULL, '2018-09-26 23:42:28', '2018-09-26 23:42:28'),
(524, 'C01, 1oz, 31225 BB KK0911', '', 'C01', 41, NULL, 'tXKR9_M1.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-26 23:59:58', '2018-09-26 23:59:58'),
(525, 'C02, 1oz, 31226 BB KK0911', '', 'C02', 41, NULL, 'FhHGU_M2.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:00:40', '2018-09-27 00:00:40'),
(526, 'C03, 1oz, 31227 BB KK0911', '', 'C03', 41, NULL, 'ARiM3_M3.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:01:13', '2018-09-27 00:01:13'),
(527, 'C04, 1oz, 31228 BB KK0911', '', 'C04', 41, NULL, 'TDSAH_M4.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:02:10', '2018-09-27 00:02:10'),
(528, 'C05, 1oz, 31229 BB KK0911', '', 'C05', 41, NULL, 'Vel6I_M5.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:03:11', '2018-09-27 00:03:11'),
(529, 'C06, 1oz, 31230 BB KK0911', '', 'C06', 41, NULL, 'n3SJg_M6.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:04:01', '2018-09-27 00:04:01'),
(530, 'C07, 1oz, 31231 BB KK0911', '', 'C07', 41, NULL, '76IJD_M7.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:04:33', '2018-09-27 00:04:33'),
(531, 'C08, 1oz, 31232 BB KK0911', '', 'C08', 41, NULL, '6GH15_M8.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:05:10', '2018-09-27 00:05:10'),
(532, 'C09, 1oz, 31233 BB KK0911', '', 'C09', 41, NULL, 'lXzJA_M9.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:05:44', '2018-09-27 00:05:44'),
(533, 'C10, 1oz, 31234 BB KK0911', '', 'C10', 41, NULL, 'pCvMa_M10_2bfd6ed2-1628-4fb5-8a60-dd9089ad9076.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:07:44', '2018-09-27 00:07:44'),
(534, 'C11, 1oz, 31235 BB KK0911', '', 'C11', 41, NULL, '1DUZy_M11_9769242e-72a6-472c-a9ad-682c8c54a815.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:08:24', '2018-09-27 00:08:24');
INSERT INTO `products` (`id`, `name`, `alias`, `item_code`, `id_type`, `detail`, `image_link`, `price`, `discount_price`, `keyword`, `description`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(535, 'C12, 1oz, 31236 BB KK0911', '', 'C12', 41, NULL, 'GXVoG_M12_06653a84-0629-449f-bff2-f02e60cb7be8.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:09:31', '2018-09-27 00:09:31'),
(536, 'C13, 1oz, 31237 BB KK0911', '', 'C13', 41, NULL, 'gjjNN_M13_5dfc11f7-1877-42fb-901b-c733c93a8b1f.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:10:09', '2018-09-27 00:10:09'),
(537, 'C14, 1oz, 31238 BB KK0911', '', 'C14', 41, NULL, 'R9MC0_M14_ce2ed408-ce64-458d-a3f4-d2b4d5ad3d03.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:10:59', '2018-09-27 00:10:59'),
(538, 'C15, 1oz, 31239 BB KK0911', '', 'C15', 41, NULL, 'uvuBY_M15_293d83b8-2d63-4295-8ac2-134337478218.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:11:36', '2018-09-27 00:11:36'),
(539, 'C16, 1oz, 31240 BB KK0911', '', 'C16', 41, NULL, 'DPRPr_M16_e211bfb7-9b37-424f-a31b-1db457b4d393.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:12:12', '2018-09-27 00:12:12'),
(540, 'C17, 1oz, 31241 BB KK0911', '', 'C17', 41, NULL, '6P5cA_M17_352053ec-2d21-4372-86f9-3af073f2013f.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:12:47', '2018-09-27 00:12:47'),
(541, 'C18, 1oz, 31242 BB KK0911', '', 'C18', 41, NULL, 'HHqX4_M18_3d4a9246-8a45-4d34-b53f-6693aab3b9a3.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:13:27', '2018-09-27 00:13:27'),
(542, 'C19, 1oz, 31243 BB KK0911', '', 'C19', 41, NULL, '5bR6f_M19_956e9b02-3fcb-4925-a3f9-d2f802477a98.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:15:16', '2018-09-27 00:15:16'),
(543, 'C20, 1oz, 31244 BB KK0911', '', 'C20', 41, NULL, 'qjECX_M20_5ce5e1b3-2f42-4b00-ae17-92a12be2f441.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:15:58', '2018-09-27 00:15:58'),
(544, 'C21, 1oz, 31245 BB KK0911', '', 'C21', 41, NULL, 'Xy92o_M21_49452770-da31-4042-8ae5-195b9e9d29fc.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:16:48', '2018-09-27 00:16:48'),
(545, 'C22, 1oz, 31246 BB KK0911', '', 'C22', 41, NULL, 'VWh2F_M22_d8775049-084d-4b9e-9d4b-029ef3cad640.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:17:29', '2018-09-27 00:17:29'),
(546, 'C23, 1oz, 31247 BB KK0911', '', 'C23', 41, NULL, 'LkgaM_M23_f0fceb2e-bd8e-49eb-bc13-788013709206.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:18:03', '2018-09-27 00:18:03'),
(547, 'C24, 1oz, 31248 BB KK0911', '', 'C24', 41, NULL, 'TNf8O_M24_519dd643-7bd8-4c57-80e3-ced7726f5c93.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:19:12', '2018-09-27 00:19:12'),
(548, 'C25, 1oz, 31249 BB KK0911', '', 'C25', 41, NULL, 'euzxE_M25_6089b41a-c546-48fd-a298-abdfc80f49d4.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:20:14', '2018-09-27 00:20:14'),
(549, 'C26, 1oz, 31250 BB KK0911', '', 'C26', 41, NULL, 'gtBhk_M26_f1ed7f8d-4386-4003-bb6e-52c3902c84e4.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:22:18', '2018-09-27 00:22:18'),
(550, 'C27, 1oz, 31251 BB KK0911', '', 'C27', 41, NULL, 'efZwq_M27_366642ed-fef1-460f-967b-de369f8382ff.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:22:54', '2018-09-27 00:22:54'),
(551, 'C28, 1oz, 31252 BB KK0911', '', 'C28', 41, NULL, 'Y7HH9_M28_944846f5-8a00-4d64-97ce-1c98591d91e9.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:23:24', '2018-09-27 00:23:24'),
(552, 'C29, 1oz, 31253 BB KK0911', '', 'C29', 41, NULL, 'bKANp_M29_d1115264-cb36-4045-8836-d72b689dc015.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:25:16', '2018-09-27 00:25:16'),
(553, 'C30, 1oz, 31254 BB KK0911', '', 'C30', 41, NULL, 'oZ9HI_M30_7762706c-9d27-4c03-a8d0-0b6c95495a59.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:25:47', '2018-09-27 00:25:47'),
(554, 'C31, 1oz, 31255 BB KK0911', '', 'C31', 41, NULL, 'jLnEx_M31_f7c1c782-361b-42af-912c-8cfd754c48da.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:26:18', '2018-09-27 00:26:18'),
(555, 'C32, 1oz, 31256 BB KK0911', '', 'C32', 41, NULL, 'zLncq_M32_863f6656-5075-4efa-8a26-ff58b09bc1ba.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:26:55', '2018-09-27 00:26:55'),
(556, 'C33, 1oz, 31257 BB KK0911', '', 'C33', 41, NULL, 'YKnEn_M33_a201ab5b-cba5-4536-8b9e-cd5942760caa.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:27:32', '2018-09-27 00:27:32'),
(557, 'C34, 1oz, 31258 BB KK0911', '', 'C34', 41, NULL, 'kdR43_M34_30aa5222-8189-475b-8405-a0439d2d2dba.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:28:14', '2018-09-27 00:28:14'),
(558, 'C35, 1oz, 31259 BB KK0911', '', 'C35', 41, NULL, 'B04sC_M35_5c7c74ed-1c8e-4378-bea2-66f4c347f0f0.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:28:47', '2018-09-27 00:28:47'),
(559, 'C36, 1oz, 31260 BB KK0911', '', 'C36', 41, NULL, '7MGyd_M36_c3f119fd-4cd6-4f81-a407-c0c7c75bf114.png', 470000, 0, NULL, NULL, 1, NULL, '2018-09-27 00:29:17', '2018-09-27 00:29:17'),
(560, 'Glitter - 001', '', '001', 42, NULL, 'mu7jr_01_884ee606-0f01-41a5-8d88-5ed19fada5d9.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:37:36', '2018-09-27 00:37:36'),
(561, 'Glitter - 002', '', '002', 42, NULL, 'yuvtp_02_1c4df462-d647-4e27-b4b9-f42bd2a038c2.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:38:14', '2018-09-27 00:38:14'),
(562, 'Glitter - 003', '', '003', 42, NULL, 'f24uo_03_97bf47ba-553e-47ae-bf99-24a0e538fea9.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:38:49', '2018-09-27 00:38:49'),
(563, 'Glitter - 004', '', '004', 42, NULL, 'NTsk5_04_9e56f2c5-9d48-450a-97cc-0d93a0615d5b.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:39:19', '2018-09-27 00:39:19'),
(564, 'Glitter - 005', '', '005', 42, NULL, 'bZqob_05_a4ad39a5-7f4c-407c-bcb1-6f02f4231ab7.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:40:17', '2018-09-27 00:40:17'),
(565, 'Glitter - 006', '', '006', 42, NULL, 'A5iDI_06_a6aa1dbb-891c-471d-866b-ca7579814bb4.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:40:48', '2018-09-27 00:40:48'),
(566, 'Glitter - 007', '', '007', 42, NULL, 'Yqm0J_07_362f150d-0f13-4ccc-84c3-7e567553b8c5.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:41:16', '2018-09-27 00:41:16'),
(567, 'Glitter - 008', '', '008', 42, NULL, 'KyGwf_08_eeab0175-cc6c-48e0-b40d-51fc373a7a75.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:41:54', '2018-09-27 00:41:54'),
(568, 'Glitter - 009', '', '009', 42, NULL, 'dZap7_09_8921857d-5ba3-4765-b6fd-73285ddc867d.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:42:30', '2018-09-27 00:42:30'),
(569, 'Glitter - 010', '', '010', 42, NULL, 'K6qNY_10_83d5583d-c4bf-4a50-b3fe-71b44df6d0d7.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:43:31', '2018-09-27 00:43:31'),
(570, 'Glitter - 011', '', '011', 42, NULL, 'w6cHm_11_ce964754-dac3-49ef-ba83-22dcb4d44d5e.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:44:08', '2018-09-27 00:44:08'),
(571, 'Glitter - 012', '', '012', 42, NULL, 'CGvwB_12_8cc45315-873d-4765-aced-859585fd6c14.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:44:42', '2018-09-27 00:44:42'),
(572, 'Glitter - 013', '', '013', 42, NULL, '0NSS9_13_59f84471-3998-4198-b2f4-3cfa1551c94c.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:45:10', '2018-09-27 00:45:10'),
(573, 'Glitter - 014', '', '014', 42, NULL, '6bwht_14_e60135a2-a639-4d0f-8423-85db9fe4f9eb.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:45:44', '2018-09-27 00:45:44'),
(574, 'Glitter - 015', '', '015', 42, NULL, 'aQfwn_15_7246a201-8a86-4c02-abea-10ab249f772b.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:46:15', '2018-09-27 00:46:15'),
(575, 'Glitter - 016', '', '016', 42, NULL, 'tHCqr_16_4e7797b6-d726-4a55-94dd-f4d485bbb9e3.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:46:46', '2018-09-27 00:46:46'),
(576, 'Glitter - 017', '', '017', 42, NULL, 'maFmv_17_847995fc-bb3f-4efd-8d05-6b955d43732e.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:47:53', '2018-09-27 00:47:53'),
(577, 'Glitter - 018', '', '018', 42, NULL, 'DOdpc_18_7827d3a2-3b17-46da-9d36-3b9d47f7e4ef.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:48:47', '2018-09-27 00:48:47'),
(578, 'Glitter - 019', '', '019', 42, NULL, 'HbXpM_19_688bf7b5-1636-4b69-a895-1d07d8f010d3.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:49:21', '2018-09-27 00:49:21'),
(579, 'Glitter - 020', '', '020', 42, NULL, 'Yz2vd_20_cfdbaba6-37cf-4c9c-ade6-845a4be2e4ff.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:50:06', '2018-09-27 00:50:06'),
(580, 'Glitter - 021', '', '021', 42, NULL, 'efV0b_21_61fe214b-facf-4096-9977-d69c8bf5fee4.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:50:38', '2018-09-27 00:50:38'),
(581, 'Glitter - 022', '', '022', 42, NULL, 'VIRFT_22_484d4f5a-c313-439b-8e34-ec75f843579e.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:51:26', '2018-09-27 00:51:26'),
(582, 'Glitter - 023', '', '023', 42, NULL, 's9zUB_23_85cf3f76-9855-4eaf-bba3-0e66f2ae386e.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:51:58', '2018-09-27 00:51:58'),
(583, 'Glitter - 024', '', '024', 42, NULL, 'Kt8EX_24_a5f23a84-18f5-450a-b4fa-a634728be17f.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:52:38', '2018-09-27 00:52:38'),
(584, 'Glitter - 025', '', '025', 42, NULL, 'Tvy04_25_50f0e88a-78a6-47b9-8419-43289b80e49a.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:53:08', '2018-09-27 00:53:08'),
(585, 'Glitter - 026', '', '026', 42, NULL, 'RKU3T_26_efa7bef9-059b-4229-addf-020c2aceb317.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:53:39', '2018-09-27 00:53:39'),
(586, 'Glitter - 027', '', '027', 42, NULL, 'pG7bE_27_fb807051-bf4e-48d5-868a-33bd0bd7d5d8.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:54:16', '2018-09-27 00:54:16'),
(587, 'Glitter - 028', '', '028', 42, NULL, '5nTTX_28_c2adb21d-5be8-4602-b52a-fe1edbcc46ff.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:55:09', '2018-09-27 00:55:09'),
(588, 'Glitter - 029', '', '029', 42, NULL, 'OyvIu_29_ce6fa33a-6dea-4f69-8146-b6fe02c3dd6b.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:55:48', '2018-09-27 00:55:48'),
(589, 'Glitter - 030', '', '030', 42, NULL, 'kDskO_30_d8a4ed88-d3b2-45d0-85d5-a123a5cc62bb.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:56:23', '2018-09-27 00:56:23'),
(590, 'Glitter - 031', '', '031', 42, NULL, 'tCRG1_31_1a160fbc-66cc-48dd-9eda-84c1dce606b7.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:57:08', '2018-09-27 00:57:08'),
(591, 'Glitter - 032', '', '032', 42, NULL, 'qHrWx_32_e3be2cc7-8754-433e-a0a8-636c391c8d08.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:57:38', '2018-09-27 00:57:38'),
(592, 'Glitter - 033', '', '033', 42, NULL, 'dQUlX_33_3aa0730f-4d0b-4cc6-ae7e-9c33251b6b05.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:58:09', '2018-09-27 00:58:09'),
(593, 'Glitter - 034', '', '034', 42, NULL, 'xg1Ht_34_6b81e83b-7ceb-4f49-9426-00ca1253ee7a.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:58:42', '2018-09-27 00:58:42'),
(594, 'Glitter - 035', '', '035', 42, NULL, 'siqwW_35_918ee667-faab-446f-8c78-8a5e9e6217cc.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 00:59:12', '2018-09-27 00:59:12'),
(595, 'Glitter - 036', '', '036', 42, NULL, 'x83dD_36_49e93fff-b25c-45c3-b0a1-14aaab3e6364.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:00:16', '2018-09-27 01:00:16'),
(596, 'Glitter - 037', '', '037', 42, NULL, '4fc20_37.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:00:50', '2018-09-27 01:00:50'),
(597, 'Glitter - 038', '', '038', 42, NULL, 'WsVX0_38_91ea2f80-ff59-464f-a945-01be415139b8.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:01:21', '2018-09-27 01:01:21'),
(598, 'Glitter - 039', '', '039', 42, NULL, 'REzBe_39_54e68997-3251-4233-a629-c74cb1c60ab2.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:01:52', '2018-09-27 01:01:52'),
(599, 'Glitter - 040', '', '040', 42, NULL, '8940b_40_fc34dd0f-0db2-4923-89a5-ac9e190dcd29.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:02:25', '2018-09-27 01:02:25'),
(600, 'Glitter - 041', '', '041', 42, NULL, 'fdfmL_41_8f121964-fefe-40f3-a1b3-cdb57a4f243b.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:02:56', '2018-09-27 01:02:56'),
(601, 'Glitter - 042', '', '042', 42, NULL, 'Ubyu1_42_ab81028f-023e-4dca-a0c5-a0021b574025.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:03:26', '2018-09-27 01:03:26'),
(602, 'Glitter - 043', '', '043', 42, NULL, '4wAaZ_43_631c2674-e2ce-4d8c-8e89-559e0ea3a6b5.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:03:54', '2018-09-27 01:03:54'),
(603, 'Glitter - 044', '', '044', 42, NULL, '57P7W_44_27b6919a-b5b6-4aad-9957-10036c6b48f4.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:04:25', '2018-09-27 01:04:25'),
(604, 'Glitter - 045', '', '045', 42, NULL, 'RNWmF_45_d496421f-7e22-49a2-ad7f-ed6c606b2f00.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:05:44', '2018-09-27 01:05:44'),
(605, 'Glitter - 046', '', '046', 42, NULL, 'pJv5o_46_71922c1d-ddb3-4e44-bda1-c0a1f91efc23.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:06:09', '2018-09-27 01:06:09'),
(606, 'Glitter - 047', '', '047', 42, NULL, '3IvQ9_47_87052fb9-5596-44ea-8ff1-4e83571d42d1.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:06:33', '2018-09-27 01:06:33'),
(607, 'Glitter - 048', '', '048', 42, NULL, 'TUjSS_48_eb35b17d-6dbc-4e86-a7a8-29e5f80d12f0.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:07:00', '2018-09-27 01:07:00'),
(608, 'Glitter - 049', '', '049', 42, NULL, 'eGCBn_49_73c380ce-4a6e-4447-88ad-57140d819dd3.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:07:26', '2018-09-27 01:07:26'),
(609, 'Glitter - 050', '', '050', 42, NULL, 'Avd92_50_5375c972-c3f5-429a-893d-5da91ff94a5f.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:07:55', '2018-09-27 01:07:55'),
(610, 'Glitter - 051', '', '051', 42, NULL, 'XF9m2_51_f2fe891d-4e3b-4bd4-b1dd-45e9855f0d7b.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:08:21', '2018-09-27 01:08:21'),
(611, 'Glitter - 052', '', '052', 42, NULL, 'fZcYJ_52_f3bfd23d-4e14-4fbc-9868-65ad7c096479.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:08:47', '2018-09-27 01:08:47'),
(612, 'Glitter - 053', '', '053', 42, NULL, 'q1lfx_53_6c0efa9f-c09b-414b-8e42-e9ad41d191bd.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:09:11', '2018-09-27 01:09:11'),
(613, 'Glitter - 054', '', '054', 42, NULL, '2cnRJ_54_cf321854-430f-47f0-8509-469e96ac6d9c.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:12:56', '2018-09-27 01:12:56'),
(614, 'Glitter - 055', '', '055', 42, NULL, '0DfTn_55_58ede7db-10e9-410a-b314-98e5e38bb4b7.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:13:26', '2018-09-27 01:13:26'),
(615, 'Glitter - 056', '', '056', 42, NULL, 'IHWKe_56_d7b77018-8512-44c6-9797-9da36e488330.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:13:56', '2018-09-27 01:13:56'),
(616, 'Glitter - 057', '', '057', 42, NULL, '5vLCH_57_dfa508ec-9497-4f6d-8c6c-e0636aa4d0bd.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:14:24', '2018-09-27 01:14:24'),
(617, 'Glitter - 058', '', '058', 42, NULL, '20GWH_58_f1187449-43c1-4e15-a8c6-bbfe08b4b65a.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:14:47', '2018-09-27 01:14:47'),
(618, 'Glitter - 059', '', '059', 42, NULL, 'f7rdd_59_46bad78b-2233-42e2-8ce8-96c17660c47d.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:15:17', '2018-09-27 01:15:17'),
(619, 'Glitter - 060', '', '060', 42, NULL, 'VNy3m_60_211e308b-91a6-462c-bb7c-bd579eb27edc.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:15:53', '2018-09-27 01:15:53'),
(620, 'Glitter - 061', '', '061', 42, NULL, 'gPnIH_61.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:16:20', '2018-09-27 01:16:20'),
(621, 'Glitter - 062', '', '062', 42, NULL, 'HHfl2_62.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:16:47', '2018-09-27 01:16:47'),
(622, 'Glitter - 063', '', '063', 42, NULL, 'tTwRq_63.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:17:23', '2018-09-27 01:17:23'),
(623, 'Glitter - 064', '', '064', 42, NULL, 'ckR6W_64.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:17:49', '2018-09-27 01:17:49'),
(624, 'Glitter - 065', '', '065', 42, NULL, 'PbglO_65.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:18:17', '2018-09-27 01:18:17'),
(625, 'Glitter - 066', '', '066', 42, NULL, '9qPMf_66.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:18:53', '2018-09-27 01:18:53'),
(626, 'Glitter - 067', '', '067', 42, NULL, 'PfzqH_67.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:19:36', '2018-09-27 01:19:36'),
(627, 'Glitter - 068', '', '068', 42, NULL, 'qUId7_68.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:20:04', '2018-09-27 01:20:04'),
(628, 'Glitter - 069', '', '069', 42, NULL, 'dlXN5_69.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:20:32', '2018-09-27 01:20:32'),
(629, 'Glitter - 070', '', '070', 42, NULL, 'aVCjX_70.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:20:58', '2018-09-27 01:20:58'),
(630, 'Glitter - 071', '', '071', 42, NULL, 'pcYoG_71.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:21:28', '2018-09-27 01:21:28'),
(631, 'Glitter - 072', '', '072', 42, NULL, 'UaSqe_72.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:25:09', '2018-09-27 01:25:09'),
(632, 'Glitter - 073', '', '073', 42, NULL, 'l9v2v_73_14054275-08ce-4273-9991-a57b23ee9b25.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:25:37', '2018-09-27 01:25:37'),
(633, 'Glitter - 074', '', '074', 42, NULL, 'eUewF_74_1cbb3414-91eb-457b-b3ca-e90b08296404.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:26:05', '2018-09-27 01:26:05'),
(634, 'Glitter - 075', '', '075', 42, NULL, 'YY0vY_75_e72df709-376c-43bb-b0b8-31b5c2513efc.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:26:34', '2018-09-27 01:26:34'),
(635, 'Glitter - 076', '', '076', 42, NULL, 'L4iij_76_0ea2cca7-5a37-4711-92af-abfe7741807d.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:27:06', '2018-09-27 01:27:06'),
(636, 'Glitter - 077', '', '077', 42, NULL, 'q5zUu_77_9deec23b-c139-4ad3-9997-fa43ea97b6f2.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:28:14', '2018-09-27 01:28:14'),
(637, 'Glitter - 078', '', '078', 42, NULL, '8G7Rc_78_3c51a7f6-8cb3-4991-b245-7507ca8a30c1.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:29:08', '2018-09-27 01:29:08'),
(638, 'Glitter - 079', '', '079', 42, NULL, 'aSbDT_79_561a27ce-f2fd-415a-a4d2-9e24020213cb.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:29:38', '2018-09-27 01:29:38'),
(639, 'Glitter - 080', '', '080', 42, NULL, 'QQJWd_80_c567ecb2-6dac-4958-b06c-829adc7cdca0.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:30:12', '2018-09-27 01:30:12'),
(640, 'Glitter - 081', '', '081', 42, NULL, 'U6ck8_81_cf7cd807-a918-4556-9181-84f96652b598.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:30:41', '2018-09-27 01:30:41'),
(641, 'Glitter - 082', '', '082', 42, NULL, 'zL0g6_82_f245a519-c824-4a31-bccf-61a0de64b32a.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:31:11', '2018-09-27 01:31:11'),
(642, 'Glitter - 083', '', '083', 42, NULL, 'N0ySB_83_e4f889d3-90cb-4607-9adb-2da9f83d9752.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:31:45', '2018-09-27 01:31:45'),
(643, 'Glitter - 084', '', '084', 42, NULL, '7ixrG_84_84921d1f-5af0-4e48-9eef-1fbb0bda8994.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:32:17', '2018-09-27 01:32:17'),
(644, 'Glitter - 085', '', '085', 42, NULL, 'RVFus_85_40ab4e55-06bf-43a3-bd99-3f994d837004.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:32:49', '2018-09-27 01:32:49'),
(645, 'Glitter - 086', '', '086', 42, NULL, 'bmb0p_86_d108e877-9550-4de5-822f-80373b19efde.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:33:18', '2018-09-27 01:33:18'),
(646, 'Glitter - 087', '', '087', 42, NULL, '9rtxK_87_8479f87d-990f-44db-98ae-8854414ca3cc.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:33:52', '2018-09-27 01:33:52'),
(647, 'Glitter - 088', '', '088', 42, NULL, 'A17Eg_88_ae9fcf93-8a28-4134-9396-12e5781c3a0d.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:34:24', '2018-09-27 01:34:24'),
(648, 'Glitter - 089', '', '089', 42, NULL, 'rl9CM_89_1457581e-883f-4370-bbdf-3345c42ce853.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:34:51', '2018-09-27 01:34:51'),
(649, 'Glitter - 090', '', '090', 42, NULL, 'VvwkK_90_8f7990cf-812f-472b-ad13-28ab927b1ed2.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:36:45', '2018-09-27 01:36:45'),
(650, 'Glitter - 091', '', '091', 42, NULL, 'miqtr_91_3ca20584-6c30-46d6-bbfc-d3412e2ae4d0.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:37:14', '2018-09-27 01:37:14'),
(651, 'Glitter - 092', '', '092', 42, NULL, 'gCx0m_92_9f84c8d0-67a6-435a-9012-d64b796c9030.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:37:40', '2018-09-27 01:37:40'),
(652, 'Glitter - 093', '', '093', 42, NULL, 'v9ZXC_93_297e3fe9-e4ef-4181-b81a-f4336df993d1.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:38:08', '2018-09-27 01:38:08'),
(653, 'Glitter - 094', '', '094', 42, NULL, 'P2MXP_94_81e0852c-c3d0-420e-baeb-4b0b52785cb5.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:38:43', '2018-09-27 01:38:43'),
(654, 'Glitter - 095', '', '095', 42, NULL, 'vxZRr_95_555b77d2-1bb6-4d76-8039-2b757bfb4b96.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:39:11', '2018-09-27 01:39:11'),
(655, 'Glitter - 096', '', '096', 42, NULL, 'kauWH_96_57fb730a-9967-4940-8dac-776fb75acbd5.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:39:53', '2018-09-27 01:39:53'),
(656, 'Glitter - 097', '', '097', 42, NULL, 'fIk0S_97.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:40:27', '2018-09-27 01:40:27'),
(657, 'Glitter - 098', '', '098', 42, NULL, 'zGlgB_98.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:40:56', '2018-09-27 01:40:56'),
(658, 'Glitter - 099', '', '099', 42, NULL, 'EqEEH_99_3c8103fc-013c-413e-9f2b-a43583b576d7.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:41:23', '2018-09-27 01:41:23'),
(659, 'Glitter - 100', '', '100', 42, NULL, 'DOzcu_100.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:41:51', '2018-09-27 01:41:51'),
(660, 'Glitter - 101', '', '101', 42, NULL, 'dz8nK_101.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:42:21', '2018-09-27 01:42:21'),
(661, 'Glitter - 102', '', '102', 42, NULL, 'c6Ysj_102.png', NULL, 0, NULL, NULL, 1, NULL, '2018-09-27 01:42:52', '2018-09-27 01:42:52'),
(662, 'Signature Professional Cordless LED Lamp - White', '', NULL, 43, 'Signature Professional Cordless LED/UV Lamp - White', 'tYjuu_cre8tion-LED-Cordless-White.png', 4500000, 0, 'Signature Professional Cordless LED/UV Lamp - White', NULL, 1, NULL, '2018-09-27 02:25:23', '2018-09-27 02:28:36'),
(663, 'Signature Professional Cordless LED Lamp - Black', '', NULL, 43, 'Signature Professional Cordless LED Lamp - Black', 'JadeE_Cre8tion_Corded_LED_Black.png', 4500000, 0, 'Signature Professional Cordless LED Lamp - Black', 'Signature Professional Cordless LED Lamp - Black', 1, NULL, '2018-09-27 02:26:10', '2018-09-27 02:26:10'),
(664, 'UV / LED Lamp - Platinum', '', NULL, 43, NULL, 'yEpMg_13200-Qtr.png', 3500000, 0, NULL, NULL, 1, NULL, '2018-09-27 02:26:55', '2018-09-27 02:26:55'),
(665, 'UV / LED Lamp - Silver', '', NULL, 43, NULL, 'EmR1G_13186-Qtr_2.png', 2500000, 0, NULL, NULL, 1, NULL, '2018-09-27 02:27:22', '2018-09-27 02:27:22'),
(666, 'UV / LED Lamp - Gold', '', NULL, 43, NULL, 'm5M9c_13198-Qtr_f1e63773-968f-40cf-a29b-b248b3e142f1.png', 3000000, 0, NULL, NULL, 1, NULL, '2018-09-27 02:27:48', '2018-09-27 02:27:48'),
(667, 'Red Lips', NULL, '0916-0842', 44, 'Red Lips', 'tFOSm_Cre8tion_DuoGel_001_500x.png', 250000, 0, 'Red Lips', 'Red Lips', 1, NULL, '2018-10-05 02:28:15', '2018-10-05 02:28:15'),
(668, 'Cherry', NULL, '0916-0843', 44, 'Cherry', 'V3i2c_Cre8tion_DuoGel_002_500x.png', 250000, 0, 'Cherry', 'Cherry', 1, NULL, '2018-10-05 02:29:22', '2018-10-05 02:29:22'),
(669, 'Crimson', NULL, '0916-0844', 44, 'Crimson', 'gLyhX_Cre8tion_DuoGel_003_500x.png', 250000, 0, 'Crimson', 'Crimson', 1, NULL, '2018-10-05 02:29:56', '2018-10-05 02:29:56'),
(670, 'Wicked', NULL, '0916-0845', 44, 'Wicked', 'g2U58_Cre8tion_DuoGel_004_500x.png', 250000, 0, 'Wicked', 'Wicked', 1, NULL, '2018-10-05 02:30:32', '2018-10-05 02:30:32'),
(671, 'Plum Wine', NULL, '0916-0846', 44, 'Plum Wine', 'oKi3K_Cre8tion_DuoGel_005_500x.png', 250000, 0, 'Plum Wine', 'Plum Wine', 1, NULL, '2018-10-05 02:32:09', '2018-10-05 02:32:09'),
(672, 'Dangerous Woman', NULL, '0916-0847', 44, 'Dangerous Woman', 'aErvu_Cre8tion_DuoGel_006_500x.png', 250000, 0, 'Dangerous Woman', 'Dangerous Woman', 1, NULL, '2018-10-05 02:32:40', '2018-10-05 02:32:40'),
(673, 'Flammable', NULL, '0916-0848', 44, 'Flammable', 'BJYNH_Cre8tion_DuoGel_007_500x.png', 250000, 0, 'Flammable', 'Flammable', 1, NULL, '2018-10-05 02:33:20', '2018-10-05 02:33:20'),
(674, 'Show Stopper (Glitter)', NULL, '0916-0849', 44, 'Show Stopper (Glitter)', '7Hxwr_Cre8tion_DuoGel_008_500x.png', 250000, 0, 'Show Stopper (Glitter)', 'Show Stopper (Glitter)', 1, NULL, '2018-10-05 02:33:53', '2018-10-05 02:33:53'),
(675, 'Sassy (Shimmery)', NULL, '0916-0850', 44, 'Sassy (Shimmery)', 'WHWTk_Cre8tion_DuoGel_009_500x.png', 250000, 0, 'Sassy (Shimmery)', 'Sassy (Shimmery)', 1, NULL, '2018-10-05 02:34:23', '2018-10-05 02:34:23'),
(676, 'Fancy (Shimmery)', NULL, '0916-0851', 44, 'Fancy (Shimmery)', 'Tvvg2_Cre8tion_DuoGel_010_500x.png', 250000, 0, 'Fancy (Shimmery)', 'Fancy (Shimmery)', 1, NULL, '2018-10-05 02:35:09', '2018-10-05 02:35:09'),
(677, 'Mysterious', NULL, '0916-0852', 44, 'Mysterious', 'uoZ31_Cre8tion_DuoGel_011_500x.png', 250000, 0, 'Mysterious', 'Mysterious', 1, NULL, '2018-10-05 02:37:23', '2018-10-05 02:37:23'),
(678, 'Strawberry Smoothies', NULL, '0916-0853', 44, 'Strawberry Smoothies', '5hz1N_Cre8tion_DuoGel_012_500x.png', 250000, 0, 'Strawberry Smoothies', 'Strawberry Smoothies', 1, NULL, '2018-10-05 02:37:54', '2018-10-05 02:37:54'),
(679, 'Sangria', NULL, '0916-0854', 44, 'Sangria', 'iSsdx_Cre8tion_DuoGel_013_500x.png', 250000, 0, 'Sangria', 'Sangria', 1, NULL, '2018-10-05 02:38:25', '2018-10-05 02:38:25'),
(680, 'Unmistakable', NULL, '0916-0855', 44, 'Unmistakable', 'nuWEm_Cre8tion_DuoGel_014_500x.png', 250000, 0, 'Unmistakable', 'Unmistakable', 1, NULL, '2018-10-05 02:39:35', '2018-10-05 02:39:35'),
(681, '6 Inches Heel', NULL, '0916-0856', 44, '6 Inches Heel', 'UC61f_Cre8tion_DuoGel_015_500x.png', 250000, 0, '6 Inches Heel', '6 Inches Heel', 1, NULL, '2018-10-05 02:40:07', '2018-10-05 02:40:07'),
(682, 'Legally Blonde', NULL, '0916-0857', 44, 'Legally Blonde', 'QktWw_Cre8tion_DuoGel_016_500x.png', 250000, 0, 'Legally Blonde', 'Legally Blonde', 1, NULL, '2018-10-05 02:40:44', '2018-10-05 02:40:44'),
(683, 'Bubblegum', NULL, '0916-0858', 44, 'Bubblegum', 'GK0rR_Cre8tion_DuoGel_017_500x.png', 250000, 0, 'Bubblegum', 'Bubblegum', 1, NULL, '2018-10-05 02:48:15', '2018-10-05 02:48:15'),
(684, 'Blushing', NULL, '0916-0859', 44, 'Blushing', 'UBrcc_Cre8tion_DuoGel_018_500x.png', 250000, 0, 'Blushing', 'Blushing', 1, NULL, '2018-10-05 02:49:00', '2018-10-05 02:49:00'),
(685, 'Glow Up (Shimmery)', NULL, '0916-0860', 44, 'Glow Up (Shimmery)', 'a8shq_Cre8tion_DuoGel_019_500x.png', 250000, 0, 'Glow Up (Shimmery)', 'Glow Up (Shimmery)', 1, NULL, '2018-10-05 02:51:47', '2018-10-05 02:51:47'),
(686, 'Rose Gold (Shimmery)', NULL, '0916-0861', 44, 'Rose Gold (Shimmery)', 'PsGdJ_Cre8tion_DuoGel_020_500x.png', 250000, 0, 'Rose Gold (Shimmery)', 'Rose Gold (Shimmery)', 1, NULL, '2018-10-05 02:52:22', '2018-10-05 02:52:22'),
(687, 'Valentine (Glitter)', NULL, '0916-0862', 44, 'Valentine (Glitter)', 'vXz72_Cre8tion_DuoGel_021_500x.png', 250000, 0, 'Valentine (Glitter)', 'Valentine (Glitter)', 1, NULL, '2018-10-07 23:45:57', '2018-10-07 23:45:57'),
(688, 'Skin To Skin', NULL, '0916-0863', 44, 'Skin To Skin', 'xDhi0_Cre8tion_DuoGel_022_500x.png', 250000, 0, 'Skin To Skin', 'Skin To Skin', 1, NULL, '2018-10-07 23:46:38', '2018-10-07 23:46:38'),
(689, 'Coral', NULL, '0916-0864', 44, '0916-0864', 'MmCjH_Cre8tion_DuoGel_023_500x.png', 250000, 0, '0916-0864', '0916-0864', 1, NULL, '2018-10-07 23:47:08', '2018-10-07 23:47:08'),
(690, 'Lovely', NULL, '0916-0865', 44, 'Lovely', 'LJrfp_Cre8tion_DuoGel_024_500x.png', 250000, 0, 'Lovely', 'Lovely', 1, NULL, '2018-10-07 23:47:38', '2018-10-07 23:47:38'),
(691, 'Fearless (Shimmery)', NULL, '0916-0866', 44, 'Fearless (Shimmery)', '4qhMW_Cre8tion_DuoGel_025_500x.png', 250000, 0, 'Fearless (Shimmery)', 'Fearless (Shimmery)', 1, NULL, '2018-10-07 23:48:09', '2018-10-07 23:48:09'),
(692, 'Sun Kissed', NULL, '0916-0867', 44, 'Sun Kissed', 't5aEg_Cre8tion_DuoGel_026_500x.png', 250000, 0, 'Sun Kissed', 'Sun Kissed', 1, NULL, '2018-10-07 23:48:38', '2018-10-07 23:48:38'),
(693, 'Hot Mess', NULL, '0916-0868', 44, 'Hot Mess', 'PHJk2_Cre8tion_DuoGel_027_500x.png', 250000, 0, 'Hot Mess', 'Hot Mess', 1, NULL, '2018-10-07 23:49:12', '2018-10-07 23:49:12'),
(694, 'Baby Girl', NULL, '0916-0869', 44, 'Baby Girl', 'mEEY3_Cre8tion_DuoGel_028_500x.png', 250000, 0, 'Baby Girl', 'Baby Girl', 1, NULL, '2018-10-07 23:49:44', '2018-10-07 23:49:44'),
(695, 'Barbie Doll (Neon)', NULL, '0916-0870', 44, 'Barbie Doll (Neon)', 'o7EqY_Cre8tion_DuoGel_029_500x.png', 250000, 0, 'Barbie Doll (Neon)', 'Barbie Doll (Neon)', 1, NULL, '2018-10-07 23:50:16', '2018-10-07 23:50:16'),
(696, 'Flamingo', NULL, '0916-0871', 44, 'Flamingo', 'vE8wh_Cre8tion_DuoGel_030_500x.png', 250000, 0, 'Flamingo', 'Flamingo', 1, NULL, '2018-10-07 23:51:03', '2018-10-07 23:51:03'),
(697, 'Paradise and You', NULL, '0916-0872', 44, 'Paradise and You', 'oQZUI_Cre8tion_DuoGel_031_500x.png', 250000, 0, 'Paradise and You', 'Paradise and You', 1, NULL, '2018-10-07 23:51:42', '2018-10-07 23:51:42'),
(698, 'Hot And Wild (Neon)', NULL, '0916-0873', 44, 'Hot And Wild (Neon)', 'bczEz_Cre8tion_DuoGel_032_500x.png', 250000, 0, 'Hot And Wild (Neon)', 'Hot And Wild (Neon)', 1, NULL, '2018-10-07 23:52:18', '2018-10-07 23:52:18'),
(699, 'Red Sole', NULL, '0916-0874', 44, NULL, 'AjX67_Cre8tion_DuoGel_033_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-07 23:52:41', '2018-10-07 23:52:41'),
(700, 'Sweet Marmalade', NULL, '0916-0875', 44, 'Sweet Marmalade', 'sjAcx_Cre8tion_DuoGel_034_500x.png', 250000, 0, 'Sweet Marmalade', 'Sweet Marmalade', 1, NULL, '2018-10-07 23:55:27', '2018-10-07 23:55:27'),
(701, 'Ballet Slipper', NULL, '0916-0876', 44, NULL, 'PnxFn_Cre8tion_DuoGel_035_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-07 23:55:49', '2018-10-07 23:55:49'),
(702, 'Lavender', NULL, '0916-0877', 44, NULL, 'OWbPk_Cre8tion_DuoGel_036_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-07 23:56:13', '2018-10-07 23:56:13'),
(703, 'Scorpio', NULL, '0916-0878', 44, NULL, 'uXJbN_Cre8tion_DuoGel_037_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-07 23:56:42', '2018-10-07 23:56:42'),
(704, 'Hot Chick', NULL, '0916-0879', 44, NULL, 'nsu7n_Cre8tion_DuoGel_038_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-07 23:57:12', '2018-10-07 23:57:12'),
(705, 'Head Turner (Neon)', NULL, '0916-0880', 44, NULL, '0f7Fx_Cre8tion_DuoGel_039_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-07 23:57:57', '2018-10-07 23:57:57'),
(706, 'Paparazzi Party (Neon)', NULL, '0916-0881', 44, NULL, 'gMvsy_Cre8tion_DuoGel_040_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-07 23:58:20', '2018-10-07 23:58:20'),
(707, 'Taffy (Neon)', NULL, '0916-0882', 44, NULL, 'LW3Pd_Cre8tion_DuoGel_041_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-07 23:58:46', '2018-10-07 23:58:46'),
(708, 'Fuchsia', NULL, '0916-0883', 44, NULL, 'iKNea_Cre8tion_DuoGel_042_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-07 23:59:43', '2018-10-07 23:59:43'),
(709, 'Lilac', NULL, '0916-0884', 44, NULL, 'i5qVG_Cre8tion_DuoGel_043_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:00:11', '2018-10-08 00:00:11'),
(710, 'Shy Girl', NULL, '0916-0885', 44, NULL, 'ou5BR_Cre8tion_DuoGel_044_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:00:40', '2018-10-08 00:00:40'),
(711, 'Mama Said', NULL, '0916-0886', 44, NULL, '2urP9_Cre8tion_DuoGel_045_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:03:29', '2018-10-08 00:03:29'),
(712, 'Dance Floor', NULL, '0916-0887', 44, NULL, 'ExxKp_Cre8tion_DuoGel_046_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:03:54', '2018-10-08 00:03:54'),
(713, 'Young And Wild', NULL, '0916-0888', 44, NULL, 'Yl7UI_Cre8tion_DuoGel_047_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:04:23', '2018-10-08 00:04:23'),
(714, 'Fading Love', NULL, '0916-0889', 44, NULL, 'ZJ5gi_Cre8tion_DuoGel_048_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:04:50', '2018-10-08 00:04:50'),
(715, 'Rouge', NULL, '0916-0890', 44, NULL, 'hOMe4_Cre8tion_DuoGel_049_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:05:17', '2018-10-08 00:05:17'),
(716, 'Show Girl (Glitter)', NULL, '0916-0891', 44, NULL, 'iIImT_Cre8tion_DuoGel_050_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:05:43', '2018-10-08 00:05:43'),
(717, 'Wreckless Nights', NULL, '0916-0892', 44, NULL, 'oVwnt_Cre8tion_DuoGel_051_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:06:28', '2018-10-08 00:06:28'),
(718, 'Hopeless Romantic', NULL, '0916-0893', 44, NULL, 'l3DwZ_Cre8tion_DuoGel_052_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:06:56', '2018-10-08 00:06:56'),
(719, 'Closet Freak', NULL, '0916-0894', 44, NULL, 'PO4cj_Cre8tion_DuoGel_053_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:07:28', '2018-10-08 00:07:28'),
(720, 'Déjà Vu', NULL, '0916-0895', 44, NULL, 'fSkLn_Cre8tion_DuoGel_054_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:13:23', '2018-10-08 00:13:23'),
(721, 'Evil Queen', NULL, '0916-0896', 44, NULL, '7uOeB_Cre8tion_DuoGel_055_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:14:21', '2018-10-08 00:14:21'),
(722, 'Bad Blood', NULL, '0916-0897', 44, NULL, 'pWmYV_Cre8tion_DuoGel_056_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:19:54', '2018-10-08 00:19:54'),
(723, 'Rock Bottom', NULL, '0916-0898', 44, NULL, 'l8c4I_Cre8tion_DuoGel_057_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:20:40', '2018-10-08 00:20:40'),
(724, '2am Light', NULL, '0916-0899', 44, NULL, '6HVTY_Cre8tion_DuoGel_058_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:21:07', '2018-10-08 00:21:07'),
(725, 'Underneath It All', NULL, '0916-0900', 44, NULL, 'rhe8L_Cre8tion_DuoGel_059_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:21:39', '2018-10-08 00:21:39'),
(726, 'Conservative', NULL, '0916-0901', 44, NULL, 'uoPne_Cre8tion_DuoGel_060_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:22:09', '2018-10-08 00:22:09'),
(727, 'Sagittarius', NULL, '0916-0902', 44, NULL, '9c2kZ_Cre8tion_DuoGel_061_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:22:46', '2018-10-08 00:22:46'),
(728, 'Pine Green', NULL, '0916-0903', 44, NULL, '1J8AF_Cre8tion_DuoGel_062_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:24:16', '2018-10-08 00:24:16'),
(729, 'Olive', NULL, '0916-0904', 44, NULL, 'mx0Pt_Cre8tion_DuoGel_063_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:25:06', '2018-10-08 00:25:06'),
(730, 'Desire', NULL, '0916-0905', 44, NULL, 'JOI8u_Cre8tion_DuoGel_064_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:25:58', '2018-10-08 00:25:58'),
(731, 'Grape Taffy', NULL, '0916-0906', 44, NULL, 'eGOrq_Cre8tion_DuoGel_065_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:26:32', '2018-10-08 00:26:32'),
(732, 'Deception is Inception', NULL, '0916-0907', 44, NULL, 'FqG1l_Cre8tion_DuoGel_066_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:29:47', '2018-10-08 00:29:47'),
(733, 'Daring', NULL, '0916-0908', 44, NULL, '0iwAg_Cre8tion_DuoGel_067_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:30:20', '2018-10-08 00:30:20'),
(734, 'Mulberry', NULL, '0916-0909', 44, NULL, 'zN9WJ_Cre8tion_DuoGel_068_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:31:51', '2018-10-08 00:31:51'),
(735, 'The Queen', NULL, '0916-0910', 44, NULL, '7SBjD_Cre8tion_DuoGel_069_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:32:24', '2018-10-08 00:32:24'),
(736, 'Grape Juice', NULL, '0916-0911', 44, NULL, 'BEZFz_Cre8tion_DuoGel_070_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:33:00', '2018-10-08 00:33:00'),
(737, 'All Dressed Up', NULL, '0916-0912', 44, NULL, 'hmJUD_Cre8tion_DuoGel_071_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:36:00', '2018-10-08 00:36:00'),
(738, 'Drunk In Love', NULL, '0916-0913', 44, NULL, 'ydxLm_Cre8tion_DuoGel_072_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:36:23', '2018-10-08 00:36:23'),
(739, 'Little Mermaid (Shimmery)', NULL, '0916-0914', 44, NULL, '6QpdA_Cre8tion_DuoGel_073_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:36:50', '2018-10-08 00:40:17'),
(740, 'Caribbean', NULL, '0916-0915', 44, NULL, 'anGe8_Cre8tion_DuoGel_074_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:41:11', '2018-10-08 00:41:11'),
(741, 'Wishing Well', NULL, '0916-0916', 44, NULL, 'ujkkI_Cre8tion_DuoGel_075_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:41:41', '2018-10-08 00:41:41'),
(742, 'Tweet About it', NULL, '0916-0917', 44, NULL, 'XhUlu_Cre8tion_DuoGel_076_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:42:11', '2018-10-08 00:42:11'),
(743, 'Shoot for the Moon', NULL, '0916-0918', 36, NULL, 'uOEjy_Cre8tion_DuoGel_077_500x.png', 150000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:42:38', '2018-10-08 00:42:38'),
(744, 'Refresh', NULL, '0916-0919', 44, NULL, 'lKBxj_Cre8tion_DuoGel_078_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:43:09', '2018-10-08 00:43:09'),
(745, 'Seafoam', NULL, '0916-0920', 44, NULL, 'ly5QG_Cre8tion_DuoGel_079_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:45:42', '2018-10-08 00:45:42'),
(746, 'Teal Water', NULL, '0916-0921', 44, NULL, 'fBvb2_Cre8tion_DuoGel_080_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:46:07', '2018-10-08 00:46:07'),
(747, 'Ocean', NULL, '0916-0922', 44, NULL, 'VQrC4_Cre8tion_DuoGel_081_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:47:05', '2018-10-08 00:47:05'),
(748, 'Forest', NULL, '0916-0923', 44, NULL, 'wNq4y_Cre8tion_DuoGel_082_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:47:34', '2018-10-08 00:47:34'),
(749, 'Big Tip', NULL, '0916-0924', 44, NULL, '4D5kJ_Cre8tion_DuoGel_083_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:50:19', '2018-10-08 00:50:19'),
(750, 'Lime', NULL, '0916-0925', 44, NULL, 'QUXwb_Cre8tion_DuoGel_084_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:51:13', '2018-10-08 00:51:13'),
(751, 'Gemini', NULL, '0916-0926', 44, NULL, 'M1Wn1_Cre8tion_DuoGel_085_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:52:16', '2018-10-08 00:52:16'),
(752, 'Four Clover', NULL, '0916-0927', 44, NULL, 'FX1DZ_Cre8tion_DuoGel_086_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:52:56', '2018-10-08 00:52:56'),
(753, 'Green Tea', NULL, '0916-0928', 44, NULL, '12AwI_Cre8tion_DuoGel_087_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:53:42', '2018-10-08 00:53:42'),
(754, 'Pistachio Cream', NULL, '0916-0929', 44, NULL, 'eDN7a_Cre8tion_DuoGel_088_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:54:21', '2018-10-08 00:54:21'),
(755, 'Passion Fruit', NULL, '0916-0930', 44, NULL, 'bh1k0_Cre8tion_DuoGel_089_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:54:53', '2018-10-08 00:54:53'),
(756, 'Fast Taxi', NULL, '0916-0931', 44, NULL, 'Gd6hL_Cre8tion_DuoGel_090_b8898d51-a6b0-4743-b1c8-28124394a583_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:55:23', '2018-10-08 00:55:23'),
(757, 'Sapphire (Shimmery)', NULL, '0916-0932', 44, NULL, '5jgBs_Cre8tion_DuoGel_091_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:55:52', '2018-10-09 19:03:50'),
(758, 'Hidden Treasure (Glitter)', NULL, '0916-0933', 44, NULL, '6f7tF_Cre8tion_DuoGel_092_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:57:35', '2018-10-08 00:57:35'),
(759, 'The Milky Way (Shimmery)', NULL, '0916-0934', 44, NULL, 'cTUGk_Cre8tion_DuoGel_093_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 00:58:09', '2018-10-08 00:58:09'),
(760, 'Lady In Red (Shimmery)', NULL, '0916-0935', 44, NULL, 'w2UnH_Cre8tion_DuoGel_094_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-08 01:02:55', '2018-10-08 01:02:55'),
(761, 'Acai Berry', NULL, '0916-0936', 44, 'Acai Berry', 'RPcvE_Cre8tion_DuoGel_096_500x.png', 250000, 0, 'Acai Berry', 'Acai Berry', 1, NULL, '2018-10-09 19:05:30', '2018-10-09 19:05:30'),
(762, 'Emerald Stone', NULL, '0916-0937', 44, 'Emerald Stone', 'AySOQ_Cre8tion_DuoGel_096_500x.png', 250000, 0, 'Emerald Stone', 'Emerald Stone', 1, NULL, '2018-10-09 19:06:11', '2018-10-09 19:06:11'),
(763, 'Hustlin\'', NULL, '0916-0938', 44, 'Hustlin\'', 'oxcHo_Cre8tion_DuoGel_097_500x.png', 250000, 0, 'Hustlin\'', 'Hustlin\'', 1, NULL, '2018-10-09 19:16:02', '2018-10-09 19:16:02'),
(764, 'Cappuccino', NULL, '0916-0939', 44, 'Cappuccino', 'nswjW_Cre8tion_DuoGel_098_500x.png', 250000, 0, 'Cappuccino', 'Cappuccino', 1, NULL, '2018-10-09 19:17:45', '2018-10-09 19:17:45'),
(765, 'Vietnamese Coffee', NULL, '0916-0940', 44, NULL, 'rJI5c_Cre8tion_DuoGel_099_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:19:11', '2018-10-09 19:19:11'),
(766, 'Sand & Desert', NULL, '0916-0941', 44, NULL, '43Afp_Cre8tion_DuoGel_100_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:19:46', '2018-10-09 19:19:46'),
(767, 'Suit & Tie', NULL, '0916-0942', 44, NULL, 'Opmqt_Cre8tion_DuoGel_101_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:20:17', '2018-10-09 19:20:17'),
(768, 'Boss Lady', NULL, '0916-0943', 44, NULL, 'LT53Y_Cre8tion_DuoGel_102_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:20:45', '2018-10-09 19:20:45'),
(769, 'Blazer', NULL, '0916-0944', 44, NULL, '3x1bI_Cre8tion_DuoGel_103_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:21:15', '2018-10-09 19:21:15'),
(770, 'Man Up', NULL, '0916-0945', 44, NULL, 'dBcn7_Cre8tion_DuoGel_104_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:21:45', '2018-10-09 19:21:45'),
(771, 'Winterfell', NULL, '0916-0946', 44, NULL, 'Hol2u_Cre8tion_DuoGel_105_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:22:13', '2018-10-09 19:22:13'),
(772, 'Starry Night', NULL, '0916-0947', 44, NULL, 'kyl0v_Cre8tion_DuoGel_106_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:22:50', '2018-10-09 19:22:50'),
(773, 'Midnight Black', NULL, '0916-0948', 44, NULL, 'RVNto_Cre8tion_DuoGel_107_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:23:18', '2018-10-09 19:23:18'),
(774, 'Snow White', NULL, '0916-0949', 44, NULL, 'Lq2mi_Cre8tion_DuoGel_108_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:23:55', '2018-10-09 19:23:55'),
(775, 'Delicate', NULL, '0916-0950', 44, NULL, 'EriHo_Cre8tion_DuoGel_109_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:24:22', '2018-10-09 19:24:22'),
(776, 'Pure', NULL, '0916-0951', 44, NULL, 'zaIiL_Cre8tion_DuoGel_110_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:24:51', '2018-10-09 19:24:51'),
(777, 'Cotton Candy', NULL, '0916-0952', 44, NULL, 'vuvmi_Cre8tion_DuoGel_111_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:25:21', '2018-10-09 19:25:21'),
(778, 'Carnation', NULL, '0916-0953', 44, NULL, 'rwIxF_Cre8tion_DuoGel_112_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:25:49', '2018-10-09 19:25:49'),
(779, 'Naked', NULL, '0916-0954', 44, NULL, 'xU0jE_Cre8tion_DuoGel_113_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:26:13', '2018-10-09 19:26:13'),
(780, 'Pearl Pink', NULL, '0916-0955', 44, NULL, 'htndv_Cre8tion_DuoGel_114_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:26:42', '2018-10-09 19:26:42'),
(781, 'Kiss You', NULL, '0916-0956', 44, NULL, '7atoL_Cre8tion_DuoGel_115_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:27:07', '2018-10-09 19:27:07'),
(782, 'Pinky Promise', NULL, '0916-0957', 44, NULL, '7LgX0_Cre8tion_DuoGel_116_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:29:07', '2018-10-09 19:29:07'),
(783, 'Icy Cold', NULL, '0916-0958', 44, NULL, 'zxOcz_Cre8tion_DuoGel_117_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:30:27', '2018-10-09 19:30:27'),
(784, 'A Gloomy Day', NULL, '0916-0959', 44, NULL, 'Vvtbf_Cre8tion_DuoGel_118_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:30:48', '2018-10-09 19:30:48'),
(785, 'Quartz', NULL, '0916-0960', 44, NULL, '6wkq7_Cre8tion_DuoGel_119_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:31:10', '2018-10-09 19:31:10'),
(786, 'Peony', NULL, '0916-0961', 44, NULL, 'Kpy5h_Cre8tion_DuoGel_120_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:31:36', '2018-10-09 19:31:36'),
(787, 'Belonging', NULL, '0916-0962', 44, NULL, 'ldCD4_Cre8tion_DuoGel_121_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:32:01', '2018-10-09 19:32:01'),
(788, 'Gentle Touch', NULL, '0916-0963', 44, NULL, 'XV1md_Cre8tion_DuoGel_122_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:32:27', '2018-10-09 19:32:27'),
(789, 'Salmon', NULL, '0916-0964', 44, NULL, 'mC6xy_Cre8tion_DuoGel_123_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:32:53', '2018-10-09 19:32:53'),
(790, 'Don’t Be Peachy', NULL, '0916-0965', 44, NULL, 'iW5U8_Cre8tion_DuoGel_124_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:33:16', '2018-10-09 19:33:16'),
(791, 'Hey Stranger', NULL, '0916-0966', 44, NULL, 'OPPZD_Cre8tion_DuoGel_125_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:33:43', '2018-10-09 19:33:43'),
(792, 'Romantic', NULL, '0916-0967', 44, NULL, 'tDHro_Cre8tion_DuoGel_126_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:34:05', '2018-10-09 19:34:05'),
(793, 'In The Name Of Love', NULL, '0916-0968', 44, NULL, 'zexH9_Cre8tion_DuoGel_127_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:34:34', '2018-10-09 19:34:34'),
(794, 'Love Me Not', NULL, '0916-0969', 44, NULL, 'IByi1_Cre8tion_DuoGel_128_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:38:04', '2018-10-09 19:38:04'),
(795, 'Monday Morning', NULL, '0916-0970', 44, NULL, 'DqIDA_Cre8tion_DuoGel_129_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:38:24', '2018-10-09 19:38:24'),
(796, 'Jazz Prince', NULL, '0916-0971', 44, NULL, 'uINqa_Cre8tion_DuoGel_130_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:38:47', '2018-10-09 19:38:47'),
(797, 'History is Ours', NULL, '0916-0972', 44, NULL, 'SyVms_Cre8tion_DuoGel_131_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:39:10', '2018-10-09 19:39:10'),
(798, 'Corner Store', NULL, '0916-0973', 44, NULL, 'wPEJs_Cre8tion_DuoGel_132_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:39:33', '2018-10-09 19:39:33'),
(799, 'Hakuna Matata', NULL, '0916-0974', 44, NULL, 'iFQhm_Cre8tion_DuoGel_133_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:40:02', '2018-10-09 19:40:02'),
(800, 'Neutral Zone', NULL, '0916-0975', 44, NULL, 'CyLO7_Cre8tion_DuoGel_134_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:40:30', '2018-10-09 19:40:30'),
(801, 'Fire Breathing', NULL, '0916-0976', 44, NULL, 'QxBgm_Cre8tion_DuoGel_135_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:40:49', '2018-10-09 19:40:49'),
(802, 'Window Tint', NULL, '0916-0977', 44, NULL, '3sn6I_Cre8tion_DuoGel_136_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:41:10', '2018-10-09 19:41:10'),
(803, 'Dragon Fruit', NULL, '0916-0978', 44, NULL, 'lSfZD_Cre8tion_DuoGel_137_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:41:32', '2018-10-09 19:41:32'),
(804, 'Willy Wonka', NULL, '0916-0979', 44, NULL, 'HEv6e_Cre8tion_DuoGel_138_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:41:52', '2018-10-09 19:41:52'),
(805, 'Candy Paint', NULL, '0916-0980', 44, NULL, '76stF_Cre8tion_DuoGel_139_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:42:13', '2018-10-09 19:42:13'),
(806, 'Forgotten', NULL, '0916-0981', 44, NULL, '7m3Tb_Cre8tion_DuoGel_140_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:42:40', '2018-10-09 19:42:40'),
(807, 'Laid Back Recliner', NULL, '0916-0982', 44, NULL, 'AnbDL_Cre8tion_DuoGel_141_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:43:06', '2018-10-09 19:43:06'),
(808, 'Marching Band', NULL, '0916-0983', 44, NULL, 'VFBTI_Cre8tion_DuoGel_142_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:44:12', '2018-10-09 19:44:12'),
(809, 'Super Bowl', NULL, '0916-0984', 44, NULL, 'o4Dld_Cre8tion_DuoGel_143_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:44:36', '2018-10-09 19:44:36'),
(810, 'Juicier Kumquat', NULL, '0916-0985', 44, NULL, '45DAa_Cre8tion_DuoGel_144_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:44:58', '2018-10-09 19:44:58'),
(811, 'Party Girl (Glitter)', NULL, '0916-0986', 44, NULL, 'DhZrB_Cre8tion_DuoGel_145_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:45:21', '2018-10-09 19:45:21'),
(812, 'New Year \'s Eve (Glitter)', NULL, '0916-0987', 44, NULL, '15mRl_Cre8tion_DuoGel_146_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:45:43', '2018-10-09 19:45:43'),
(813, 'Party All Night (Glitter)', NULL, '0916-0988', 44, NULL, 'LaTKH_Cre8tion_DuoGel_147_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:46:11', '2018-10-09 19:46:11'),
(814, 'Green Eyed Monster', NULL, '0916-0989', 44, NULL, 'HRMeL_Cre8tion_DuoGel_148_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:47:03', '2018-10-09 19:47:03'),
(815, 'Enchantress', NULL, '0916-0990', 44, NULL, 'zG76k_Cre8tion_DuoGel_149_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:47:25', '2018-10-09 19:47:25'),
(816, 'Mermaid Tail', NULL, '0916-0991', 44, NULL, 'VaSdN_Cre8tion_DuoGel_150_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:47:50', '2018-10-09 19:47:50'),
(817, 'Red Flame', NULL, '0916-0992', 44, NULL, 'MqBw1_Cre8tion_DuoGel_151_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:48:13', '2018-10-09 19:48:13'),
(818, 'Gold Flake', NULL, '0916-0993', 44, NULL, 'hdKLk_Cre8tion_DuoGel_152_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:48:37', '2018-10-09 19:48:37'),
(819, 'The Great Gatsby', NULL, '0916-0994', 44, NULL, 'aBBCl_Cre8tion_DuoGel_153_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:49:01', '2018-10-09 19:49:01'),
(820, 'Copper & Gold', NULL, '0916-0995', 44, NULL, 'OSOAn_Cre8tion_DuoGel_154_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:49:38', '2018-10-09 19:49:38'),
(821, 'Ocean Waves', NULL, '0916-0996', 44, NULL, 'I2kCb_Cre8tion_DuoGel_155_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:50:26', '2018-10-09 19:50:26'),
(822, 'Sapphire Ring', NULL, '0916-0997', 44, NULL, 'dSAbx_Cre8tion_DuoGel_156_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:50:56', '2018-10-09 19:50:56');
INSERT INTO `products` (`id`, `name`, `alias`, `item_code`, `id_type`, `detail`, `image_link`, `price`, `discount_price`, `keyword`, `description`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(823, 'Amethyst Geode', NULL, '0916-0998', 44, NULL, 'AOkR2_Cre8tion_DuoGel_157_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:51:18', '2018-10-09 19:51:18'),
(824, 'Jealousy', NULL, '0916-0999', 44, NULL, 'FiPJ9_Cre8tion_DuoGel_158_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:52:06', '2018-10-09 19:52:06'),
(825, 'Cold Hearted', NULL, '0916-1000', 44, NULL, 'd0ojh_Cre8tion_DuoGel_159_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:52:33', '2018-10-09 19:52:33'),
(826, 'Rainbow Madness', NULL, '0916-1001', 44, NULL, 'gPoRz_Cre8tion_DuoGel_160_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:52:59', '2018-10-09 19:52:59'),
(827, 'Cinderella\'s Slipper', NULL, '0916-1002', 44, NULL, '3qGgK_Cre8tion_DuoGel_161_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:53:25', '2018-10-09 19:53:25'),
(828, 'Treasure', NULL, '0916-1003', 44, NULL, 'k0Rz3_Cre8tion_DuoGel_162_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:53:48', '2018-10-09 19:53:48'),
(829, 'Ms. Bradshaw', NULL, '0916-1004', 44, NULL, 'wTupT_Cre8tion_DuoGel_163_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:56:37', '2018-10-09 19:56:37'),
(830, 'Once Upon A Time', NULL, '0916-1005', 44, NULL, 'DtbEV_Cre8tion_DuoGel_164_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:57:12', '2018-10-09 19:57:12'),
(831, 'Bride To Be', NULL, '0916-1006', 44, NULL, 'DWTKf_Cre8tion_DuoGel_165_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:57:39', '2018-10-09 19:57:39'),
(832, 'Wedding Dress', NULL, '0916-1374', 44, NULL, 'H6Mr5_Cre8tion_DuoGel_166_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:58:08', '2018-10-09 19:58:08'),
(833, 'Bright Like Diamond', NULL, '0916-1375', 44, NULL, 'Hsc1K_Cre8tion_DuoGel_167_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:58:33', '2018-10-09 19:58:33'),
(834, 'Lux And Fabulous', NULL, '0916-1376', 44, NULL, 'f7UTE_Cre8tion_DuoGel_168_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 19:59:04', '2018-10-09 19:59:04'),
(835, 'Girl\'s Best Friend', NULL, '0916-1377', 44, NULL, 'gN6K1_Cre8tion_DuoGel_169_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:03:06', '2018-10-09 20:03:06'),
(836, 'Sparkles', NULL, '0916-1378', 44, NULL, 'ju3wK_Cre8tion_DuoGel_170_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:03:29', '2018-10-09 20:03:29'),
(837, 'On The Rocks', NULL, '0916-1379', 44, NULL, 'm0OIK_Cre8tion_DuoGel_171_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:03:57', '2018-10-09 20:03:57'),
(838, 'Love And Lust', NULL, '0916-1380', 44, NULL, '2ec64_Cre8tion_DuoGel_172_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:04:26', '2018-10-09 20:04:26'),
(839, 'Puprle Rain', NULL, '0916-1381', 44, NULL, 'IuhQ6_Cre8tion_DuoGel_173_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:04:51', '2018-10-09 20:04:51'),
(840, 'Storm & Thunder', NULL, '0916-1382', 44, NULL, 'D4MZc_Cre8tion_DuoGel_174_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:05:23', '2018-10-09 20:05:23'),
(841, '24K Magic', NULL, '0916-1383', 44, NULL, 'IKqRG_Cre8tion_DuoGel_175_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:05:48', '2018-10-09 20:05:48'),
(842, 'Champagne On Ice', NULL, '0916-1384', 44, NULL, '2nGyf_Cre8tion_DuoGel_176_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:06:19', '2018-10-09 20:06:19'),
(843, 'Night of Delight', NULL, '0916-1385', 44, NULL, 'k9NMl_Cre8tion_DuoGel_177_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:06:41', '2018-10-09 20:06:41'),
(844, 'Party On', NULL, '0916-1386', 44, NULL, 'u9SGA_Cre8tion_DuoGel_178_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:07:04', '2018-10-09 20:07:04'),
(845, 'Cloud 9', NULL, '0916-1387', 44, NULL, 'WwLzP_Cre8tion_DuoGel_179_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:07:32', '2018-10-09 20:07:32'),
(846, 'Disco Night', NULL, '0916-1388', 44, NULL, 'wW2DW_Cre8tion_DuoGel_180_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:08:01', '2018-10-09 20:08:01'),
(847, 'Black Diamond', NULL, '0916-1389', 44, NULL, 'Pnnyz_Cre8tion_DuoGel_181_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:08:30', '2018-10-09 20:08:30'),
(848, 'Legend Of The Sea', NULL, '0916-1390', 44, NULL, 'juTJJ_Cre8tion_DuoGel_182_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:09:35', '2018-10-09 20:09:35'),
(849, 'Finesse', NULL, '0916-1391', 44, NULL, 'p6Vj3_Cre8tion_DuoGel_183_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:10:02', '2018-10-09 20:10:02'),
(850, 'Celestial Star', NULL, '0916-1392', 44, NULL, '3UnCw_Cre8tion_DuoGel_184_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:10:26', '2018-10-09 20:10:26'),
(851, 'Shape Of Love', NULL, '0916-1393', 44, NULL, 'olOMY_Cre8tion_DuoGel_185_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:42:28', '2018-10-09 20:42:28'),
(852, 'Sea Monster', NULL, '0916-1394', 44, NULL, 'UBCOE_Cre8tion_DuoGel_186_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:42:50', '2018-10-09 20:42:50'),
(853, 'Love Me Tender', NULL, '0916-1395', 44, NULL, 'Rhfmp_Cre8tion_DuoGel_187_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:43:16', '2018-10-09 20:43:16'),
(854, 'Be Mine', NULL, '0916-1396', 44, NULL, 'Iwi4y_Cre8tion_DuoGel_188_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:43:43', '2018-10-09 20:43:43'),
(855, 'Walk Of Fame', NULL, '0916-1397', 44, NULL, 'EXRAy_Cre8tion_DuoGel_189_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:44:17', '2018-10-09 20:44:17'),
(856, 'Candy Land', NULL, '0916-1398', 44, NULL, 'KWqvJ_Cre8tion_DuoGel_190_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:44:38', '2018-10-09 20:44:38'),
(857, 'Dive Deep', NULL, '0916-1399', 44, NULL, '8kRes_Cre8tion_DuoGel_191_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:45:00', '2018-10-09 20:45:00'),
(858, 'Enter the Room', NULL, '0916-1400', 44, NULL, 'cr9zJ_Cre8tion_DuoGel_192_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:45:26', '2018-10-09 20:45:26'),
(859, 'Dragon Blood', NULL, '0916-1401', 44, NULL, 'TgBBo_Cre8tion_DuoGel_193_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:45:54', '2018-10-09 20:45:54'),
(860, 'Fireworks', NULL, '0916-1402', 44, NULL, '6oZ94_Cre8tion_DuoGel_194_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:46:31', '2018-10-09 20:46:31'),
(861, 'Mrs Santa Claus', NULL, '0916-1403', 44, NULL, 'YAq9v_Cre8tion_DuoGel_195_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:46:55', '2018-10-09 20:46:55'),
(862, 'Money Maker', NULL, '0916-1404', 44, NULL, '1fW8U_Cre8tion_DuoGel_196_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:47:19', '2018-10-09 20:47:19'),
(863, 'Blood Diamond', NULL, '0916-1405', 44, NULL, 'B70ig_Cre8tion_DuoGel_197_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:47:42', '2018-10-09 20:47:42'),
(864, 'Red Rose', NULL, '0916-1406', 44, NULL, '1lCe1_Cre8tion_DuoGel_198_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:49:17', '2018-10-09 20:49:17'),
(865, 'Out Of Love', NULL, '0916-1407', 44, NULL, 'v3TMU_Cre8tion_DuoGel_199_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:49:53', '2018-10-09 20:49:53'),
(866, 'Shaved Ice', NULL, '0916-1408', 44, NULL, '4ewzj_Cre8tion_DuoGel_200_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:50:27', '2018-10-09 20:50:27'),
(867, 'Awaken', NULL, '0916-1409', 44, NULL, 'Xwk9L_Cre8tion_DuoGel_201_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:50:52', '2018-10-09 20:50:52'),
(868, 'Wild Things', NULL, '0916-1410', 44, NULL, 'P8IIS_Cre8tion_DuoGel_202_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:51:14', '2018-10-09 20:51:14'),
(869, 'Just a Splash', NULL, '0916-1411', 44, NULL, 'LsfsI_Cre8tion_DuoGel_203_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:51:39', '2018-10-09 20:51:39'),
(870, 'Tainted Love', NULL, '0916-1412', 44, NULL, 'sMqkz_Cre8tion_DuoGel_204_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:52:03', '2018-10-09 20:52:03'),
(871, 'Season Of Love', NULL, '0916-1413', 44, NULL, 'RhvlE_Cre8tion_DuoGel_205_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:52:28', '2018-10-09 20:52:28'),
(872, 'Sweet Assassin', NULL, '0916-1414', 44, NULL, 'UgSz6_Cre8tion_DuoGel_206_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:52:57', '2018-10-09 20:52:57'),
(873, 'Sweet Nothing', NULL, '0916-1415', 44, NULL, 'sGlwC_Cre8tion_DuoGel_207_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:53:20', '2018-10-09 20:53:20'),
(874, 'Flaming Fight', NULL, '0916-1416', 44, NULL, 'UkaSn_Cre8tion_DuoGel_208_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:53:45', '2018-10-09 20:53:45'),
(875, 'Heat In A Hurry', NULL, '0916-1417', 44, NULL, 'GWUBQ_Cre8tion_DuoGel_209_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:54:14', '2018-10-09 20:54:14'),
(876, 'Red Hot Devil', NULL, '0916-1418', 44, NULL, '63C1O_Cre8tion_DuoGel_210_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:54:38', '2018-10-09 20:54:38'),
(877, 'Ruby Slippers', NULL, '0916-1419', 44, NULL, 'pNool_Cre8tion_DuoGel_211_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:55:01', '2018-10-09 20:55:01'),
(878, 'Sparkling Peach', NULL, '0916-1420', 44, NULL, '9FIzY_Cre8tion_DuoGel_212_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:55:23', '2018-10-09 20:55:23'),
(879, 'Tin Man', NULL, '0916-1421', 44, NULL, 's3Hr4_Cre8tion_DuoGel_213_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:55:53', '2018-10-09 20:55:53'),
(880, 'Liquid Gold', NULL, '0916-1422', 44, NULL, 'RsUxp_Cre8tion_DuoGel_214_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:56:29', '2018-10-09 20:56:29'),
(881, 'Chardonnay All Day', NULL, '0916-1423', 44, NULL, '96N64_Cre8tion_DuoGel_215_505d0ddc-80df-4545-8a2f-149e64775270_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:56:52', '2018-10-09 20:56:52'),
(882, 'Appletini', NULL, '0916-1424', 44, NULL, '8ytec_Cre8tion_DuoGel_216_500x.png', 250000, 0, NULL, NULL, 1, NULL, '2018-10-09 20:57:16', '2018-10-09 20:57:16'),
(883, 'appletini', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-07 21:25:14', '2018-12-07 21:25:14'),
(884, NULL, 'appletini', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-07 21:27:42', '2018-12-07 21:27:42'),
(885, 'Buffer - 3 Way - 60/100 Purple/White', 'buffer-3-way-60-100-purple-white', '06030', 54, 'Buffer - 3 Way - 60/100 Purple/White', 'uM0D5_06030-Qtr.jpg', NULL, NULL, 'Buffer - 3 Way - 60/100 Purple/White', 'Buffer - 3 Way - 60/100 Purple/White', 1, NULL, '2018-12-14 02:10:37', '2018-12-14 02:10:37'),
(886, 'Carbide Silver - Large - 3/32" - 3-Way', 'carbide-silver-large-3-32-3-way', '17319', 56, NULL, 'Ifm1u_silverCHUAN+CB-17.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:17:52', '2019-02-20 07:24:45'),
(887, 'Carbide Gold - Large - 3/32" - 3-Way', 'carbide-gold-large-3-32-3-way', '17313', 56, NULL, 'j4u27_gold CHUAN+CB-16.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:18:32', '2019-02-20 07:24:16'),
(888, 'Carbide Silver - Small - 3/32" - 3-Way', 'carbide-silver-small-3-32-3-way', '17331', 56, NULL, 'zS4RW_silversmalCHUAN+CB-19.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:19:06', '2019-02-20 07:25:35'),
(889, 'Carbide Gold - Small - 3/32" - 3-Way', 'carbide-gold-small-3-32-3-way', '17325', 56, NULL, '38K7o_gold smalCHUAN+CB-18.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:19:36', '2019-02-20 07:26:20'),
(890, 'Carbide Silver - Large - 3/32" - Original', 'carbide-silver-large-3-32-original', '17000', 56, NULL, 'zwudH_CHUAN_CB-21_17ab456b-33da-4a25-a0b3-7e377cb5e791.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:27:31', '2019-02-20 07:27:31'),
(891, 'Carbide Gold - Large - 3/32" - Original', 'carbide-gold-large-3-32-original', '17005', 56, NULL, 'JGxfu_CHUAN_CB-017.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:28:46', '2019-02-20 07:28:46'),
(892, 'Carbide Silver - Small - 3/32" - Original', 'carbide-silver-small-3-32-original', '17010', 56, NULL, '3kFn8_CHUAN_CB-06_large.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:29:49', '2019-02-20 07:29:49'),
(893, 'Carbide Gold - Small - 3/32" - Original', 'carbide-gold-small-3-32-original', '17015', 56, NULL, 'iUzQf_CHUAN_CB-09_large.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:30:41', '2019-02-20 07:30:41'),
(894, 'Ceramic Large Barrel 3/32"', 'ceramic-large-barrel-3-32', '17164', 56, NULL, '4aSbX_CHUAN_CB-0114_large.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:34:50', '2019-02-20 07:34:50'),
(895, 'Ceramic Small Barrel 3/32"', 'ceramic-small-barrel-3-32', '17170', 56, NULL, 'SiRax_CHUAN_CB-22_63b9d0f0-c0d7-45c6-ab61-b9c72c9ca62b_large.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:35:56', '2019-02-20 07:35:56'),
(896, 'Ceramic Bits - Gel Removal - 3/32"', 'ceramic-bits-gel-removal-3-32', '17374', 56, NULL, 'qYEUh_CHUAN_CB-13_ec3c6a45-56c1-40e0-9eab-b99daaaca46c_large.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:37:20', '2019-02-20 07:37:20'),
(897, 'Ceramic Large Barrel - Rounded Top - 3/32"', 'ceramic-large-barrel-rounded-top-3-32', '17196', 56, NULL, 'VgMeQ_CHUAN_CB-25_large.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:38:04', '2019-02-20 07:38:04'),
(898, 'Sanding Bands', 'sanding-bands', '17104', 56, NULL, 'Dpwdr_sanding_band_large.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:42:10', '2019-02-20 07:42:10'),
(899, 'Zebra Sanding Bands', 'zebra-sanding-bands', '17341', 56, NULL, '7YwYL_sanding-band-zebra_large.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:42:52', '2019-02-20 07:42:52'),
(900, 'Sanding Bands Bag', 'sanding-bands-bag', '17337', 56, NULL, '4cqA0_sanding-bag-bag-500-pcs_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:43:35', '2019-02-20 07:43:35'),
(901, 'Kolinsky Acrylic Brush A+', 'kolinsky-acrylic-brush-a-', '12149', 59, NULL, 'cTqF5_Cre8tion-A_-Kolinsky_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:45:51', '2019-02-20 07:45:51'),
(902, 'Kolinsky Acrylic Brush A', 'kolinsky-acrylic-brush-a', '12158', 59, NULL, 'jA5cw_Cre8tion-A-Kolinsky_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:46:24', '2019-02-20 07:46:24'),
(903, 'Kolynsky Acrylic Brush B', 'kolynsky-acrylic-brush-b', '12134', 59, NULL, 'hYme8_Kolynsky_french_brushB_large.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:46:59', '2019-02-20 07:46:59'),
(904, 'Kolynsky Acrylic Brush Forrest', 'kolynsky-acrylic-brush-forrest', '12178', 59, NULL, 'IpeXX_12174_large.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:47:56', '2019-02-20 07:47:56'),
(905, 'Kolinsky Acrylic Brush', 'kolinsky-acrylic-brush', '12137', 59, NULL, '916lb_air-touch-kolinsky_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:48:32', '2019-02-20 07:48:32'),
(906, 'Harmony - ProHesion Acrylic Maestro Pro Oval Brush', 'harmony-prohesion-acrylic-maestro-pro-oval-brush', 'GL-AOB', 59, NULL, 'L6SxW_GL-AOB_Harmony_Arcylic_Brush_large_4328fed0-f800-424a-870a-7691a78e05e4_large.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:49:18', '2019-02-20 07:49:18'),
(907, 'Painting Brush 5mm', 'painting-brush-5mm', '12255', 60, NULL, 'ftHLI_5mm_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:52:57', '2019-02-20 07:52:57'),
(908, 'Painting Brush 7mm', 'painting-brush-7mm', '12256', 60, NULL, '1ARZM_7mm_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:53:30', '2019-02-20 07:53:30'),
(909, 'Painting Brush 9mm', 'painting-brush-9mm', '12257', 60, NULL, 'lFbXS_9mm_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:54:03', '2019-02-20 07:54:03'),
(910, 'Nail Art Brush 01', 'nail-art-brush-01', '12222', 60, NULL, 'C2mo6_1_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:54:43', '2019-02-20 07:54:43'),
(911, 'Nail Art Brush 02', 'nail-art-brush-02', '12223', 60, NULL, 'sJLKG_2_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:55:16', '2019-02-20 07:55:16'),
(912, 'Nail Art Brush 03', 'nail-art-brush-03', '12224', 60, NULL, 'flmo7_3_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:55:49', '2019-02-20 07:55:49'),
(913, 'Nail Art Brush 04', 'nail-art-brush-04', '12225', 60, NULL, 'mFRo9_4_7b0fd690-c98d-4bb6-bdb0-519bd6ca743a_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:56:31', '2019-02-20 07:56:31'),
(914, 'Nail Art Brush 05', 'nail-art-brush-05', '12226', 60, NULL, 'YXA7L_5_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:57:12', '2019-02-20 07:57:12'),
(915, 'Nail Art Brush 06', 'nail-art-brush-06', '12227', 60, NULL, 'uX45n_6_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:57:46', '2019-02-20 07:57:46'),
(916, 'Nail Art Brush 07', 'nail-art-brush-07', '12228', 60, NULL, 'WnBzY_7_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:58:22', '2019-02-20 07:58:22'),
(917, 'Nail Art Brush 08', 'nail-art-brush-08', '12229', 60, NULL, 'AQQFN_8_4138ca0c-9b14-478e-a945-1d5fcd329dba_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:59:05', '2019-02-20 07:59:05'),
(918, 'Nail Art Brush 09', 'nail-art-brush-09', '12230', 60, NULL, 'vqvMy_9_50a819e9-3b32-48e9-a590-3d104d7cb74f_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 07:59:47', '2019-02-20 07:59:47'),
(919, 'Nail Art Brush 10', 'nail-art-brush-10', '12231', 60, NULL, 'r7lLB_10_73133591-a5e5-4d72-8a4a-949358e68f51_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 08:00:18', '2019-02-20 08:00:18'),
(920, 'Nail Art Brush 11', 'nail-art-brush-11', '12232', 60, NULL, 'CzSvZ_11_77873830-314d-45a9-8530-0599c4e58e88_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 08:00:51', '2019-02-20 08:00:51'),
(921, 'Nail Art Brush 12', 'nail-art-brush-12', '12233', 60, NULL, 'x0tsA_12_ca05ca3b-fc35-410c-b049-e1245d47c1bf_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 08:01:26', '2019-02-20 08:01:26'),
(922, 'Nail Art Brush 13', 'nail-art-brush-13', '12234', 60, NULL, 'm6Ewl_13_3b6acfa8-543b-47a9-9bb7-bfa811b2ede1_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 08:01:58', '2019-02-20 08:01:58'),
(923, 'Nail Art Brush 14', 'nail-art-brush-14', '12235', 60, NULL, '3Cuvu_14_70c25f9c-0568-4929-8384-be424817c599_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 08:02:34', '2019-02-20 08:02:34'),
(924, 'Nail Art Brush 15', 'nail-art-brush-15', '12236', 60, NULL, '6S9yP_15_6cef1de7-a5cb-49ef-935e-aec09a942687_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 08:03:06', '2019-02-20 08:03:06'),
(925, 'Nail Art Brush 16', 'nail-art-brush-16', '12237', 60, NULL, 'a7XGt_16_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 08:03:41', '2019-02-20 08:03:41'),
(926, 'Nail Art Brush 17', 'nail-art-brush-17', '12238', 60, NULL, 'uDqV7_17_236b7e9a-b8ce-49ab-ad35-119a784e7746_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 08:04:13', '2019-02-20 08:04:13'),
(927, 'Nail Art Brush 18', 'nail-art-brush-18', '12239', 60, NULL, 'ohNVz_18_7489449f-e568-4248-9a08-9a20ed7525ff_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 08:04:42', '2019-02-20 08:04:42'),
(928, 'Nail Art Brush 19', 'nail-art-brush-19', '12240', 60, NULL, 'yQtR0_19_869a3081-1812-42b2-bba2-52c50cbfa176_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 08:05:12', '2019-02-20 08:05:12'),
(929, 'Nail Art Brush 20', 'nail-art-brush-20', '12241', 60, NULL, 'q6L0R_20_d4ae1429-266a-465b-a789-e647c5570d8a_large.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-02-20 08:05:41', '2019-02-20 08:05:41'),
(930, 'Candy Shop Gum Drop', 'candy-shop-gum-drop', NULL, 61, NULL, 'QyUFH_candyshop2_550x825.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(931, 'Marble Effect', 'marble-effect', NULL, 61, NULL, '4slnO_Marble_550x825.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(932, 'Flakes - Platinum #After Party', 'flakes-platinum-after-party', NULL, 61, NULL, 'vEWp9_Flakes_After_Party_550x825.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(933, 'Cat Eye 1', 'cat-eye-1', NULL, 61, NULL, 's6JmN_FOAM_DISPLAY_180411_0004_550x825.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(934, 'Cat Eye 2', 'cat-eye-2', NULL, 61, NULL, 'B1nVQ_sv_550x825.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(935, 'Chameleon Flakes', 'chameleon-flakes', NULL, 61, NULL, 'pLKQP_FOAM_DISPLAY_180411_0001_550x825.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(936, 'Fur - Stone Gel', 'fur-stone-gel', NULL, 61, NULL, '9t37M_FOAM_DISPLAY_180411_0003_550x825.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(937, 'Mood Gel', 'mood-gel', NULL, 61, NULL, '1sZGY_mooddd_550x825.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(938, 'Platinum Gel', 'platinum-gel', NULL, 61, NULL, 'K5aiQ_FOAM_DISPLAY_180411_0002_550x825.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(939, 'Seashell #Holographic#Love in Bloom', 'seashell-holographic-love-in-bloom', NULL, 61, NULL, 'KKJRI_seashell_550x825.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(940, 'Titanium Gel', 'titanium-gel', NULL, 61, NULL, '7Tm10_titanniummm_550x825 (1).png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(942, 'Color 01', 'color-01', '0916-2017', 62, NULL, 'uHF3w_01.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:34:35', '2019-03-19 03:34:35'),
(943, 'Color 02', 'color-02', '0916-2018', 62, NULL, 'x8Nkk_02.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:35:09', '2019-03-19 03:35:09'),
(944, 'Color 03', 'color-03', '0916-2019', 62, NULL, 'PfIxY_03.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:35:41', '2019-03-19 03:35:41'),
(945, 'Color 04', 'color-04', '0916-2020', 62, NULL, 'c16Lk_04.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:36:12', '2019-03-19 03:36:12'),
(946, 'Color 05', 'color-05', '0916-2021', 62, NULL, '11nuJ_05.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:36:42', '2019-03-19 03:36:42'),
(947, 'Color 06', 'color-06', '0916-2022', 62, NULL, 'KMtn6_06.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:37:11', '2019-03-19 03:37:11'),
(948, 'Color 07', 'color-07', '0916-2023', 62, NULL, 'yPTwv_07.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:38:03', '2019-03-19 03:38:03'),
(949, 'Color 08', 'color-08', '0916-2024', 62, NULL, 'qxK1o_08.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:38:42', '2019-03-19 03:38:42'),
(950, 'Color 09', 'color-09', '0916-2025', 62, NULL, '5AZPo_09.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:39:28', '2019-03-19 03:39:28'),
(951, 'Color 10', 'color-10', '0916-2026', 62, NULL, '2zIX7_10.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:39:55', '2019-03-19 03:39:55'),
(952, 'Color 11', 'color-11', '0916-2027', 62, NULL, 'hSAnE_11.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:40:25', '2019-03-19 03:40:25'),
(953, 'Color 12', 'color-12', '0916-2028', 62, NULL, 'UxiDh_12.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:41:01', '2019-03-19 03:41:01'),
(954, 'Color 13', 'color-13', '0916-2029', 62, NULL, '1piI8_13.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:41:43', '2019-03-19 03:41:43'),
(955, 'Color 14', 'color-14', '0916-2030', 62, NULL, 'rWuDH_14.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:42:11', '2019-03-19 03:42:11'),
(956, 'Color 15', 'color-15', '0916-2031', 62, NULL, 'vqoMQ_15.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:42:47', '2019-03-19 03:42:47'),
(957, 'Color 16', 'color-16', '0916-2032', 62, NULL, 'hNLR8_16.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:43:15', '2019-03-19 03:43:15'),
(958, 'Color 17', 'color-17', '0916-2033', 62, NULL, 'bpbsz_17.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:43:44', '2019-03-19 03:43:44'),
(959, 'Color 18', 'color-18', '0916-2034', 62, NULL, 'wYxWT_18.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:44:13', '2019-03-19 03:44:13'),
(960, 'Color 19', 'color-19', '0916-2035', 62, NULL, 'hTHeh_19.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:44:38', '2019-03-19 03:44:38'),
(961, 'Color 20', 'color-20', '0916-2036', 20, NULL, 'Pr5U4_20.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:45:39', '2019-03-19 03:45:39'),
(962, 'Color 21', 'color-21', '0916-2037', 62, NULL, 'QkaoH_21.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:46:08', '2019-03-19 03:46:08'),
(963, 'Color 22', 'color-22', '0916-2038', 62, NULL, 'FjTJE_22.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:46:39', '2019-03-19 03:46:39'),
(964, 'Color 23', 'color-23', '0916-2039', 62, NULL, 'cvLD9_23.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:47:08', '2019-03-19 03:47:08'),
(965, 'Color 24', 'color-24', '0916-2040', 62, NULL, 'zpgt5_24.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:47:34', '2019-03-19 03:47:34'),
(966, 'Color 25', 'color-25', '0916-2041', 62, NULL, '56yqY_25.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:48:04', '2019-03-19 03:48:04'),
(967, 'Color 26', 'color-26', '0916-2042', 62, NULL, 'kxVZZ_26.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:48:57', '2019-03-19 03:48:57'),
(968, 'Color 27', 'color-27', '0916-2043', 62, NULL, 'vcAAg_28.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:49:36', '2019-03-19 03:49:36'),
(969, 'Color 28', 'color-28', '0916-2044', 62, NULL, 'ONjc4_28.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:50:08', '2019-03-19 03:50:08'),
(970, 'Color 29', 'color-29', '0916-2045', 62, NULL, 'Ds0lT_29.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:50:42', '2019-03-19 03:50:42'),
(971, 'Color 30', 'color-30', '0916-2046', 62, NULL, 'PNSiK_30.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:51:19', '2019-03-19 03:51:19'),
(972, 'Color 31', 'color-31', '0916-2047', 62, NULL, 'QDjXj_31.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:51:49', '2019-03-19 03:51:49'),
(973, 'Color 32', 'color-32', '0916-2048', 62, NULL, 'XQgVI_32.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:52:30', '2019-03-19 03:52:30'),
(974, 'Color 33', 'color-33', '0916-2049', 62, NULL, 'chGbA_33.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:52:57', '2019-03-19 03:52:57'),
(975, 'Color 34', 'color-34', '0916-2050', 62, NULL, 'ah626_34.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:53:30', '2019-03-19 03:53:30'),
(976, 'Color 35', 'color-35', '0916-2051', 62, NULL, 'mLX0J_35.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:54:00', '2019-03-19 03:54:00'),
(977, 'Color 36', 'color-36', '0916-2052', 62, NULL, 'SKW7R_36.png', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 03:54:26', '2019-03-19 03:54:26'),
(978, 'RC01', 'rc01', '01', 63, NULL, 'AETS7_01.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:14:19', '2019-03-19 06:14:19'),
(979, 'RC02', 'rc02', '02', 63, NULL, 'pGHjk_02.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:14:38', '2019-03-19 06:14:38'),
(980, 'RC03', 'rc03', '03', 63, NULL, 'hy2Q9_03+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:14:57', '2019-03-19 06:14:57'),
(981, 'RC04', 'rc04', '04', 63, NULL, '9MWBY_04+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:15:19', '2019-03-19 06:15:19'),
(982, 'RC05', 'rc05', '05', 63, NULL, '9yemp_05+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:15:37', '2019-03-19 06:15:37'),
(983, 'RC06', 'rc06', '06', 63, NULL, 'RF9Cj_06+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:15:57', '2019-03-19 06:15:57'),
(984, 'RC07', 'rc07', '07', 63, NULL, 'O6Zmd_07+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:16:18', '2019-03-19 06:16:18'),
(985, 'RC08', 'rc08', '08', 63, NULL, 'OTu0y_08+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:17:00', '2019-03-19 06:17:00'),
(986, 'RC09', 'rc09', '09', 63, NULL, 'RvbLp_09+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:17:18', '2019-03-19 06:17:18'),
(987, 'RC10', 'rc10', '10', 63, NULL, 'mJ0wP_10+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:17:36', '2019-03-19 06:17:36'),
(988, 'RC11', 'rc11', '11', 63, NULL, '6ls1K_11+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:17:51', '2019-03-19 06:17:51'),
(989, 'RC12', 'rc12', '12', 63, NULL, '7xNkx_12+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:18:13', '2019-03-19 06:18:13'),
(990, 'RC13', 'rc13', '13', 63, NULL, 'cYNhg_13+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:18:31', '2019-03-19 06:18:31'),
(991, 'RC14', 'rc14', '14', 63, NULL, 'XP5Vr_14+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:18:48', '2019-03-19 06:18:48'),
(992, 'RC15', 'rc15', '15', 63, NULL, 'gzdho_15+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:19:05', '2019-03-19 06:19:05'),
(993, 'RC16', 'rc16', '16', 63, NULL, 'qEMM1_16+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:19:20', '2019-03-19 06:19:20'),
(994, 'RC17', 'rc17', '17', 63, NULL, 'C9QRk_17+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:19:43', '2019-03-19 06:19:43'),
(995, 'RC18', 'rc18', '18', 63, NULL, 'ppnaz_18+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:20:09', '2019-03-19 06:20:09'),
(996, 'RC19', 'rc19', '19', 63, NULL, 'Yx4JG_19+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:20:31', '2019-03-19 06:20:31'),
(997, 'RC20', 'rc20', '20', 63, NULL, 'mBUrh_20+NEW+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:20:51', '2019-03-19 06:20:51'),
(998, 'RC21', 'rc21', '21', 63, NULL, '8Rv2a_21+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:21:07', '2019-03-19 06:21:07'),
(999, 'RC22', 'rc22', '22', 63, NULL, '6e3NM_22+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:21:26', '2019-03-19 06:21:26'),
(1000, 'RC23', 'rc23', '23', 63, NULL, 'QX1td_23+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:21:43', '2019-03-19 06:21:43'),
(1001, 'RC24', 'rc24', '24', 63, NULL, 'N3F08_24+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:22:48', '2019-03-19 06:22:48'),
(1002, 'RC25', 'rc25', '25', 63, NULL, 'szbed_25+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:23:05', '2019-03-19 06:23:05'),
(1003, 'RC26', 'rc26', '26', 63, NULL, 'HTqYk_26+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:23:22', '2019-03-19 06:23:22'),
(1004, 'RC27', 'rc27', '27', 63, NULL, 'Dx9M3_27+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:23:38', '2019-03-19 06:23:38'),
(1005, 'RC28', 'rc28', '28', 63, NULL, 'dfO7v_28+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:23:56', '2019-03-19 06:23:56'),
(1006, 'RC29', 'rc29', '29', 63, NULL, 'tAfeY_29+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:24:13', '2019-03-19 06:24:13'),
(1007, 'RC30', 'rc30', '30', 63, NULL, 'QZ5Vj_30+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:24:31', '2019-03-19 06:24:31'),
(1008, 'RC31', 'rc31', '31', 63, NULL, '6rGLb_31+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:24:48', '2019-03-19 06:24:48'),
(1009, 'RC32', 'rc32', '32', 63, NULL, 'w3Qgk_32.+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:25:04', '2019-03-19 06:25:04'),
(1010, 'RC33', 'rc33', '33', 63, NULL, 'vrUex_33+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:25:22', '2019-03-19 06:25:22'),
(1011, 'RC34', 'rc34', '34', 63, NULL, 'dgHTo_34+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:25:42', '2019-03-19 06:25:42'),
(1012, 'RC35', 'rc35', '35', 63, NULL, 'eYrwO_35+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:25:59', '2019-03-19 06:25:59'),
(1013, 'RC36', 'rc36', '36', 63, NULL, '2bmmx_36+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:26:16', '2019-03-19 06:26:16'),
(1014, 'RC37', 'rc37', '37', 63, NULL, 'jVPAV_37+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:26:35', '2019-03-19 06:26:35'),
(1015, 'RC38', 'rc38', '38', 63, NULL, 's7s8v_38+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:26:52', '2019-03-19 06:26:52'),
(1016, 'RC39', 'rc39', '39', 63, NULL, 'XJRoO_39+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:27:07', '2019-03-19 06:27:07'),
(1017, 'RC40', 'rc40', '40', 63, NULL, '3BTEP_40+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:27:32', '2019-03-19 06:27:32'),
(1018, 'RC41', 'rc41', '41', 63, NULL, 'cF3cz_41+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:27:48', '2019-03-19 06:27:48'),
(1019, 'RC42', 'rc42', '42', 63, NULL, 'GTXUT_42+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:28:06', '2019-03-19 06:28:06'),
(1020, 'RC43', 'rc43', '43', 63, NULL, 'h0y2N_43+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:28:21', '2019-03-19 06:28:21'),
(1021, 'RC44', 'rc44', '44', 63, NULL, 'oAv6N_44.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:28:36', '2019-03-19 06:28:36'),
(1022, 'RC45', 'rc45', '45', 63, NULL, '5mYG7_45+copy.jpg', NULL, NULL, NULL, NULL, 1, NULL, '2019-03-19 06:28:51', '2019-03-19 06:28:51'),
(1023, 'test', 'test', '123456', 19, '<p>\r\n	11111111</p>', 'ghzzh_Container+Deal+Set+5.png', 111111, 11111, '1111111111', '1111111111111', 1, NULL, '2019-04-10 01:44:48', '2019-04-10 01:44:48'),
(1024, 'test1', 'test1', '1234561', 20, '<p>\r\n	11</p>', 'k8Bxi_aaaa.png', 111111, 0, '11', '111', 1, NULL, '2019-04-10 02:13:48', '2019-04-10 02:13:48'),
(1025, 'test1', 'test1', '1234561', 20, '<p>\r\n	11</p>', 'OMiib_aaaa.png', 111111, 0, '11', '111', 1, NULL, '2019-04-10 02:13:48', '2019-04-10 02:13:48'),
(1026, 'test22', 'test22', '1234562', 19, '<p>\r\n	111</p>', '2yLwA_1472455912672.jpg', 1111, 11, '111', '111', 1, NULL, '2019-04-10 02:38:50', '2019-04-10 02:38:50'),
(1027, 'test22', 'test22', '1234562', 19, '<p>\r\n	111</p>', '4NyQf_1472455912672.jpg', 1111, 11, '111', '111', 1, NULL, '2019-04-10 02:45:43', '2019-04-10 02:45:43'),
(1028, 'slide 11', 'slide-11', '123456', 20, '<p>\r\n	1</p>', 'gcOzc_7110XvlsGvL._SX679_.jpg', 111111, 0, '1', '1', 1, NULL, '2019-04-10 19:36:44', '2019-04-10 19:36:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'BANNER.jpg', 1027, '2019-04-10 02:45:43', '2019-04-10 02:45:43'),
(2, 'cre8tionlg.png', 1027, '2019-04-10 02:45:43', '2019-04-10 02:45:43'),
(3, '0QMfq_Container+Deal+Set+5.png', 1028, '2019-04-10 19:36:44', '2019-04-10 19:36:44'),
(4, 'Dnc08_cre8tion.vn.jpg', 1028, '2019-04-10 19:36:44', '2019-04-10 19:36:44'),
(5, 'QNKTh_cre8tionlg.png', 1028, '2019-04-10 19:36:44', '2019-04-10 19:36:44'),
(6, '8ZjEn_Spa-Chair-Liner - Copy.jpg', 1028, '2019-04-10 19:36:44', '2019-04-10 19:36:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `image_link` text,
  `status` tinyint(2) NOT NULL,
  `new_product` tinyint(2) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `keyword` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_type`
--

INSERT INTO `product_type` (`id`, `alias`, `name`, `id_cat`, `image_link`, `status`, `new_product`, `sort_order`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(20, 'seashellseashell', 'Seashell', 17, 'y6yCe_seasheel.png', 1, 0, 1, 'SeashellSeashell', 'SeashellSeashell', '2019-04-10 06:38:08', '2019-04-10 06:38:08'),
(19, 'Cat-Eye', 'Cat Eye', 17, NULL, 1, 0, NULL, 'Cat Eye', 'Cat Eye', '2018-11-07 09:53:04', '2018-11-07 02:53:04'),
(18, 'Super-Cat-Eye', 'Super Cat Eye', 17, NULL, 1, 0, NULL, 'Super Cat Eye', 'Super Cat Eye', '2018-11-07 09:50:22', '2018-11-07 02:50:22'),
(17, 'Fur', 'Fur', 17, NULL, 1, 0, NULL, 'fur', 'fur', '2018-11-07 09:53:05', '2018-11-07 02:53:05'),
(15, 'Stone', 'Stone', 17, NULL, 1, 0, 0, 'stone', 'stone', '2019-01-02 03:28:00', '2019-01-02 03:28:00'),
(16, 'Holographic', 'Holographic', 17, NULL, 1, 0, 0, 'Holographic', 'Holographic', '2019-01-02 03:27:51', '2019-01-02 03:27:51'),
(21, 'Titanium', 'Titanium', 17, NULL, 1, 0, 7, 'Titanium', 'Titanium', '2019-01-02 03:30:13', '2019-01-02 03:30:13'),
(22, 'Dream-Base', 'Dream Base', 17, NULL, 1, 0, 6, 'Dream Base', 'Dream Base', '2019-01-02 03:30:17', '2019-01-02 03:30:17'),
(23, 'Mood', 'Mood', 17, NULL, 1, 0, 5, 'Mood', 'Mood', '2019-01-02 03:30:23', '2019-01-02 03:30:23'),
(25, 'Candy-Shop', 'Candy Shop', 17, 'xL7eW_Candy_Shop_banner_2000x.jpg', 1, 0, NULL, 'Candy Shop', 'Candy Shop', '2019-04-10 06:22:17', '2019-04-09 23:22:17'),
(26, 'Glow-In-The-Dark', 'Glow In The Dark', 17, NULL, 1, 0, NULL, 'Glow In The Dark', 'Glow In The Dark', '2018-11-07 08:30:53', '2018-11-07 01:30:53'),
(27, 'Platinum-After-Party', 'Platinum After Party', 17, NULL, 1, 0, NULL, 'Platinum After Party', 'Platinum After Party', '2018-10-02 09:43:29', '2018-08-24 00:32:32'),
(28, 'Flakes', 'Flakes', 17, NULL, 1, 0, 4, 'Flakes', 'Flakes', '2019-01-02 03:30:33', '2019-01-02 03:30:33'),
(29, 'Night-Glow-Powder', 'Night Glow Powder', 18, NULL, 1, 0, 8, NULL, NULL, '2019-01-02 03:42:41', '2019-01-02 03:42:41'),
(30, 'Dipping-Overlay-System', 'Dipping Overlay System', 18, NULL, 1, 0, NULL, NULL, NULL, '2018-10-02 09:44:41', '2018-08-27 00:33:46'),
(31, 'Dipping-Color-Powders', 'Dipping Color Powders', 18, NULL, 1, 0, NULL, NULL, NULL, '2018-10-02 09:44:52', '2018-08-27 00:34:01'),
(32, 'Ombre-Pair', 'Ombre-Pair', 18, NULL, 1, 0, 9, NULL, NULL, '2019-01-02 03:42:32', '2019-01-02 03:42:32'),
(34, 'Marble-Effect', 'Marble Effect', 17, 'qvPM2_Marble_Effect_official_banner_2000x.jpg', 1, 0, NULL, NULL, NULL, '2018-10-02 09:45:09', '2018-08-30 20:26:31'),
(35, 'Signature-Designer', 'Signature Designer', 17, '', 1, 0, 9, NULL, NULL, '2019-01-02 03:29:52', '2019-01-02 03:29:52'),
(36, 'Detailing-Nail-Art-Gel', 'Detailing Nail Art Gel', 17, '', 1, 0, 8, 'Detailing Nail Art Gel', 'Detailing Nail Art Gel', '2019-01-02 03:30:01', '2019-01-02 03:30:01'),
(37, 'Fairy-Dust', 'Fairy Dust', 19, '', 1, 0, NULL, 'Fairy Dust', 'Fairy Dust', '2018-10-02 09:45:42', '2018-09-14 00:45:03'),
(39, 'Dipping-Overlay-System', 'Dipping Overlay System', 18, '', 1, 0, NULL, 'Dipping Overlay System', 'Dipping Overlay System', '2018-10-02 09:46:08', '2018-09-25 21:38:53'),
(40, 'Dipping-Powder', 'Dipping Powder', 18, '', 1, 0, 7, 'Dipping Powder', 'Dipping Powder', '2019-01-02 03:42:53', '2019-01-02 03:42:53'),
(41, 'Mood-Changing', 'Mood Changing', 18, '', 1, 0, 6, 'Mood Changing', 'Mood Changing', '2019-01-02 03:42:56', '2019-01-02 03:42:56'),
(42, 'Glitter', 'Glitter', 19, '', 1, 0, NULL, 'Glitter', 'Glitter', '2018-10-02 09:46:55', '2018-09-27 00:34:16'),
(43, 'uv-led-lamps', 'UV/LED Lamps', 21, '', 1, 0, NULL, NULL, NULL, '2019-02-25 04:13:43', '2019-02-25 04:13:43'),
(44, 'matching-duo', 'Matching Duo', 17, '', 1, 1, NULL, 'Dou Gel', 'Dou Gel', '2019-03-19 03:24:48', '2019-03-19 03:24:48'),
(53, 'foot-files', 'Foot Files', 21, '', 1, 0, NULL, 'Foot Files', 'Foot Files', '2018-12-14 01:54:10', '2018-12-14 01:54:10'),
(54, 'buffer', 'Buffer', 21, '', 1, 0, NULL, 'Buffer', 'Buffer', '2018-12-14 01:54:55', '2018-12-14 01:54:55'),
(55, 'base-top-coat', 'Base - Top Coat', 21, '', 1, 0, NULL, 'Base - Top Coat', 'Base - Top Coat', '2018-12-14 01:55:45', '2018-12-14 01:55:45'),
(56, 'nail-filing-bits', 'Nail Filing Bits', 21, '', 1, 0, NULL, 'Nail Filing Bits', 'Nail Filing Bits', '2018-12-14 01:57:30', '2018-12-14 01:57:30'),
(57, 'nail-files', 'Nail Files', 21, '', 1, 0, NULL, 'Nail Files', 'Nail Files', '2018-12-21 06:38:18', '2018-12-21 06:38:18'),
(58, 'carbide', 'Carbide', 21, '', 1, 0, NULL, NULL, NULL, '2019-02-20 07:12:10', '2019-02-20 07:12:10'),
(59, 'acrylic-brushes', 'Acrylic Brushes', 21, '', 1, 0, NULL, NULL, NULL, '2019-03-20 03:03:36', '2019-03-20 03:03:36'),
(60, 'nail-art-brushes', 'Nail Art Brushes', 21, '', 1, 0, NULL, NULL, NULL, '2019-02-20 07:52:03', '2019-02-20 07:52:03'),
(61, 'foam-displays', 'Foam Displays', 17, '', 1, 0, NULL, NULL, NULL, '2019-02-25 09:12:56', '2019-02-25 09:12:56'),
(62, '3d-modeling-gel', '3D Modeling Gel', 17, '', 1, 0, NULL, NULL, NULL, '2019-03-19 03:28:52', '2019-03-19 03:28:52'),
(63, 'rustic-trio', 'Rustic Trio', 18, '', 1, 0, NULL, NULL, NULL, '2019-03-19 06:11:59', '2019-03-19 06:11:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotion`
--

CREATE TABLE `promotion` (
  `id` int(11) NOT NULL,
  `title_vi` varchar(500) CHARACTER SET utf8 NOT NULL,
  `title_en` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `image_link` text NOT NULL,
  `content_vi` text NOT NULL,
  `content_en` text,
  `popup` tinyint(2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `promotion`
--

INSERT INTO `promotion` (`id`, `title_vi`, `title_en`, `image_link`, `content_vi`, `content_en`, `popup`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'supper cateye', 'supper cateye', 'test.jpg', 'supper cateye', 'supper cateye', 1, 1, 1, '2019-02-28 09:30:40', '2019-02-28 09:30:40'),
(2, 'supper cateye', 'supper cateye', 'test.jpg', 'supper cateye', 'supper cateye', 1, 1, 1, '2019-02-28 09:30:43', '2019-02-28 09:30:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `content` text,
  `link` varchar(255) DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `name`, `image_link`, `content`, `link`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(12, 'slide 11', '5PyZB_BANNER31.jpg', NULL, NULL, 1, 3, '2018-12-21 07:28:09', '2019-04-04 01:20:47'),
(14, 'slide 3', 'Nq47d_BANNER11.jpg', NULL, NULL, 1, 2, '2018-12-21 08:48:14', '2019-04-01 00:17:55'),
(13, 'slide2', 'fiKI3_BANNER21.jpg', NULL, NULL, 1, 1, '2018-12-21 08:47:57', '2019-04-01 00:17:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `image_link` text,
  `access_level` int(11) DEFAULT NULL,
  `password` varchar(150) NOT NULL,
  `remember_token` varchar(150) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `full_name`, `email`, `image_link`, `access_level`, `password`, `remember_token`, `status`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(2, 'Administrator', 'Phan Viết Cường', 'pvcuong.haimi@gmail.com', 'jQqqH_Admin.png', 1, '$2y$10$/GZsOSgEP/apeLcUr86F7OYhVcFotwoRs/J1YonP5WGq/TAAbHeyq', 'vBDpRBam8qD2zgAU3cy2cRATTRVl1h8LTnke8zlZDIzcbNT7Nj02W2Ll5jhm', 1, NULL, NULL, '2018-08-16 02:12:31', '2018-10-19 02:44:47'),
(6, 'phan cuong', 'Phan Viết Cường', 'noname8429@gmail.com', '', 0, '$2y$10$GiwS/ekDTqzJ3KjZ/FKToeVVKWD6H0nF9MnqhottbeMUHNvObwYD2', 'GNFPEJRps6alV6wBYPaH0VOBmrYAVFfdARjl9JCf5ZRFTSPGfq5xcx24hxnV', 1, 1644131806, 'TPHCM', '2018-08-28 00:47:34', '2018-08-28 00:47:34'),
(8, 'test', 'Phan Viết Cường', 'pvcuong1.haimi@gmail.com', NULL, 1, '$2y$10$d7m.VdyGpTjMk31UK6AcIOCBZ4skBwK6D2MZz1y9Eiz8vcOlSVvyu', NULL, 1, NULL, NULL, '2018-10-19 00:31:37', '2018-10-19 00:31:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `video_link` text NOT NULL,
  `status` tinyint(2) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `name`, `video_link`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Unicorn Effect Powder ', '<iframe width="275" height="290" src="https://www.youtube.com/embed/NCjsSADh8Jw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 1, 1, '2018-12-21 04:07:30', '2018-09-07 02:36:02'),
(2, 'Platinum with Chameleon Flakes', '<iframe width="275" height="290" src="https://www.youtube.com/embed/9mlnhJhc95c" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>\r\n', 1, 2, '2018-12-21 04:06:23', '2018-09-07 02:36:07'),
(3, 'Fairy Dust', '<iframe width="275" height="290" src="https://www.youtube.com/embed/VXlHrge_1g4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 1, 3, '2018-12-21 04:08:19', '2018-09-07 02:36:21'),
(4, 'Platinum Gel with Chrome Flakes', '<iframe width="275" height="290" src="https://www.youtube.com/embed/EkqE74ZKWag" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 1, 4, '2018-12-21 04:09:08', '2018-09-07 02:36:25'),
(5, 'Red Flake with Matte Gel Top', '<iframe width="275" height="290" src="https://www.youtube.com/embed/sUipnUtEGgE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 1, 4, '2018-12-21 04:09:08', '2018-09-07 02:36:25'),
(6, 'Glitter Nail Design', '<iframe width="275" height="290" src="https://www.youtube.com/embed/KuCx1ny6J9g" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 1, 4, '2018-12-21 04:09:08', '2018-09-07 02:36:25'),
(7, 'Black & Gold Titanium Design', '<iframe width="275" height="290" src="https://www.youtube.com/embed/8yQYscKu3Pk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 1, 4, '2018-12-21 04:09:08', '2018-09-07 02:36:25'),
(8, 'Ombre with Cre8tion Dip Powders', '<iframe width="275" height="290" src="https://www.youtube.com/embed/OS4YTHjxKQU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 1, 4, '2018-12-21 04:13:27', '2018-09-07 02:36:25'),
(9, 'Chameleon Flakes with Stone Gel', '<iframe width="275" height="290" src="https://www.youtube.com/embed/yokljLnK9e0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 1, 4, '2018-12-21 04:13:27', '2018-09-07 02:36:25');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT cho bảng `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT cho bảng `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1029;
--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT cho bảng `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
