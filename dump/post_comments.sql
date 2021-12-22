INSERT INTO blog.post_comments (id,comment_post_id,comment_author,comment_date,comment_content,comment_parent) VALUES
	 (329,240,'Sergeant','2014-07-10 15:27:35','Спасибо за видео.',0),
	 (340,240,'Ma5ta','2014-07-22 22:38:55','На здоровье)',329),
	 (470,210,'Игорь','2014-11-10 21:05:13','Спасибо, полезная информация по настройке
только есть одна особенность, после прошивки имя устройства меняется с GTX Throttle на VKB Throttle
после чего родная программа по калибровке ECS control panel перестает его видеть, а VKB device config видеть начинает
но главное, что с обновленной прошивкой, ось скорости вместо 5-й становится 1-й и начинает конфликтовать с осью джойстика
как можно решить данную проблему?
т.к. с родной прошивкой ничего толком нельзя настроить и доп. оси Rx Ry вообще работают не корректно (с 0 сразу переходят в 32000, без шагов)',0),
	 (473,210,'Ma5ta','2014-11-25 02:53:58','Странно, у меня ось газа -  Slider 1 и две оси Rx и Ry соответственно, прошивка 1.27

В каком приложении конфликтуют джой и руд?',470),
	 (474,210,'Сергей','2014-11-27 13:57:48','Скачайте вот эту программу http://ftp.vkb-sim.pro/Programms/VKBDevCfg-C_v0_60_65.zip
Там есть кнопка Start calibr, нажмите ее и двигайте все ручки, только двигайте их медленно. После этого нажмите end calibr.',470),
	 (475,210,'Сергей','2014-11-27 14:00:38','Ma5ta, подскажи, у тебя на этом устройстве есть мертвые зоны? Когда начинаешь двигать основной рычаг, у тебя отклик по оси идет сразу или есть какой-то "свободный ход".
У меня "свободный ход" есть, если считать у основания рукоятки, то он около 3-4 мм. Настораживает, так и должно быть?',0),
	 (476,210,'Сергей','2014-11-27 14:03:30','Кстати, вот последняя прошивка, ее описание найти не удалось: http://ftp.vkb-sim.pro/VKB_Cobra/Firmware/VKB_Throttle_v1_33.vkb',474),
	 (477,210,'Ma5ta','2014-11-27 14:55:46','Да, есть свободный ход, пришлось привыкать. Ну наверное так не должно быть, но как говориться имеем то что имеем.',475),
	 (506,210,'kamet','2015-01-17 19:34:21','че-то подключил оси как описано, но одна криво работает совсем. Питание на резисторы(крутилки) нужно брать с разных крутилок или без разницы? я взял с одной и запаралелил. Еще пишут можно взять с марса, но опять же на две крутилки параллельно или как-то отдельно надо делать?',0),
	 (507,210,'kamet','2015-01-17 19:36:02','и к стати какие резисторы лучше стаить? я на 100 кОм поставил простельнкие. они шумят сильно. постоянно ось дергается немного, но может это опять же из-за питания что-то фонит',0);
INSERT INTO blog.post_comments (id,comment_post_id,comment_author,comment_date,comment_content,comment_parent) VALUES
	 (508,210,'Ma5ta','2015-01-17 23:28:32','Я с доп. осями заморачиваться не стал. Посмотри вот здесь https://sites.google.com/site/verpilggn/igrovye-zelezaki/rud',507),
	 (509,210,'kamet','2015-01-18 12:45:48','я уже смотрел там. к сожалению то же никаких уточнений нет.
Спасибо! Знаю людей которые это проделывали. как выясню отпишусь здесь, чтоб вашу инструкции сделать более полной.',0),
	 (510,210,'Ma5ta','2015-01-18 15:38:44','Думаю вот здесь помогут http://forum.vkb-sim.pro/',509),
	 (711,39,'Vindigo','2015-08-25 22:25:09','привет я использую Gametrix Engine Control System ECS (РУД) в игре elit dangerous. Вопрос такой, он имеет широкий спект хода в 2000+. так почему у меня он работает как нажатие джойстика, вместо того то бы работать как подобает(поднял его на 10%  так он добавил 10%. поднял 50% так скорость 50%) а то у меня  он схватывает когда поднимаешь его в верх 100% и перестаёт набирать когда убираешь на 50%',0),
	 (712,39,'Ma5ta','2015-08-26 10:06:51','Привет, за Elite Dangerous не скажу не играл, насколько я знаю игра еще довольно сыровата. Думаю для разработчиков задача по отладки работы такого не сильно популярного девайса не в приоритете. Попробуй проэмулировать работу руда через xpadder. 

В том же Star Citizen по началу на джое было очень неудобно летать из-за того что оси не настраивались. Возможно в Элите дела так же обстоят. Думаю все наладиться со временем.',711),
	 (713,39,'Vindigo','2015-08-26 20:07:03','спасибо уже всё настроил, не те настройки делал в игре',712),
	 (728,210,'Christian','2015-09-27 20:08:58','Hello,
I just stumbled upon this very helpful page and wanted to thank you for gathering all this information! Unfortunately I don''t speak russian, but thanks to Google translate I was able to understand almost everything.

I''ve got one question, though, maybe you have a solution:
When clicking GET in VKB Device Config it says "ERROR CPUID read". Any idea why this is happening? I''m using firmware 1.35 The reason I''m asking is because with firmware 1.35 after going into sleep mode the main axis of the throttle doesn''t work. I thought calibrating might help but I doubt it''s possible to write the parameters to the throttle as long as this error message appears.
Cheers
Christian',0),
	 (729,210,'RFJack','2015-09-27 21:59:19','Hello Christian. The solution for your issue is super easy, but first: this bug happens, when you turn your computer with the throttle setting not "zero", then the driver counts the minimum setting for throttle axis from the physical position of the throttle stick. So you need to set the stick to zero position and replug your joy to comp, and this should solve the problem.

Regards, Jack, for Ma5ta request.',728),
	 (730,210,'Ma5ta','2015-09-27 22:03:56','It''s my awesome english speaking mate)',729),
	 (731,210,'Ma5ta','2015-09-28 00:29:52','Throttle should be installed at "zero" when you turn on your PC.',728);