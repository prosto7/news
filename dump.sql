-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 24, 2022 at 12:30 AM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testnews`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Alexborough', '2022-01-22 08:52:59', '2022-01-22 08:52:59'),
(2, 'New Lauraborough', '2022-01-22 08:52:59', '2022-01-22 08:52:59'),
(3, 'East Viola', '2022-01-22 08:52:59', '2022-01-22 08:52:59'),
(4, 'Lake Eloisaport', '2022-01-22 08:53:26', '2022-01-22 08:53:26'),
(5, 'Patburgh', '2022-01-22 08:53:26', '2022-01-22 08:53:26'),
(6, 'East Alexis', '2022-01-22 08:53:26', '2022-01-22 08:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(39, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(40, '2022_01_21_052355_create_users_table', 1),
(41, '2022_01_21_052830_create_cities_table', 1),
(42, '2022_01_21_052839_create_news_table', 1),
(43, '2022_01_21_144214_create_news_user_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `city_id` bigint UNSIGNED DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `text`, `image`, `date`, `city_id`, `tags`, `created_at`, `updated_at`) VALUES
(2, 'Est culpa quia numquam doloribus.', 'Fuga recusandae delectus assumenda sed. Qui laudantium possimus quis rem ea culpa totam molestiae. Odit sunt et commodi natus voluptas et nostrum perferendis. Et voluptas esse deleniti mollitia accusantium repellat odit. Consequuntur voluptate velit modi et at. Voluptatem voluptatem debitis earum placeat quo porro. Velit consequuntur laudantium dolores culpa veritatis earum beatae. Ducimus repellat laboriosam voluptatem at tempora. Consequatur dolorum est maiores itaque repudiandae et incidunt labore.', 'https://via.placeholder.com/360x360.png/00eecc?text=animals+cats+facere', '1973-12-20', 2, 'politics', '2022-01-22 08:52:59', '2022-01-22 08:52:59'),
(3, 'Omnis voluptas pariatur.', 'Distinctio velit fugiat ut error. Recusandae repellat ratione aliquid incidunt ut. Eveniet quia qui vel iusto minus iusto perspiciatis. Aut quasi est aliquam reprehenderit. Ducimus dicta libero incidunt suscipit. Voluptate architecto saepe minus assumenda quod. Qui asperiores provident aliquam debitis commodi laborum explicabo sunt. Autem debitis qui ipsum nam.', 'https://via.placeholder.com/360x360.png/0011ff?text=animals+cats+sequi', '1991-02-27', 1, 'politics', '2022-01-22 08:52:59', '2022-01-22 08:52:59'),
(4, 'Numquam hic vel.', 'Consequatur dolorem quae quia earum vel nobis tenetur. Reiciendis odit tempora laborum et eos. Molestiae quos corrupti quos expedita. Recusandae ipsa sit voluptatem eveniet. Ipsam quo sit dolore iste error. Voluptate consequatur distinctio at placeat ea molestiae enim. At alias doloribus vel eum nisi et. Voluptate et necessitatibus culpa quibusdam ipsum eius iusto et. Qui asperiores officiis ex neque cum rem non.', 'https://via.placeholder.com/360x360.png/0044ee?text=animals+cats+quia', '2005-04-20', 1, 'weather', '2022-01-22 08:52:59', '2022-01-22 08:52:59'),
(5, 'Aut sint qui error et.', 'Modi quas dignissimos facere consequatur suscipit explicabo qui. Aspernatur numquam praesentium a eligendi consectetur. Qui dolor omnis tempore voluptas qui qui. Culpa perferendis odit dolor et iure repellendus. Quia alias incidunt numquam omnis voluptate quia perspiciatis. Ut aliquam ea rerum porro voluptatem minus veritatis. Minus reprehenderit neque nobis maiores numquam distinctio et. Voluptas voluptates sit rerum dicta consequuntur.', 'https://via.placeholder.com/360x360.png/00bbcc?text=animals+cats+voluptatem', '2010-04-13', 1, 'politics', '2022-01-22 08:53:00', '2022-01-22 08:53:00'),
(6, 'Asperiores in occaecati.', 'Nobis ea dolor odit adipisci et. Dolorem ipsa sint est voluptates. Alias tempore qui eligendi possimus. Esse esse eaque quas. Omnis porro et consequatur earum.', 'https://via.placeholder.com/360x360.png/0000bb?text=animals+cats+reiciendis', '2006-09-18', 2, 'politics', '2022-01-22 08:53:00', '2022-01-22 08:53:00'),
(7, 'Et ea voluptas.', 'Quia in totam eos itaque id alias molestiae quia. Consequatur ullam alias assumenda et ipsum mollitia. Voluptas quis quaerat ut nemo aliquid. Nihil qui possimus voluptas dolor sed exercitationem. Enim harum possimus est tempora. Corrupti soluta voluptatum sit. Quod expedita eligendi porro occaecati. Nam et natus sit soluta ipsam vel. Ut aut sed et natus inventore.', 'https://via.placeholder.com/360x360.png/000055?text=animals+cats+impedit', '1978-06-15', 1, 'politics', '2022-01-22 08:53:00', '2022-01-22 08:53:00'),
(8, 'Est nihil perspiciatis.', 'Iure possimus repellendus amet provident dignissimos. Cumque illo aut vero molestiae dolor aut. Quidem ut totam sint nihil officia temporibus. Dignissimos ullam provident ab dolores tempore placeat dolores veritatis. Consectetur eaque unde sint unde cum.', 'https://via.placeholder.com/360x360.png/0077dd?text=animals+cats+sit', '1988-05-27', 2, 'weather', '2022-01-22 08:53:00', '2022-01-22 08:53:00'),
(9, 'Eius alias molestiae soluta.', 'Earum quasi rerum ex nam dicta a voluptatem non. Excepturi provident soluta corrupti a perspiciatis. Accusamus corrupti ipsam vel pariatur eligendi. Rerum qui id tempora blanditiis rerum nulla. Voluptates sequi aliquam adipisci eos. Et quisquam nisi odio ut rerum. Assumenda eaque a omnis cupiditate reprehenderit quia error. Voluptates autem exercitationem neque tempore. Delectus necessitatibus animi sapiente qui tenetur alias.', 'https://via.placeholder.com/360x360.png/004488?text=animals+cats+sed', '1978-05-11', 1, 'politics', '2022-01-22 08:53:00', '2022-01-22 08:53:00'),
(10, 'Et sit dolorem.', 'Eaque suscipit enim facere dolores distinctio placeat. Sint impedit iusto aut eaque repudiandae eum quo. Et esse enim vel est debitis alias. Sunt ea ea pariatur. Harum id debitis unde beatae aut tenetur. Nemo asperiores et numquam dolorem sapiente ut. Necessitatibus animi natus optio accusamus unde rerum. Dolores quas nulla qui enim aperiam voluptatibus. Quia optio atque dolore voluptate unde ab.', 'https://via.placeholder.com/360x360.png/00ee00?text=animals+cats+facere', '1981-03-12', 1, 'politics', '2022-01-22 08:53:00', '2022-01-22 08:53:00'),
(11, 'Explicabo omnis assumenda harum.', 'Assumenda voluptas qui et occaecati rem blanditiis ullam fugiat. Id ratione omnis dolor in neque dolores sit omnis. At dicta et iste et voluptatem quidem dolores commodi. Velit nemo ducimus qui cum similique impedit laborum aut. Id est dolorem blanditiis delectus perferendis. Est doloremque nihil deserunt a. Non sed voluptatem maiores non ea libero. Voluptates hic quae debitis occaecati aut ut. Est ea eveniet sit. Aspernatur quidem et perferendis eligendi ducimus qui.', 'https://via.placeholder.com/360x360.png/00dd33?text=animals+cats+quibusdam', '1995-11-16', 1, 'politics', '2022-01-22 08:53:00', '2022-01-22 08:53:00'),
(12, 'Eveniet autem error dolorem.', 'Reiciendis eos eligendi quasi nihil maiores placeat. Dolores molestiae quis porro ab mollitia. Perferendis aut perspiciatis quidem consequatur. Ab et nulla sit quos expedita delectus. Et omnis odit autem deserunt et voluptatem autem. Tempore sit praesentium sit quisquam minus dolorum. Id magni quam et debitis officiis.', 'https://via.placeholder.com/360x360.png/003344?text=animals+cats+quasi', '2014-08-14', 2, 'politics', '2022-01-22 08:53:15', '2022-01-22 08:53:15'),
(13, 'Fuga ut quo.', 'Praesentium quae voluptatum et consequatur consectetur sunt. Est quas et sed sit ut sunt. Ipsam nobis minus eos quis non harum facilis. Harum consequatur consequatur ex quos eligendi voluptatem alias et. Molestiae assumenda praesentium ut itaque sit qui debitis.', 'https://via.placeholder.com/360x360.png/003344?text=animals+cats+praesentium', '2013-02-11', 2, 'politics', '2022-01-22 08:53:15', '2022-01-22 08:53:15'),
(14, 'Corporis dolores dignissimos dolorem.', 'Dolores sit quae praesentium iure explicabo odit saepe itaque. Nulla impedit ducimus sint molestiae aut. Atque laboriosam et similique repellat delectus iusto mollitia placeat. Delectus doloribus alias a nam. Necessitatibus quia voluptas blanditiis repellat.', 'https://via.placeholder.com/360x360.png/0000cc?text=animals+cats+id', '1976-11-11', 1, 'politics', '2022-01-22 08:53:15', '2022-01-22 08:53:15'),
(15, 'Ea illum asperiores.', 'Nobis perspiciatis nam et deserunt et perspiciatis ut. Voluptatum dignissimos amet ea. Repudiandae magni non dolores maxime iste. Consequatur fugiat quos ea perspiciatis tenetur accusantium soluta. Dolorem dignissimos aut temporibus porro impedit est sapiente. Quod est quas delectus. Eligendi asperiores magnam sequi voluptatum et quia. Enim architecto veritatis ea excepturi ducimus. Saepe iure eveniet quis.', 'https://via.placeholder.com/360x360.png/0000cc?text=animals+cats+quam', '2021-01-21', 2, 'politics', '2022-01-22 08:53:15', '2022-01-22 08:53:15'),
(16, 'Consectetur iusto consectetur inventore qui.', 'Quaerat hic velit sequi et possimus. Quod vitae qui ut accusamus qui. Quos iste minima blanditiis quos. Quia et voluptas quod. Ab eum ab consequuntur quas consequatur rerum. Itaque molestiae a reprehenderit vitae nisi ipsam. Molestias sit ratione voluptatem.', 'https://via.placeholder.com/360x360.png/008866?text=animals+cats+velit', '2010-07-04', 2, 'weather', '2022-01-22 08:53:15', '2022-01-22 08:53:15'),
(17, 'Earum quam dicta doloribus.', 'Earum sed quod quo illo ad tempora inventore. Corrupti quo ea omnis aut ut et illum. Quam libero exercitationem ut. Ut autem nulla repudiandae consequatur. Labore eum commodi quidem voluptatibus saepe et. At minus est sint fuga dolorem veniam. Quia qui consequuntur doloremque recusandae eum eos sint.', 'https://via.placeholder.com/360x360.png/009988?text=animals+cats+labore', '2006-07-18', 2, 'politics', '2022-01-22 08:53:15', '2022-01-22 08:53:15'),
(18, 'Aliquid facilis maiores at.', 'Ex officia cum quo corrupti totam totam. Occaecati sequi libero voluptas ducimus ab. Sunt ducimus nobis aut rerum et dignissimos sint. Qui est eaque et laborum voluptate. Maxime et asperiores ut sit enim minima. Unde velit pariatur mollitia a sint cum illum. Accusantium quis neque ratione.', 'https://via.placeholder.com/360x360.png/007744?text=animals+cats+voluptas', '1970-09-12', 2, 'politics', '2022-01-22 08:53:15', '2022-01-22 08:53:15'),
(19, 'Recusandae non culpa.', 'Quaerat vero aut neque. Dolore ut possimus quas rerum tempore quisquam. Sed sit reprehenderit dolor. Velit ut consequatur incidunt itaque placeat repudiandae. Inventore voluptatem repellendus illum est excepturi ut.', 'https://via.placeholder.com/360x360.png/000099?text=animals+cats+et', '2002-01-06', 2, 'politics', '2022-01-22 08:53:15', '2022-01-22 08:53:15'),
(20, 'Vitae eligendi sapiente omnis.', 'Ut exercitationem architecto eligendi sit ut. Tempora ut voluptatem aut et. Qui omnis mollitia velit est. In quibusdam est numquam placeat magni aut expedita. Sapiente iste animi sed sed ut. Totam reiciendis odit nulla rerum et aut atque. Sed culpa debitis incidunt ut consequatur. Quo dolorum similique nisi repellat. Sed nobis sed magnam officiis.', 'https://via.placeholder.com/360x360.png/00bb77?text=animals+cats+et', '1987-01-25', 1, 'politics', '2022-01-22 08:53:15', '2022-01-22 08:53:15'),
(21, 'Rerum dolor minus ipsum.', 'Nesciunt blanditiis et dolorem sunt. A dolores omnis commodi et. Vel consectetur eum voluptatem dolores corporis omnis. Quae laudantium ipsa quam veniam. Molestiae animi tempora ut nulla. Aperiam omnis ducimus ea ipsam. A dolorem consequatur tenetur labore dicta tenetur. Minus beatae enim et quo hic id.', 'https://via.placeholder.com/360x360.png/0077aa?text=animals+cats+eos', '1985-06-24', 2, 'politics', '2022-01-22 08:53:15', '2022-01-22 08:53:15'),
(22, 'Cupiditate in tenetur.', 'Et dolore numquam maiores voluptatem nemo praesentium enim. Molestiae et iure at velit veniam. Aut rem sint consectetur voluptas ducimus commodi. Qui quia sit odio eveniet totam id. Qui maiores dolorem veritatis voluptatum aspernatur aut. Consectetur quo quae modi. Eos non mollitia dolores dicta labore doloribus. Consectetur dolores assumenda excepturi ipsum quia magni.', 'https://via.placeholder.com/360x360.png/0066dd?text=animals+cats+quia', '2017-02-03', 2, 'politics', '2022-01-22 08:53:36', '2022-01-22 08:53:36'),
(23, 'Non possimus qui doloremque.', 'Vel dolore sapiente facilis numquam et et natus dolor. Et nihil at officia autem temporibus consequatur qui. Quisquam qui excepturi dolores dolore nobis. Aut exercitationem minima minus impedit aspernatur adipisci autem. Porro unde harum voluptatem quidem sed dolores. Consectetur est veritatis ut. Numquam culpa ratione fuga repellat beatae vero. Vitae qui inventore in exercitationem voluptate ipsum similique rem. Iusto eaque aut quidem reprehenderit ipsum sed qui labore.', 'https://via.placeholder.com/360x360.png/00cc11?text=animals+cats+ut', '2019-08-23', 1, 'weather', '2022-01-22 08:53:37', '2022-01-22 08:53:37'),
(24, 'Necessitatibus in.', 'Atque nesciunt ut rerum velit consequatur eum perspiciatis. Temporibus consequuntur explicabo dolorum labore. Est iure illo illum repellat eius nihil quos sint. Blanditiis voluptatem molestiae doloremque officia expedita aut ratione dolor. Inventore qui eos adipisci sunt magnam officia. Similique qui nulla quo dolor sed. Maxime consequatur deleniti nesciunt doloremque et aut voluptatem itaque. Itaque qui quis et ut. Dolor voluptatem qui hic laudantium. Beatae et quas numquam facere.', 'https://via.placeholder.com/360x360.png/007777?text=animals+cats+illo', '1975-02-24', 2, 'politics', '2022-01-22 08:53:37', '2022-01-22 08:53:37'),
(25, 'Tempore aspernatur.', 'Animi odit repellat saepe magnam quos est accusantium. Placeat incidunt voluptates et est voluptas perspiciatis delectus error. Atque temporibus quo dolorem rerum. Consequatur ullam non ut. Voluptas quia fugiat tenetur eaque aut.', 'https://via.placeholder.com/360x360.png/0077bb?text=animals+cats+exercitationem', '2005-03-26', 1, 'politics', '2022-01-22 08:53:37', '2022-01-22 08:53:37'),
(26, 'Officia nihil dolore eaque tempora.', 'Illum et hic aut omnis. Aut excepturi sit dicta reprehenderit corrupti. Consequuntur suscipit officia quaerat nobis ut consequatur. Sit est sapiente et et quisquam. Minima dicta sed rem molestias maiores. Quo rerum et numquam minus fugit temporibus aliquam. Incidunt facere dolor et ut aspernatur non quis.', 'https://via.placeholder.com/360x360.png/0066bb?text=animals+cats+veniam', '2001-11-04', 2, 'politics', '2022-01-22 08:53:37', '2022-01-22 08:53:37'),
(27, 'Quasi ex unde.', 'Dolor totam non est itaque. Sed soluta autem minima non eaque non ut. Sunt eveniet ducimus rerum eligendi. Voluptas autem sunt consequuntur unde esse expedita. Assumenda dicta voluptates accusamus magni ut tempore iure veritatis.', 'https://via.placeholder.com/360x360.png/00cc77?text=animals+cats+quod', '2003-07-16', 1, 'politics', '2022-01-22 08:53:37', '2022-01-22 08:53:37'),
(28, 'Maiores velit eius.', 'Repudiandae ut velit ea id. Voluptate possimus ut earum totam. Reprehenderit temporibus rerum autem aperiam. Aperiam quas facilis in error. Consequuntur quod sit neque doloribus rerum sed.', 'https://via.placeholder.com/360x360.png/00bb77?text=animals+cats+vel', '1988-10-13', 1, 'politics', '2022-01-22 08:53:37', '2022-01-22 08:53:37'),
(29, 'Saepe repudiandae voluptas sed.', 'Quos eaque voluptates placeat magnam. Saepe ut mollitia et a. Inventore laborum rerum maxime. Laborum nisi cum dicta dolorum quas impedit. Illum quam quia dolores expedita error doloremque. Hic consequuntur saepe nostrum ducimus rem porro aut. Minus sit et qui enim. Ut alias aut voluptatem rem et est.', 'https://via.placeholder.com/360x360.png/006644?text=animals+cats+eos', '2003-11-15', 2, 'politics', '2022-01-22 08:53:37', '2022-01-22 08:53:37'),
(30, 'Est sed sit voluptatem.', 'Optio magnam repellat explicabo est molestiae. Voluptas dolor ut velit consectetur dolorem consequatur qui. Quaerat adipisci et et fugiat in nulla officiis. Officiis earum sunt rerum eum libero delectus molestiae amet. Amet voluptate architecto vero ipsum accusamus est enim. Velit a ut aut accusantium corrupti et.', 'https://via.placeholder.com/360x360.png/009911?text=animals+cats+natus', '1983-09-15', 1, 'politics', '2022-01-22 08:53:37', '2022-01-22 08:53:37'),
(31, 'Tempore unde autem.', 'Nobis vel eos vitae est aut quia. Doloribus consectetur corporis eaque quas consectetur reprehenderit qui. Aperiam dolore exercitationem vitae a doloremque nemo error aliquid. Asperiores maiores ea aperiam iste et aliquam. Maxime unde porro commodi aspernatur deleniti. Sit aut voluptatem perspiciatis et facilis ab. Eos ratione natus in voluptatem mollitia sed non. Natus dolor et magni sit pariatur consequuntur.', 'https://via.placeholder.com/360x360.png/009977?text=animals+cats+quam', '1973-05-29', 2, 'politics', '2022-01-22 08:53:37', '2022-01-22 08:53:37'),
(32, 'Asperiores magni perferendis eveniet.', 'Sunt enim magnam voluptatibus voluptas. Provident nostrum numquam beatae unde consequatur consequatur harum. Tenetur debitis reiciendis dolorem sit. Ex eum incidunt magni non nisi. Pariatur illo explicabo ipsum. Aperiam facilis quasi non est nihil. Molestias quidem dolores voluptatem non aut rerum laboriosam. Sed ipsam debitis hic minima dolorem earum nesciunt nostrum.', 'https://via.placeholder.com/360x360.png/00bbff?text=animals+cats+quia', '1980-11-21', 1, 'economy', '2022-01-22 08:54:42', '2022-01-22 08:54:42'),
(33, 'Et earum porro laborum.', 'Voluptatem quam aut illum totam odit consequuntur consequuntur. Error quidem enim perferendis sint eius dolorem distinctio dicta. Labore et labore ipsam et ex repudiandae velit quos. Iure et ad reprehenderit doloribus repellendus vitae aut. Necessitatibus rerum quae sint praesentium. Distinctio qui voluptatibus reprehenderit. Non sint assumenda eveniet et impedit assumenda.', 'https://via.placeholder.com/360x360.png/00dd77?text=animals+cats+eligendi', '1977-03-19', 2, 'economy', '2022-01-22 08:54:42', '2022-01-22 08:54:42'),
(34, 'Sed ut deleniti qui pariatur.', 'Non eum quis magni facere optio ex. Totam itaque et expedita. Eaque soluta repellendus dolore est dolore. Fugiat ipsa molestiae velit libero et aliquam. Voluptatem quae repellat laborum ut. Nostrum consequuntur quis dolores aut rerum soluta.', 'https://via.placeholder.com/360x360.png/00ff00?text=animals+cats+quae', '1980-09-13', 1, 'economy', '2022-01-22 08:54:42', '2022-01-22 08:54:42'),
(35, 'Voluptas ut laboriosam est.', 'Veritatis quae ullam ex velit sunt tenetur nemo quia. Impedit iste est fugiat est cumque. Velit qui quia doloribus ut autem. Et laborum laborum placeat magnam dolorem sit. Quaerat sapiente inventore saepe in voluptatem aut exercitationem. Sit et doloremque omnis voluptatem ut amet. Velit ducimus molestiae accusantium dicta deleniti et.', 'https://via.placeholder.com/360x360.png/004411?text=animals+cats+ab', '1999-10-31', 1, 'economy', '2022-01-22 08:54:42', '2022-01-22 08:54:42'),
(36, 'Et quisquam voluptate.', 'Consequatur reprehenderit sint vel error ea. Est aperiam natus in cumque quas fuga. Velit quia et doloremque incidunt quo explicabo laborum. Libero est ipsam laborum velit enim dolorem ea. Sed consequatur sunt aut odit quae. Quasi voluptatem omnis rerum minus inventore explicabo nesciunt. Ut debitis eveniet qui excepturi iusto. Dolore perspiciatis dolorem fuga sapiente.', 'https://via.placeholder.com/360x360.png/005511?text=animals+cats+dolores', '1982-03-25', 1, 'economy', '2022-01-22 08:54:42', '2022-01-22 08:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `news_user`
--

CREATE TABLE `news_user` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `news_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_user`
--

INSERT INTO `news_user` (`id`, `user_id`, `news_id`, `created_at`, `updated_at`) VALUES
(1, 3, 8, '2022-01-22 08:53:00', '2022-01-22 08:53:00'),
(3, 3, 10, '2022-01-22 08:53:26', '2022-01-22 08:53:26'),
(4, 2, 10, '2022-01-22 08:53:26', '2022-01-22 08:53:26'),
(5, 3, 3, '2022-01-22 08:53:26', '2022-01-22 08:53:26'),
(6, 1, 6, '2022-01-22 08:53:26', '2022-01-22 08:53:26'),
(7, 2, 8, '2022-01-22 08:53:26', '2022-01-22 08:53:26'),
(8, 2, 2, '2022-01-22 08:53:26', '2022-01-22 08:53:26'),
(9, 3, 6, '2022-01-22 08:53:26', '2022-01-22 08:53:26'),
(10, 2, 2, '2022-01-22 08:53:26', '2022-01-22 08:53:26'),
(11, 2, 9, '2022-01-22 08:53:26', '2022-01-22 08:53:26'),
(35, 1, 2, '2022-01-23 10:23:44', '2022-01-23 10:23:44'),
(36, 1, 5, '2022-01-23 10:23:55', '2022-01-23 10:23:55'),
(37, 1, 7, '2022-01-23 10:25:04', '2022-01-23 10:25:04'),
(38, 1, 4, '2022-01-23 10:29:01', '2022-01-23 10:29:01');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `created_at`, `updated_at`) VALUES
(1, 'ledner.viviane', '2022-01-22 08:52:59', '2022-01-22 08:52:59'),
(2, 'onie.wiegand', '2022-01-22 08:52:59', '2022-01-22 08:52:59'),
(3, 'luna.beatty', '2022-01-22 08:52:59', '2022-01-22 08:52:59'),
(4, 'jakob.maggio', '2022-01-22 08:53:26', '2022-01-22 08:53:26'),
(5, 'scot.kirlin', '2022-01-22 08:53:26', '2022-01-22 08:53:26'),
(6, 'chamill', '2022-01-22 08:53:26', '2022-01-22 08:53:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_city_id_foreign` (`city_id`);

--
-- Indexes for table `news_user`
--
ALTER TABLE `news_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_user_user_id_foreign` (`user_id`),
  ADD KEY `news_user_news_id_foreign` (`news_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `news_user`
--
ALTER TABLE `news_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news_user`
--
ALTER TABLE `news_user`
  ADD CONSTRAINT `news_user_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `news_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
