USE online_shop;

-- Таблица разделов интернет-магазина
INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');

 -- Таблица складов интернет-магазина
 INSERT INTO warehouses VALUES
  (NULL, 'г. Минск, ул. Кнорина 6Б оф. 5Н'),
  (NULL, 'г. Могилев, ул. Дзержинского 4'),
  (NULL, 'г. Витебск, 1-я улица Доватора, дом 1'),
  (NULL, 'г. Брест, ул. Советская 56'),
  (NULL, 'г. Гродно, ул. Максима Горького 49-123');

 -- Таблица товаров интернет-магазина
INSERT INTO product (name, price, description, catalog_id) VALUES
  ('AMD Ryzen 5 5600X', 690,'Vermeer, AM4, 6 ядер, частота 4.6/3.7 ГГц, кэш 3 МБ + 32 МБ, техпроцесс 7 нм, TDP 65W', 1),
  ('AMD Ryzen 7 5800X', 995,'Vermeer, AM4, 8 ядер, частота 4.7/3.8 ГГц, кэш 4 МБ + 32 МБ, техпроцесс 7 нм, TDP 105W', 1),
  ('Intel Core i7-12700K', 1273,'Alder Lake, LGA1700, 12 ядер, частота 5/2.7 ГГц, кэш 12 МБ + 25 МБ, техпроцесс 10 нм, TDP 190W', 1),
  ('Intel Core i9-12900K', 1950,'Alder Lake, LGA1700, 16 ядер, частота 5.2/2.4 ГГц, кэш 14 МБ + 30 МБ, техпроцесс 10 нм, TDP 241W', 1),
  ('AMD Ryzen Threadripper 1950X (BOX)', 3888,'Whitehaven, TR4, 16 ядер, частота 4/3.4 ГГц, кэш 8 МБ + 32 МБ, техпроцесс 14 нм, TDP 180W', 1),
  ('ASRock B660M Pro RS', 357,'mATX, сокет Intel LGA1700, чипсет Intel B660, память 4xDDR4, слоты: 2xPCIe x16, 1xPCIe x1, 2xM.2', 2),
  ('Gigabyte B450 Aorus Pro (rev. 1.0)', 284,'ATX, сокет AMD AM4, чипсет AMD B450, память 4xDDR4, слоты: 3xPCIe x16, 1xPCIe x1, 2xM.2', 2),
  ('ASUS Prime H510M-K', 209,'mATX, сокет Intel LGA1200, чипсет Intel H510, память 2xDDR4, слоты: 1xPCIe x16, 1xPCIe x1, 1xM.2', 2),
  ('ASUS ROG STRIX B550-E Gaming', 686,'ATX, сокет AMD AM4, чипсет AMD B550, память 4xDDR4, слоты: 3xPCIe x16, 2xPCIe x1, 2xM.2', 2),
  ('Gigabyte B450M DS3H (rev. 1.0)', 170,'mATX, сокет AMD AM4, чипсет AMD B450, память 4xDDR4, слоты: 2xPCIe x16, 1xPCIe x1, 1xM.2', 2),
  ('Palit GeForce RTX 3060 Dual 12GB GDDR6 NE63060019K9-190AD', 1835,'NVIDIA GeForce RTX 3060 12 ГБ GDDR6 LHR, базовая частота 1320 МГц, макс. частота 1777 МГц, 3584sp, частота памяти 15000 МГц, 192 бит, доп. питание: 8 pin, 2 слота, HDMI, DisplayPort', 3),
  ('Gigabyte GeForce GTX 1660 Super OC 6GB GDDR6 GV-N166SOC-6GD', 1280,'NVIDIA GeForce GTX 1660 Super 6 ГБ GDDR6, базовая частота 1530 МГц, макс. частота 1830 МГц, 1408sp, частота памяти 14000 МГц, 192 бит, доп. питание: 8 pin, 2 слота, HDMI, DisplayPort', 3),
  ('MSI GeForce RTX 3060 Ti Ventus 2X 8G OCV1 LHR', 2035,'NVIDIA GeForce RTX 3060 Ti 8 ГБ GDDR6 LHR, базовая частота 1410 МГц, макс. частота 1695 МГц, 4864sp, частота памяти 14000 МГц, 256 бит, доп. питание: 8 pin, 2.3 слота, HDMI, DisplayPort', 3),
  ('Palit GeForce RTX 3050 Dual 8G NE63050019P1-190AD', 1340,'NVIDIA GeForce RTX 3050 8 ГБ GDDR6 LHR, базовая частота 1550 МГц, макс. частота 1777 МГц, 2560sp, частота памяти 14000 МГц, 128 бит, доп. питание: 8 pin, 2 слота, HDMI, DisplayPort', 3),
  ('ASUS TUF Gaming GeForce RTX 3070 Ti 8GB GDDR6X', 3200,'NVIDIA GeForce RTX 3070 Ti 8 ГБ GDDR6X LHR, базовая частота 1580 МГц, макс. частота 1800 МГц, 6144sp, частота памяти 19000 МГц, 256 бит, доп. питание: 8+8 pin, 2.7 слота, HDMI, DisplayPort', 3),
  ('SSD Kingston A400 480GB SA400M8/480G', 180,'480 ГБ, M.2, SATA 3.0, микросхемы TLC, последовательный доступ: 500/450 MBps', 4),
  ('SSD Samsung 970 PRO 1TB MZ-V7P1T0BW', 719,'1 ТБ, M.2, PCI Express 3.0 x4 (NVMe 1.3), контроллер Samsung Phoenix, микросхемы 3D MLC NAND, последовательный доступ: 3500/2700 MBps, случайный доступ: 500000/500000 IOps', 4),
  ('SSD Crucial BX500 240GB CT240BX500SSD1', 120,'240 ГБ, 2.5", SATA 3.0, контроллер Silicon Motion SM2258XT, микросхемы 3D TLC NAND, последовательный доступ: 540/500 MBps', 4),
  ('HDD Seagate Barracuda 2TB ST2000DM008', 195,'3.5", SATA 3.0 (6Gbps), 7200 об/мин, буфер 256 МБ', 4),
  ('HDD WD Purple 4TB [WD40PURZ]', 350,'3.5", SATA 3.0 (6Gbps), 5400 об/мин, буфер 64 МБ', 4),
  ('Crucial Ballistix 2x8GB DDR4 PC4-25600 BL2K8G32C16U4B', 269,'16 ГБ, 2 модуля DDR4 DIMM по 8 ГБ, частота 3200 МГц, CL 16T, напряжение 1.35 В', 5),
  ('Crucial Ballistix 2x16GB DDR4 PC4-25600 BL2K16G32C16U4B', 470,'32 ГБ, 2 модуля DDR4 DIMM по 16 ГБ, частота 3200 МГц, CL 16T, напряжение 1.35 В', 5),
  ('Kingston FURY Beast 2x8GB DDR4 PC4-28800 KF436C17BBK2/16', 278,'16 ГБ, 2 модуля DDR4 DIMM по 8 ГБ, частота 3600 МГц, CL 17T, тайминги 17-21-21, напряжение 1.35 В', 5),
  ('Patriot Signature Line 8GB DDR4 SODIMM PC4-21300 PSD48G266681S', 89,'8 ГБ, 1 модуль DDR4 SO-DIMM, частота 2666 МГц, CL 19T, тайминги 19-19-19-43, напряжение 1.2 В', 5),
  ('HyperX Fury 4GB DDR4 PC4-25600 HX432C16FB3/4', 90,'4 ГБ, 1 модуль DDR4 DIMM, частота 3200 МГц, CL 16T, тайминги 16-18-18, напряжение 1.35 В', 5);
  
 -- Таблица медиа-файлов
 INSERT INTO media (id, product_id, filename, size) VALUES 
  (1, 1, '100.jpg', 42466),
  (2, 2, '120.jpg', 42466),
  (3, 3, '130.jpg', 42466),
  (4, 4, '140.jpg', 42466),
  (5, 5, '150.jpg', 42466),
  (6, 6, '170.jpg', 42466),
  (7, 7, '180.jpg', 42466),
  (8, 8, '190.jpg', 42466),
  (9, 9, '200.jpg', 42466),
  (10, 10, '210.jpg', 42466),
  (11, 11, '220.jpg', 42466),
  (12, 12, '230.jpg', 42466),
  (13, 13, '240.jpg', 42466),
  (14, 14, '250.jpg', 42466),
  (15, 15, '260.jpg', 42466),
  (16, 16, '270.jpg', 42466),
  (17, 17, '280.jpg', 42466),
  (18, 18, '290.jpg', 42466),
  (19, 19, '300.jpg', 42466),
  (20, 20, '310.jpg', 42466),
  (21, 21, '320.jpg', 42466),
  (22, 22, '330.jpg', 42466),
  (23, 23, '340.jpg', 42466),
  (24, 24, '350.jpg', 42466),
  (25, 25, '360.jpg', 42466);
  
 -- Таблица связи товаров и складов
 INSERT INTO products_warehouses (id, warehouse_id, product_id, amount) VALUES 
  (1, 1, 1, 10), (2, 1, 2, 12), (3, 1, 3, 16), (4, 1, 4, 5), (5, 1, 5, 5),
  (6, 1, 6, 7), (7, 1, 7, 11), (8, 1, 8, 5), (9, 1, 9, 6), (10, 2, 10, 21), 
  (11, 2, 11, 10), (12, 2, 12, 7), (13, 2, 13, 11), (14, 3, 14, 24), (15, 3, 15, 10),
  (16, 4, 16, 11), (17, 4, 17, 26), (18, 4, 18, 7), (19, 5, 19, 15), (20, 5, 20, 13),
  (21, 5, 21, 7), (22, 5, 22, 8), (23, 3, 23, 4), (24, 4, 24, 7), (25, 2, 25,32),
  (26, 1, 1, 8), (27, 5, 10, 9), (28, 3, 16, 10), (29, 1, 8, 6), (30, 4, 9, 6),
  (31, 5, 15,5), (32, 2, 22,9), (33, 2, 1, 14), (34, 3, 1, 11), (35, 1, 1, 9);
 
 -- Таблица пользователей интернет-магазина
 INSERT INTO customers (id, firstname, lastname, email, phone) VALUES
  (1, 'Дарья', 'Астафьева', 'dasha@gmail.com', '+375297589385'),
  (2, 'Дмитрий', 'Синицын', 'dima123@mail.ru', '+375256874467'),
  (3, 'Александр', 'Воробьев', 'alex555@rambler.ru', '+375445676789'),
  (4, 'Николай', 'Панин', 'nick1980@mail.ru', '+375293456321'),
  (5, 'Владимир', 'Черкесов', 'vovanchik@gmail.com', '+375445678943'),
  (6, 'Семен', 'Корочаев', 'korochaev@rambler.ru', '+375297637890'),
  (7, 'Андрей', 'Рублев', 'a_rublev@hotmail.com', '+375256786543'),
  (8, 'Марина', 'Белова', 'marinochka80@gmail.com', '+375293458909'),
  (9, 'Николай', 'Сохор', 'n.sohor@gmail.com', '+375254565631'),
  (10, 'Анатолий', 'Бараховский', 'tolan1980@mail.ru', '+375294567809');
 
 -- Таблица профилей пользователей интернет-магазина
 INSERT INTO profiles (customer_id, sex, birthday, address) VALUES
  (1, 'f', '1998-10-31', 'г. Минск, ул. Сурганова, 5-128'),
  (2, 'm', '2006-10-18', 'г. Минск, ул. Притыцкого, 67-12'),
  (3, 'm', '1972-06-27', 'г. Минск, ул. П. Глебки, 12-65'),
  (4, 'm', '1994-05-01', 'г. Могилев, ул. Первомайская, 56-13'),
  (5, 'm', '1999-04-11', 'г. Гродно, ул. Победителей, 32-8'),
  (6, 'm', '1982-09-28', 'г. Могилев, ул. Сурганова, 10-11'),
  (7, 'm', '1999-07-27', 'г. Витебск, ул. Семашко, 8-56'),
  (8, 'f', '1997-07-14', 'г. Гродно, ул. Стрыкало, 67-16'),
  (9, 'm', '2002-03-24', 'г. Гомель, ул. Тимошенко, 45-16'),
  (10, 'm', '1977-04-05', 'г. Брест, ул. Центральная, 7-16');
 
 -- Таблица отзывов пользователей о товарах
 INSERT INTO reviews (id, customer_id, product_id, body, ranking) VALUES
  (1, 1, 1, 'Брал на замену R5 3500, который без многопотока, 5600х на 77% лучше при том же +-тдп. На матери b450 с последним биосом от гигов работает как часы даже без перестановки Windows, 
  хотя и юзал временный атлон неделю. Однозначно лучший 6 ядерный 12 поточный проц амд на данный момент. По температурам скажу, что разница с той же башней и мх-4 5-10 градусов в 100% нагрузке, в простое 45-50.
  Достоинства: TDP, частоты и многопоток Недостатки: Цена', 9),
  (2, 5, 1, 'Попался голд семп. Настроил через гидру в даунвольт. По итогу: 4800 в легких приложениях и 4500 на все ядра в тяжелых. Температура упала с 50 до 40. Температуры под кастом водой.
  Достоинства: классный проц для игр Недостатки: цена', 8),
  (3, 2, 2, 'По доставке, пришел заляпанный, отмыл но не приятно, имейте в ввиду. Очень жаркий, 200ватт сожрёт и не подумает
  105 ватт это на минимальной скорости Охлаждается водянкой, 70° на мощный задачах, зато полное раскрытие
  Достоинства: Мощный Почти топНедостатки: Горячий', 9),
  (4, 3, 4, 'Камень прекрасный, не горячий если не гнать. Для разгона однозначно нужна водянка. Материнку брать только на DDR5 c поддержкой PCIe 5.0 для SSD, смотрите описания к материнкам, 
  производители хитрят. Достоинства: Все понравилось, даже цена. Недостатки: Нет, пока, SSD с 
  поддержкой PCIe 5.0 в продаже, а видеокарт наверно и не предвидится в этом году.', 9),
  (5, 4, 10, 'пользуюсь несколько лет, со временем все больше вылазит проблема с sata, недавно угробила один из дисков
  Достоинства: за эти деньги много всего Недостатки: sata разъемы', 5),
  (6, 1, 15, 'Долго не хотел брать из-за диких цен, но недавно они опять поползли вверх, вот и решил заменить свою 1080, а то мало ли еще больший дефицит будет.
  СО для этой карты избыточная, что выливается в 60-65 градусов в играх при 1440p и локе в 144Гц (Warframe, Destiny 2) на максах. Имеется переключатель режимов охлаждения Perfomance/Quiet. Оставил на перфоманс, все равно почти не слышно, а низкие температуры я люблю.
  Достоинства: Охлаждение, тишина, компонентная база
  Недостатки: 2х оверпрайс, порой незначительный свист дросселей', 7),
  (7, 5, 20, 'Используется 6 дисков по 4 тб, 24 камеры параллельно на них записывают. Пару раз вырубались от грозы, отвалился за 2 года только один и то из-за внезапного выключения света.
  Достоинства: Никогда не спит, 5400 оборотов, скорость 150мб в сек не у каждого харда
  Недостатки: Может сломаться', 8),
  (8, 6, 20, 'Отличные HDD для систем видеонаблюдения. В течении 5 лет - ни один не сломался. Хотя поставил уже порядка 20- 30шт.
  Достоинства: надёжность на высоте Недостатки: пока не огбнаружил', 9),
  (9, 7, 23, 'Память топ, особенно за свою цену, холодная, гнать легко, XMP 2.0 профиль, стабильная
  Достоинства: 2-ух стороннее расположение чипов, охлаждение, цена, качество
  Недостатки: нет', 10),
  (10, 8, 25, 'Все работает стабильно больше сказать нечего, больше ставить памяти вообще нет смысла.
  Достоинства: работает, ))  Недостатки: выключаешь комп перестает работать ))', 9),
  (11, 9, 22, 'Все работает стабильно больше сказать нечего, больше ставить памяти вообще нет смысла.
  Достоинства: работает, ))  Недостатки: выключаешь комп перестает работать ))', 9),
  (12, 10, 6, 'Плата отлично подходит для i5 и нон к i7, питальник не греется, радиаторы после часа игры в бф 2042 еле теплые (i5 12400), этот проц полностью разлоченный в биос в играх не выходит за 65 вт, в стресс тесте аида 70 вт. 12 поколение это уже не 11, где i5 ели под 120-150 вт. В тяжелом ОССТ врм за час разоргелся с 12400 до 75, что очень круто, в целом по врм все хорошо, нужно только поднять/снять лимиты в биос, т.к. Асрок заложил интеловский дефолт, а тот же мси хитрит и завышает пл1 и пл2, поэтому в стоке их мамки якобы лучше держат частоту.
  На последнем биосе вер.5 и выше память отлично гонится и тайминги жмутся прекрастно, на старых пишут даже не берет xmp 3600, но я не пробовал, сразу обновил.
  Минусы: не определяет в режтме UEFI старые видеокарты, паскали не пашут что 1050 ti от гиги, что 1070 от асуса, нужно включать csm, но для этого нужна другая видеокарта , т.к. csm по дефолту отключен. А с включенным csm не встанет вин 11. На 3060 палит все заработало. Это так стимулируют покупки новых видеокарт?
  Достоинства: Выше Недостатки: Совместимость с видиками паскалеанской эры', 9),
  (13, 5, 13, 'Очень небольшой размер, влезет в любой корпус. Память гонится на +1600, хотя и хайникс, может 1800, но в некоторых играх вылетает. Можно включить режим зеро фрозр, становится заметно тише в нагрузках, но и греется на 5 градусов больше. Насколько греется память неизвестно, но охлаждение хорошее, на цепях питания отдельный радиатор, все в термопрокладках и важные элементы попадают под радиатор. В хорошо продуваемом корпусе в играх больше 72 градусов не видел, хот спот +13 градусов. Можно ТДП снизить до 80%, фпс падает на 20 кадров ( но в играх без дллс он и так 90-110), но и температура не выше 66 градусов. По производительности в целом более чем достаточно для 2К, если бы была возможность повысить ТДП, возможно бы и неплохо разогналась, но все упирается в питание.
  Достоинства: Габариты, охлаждение, память Недостатки: ТДП ограничен 100%, отсюда и не очень большой разгон', 9),
  (14, 6, 16, 'Купил в ноутбук для замены умершего ssd. Работает отлично, никаких проблем.
  Достоинства: Отличное ssd за свои деньги. Недостатки: не обнаружил', 10),
  (15, 5, 12, 'Посидев малость на rx560 на 2gb решил обновиться и взять оную карточку. Из того, во что играю (gta, far cry, EFT и проч.), всё идёт либо на максимальных настройках графики, либо предмаксимальных. Вполне себе хороша, НО. Будьте внимательны с системой охлаждения и качеством заводской термопасты. Прослужив мне примерно год, меня начало напрягать 80 градусов при 100% загрузки, хотя подобные значение были достаточно давно. Приложив отвёртку к винтам обнаружил, что они были ослаблены, паста уже давно высохла, а на самой плате и чипе уже имеются проблемные участки с потемнениями. И это не смотря на заявленные 93 градуса максимальной нагрузки. По цене считаю, что она сейчас чересчур завышена. Я брал в былом ** за 270$ или 570 рублей, сейчас в среднем в 2 раза дороже в рублях и примерно на сотню в долларах, во всяком случае из того, что на онлайнере показывает. Так что выбор за вами.
  Достоинства: 6gb super Недостатки: После покупки лучше заменить термопасту Шумная при хорошей загрузке, но это в сравнении с 2gb радеона', 7),
  (16, 3, 10, 'Кабели sata в комплекте ужасные диски просто через время перестают работать, не удивлюсь если и с портами проблема
  Достоинства: цена Недостатки: vrm мосты и все что связано с sata', 7),
  (17, 2, 17, 'Скорость зависит от процессора и организации PCI-E на плате, т.е. у кого процессор имеет прямую связь с NVME в выигрыше, на Райзене дает честных 3300МБ\с на запись, в тоже время на Интеле только 2300. Цена выше средней, можно взять 2 по 512 за те-же деньги, но скорость будет меньше.
  Достоинства: Высокая скорость. Большой ресурс. Недостатки: Нет встроенного PROM как у 950 PRO, 
  те кто подключает через переходник и хочет использовать под систему должны модифицировать BIOS.', 8),
  (18, 9, 21, 'Топовая память. На некоторых системах разгоняется до 4 ггц. Надежный производитель. Красивая
  Достоинства: Красивая, быстрая, надежная Недостатки: Пропадает из продажи', 10),
  (19, 7, 16, 'Обычный накопитель, почему отрицательный отзыв написали не понятно. Два фото приведу, HDD и SSD, всё очевидно.
  Достоинства: Всё Недостатки: Не выявил', 9),
  (20, 6, 25, 'Доброго времени суток, покупал для Asrok B550 pro4 - 2плашки по 8 Гб 3777мгц, гоняет уже больше года, ни тормозов ни ошибок - все супер! Рекомендую!
  Достоинства: Качество, работает безотказно, частота соответствует заявленной. Недостатки: Цена', 8);
 
 -- Таблица службы поддержки интернет-магазина
 INSERT INTO customer_service (id, firstname, lastname, email) VALUES
  (1, 'Дмитрий', 'Козлов', 'd.kozlov@onlineshop.by'),
  (2, 'Валерий', 'Петров', 'v.petrov@onlineshop.by'),
  (3, 'Александр', 'Смирнов', 'a.smirnov@onlineshop.by'),
  (4, 'Николай', 'Попов', 'n.popov@onlineshop.by'),
  (5, 'Владимир', 'Жуков', 'v.zhukov@onlineshop.by');
 
 -- Таблица сообщений покупателей в службу поддержки
 INSERT INTO messages (customer_id, customer_service_id, body, important, delivered, created_at) VALUES
  (1, 2, 'Как сегодня прошел ваш день ?)', 0, 1, '2021-12-13 08:38:22'),
  (2, 2, 'Сколько стоит доставка в г. Мозырь ?', 1, 1, '2021-09-09 09:03:08'),
  (3, 1, 'Какую гарантию вы даете на видеокарты ?', 1, 1, '2022-05-19 14:32:14'),
  (4, 5, 'Есть ли у вас рассрочка платежа ?', 1, 1, '2021-10-19 20:25:21'),
  (5, 3, 'Собираетесь ли расширять ассортимент ?', 0, 1, '2021-06-16 03:06:59'),
  (6, 4, 'Продаете ли вы мониторы? Спасибо', 1, 1, '2021-03-25 10:42:09'),
  (7, 2, 'Возможна ли оплата банковской картой ? Спасибо', 1, 1, '2021-07-23 03:56:15'),
  (8, 4, 'Откуда возите видеокарты?)', 0, 1, '2022-01-10 07:02:02'),
  (9, 5, 'Какие сроки Доставки товара в г. Брест? Спасибо', 1, 1, '2022-04-19 11:57:29');
 
 
 -- Таблица заказов интернет-магазина
 INSERT INTO orders (id, customer_id, product_id, paid, amount, delivered) VALUES
  (1, 1, 10, 1, 170, 1),
  (2, 1, 22, 1, 470, 1),
  (3, 5, 1, 1, 690, 1),
  (4, 5, 15, 1, 3200, 1),
  (5, 5, 23, 1,278, 1),
  (6, 9, 2, 1, 995, 1),
  (7, 9, 15, 1, 3200, 1),
  (8, 2, 3, 1, 1273, 1),
  (9, 2, 10, 1, 170, 1),
  (10, 2, 15, 1, 3200, 1),
  (11, 3, 24, 1, 89, 1),
  (12, 3, 11, 1, 1835, 1),
  (13, 3, 19, 1, 195, 1),
  (14, 4, 5, 1, 3888, 1),
  (15, 4, 13, 1, 2035, 1),
  (16, 4, 17, 1, 719, 1),
  (17, 4, 21, 1, 269, 1),
  (18, 6, 9, 1, 686, 0),
  (19, 8, 13, 1, 2035, 0),
  (20, 8, 22, 1, 470, 0); 