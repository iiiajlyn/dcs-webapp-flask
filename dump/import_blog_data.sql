CREATE TABLE IF NOT EXISTS posts (
    id SERIAL PRIMARY KEY,
    slug VARCHAR(255) UNIQUE,
    post_date DATE DEFAULT current_date,
    post_content TEXT,
    post_title VARCHAR(255),
    description TEXT,
    post_cut TEXT
);

CREATE TABLE IF NOT EXISTS post_comments (
    id serial PRIMARY KEY,
    comment_post_id INTEGER REFERENCES posts(id),
    comment_author VARCHAR(255),
    comment_date DATE DEFAULT current_date,
    comment_content TEXT,
    comment_parent INTEGER
);

INSERT INTO blog.posts (id,slug,post_date,post_content,post_title,description,post_cut) VALUES
	 (0,'world-of-tanks','2013-11-14 01:23:36','<p style="text-align: center;"><strong>World of Tanks</strong></p>
<p style="text-align: left;">План прокачки на 2014 год</p>
<p dir="ltr"><strong>Советское дерево:</strong></p>
Прежде всего надо докачаться до объект 140. Т-54 меня очень радует, но пока будет на двойном опыте. Потом соответственно 416 и 430 объекты.
<strong>Осталось докачать:</strong> об.140, 416, 430
<p style="text-align: left;"><strong><span style="line-height: 1.5em;">Немецкое дерево:</span></strong></p>
<p dir="ltr">Когда то я не только имел всю немецкую ветку элитно прокаченную, но и еще все немецкие топы в ангаре. Немцефилом был, конечно не упоротым, но.. Теперь не докачанная вторая ветка ст, с самыми не немецкими танками, на мой взгляд. Плюс добавилась ветка пт, которая мне импонирует, единственное не знаю что буду делать на Вафен трагер ПЗ 4, ну да посмотрим.
<strong>Осталось докачать:</strong> Леопарт ПТ А, Леопард 1, Борзиг, Ваффентрагер ПЗ4 и Ваффентрагер Е-100</p>
<p dir="ltr"><strong>Американская ветка:</strong></p>
<p dir="ltr">Тут все подходит к концу, Т54Е1 мне нравится, и в ближайших время упор будет сделан именно на него
<strong>Осталось докачать:</strong> Т57 Хеви</p>
<p dir="ltr"><strong>Французская ветка: </strong></p>
<p dir="ltr">Пока все выкачено, но ведь разработчики обещали безбарабанные тяжи, но пока тишина. И слава богу. Экипаж я возьму с проданного 50б и заряжающего с фоша.</p>
<p dir="ltr"><strong><span style="line-height: 1.5em;">Британия:</span></strong></p>
<p dir="ltr">Я пока докачался до Конкуэрора и Центурион 1. Мне машинки эти нравятся, но ведь есть еще не выкачанная ветка арты и это печально.В ветке ПТ-САУ ожидается нагибучий Тортойз. Да, ствол там просто адовый, но если сравнивать 120мм ПТ-САУ и 155мм, то выигрыш в пользу более толстых стволов я это отчетливо почувствовал катая поочередно Фош и T95, вроде француз имбовее, не так зависим от карты и команды, но набить на нем 2000к дамаги сложнее, мой показатель 1800 дамаги за бой, прошел на 2ом опыте, на...плохом по общему мнению т95 2100 - это по среднему дамагу всего 3 пробития, которые сделать довольно просто.
На перво буду катать Конка и выкачивать фавна он же FV215b. После пойдет упор на Центурионов!
<strong>Осталось докачать:</strong> FV215b, Центурион 7/1, FV4202, FV207, FV3805, Конкуэрор Ган Кариер, АТ7,АТ15, Тортойз, FV215b 183</p>
<p dir="ltr"><strong>Китай:</strong></p>
<p dir="ltr">Тут пока все нормально, единственное что меня пугает так это Вз-111-4. Именно на этот танк будет направлен весь свободный свободный и кредиты, посмотрим что можно сделать на стоковом танке, так как вывод в топ - гусли-башня-топ ствол - будет мимо кассы - 136 тысяч опыта как никак. ну посмотрим. когда покатаюсь там решу.
<strong>Осталось докачать:</strong> WZ-111 1-4, 113, WZ-131, WZ-132, T-34-2, WZ-120, 121</p>
<p dir="ltr"><strong>Япония:</strong></p>
<p dir="ltr">А вот тут не знаю, сейчас наверное качать не буду, так как в прокачке и так много танков, и если акцентировать свое внимание на всех сразу, даже если брать только 2ой опыт, то получается все сразу не прокачать, нормально 2ой с первого раза не взять, стата в жопе, настроение там же. Но прокачку я начну с танка 5-ого уровня Чи-ну, если будет порядка 250 тысяч свободного то в идеале надо прокачку надо начинать с танка СТА-1, так как в дальнейшем экипаж уже не меняется, если начинать с Чи-ну останеться безлошадный радист.
<strong>Осталось докачать:</strong> Вся ветка целиком - 12 танков</p>
&nbsp;
<p style="text-align: left;">Список премиумных танков</p>

<table border="1">
<tbody>
<tr align="center" valign="middle" vertical-align = top>
<td colspan="2"><strong>Легкие танки:</strong></td>
</tr>
<tr>
<td><img alt="germany-T-15" src="http://ma5ta.ru/wp-content/uploads/2013/11/germany-T-15.png" /></td>
<td style="text-align: left; vertical-align: middle">T-15 (De)</td>
</tr>
<tr>
<td><img class="alignleft size-full wp-image-165" alt="usa-T2_lt" src="http://ma5ta.ru/wp-content/uploads/2013/11/usa-T2_lt.png" width="160" height="100" /></td>
<td style="text-align: left; vertical-align: middle">T2 Light Tank (USA)</td>
</tr>
<tr>
<td><img class="alignleft size-full wp-image-169" alt="usa-M22_Locust" src="http://ma5ta.ru/wp-content/uploads/2013/11/usa-M22_Locust.png" width="160" height="100" /></td>
<td style="text-align: left; vertical-align: middle">M22 Locust (USA)</td>
</tr>
<tr>
<td><strong>Средние танки::</strong></td>
</tr>
<tr>
<td><img class="alignleft size-full wp-image-163" alt="ussr-Matilda_II_LL" src="http://ma5ta.ru/wp-content/uploads/2013/11/ussr-Matilda_II_LL.png" width="160" height="100" /></td>
<td style="text-align: left; vertical-align: middle">Матильда IV (USSR)</td>
</tr>
<tr>
<td><img class="alignleft size-full wp-image-171" alt="germany-T-25" src="http://ma5ta.ru/wp-content/uploads/2013/11/germany-T-25.png" width="160" height="100" /></td>
<td style="text-align: left; vertical-align: middle">T-25 (De)</td>
</tr>
<tr>
<td ><img class="alignleft size-full wp-image-166" alt="usa-T26_E4_SuperPershing" src="http://ma5ta.ru/wp-content/uploads/2013/11/usa-T26_E4_SuperPershing.png" width="160" height="100" /></td>
<td style="text-align: left; vertical-align: middle">T26E4 SuperPershing (USA)</td>
</tr>
<tr>
<td><img class="alignleft size-full wp-image-168" alt="uk-GB68_Matilda_Black_Prince" src="http://ma5ta.ru/wp-content/uploads/2013/11/uk-GB68_Matilda_Black_Prince.png" width="160" height="100" /></td>
<td style="text-align: left; vertical-align: middle">Matilda Black Prince (GB)</td>
</tr>
<tr>
<td><strong>Тяжелые танки:</strong></td>
</tr>
<tr>
<td><img class="alignleft size-full wp-image-164" alt="ussr-Churchill_LL" src="http://ma5ta.ru/wp-content/uploads/2013/11/ussr-Churchill_LL.png" width="160" height="100" /></td>
<td style="text-align: left; vertical-align: middle">Черчиль III (USSR)</td>
</tr>
<tr>
<td><img class="alignleft size-full wp-image-167" alt="usa-T34_hvy" src="http://ma5ta.ru/wp-content/uploads/2013/11/usa-T34_hvy.png" width="160" height="100" /></td>
<td style="text-align: left; vertical-align: middle">T-34 (USA)</td>
</tr>
<tr>
<td><strong>ПТ-САУ:</strong></td>
</tr>
<tr>
<td><img class="alignleft size-full wp-image-172" alt="germany-JagdTiger_SdKfz_185" src="http://ma5ta.ru/wp-content/uploads/2013/11/germany-JagdTiger_SdKfz_185.png" width="160" height="100" /></td>
<td style="text-align: left; vertical-align: middle">8,8cm Pak 43 JagdTiger (De)</td>
</tr>
</tbody>
</table>','World of Tanks',NULL,NULL),
	 (1,'main','2014-02-11 23:32:27','Всем привет, меня зовут  Мишель a.к.a. Ма5та(Maста).

Это текстовая версия моего вступительного видео. Как говориться режиссерская версия с комментариями. Данный текст я переделал с моего первого "сценария", на видео же 3-ий вариант.

<strong> Что?</strong>
На YouTube будут видео в основном на игровую тематику, будут ролики по гаджетам которые я использую в этом не легком деле, а на сайте вы также сможете найти полезные статьи. Сайт имеет простенький дизайн( не люблю когда из сайтов про..."молочных поросят" делают мегапорталы), и как и все растущее и набирающее обороты будет видоизменяться с течением времени.
Так же есть группы в соц. сетях таких как <a title="Вконтакте" href="https://vk.com/public62335674">Вконтакте</a>, <a href="www.facebook.com/ma5ta.rucom">фейсбук</a>, <a href="http://twitter.com/MKoyangKuleshov">Twitter</a> и <a href="http://www.odnoklassniki.ru/group/52097881014451">Одноклассники</a>, можете вступать не бояться, банить не буду, таки я добрый, но справедливый!

<em>У меня не получилось переименовать свой основной канал и так у меня получилось на старте 2 канала. Понимаю что это глобальный пздц моему личному, которого и так не хватает, но отказываться я от идеи лайв-канала не собираюсь. Сейчас в сторону 2-ого канала даже не думаю, так как и основной съедает все время и мне проблемно собирать материала с помощью моих нынешних девайсов. Телефоны я меняю приблизительно раз в 3 года, не имею привычку менять "айфон-на айфон" каждые пол года. Пока присматриваюсь к Nokia 925.</em>

<strong>Проекты?</strong>
Прежде всего World of Tanks. ВОТ - я задрот! Играю с релиза, с небольшими перерывами, любимой техники нет, хотя на кое-чем я и откатал довольно дохера.
Мою стату можете посмотреть ин-гейм, ник <strong>Ma5ta</strong> или здесь. В принципе эту игру я прошел, сейчас просто хочу получить одну ачивку ...и найух! Какую можно увидеть в моем видео.
<p align="center"><iframe src="//www.youtube.com/embed/sGxebKVHEBQ?rel=0" width="853" height="480" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>
<p align="center"><a title="World of Tanks. В начале было слово" href="http://ma5ta.ru/world-of-tanks-%d0%b2-%d0%bd%d0%b0%d1%87%d0%b0%d0%bb%d0%b5-%d0%b1%d1%8b%d0%bb%d0%be-%d1%81%d0%bb%d0%be%d0%b2%d0%be/">Текстовая версия</a></p>
Вообще мое задротсво когда-то началось в 2007 с <strong>EVE-Online</strong>.
За то время которое я отсутвую в онлайне случилось много патчей, появилось много модулей и кораблей. Видимо в Исландию часто заходит голландский пароход…
В EVE я обязательно вернусь,когда-то...наверное...Спалить моего основного чара можно здесь и сейчас <a href="http://eve.battleclinic.com/killboard/combat_record.php?type=player&amp;name=Ma5ta0fDarknez">линк на борду</a>.

<strong>War Thunder</strong> - немного полетел на мышке, ничего особенного, все ждут танки, посмотрим, но на данный момент забросил до поры до времени.
Стату, а так же самолеты на моем аккаунте можно будет увидеть чуть позже.

<strong>ИЛ-2 Штурмовик</strong> мои флайсимы по большому счету с него и начались. <strong>SU-27 Flanker</strong>,<strong> MiG-29</strong> и <strong>European Air Wars</strong>, как и игры на ZX Spectrum`е  и приставке я в расчет не беру. Началось и...закончилось в виду ламповости моего интернета, он-лайн я играть не смог, а простой редактор с миссиями порядком надоел.

<strong>ИЛ-2 Битва за Сталинград</strong> - я приобрел себе стандартное издание. 19 ноября ходил к товарищу, не один - с камерой, на просмотр раннего доступа. Хотел отснять лучшее видео раннего доступа с субтитрами, видео получилось, но очень короткое, к сожалению. С другой стороны из того что получилось и так все понятно.
<a href="http://ma5ta.ru/wp-content/uploads/2014/02/pluto.jpg"><img class="aligncenter size-large wp-image-82" src="http://ma5ta.ru/wp-content/uploads/2014/02/pluto-1024x583.jpg" alt="pluto" width="900" height="512" /></a>

<em>Тут была шутка про Сочи, Путина и Ладу Калину.</em>

На самом деле список игр абсолютно не конченный, мои бадди играют во все, что горит и сливают все что дымит, от эрудита с MechWarrior до шахматами с батлой. Сейчас все ждем-с Стар Ситизен.

Есть у меня свой <strong>TeamSpeak</strong> сервер( не эта хрень для бомжей RaidCalll, как можно пользоваться программой в названии которой такое?)в котором мы с друзьями с разной периодичностью встречаемся. География проживания друзей от Челябы до Израиля, даже пара москвичей забегает...

<strong>Зачем?</strong>

<em>Вырезано, цензором, смотрите видео.</em>

<strong>Как?</strong>
Видео будут выходить минимум раз в неделю, по субботам, то есть в шаббат.
Плюс регулярные стримы - boring stream.
Субботние - кашерные видео будут состоять из двух частей:
1-ая про то что можно будет увидеть на моем канале на грядущей неделе
Во 2-ой можно будет увидеть сколько опыта, кредитов, сантиметров или миллилитров я заработал за неделю и самые интересные моменты сего действа).

<em>За это я с себя ответственность снял в одностороннем порядке, работы много.</em>

У ютьюба есть требование не заливать видео с не нормативной лексикой, поэтому все ролики будут запиканы( по возможности).

<strong>English Part</strong>

<em>Я хотел вставить оригинальную английскую версию, но протерял ее, вставлю русский вариант, в котором намеряно изменил несколько оборотов. Транслит сделал в Google-переводчике, он получился лучше чем у Виталия Леонтиевича, поэтому и решил немного поправить для аутичности. Непонятно чем в РФС пользовались.</em>

Хелло бойи ин герлз

Май нейм из Маста

Летс ми спик фром май харт он инглиш
Он май чаннел ю кан си греат видео оф зе хигест куалити ресолушион, абоут зе мост интерестинг гейм прожэктс оф аур тентуры, сач ас зе ворлд оф танкс вор Зандер ив-онлайн Ил-ту анд азер. Ю кан сее ватс гоинг он вис зе аназер сайд оф зе. Вол. Еспешиалле юсефул фор ю ту би май стрим, вис зеир хелп, ю кан пулл ап зеир кноледж оф Рашиан лангуадж, тханкс то зис прислесс кноледже вилл хелп ю то гет акуаинтед вис беаутифул Рушиан гирлс, хав ю тоут абоут сач,<a href="http://ma5ta.ru/wp-content/uploads/2014/02/vale2blog.jpg"><img class="size-full wp-image-100 alignnone" style="margin-left: 140px;" src="http://ma5ta.ru/wp-content/uploads/2014/02/vale2blog.jpg" alt="Not_Vale" width="678" height="918" /></a>
<p style="text-align: center;"><strong>нот вис зес</strong></p>
<a href="http://ma5ta.ru/wp-content/uploads/2014/02/avale.jpg"><img class="size-full wp-image-101 alignnone" style="margin-left: 230px;" src="http://ma5ta.ru/wp-content/uploads/2014/02/avale.jpg" alt="yeah" width="500" height="341" /></a>

Ви кан изили коммуникэфт и райтен форм. Фор зе транслашионс хав транслейшен. Гугл хас ит олл.
Сенкъю.

Это есть моя главная и вступительная страничка, начал я конечно круто, и сайт, и паблики да еще и 2 канала на YouTube. Огромный объем работ, так что если буду задерживаться вы уж не серчайте. Надо меня просто "понять и простить"

<a href="http://ma5ta.ru/wp-content/uploads/2014/02/boroda4.jpg"><img class="size-full wp-image-87 alignnone" style="margin-left: 225px;" src="http://ma5ta.ru/wp-content/uploads/2014/02/boroda4.jpg" alt="boroda4" width="505" height="379" /></a>','Главная',NULL,NULL),
	 (3,'kamaz-na-lite','2014-02-16 15:44:51','Ехали летом с коришем у с нами в пробке стоял Камаз на литье, 05 регион ;)
<p align="center"><iframe src="//www.youtube.com/embed/wg1Eoz4q0fs" height="315" width="420" allowfullscreen="" frameborder="0"></iframe></p>
Жалею что камера моя смогла только 320х240.

<!--more-->','Камаз на литье',NULL,NULL),
	 (4,'leningradskij-front','2014-02-17 07:00:19','Документальный фильм <strong>Льва Лурье</strong> о блокаде Ленинграда, ведущий <strong>Сергей Шнуров</strong>.
<p align="center"><iframe src="//www.youtube.com/embed/hhtCaCDQhCU?rel=0" height="480" width="640" allowfullscreen="" frameborder="0"></iframe></p>
<p style="text-align: left;">Я вставил у себя только 4-ю серию, остальные не трудно найти в интернете.</p>
<p style="text-align: left;">В конце фильма Сергей Шнуров исполнил песню "Волховская застольная", в ней звучат стихи поэта и фронтового корреспондента, бойца 377-й стрелковой дивизии Волховского фронта <strong>Павла Шубина</strong>. Хотя Шнур исполнил не всю песню, а только 3 куплета из 6, но я считаю его исполнение самым лучшим.</p>
<p style="text-align: left;">Вот полностью текст песни:</p>
<p style="text-align: center;"><strong>"Волховская застольная"</strong></p>
<p style="text-align: center;">Редко, друзья, нам встречаться приходится,
Но уж когда довелось,
Вспомним, что было, и выпьем, как водится,
Как на Руси повелось!</p>
<p style="text-align: center;">Выпьем за тех, кто неделями долгими
В мёрзлых лежал блиндажах,
Бился на Ладоге, дрался на Волхове,
Не отступал ни на шаг.</p>
<p style="text-align: center;">Выпьем за тех, кто командовал ротами,
Кто умирал на снегу,
Кто в Ленинград пробирался болотами,
Горло ломая врагу!</p>
<p style="text-align: center;">Будут навеки в преданьях прославлены
Под пулемётной пургой
Наши штыки на высотах Синявина,
Наши полки подо Мгой.</p>
<p style="text-align: center;">Пусть вместе с нами семья ленинградская
Рядом сидит у стола.
Вспомним, как русская сила солдатская
Немца на Тихвин гнала!</p>
<p style="text-align: center;">Встанем и чокнемся кружками, стоя, мы -
Братство друзей боевых,
Выпьем за мужество павших героями,
Выпьем за встречу живых!</p>','Ленинградский фронт',NULL,NULL),
	 (5,'gametrix-ecs-proshivka-i-nastrojka','2014-02-18 23:01:01','<p align="center"><iframe src="//www.youtube.com/embed/bWs9iuf4chY?rel=0" height="480" width="853" allowfullscreen="" frameborder="0"></iframe></p>
<p dir="ltr" style="text-align: left;">Данный руд выпускается компанией <strong>Gametrix</strong> приблизительно с весны-лета 2011 года и был разработан компанией <strong>ВКБ</strong>. Стоит не дорого, я брал за 1300 рублей( ~40$), и довольно широко распространен.</p>
<p dir="ltr" style="text-align: left;">Сделан данный девайс в Китае, ну да ладно за такие деньги качество хорошее. Даже не смотря на то что на моем экземпляре шумит блок кнопок <strong>A</strong>,<strong>B</strong>,<strong>C</strong>.</p>
<p dir="ltr" style="text-align: left;"><a href="http://ma5ta.ru/wp-content/uploads/2014/02/ecs_abc.jpg"><img class="aligncenter size-full wp-image-106" alt="Блок кнопок" src="http://ma5ta.ru/wp-content/uploads/2014/02/ecs_abc.jpg" width="998" height="630" /></a></p>
<p dir="ltr" style="text-align: left;">Я решил применить американскую пословицу “работает не ломай”, внутрь без надобности не полезу, хотя многие вскрывают корпус и меняют смазку что бы ход самого руда был более плавный. В комплекте еще прилагался купон на 1000 золотых орлов из <strong>War Thunder</strong>, но качество печати купона было таким хреновым, что я не смог разобрать код.</p>
<p dir="ltr" style="text-align: left;">Cамое главное что надо сделать при первом знакомстве с пациентом - это перепрошить его.</p>
<p dir="ltr" style="text-align: left;">Для начала надо посмотреть какая прошивка нам досталась в стоке. Подключаем руд, ждем установки драйвера, запускаем<strong> Show_Hid.exe</strong>(<a href="http://ma5ta.ru/files/show_hid.rar">скачать программу</a>).У меня была версия 1.11. Что уже не плохо, так как в первых партиях была версия младше и при работе могли возникать глюки. Сейчас есть гораздо более новые версии. Я для себя выбрал версию <strong>1.27</strong>(<a href="/files/vkb_throttle_v1_27.vkb">скачать прошивку</a>). В этой версии можно более гибко конфигурировать руд. Самая крайняя версия <strong>1.32</strong>(<a href="/files/vkb_throttle_v1_32.vkb">скачать прошивку</a>) включает себя еще и возможность калибровки.</p>
<p dir="ltr" style="text-align: left;">Что бы включить девайс в состояние для перепрошивки необходимо подключить, зажав кнопку <strong>Mode</strong>, и не отпуская её подключаем руд к компьютеру, отпускаем кнопку, система определит новое устройство <strong>vkb-boot</strong> и установит драйвер.</p>
<p dir="ltr" style="text-align: left;">Теперь запускаем программу <strong>FirmwareLoader</strong>(<a href="http://ma5ta.ru/files/firmwareloader.zip">скачать программу</a>). Выбираем нужную нам прошивку и ждем окончания. После окончания прошивки выдергиваем руд из компьютера, ждем 10 секунд и подключаем заново.</p>
<p dir="ltr" style="text-align: left;">Теперь запускаем программу конфигуратор - <strong>VKBDevCfg-C_v0_60_65.exe</strong>(<a href="/files/vkbdevcfg-c_v0_60_65.zip">скачать программу</a>). Выбираем руд в списке и жмем кнопку Get, считываем настройки из девайса. Что бы бы увидеть полный список настроек надо поставить галку на вкладке <strong>Tools -&gt; Expert Mode</strong></p>
<p dir="ltr" style="text-align: left;"><a href="http://ma5ta.ru/wp-content/uploads/2014/02/ecs_expert.jpg"><img class="aligncenter size-full wp-image-110" alt="ecs_expert" src="http://ma5ta.ru/wp-content/uploads/2014/02/ecs_expert.jpg" width="948" height="753" /></a></p>
<p dir="ltr" style="text-align: left;">Теперь немного о основных настройках:</p>
<p dir="ltr" style="text-align: left;"><a href="http://ma5ta.ru/wp-content/uploads/2014/02/ecs_settings.jpg"><img class="aligncenter size-full wp-image-111" alt="ECS_SETTINGS" src="http://ma5ta.ru/wp-content/uploads/2014/02/ecs_settings.jpg" width="957" height="756" /></a></p>
<p dir="ltr" style="text-align: left;"><strong>Mode Shifts</strong>. Выбираем режим переключения раскладки: Off -  выключено. OnPress - что бы переключить раскладку кнопок надо зажать кнопку переключения на 2 секунды. Cyclic 2 - 2 раскладки меняются по нажатию кнопки смены. Cyclic 3 - 3 раскладки меняются по нажатию кнопки смены.. Я выбрал OFF, то есть выключено.</p>
<p dir="ltr" style="text-align: left;"><strong>1 &lt;-&gt; M.</strong> Эта опция меняет местами кнопки 1(на руде обозначена как D) и Mode.</p>
<p dir="ltr" style="text-align: left;"><strong>Rev. </strong>Реверс оси газа. В разных операционных системах ось газа может работать по-разному, то есть в Windows XP будет работать все хорошо, а в Windows 7 значения руд будет выдавать прямо противоположные, то есть 100% газа будет соответствовать 0% в игре, если у вас наблюдается такая проблема и вам надоело постоянно инвертировать ось с помощью настроек встроенных в игру, можете поставить эту галочку и не мучатся. У меня сейчас стоит 7-ка и у меня все работает нормально. Возможно эта проблема встречается на старых прошивках.</p>
<p dir="ltr" style="text-align: left;"><strong>5 Ax</strong>. 5 осей, если у вас руки растут не из *опы, и вы дружите с паяльником, можете добавить еще пару осей на свой руд.</p>
<p dir="ltr" style="text-align: left;">Как это сделать показал <strong>Alex Oz:</strong></p>
<p dir="ltr"><a href="http://ma5ta.ru/wp-content/uploads/2014/02/into2.jpg"><img class="alignleft size-large wp-image-123" alt="into2_m" src="http://ma5ta.ru/wp-content/uploads/2014/02/into2_m.jpg" width="450" height="347" /></a></p>
<a href="http://ma5ta.ru/wp-content/uploads/2014/02/into.jpg"><img class="size-full wp-image-136 alignnone" style="margin-left: 50px; margin-right: 50px;" alt="into_m" src="http://ma5ta.ru/wp-content/uploads/2014/02/into_m.jpg" width="450" height="323" /></a>

В готовом виде:
<p dir="ltr" style="text-align: left;"><a href="http://ma5ta.ru/wp-content/uploads/2014/02/done.jpg"><img class="size-full wp-image-117 alignnone" style="margin-left: 118px; margin-right: 118px;" alt="done" src="http://ma5ta.ru/wp-content/uploads/2014/02/done.jpg" width="723" height="800" /></a></p>
<p dir="ltr" style="text-align: left;">Схема пайки резисторов:</p>
<p dir="ltr" style="text-align: left;"><a href="http://ma5ta.ru/wp-content/uploads/2014/02/scheme_2ax.jpg"><img class="aligncenter size-full wp-image-126" alt="scheme_2ax" src="http://ma5ta.ru/wp-content/uploads/2014/02/scheme_2ax.jpg" width="633" height="449" /></a></p>
<p dir="ltr" style="text-align: left;">Питание для резисторов можно взять с разъема MaRS-a:</p>
<p dir="ltr" style="text-align: left;"><a href="http://ma5ta.ru/wp-content/uploads/2014/02/power.jpg"><img class="aligncenter size-full wp-image-120" alt="power" src="http://ma5ta.ru/wp-content/uploads/2014/02/power.jpg" width="800" height="533" /></a></p>
<p dir="ltr" style="text-align: left;"><strong style="line-height: 1.5em;">Раскладка.</strong><span style="line-height: 1.5em;"> Меняет значения кнопок, протестировать кнопки можно на вкладке </span><strong style="line-height: 1.5em;">Test Buttons</strong><span style="line-height: 1.5em;">.</span></p>
<p dir="ltr" style="text-align: left;"><strong>Difference Mode</strong>, это функция реализует разнотяг, используется на 2-ух моторных самолетах. Есть три опции: Off - выключено, разнотяг на большом колесе - Type Rx или маленьком колесе - Type Ry. Разнотяг работает по принципу выставления дифферента от 0 до 100%. То есть если вы поставили дифферент на 25%, то <em>ведомый</em> двигатель будет иметь тягу 75% при 100% тяги на ведущем двигателе.</p>
<p dir="ltr" style="text-align: left;"><strong>SysLedMode0/1/2</strong>: Можете выбрать индикацию разных режимов, Есть варианты с 2мя диодами, но для этого вам надо впаять самостоятельно второй диод. Сверху выбираете какой диод на какой раскладке будет гореть: соответственно варианты, <strong>Color1</strong> - 1-ый, <strong>Color2</strong> - 2-ой диод, <strong>Color1/2</strong> - 1-ый потом 2-о1 диод поочередно, <strong>Color2/1 -</strong> 2-ой потом 1-ый диод, <strong>Color1+2</strong> - оба вместе.</p>
<p dir="ltr" style="text-align: left;">Внизу выбирается скорость моргания диода или диодов: <strong>OFF</strong> - выключено, Constantly - постоянно, <strong>Slow Blink</strong> - медленно, <strong>Fast Blink</strong> - быстро и <strong>Ultra Fast</strong> - очень быстро.</p>
<p dir="ltr" style="text-align: left;">На девайсе установлен диод типа SMD 1206. Второй диод надо припаять инвертно, то есть к <strong>+ установленного</strong> диода припаять<strong> -</strong>, и соответственно к <strong>- установленного</strong> припаять <strong>+ вашего диода</strong>. Полярность определяется методом тыка.</p>
<p dir="ltr" style="text-align: left;"><strong style="line-height: 1.5em;">Помните если "кастомизируете" свой руд, то автоматом теряете гарантию на устройство!</strong></p>
<p dir="ltr" style="text-align: left;">Вот в принципе и все, как видно из данной статьи ничего сложного в прошивке и конфигурации Gametrix ECS нет.</p>
<p dir="ltr" style="text-align: left;">Информация взята из ветки на форуме <a href="http://www.sukhoi.ru/forum/showthread.php?t=75072">sukhoi.ru</a></p>
<p dir="ltr" style="text-align: left;"><span style="line-height: 1.5em;">Весь софт взять с сайта компании ВКБ </span><a style="line-height: 1.5em;" href="http://vkb-sim.pro">vkb-sim.pro</a></p>','Gametrix ECS. Прошивка и настройка',NULL,NULL),
	 (6,'world-of-tanks-v-nachale-bylo-slovo','2014-02-18 23:07:00','<p align="center"><iframe src="//www.youtube.com/embed/sGxebKVHEBQ?rel=0" height="480" width="853" allowfullscreen="" frameborder="0"></iframe></p>
<p style="text-align: center;"><strong>World of Tanks</strong></p>
<p style="text-align: left;">План прокачки на 2014 год</p>
<p dir="ltr"><a href="http://ma5ta.ru/wp-content/uploads/2014/02/tree.jpg"><img class="size-large wp-image-235 alignnone" style="margin-left: 30px; margin-right: 34px;" alt="План_покачки_0603" src="http://ma5ta.ru/wp-content/uploads/2014/02/tree-1024x635.jpg" width="900" height="558" /></a></p>
<p dir="ltr"><strong>Советское дерево:</strong></p>
Прежде всего надо докачаться до объект 140. Т-54 меня очень радует, но пока будет на двойном опыте. Потом соответственно 416 и 430 объекты.
<strong>Осталось докачать:</strong> Об.140, Об.416, Об.430, Об.430 Вариант II
<p style="text-align: left;"><strong><span style="line-height: 1.5em;">Немецкое дерево:</span></strong></p>
<p dir="ltr">Когда то я не только имел всю немецкую ветку элитно прокаченную, но и еще все немецкие топы в ангаре. Немцефилом был, конечно не упоротым, но.. Теперь не докачанная вторая ветка ст, с самыми не немецкими танками, на мой взгляд. Плюс добавилась ветка пт, которая мне импонирует, единственное не знаю что буду делать на Вафен трагер ПЗ 4, ну да посмотрим.
<strong>Осталось докачать:</strong>  Leopard 1,  Rhm.-Borsig Waffenträger,  Waffenträger auf Pz. IV и Waffenträger auf E 100</p>
<p dir="ltr"><strong>Американская ветка:</strong></p>
<p dir="ltr">Тут все подходит к концу, Т54Е1 мне нравится, и в ближайших время упор будет сделан именно на него
<strong>Осталось докачать:</strong> T57 Heavy Tank</p>
<p dir="ltr"><strong>Французская ветка: </strong></p>
<p dir="ltr">Пока все выкачено, но ведь разработчики обещали безбарабанные тяжи, но пока тишина. И слава богу. Экипаж я возьму с проданного 50б и заряжающего с фоша.</p>
<p dir="ltr"><strong><span style="line-height: 1.5em;">Британия:</span></strong></p>
<p dir="ltr">Я пока докачался до Конкуэрора и Центурион 1. Мне машинки эти нравятся, но ведь есть еще не выкачанная ветка арты и это печально.В ветке ПТ-САУ ожидается нагибучий Тортойз. Да, ствол там просто адовый, но если сравнивать 120мм ПТ-САУ и 155мм, то выигрыш в пользу более толстых стволов я это отчетливо почувствовал катая поочередно Фош и T95, вроде француз имбовее, не так зависим от карты и команды, но набить на нем 2000к дамаги сложнее, мой показатель 1800 дамаги за бой, прошел на 2ом опыте, на...плохом по общему мнению т95 2100 - это по среднему дамагу всего 3 пробития, которые сделать довольно просто.
На перво буду катать Конка и выкачивать фавна он же FV215b. После пойдет упор на Центурионов!
<strong>Осталось докачать:</strong> FV215b, Centurion Mk. 7/1, FV4202, FV207, FV3805, Conqueror Gun Carriage, АТ7, АТ15, Tortoise, FV215b(183)</p>
<p dir="ltr"><strong>Китай:</strong></p>
<p dir="ltr">Тут пока все нормально, единственное что меня пугает так это Вз-111-4. Именно на этот танк будет направлен весь свободный свободный и кредиты, посмотрим что можно сделать на стоковом танке, так как вывод в топ - гусли-башня-топ ствол - будет мимо кассы - 136 тысяч опыта как никак. ну посмотрим. когда покатаюсь там решу.
<strong>Осталось докачать:</strong> WZ-111 1-4, 113, WZ-131, WZ-132, T-34-2, WZ-120, 121</p>
<p dir="ltr"><strong>Япония:</strong></p>
<p dir="ltr">А вот тут не знаю, сейчас наверное качать не буду, так как в прокачке и так много танков, и если акцентировать свое внимание на всех сразу, даже если брать только 2ой опыт, то получается все сразу не прокачать, нормально 2ой с первого раза не взять, стата в жопе, настроение там же. Но прокачку я начну с танка 5-ого уровня Чи-ну, если будет порядка 250 тысяч свободного то в идеале надо прокачку надо начинать с танка СТА-1, так как в дальнейшем экипаж уже не меняется, если начинать с Чи-ну останеться безлошадный радист.
<strong>Осталось докачать:</strong> Вся ветка целиком - 12 танков</p>
&nbsp;
<p style="text-align: left;">Список премиумных танков</p>

<table border="1">
<tbody>
<tr align="center" valign="middle">
<td colspan="2"><strong>Легкие танки:</strong></td>
</tr>
<tr>
<td><img alt="germany-T-15" src="http://ma5ta.ru/wp-content/uploads/2013/11/germany-T-15.png" /></td>
<td style="text-align: left; vertical-align: middle;">T-15 (De)</td>
</tr>
<tr>
<td><img class="alignleft size-full wp-image-165" alt="usa-T2_lt" src="http://ma5ta.ru/wp-content/uploads/2013/11/usa-T2_lt.png" width="160" height="100" /></td>
<td style="text-align: left; vertical-align: middle;">T2 Light Tank (USA)</td>
</tr>
<tr>
<td><img class="alignleft size-full wp-image-169" alt="usa-M22_Locust" src="http://ma5ta.ru/wp-content/uploads/2013/11/usa-M22_Locust.png" width="160" height="100" /></td>
<td style="text-align: left; vertical-align: middle;">M22 Locust (USA)</td>
</tr>
<tr>
<td><strong>Средние танки::</strong></td>
</tr>
<tr>
<td><img class="alignleft size-full wp-image-163" alt="ussr-Matilda_II_LL" src="http://ma5ta.ru/wp-content/uploads/2013/11/ussr-Matilda_II_LL.png" width="160" height="100" /></td>
<td style="text-align: left; vertical-align: middle;">Матильда IV (USSR)</td>
</tr>
<tr>
<td><img class="alignleft size-full wp-image-171" alt="germany-T-25" src="http://ma5ta.ru/wp-content/uploads/2013/11/germany-T-25.png" width="160" height="100" /></td>
<td style="text-align: left; vertical-align: middle;">T-25 (De)</td>
</tr>
<tr>
<td><img class="alignleft size-full wp-image-166" alt="usa-T26_E4_SuperPershing" src="http://ma5ta.ru/wp-content/uploads/2013/11/usa-T26_E4_SuperPershing.png" width="160" height="100" /></td>
<td style="text-align: left; vertical-align: middle;">T26E4 SuperPershing (USA)</td>
</tr>
<tr>
<td><img class="alignleft size-full wp-image-168" alt="uk-GB68_Matilda_Black_Prince" src="http://ma5ta.ru/wp-content/uploads/2013/11/uk-GB68_Matilda_Black_Prince.png" width="160" height="100" /></td>
<td style="text-align: left; vertical-align: middle;">Matilda Black Prince (GB)</td>
</tr>
<tr>
<td><strong>Тяжелые танки:</strong></td>
</tr>
<tr>
<td><img class="alignleft size-full wp-image-164" alt="ussr-Churchill_LL" src="http://ma5ta.ru/wp-content/uploads/2013/11/ussr-Churchill_LL.png" width="160" height="100" /></td>
<td style="text-align: left; vertical-align: middle;">Черчиль III (USSR)</td>
</tr>
<tr>
<td><img class="alignleft size-full wp-image-167" alt="usa-T34_hvy" src="http://ma5ta.ru/wp-content/uploads/2013/11/usa-T34_hvy.png" width="160" height="100" /></td>
<td style="text-align: left; vertical-align: middle;">T-34 (USA)</td>
</tr>
<tr>
<td><strong>ПТ-САУ:</strong></td>
</tr>
<tr>
<td><img class="alignleft size-full wp-image-172" alt="germany-JagdTiger_SdKfz_185" src="http://ma5ta.ru/wp-content/uploads/2013/11/germany-JagdTiger_SdKfz_185.png" width="160" height="100" /></td>
<td style="text-align: left; vertical-align: middle;">8,8cm Pak 43 JagdTiger (De)</td>
</tr>
</tbody>
</table>','World of Tanks. В начале было слово',NULL,NULL),
	 (7,'world-of-tanks-pricel','2014-02-22 21:03:29','Сразу в дополнении к танковому видео разберем сборку модов которую я использую.

Это модпак от Джова, думаю ссылку на него найдете без проблем на просторах интернета.

С давних пор использую прицел от мододела <strong>zayaz</strong>.
Вот так его настраиваю и получаю в аркадном режиме просто два крестика - Центральный маркер: Перекрестие II и Маркер орудия: Перекрестие I( с индикатором бронепробиваемости), если они сливаются в один значит можно стрелять, удобно при стрельбе с ходу.
<p align="center"><iframe src="//www.youtube.com/embed/BOUQ2eYSGlg?rel=0" height="480" width="853" allowfullscreen="" frameborder="0"></iframe></p>
В снайперском режиме вот такая настройка - Центральный маркер: Перекрестие I и Маркер орудия: Перекрестие I( с индикатором бронепробиваемости), сначала я ловлю в центр точку в которую надо выстрелить, а потом маркер орудия должен перекрыть точку, для меня удобно. Когда то еще использовал вместо крестика - красную точку но в аркадном ее бывает не заметно, в снайперском режиме в принципе все нормально
<p align="center"><iframe src="//www.youtube.com/embed/QXKLAAy8oig?rel=0" height="480" width="853" allowfullscreen="" frameborder="0"></iframe></p>
Прицел кочует у меня из версии в версию и не подвержен изменениям происходящим внутри игры. <a href="/files/zayaz_scope.zip">Скачать прицел</a>(374 кб).
Устанавливается просто, просто распаковываете в папку с игрой.

<span style="line-height: 1.5em;">Изредка я доставляю какие-то дополнительные моды или делаю более тонкую настройку тех которые поставляются в стоке. Например когда то у меня был 32х кратный прицел, теперь от него отказался, удобствно выцеливать статичные цели, но очень неудобно выцеливать цели в динамике так как такое приблежение сокращает угол обзора.</span>

&nbsp;

&nbsp;','World Of Tanks. Прицел',NULL,NULL),
	 (8,'pedali-brd-f1','2014-03-23 19:20:25','<p align="center"><iframe src="//www.youtube.com/embed/4VrM9fpkq5I?rel=0" width="853" height="480" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>
<p dir="ltr"><span style="line-height: 1.5em;">Наконец-то свершилось, и я займусь своими педалями. Из-за большой загруженности на работе, пришлось отодвинуть все на неопределенный срок.</span></p>
<span style="line-height: 1.5em;">Это набор для самостоятельной сборки педалей серии <strong>BRD-F1</strong>.</span>
<p dir="ltr">Красил мне педали мой друг и местами боевой соратник Жека. Он же <strong>RFJack</strong>( <a href="http://eve.battleclinic.com/killboard/combat_record.php?type=player&amp;name=Cyka110">Сука</a>-Джеки Чан Российской  Федерации). Педали,как у любого нормального Жорика,  должны быть красного и черного цвета( немного белого) - черный матовые. А Жека мне взял и покрасил в черный металлик  и теперь педали  блестят как пиджаки Сергея Пенкина!</p>
Педали конструкции BRD по-моему мнению лучшие по параметрам: качество, функционал, цена.

Сам я пробовал совсем немного моделей педалей: только те педали которые смастерил мой дядя сам, и как бы металлические Saitek Combat Rudder Pedals.

Летом хотел себе взять <strong>Saitek Pro Flight Rudder Pedals</strong> за 150$, но вроде как их на тот момент сняли с производства, хотя сейчас они вроде как есть в продаже.

В нише металлических педалей с тормозами для авиасимуляторов представлены всего несколько образцов: педали <strong>BRD-F</strong>, <strong>Saitek Combat Rudder Pedals</strong>( написано что они металлические) и педали ВКБ серии МК.

Собственно у Жени  педали <strong>Saitek Combat Rudder Pedals</strong> у которых есть несколько недостатков, такие как: шум, народ научился с этим бороться, механизм центровки, и это тоже довольно легко исправить, но вот короткий ход педалей при торможении уже никак не поправить. В том же <strong>DCS P-51</strong> нужно работать тормозами очень аккуратно. Чуть-чуть пережал тормоз и мустанг отвешивает поклон как цирковая лошадь.

Педали ВКБ хороши тем что вы получаете сразу устройство готовое к работе, главный минус - это цена.Но в последние время не видел в магазине ВКБ педалей серии МК, последний раз когда я заходил к ним на сайт были модели RDRXXI, но выглядят они как в космолете. Я космосимы тоже люблю, но ведь это не авиасимулятор, правда?
<p dir="ltr">Я специально не сказал  за другие модели педалей которые можно приобрести в интернетах и оффлайн сторах, так как с ними могут возникнут проблемы с покупкой, как например <strong>педали CH Pro Pedals</strong>, или ограничен функционал, отсутствует механизм тормоза, или пластиковость всей конструкции.</p>
Педали BRD, на мой взгляд,  сочетают в себе все самое что есть на рынке на данный момент. Единственным минусом для некоторых, не для меня, будет то что придется потратить немного времени на сборку.

<span style="line-height: 1.5em;">На сборку я потратил два вечера, в принципе можно и за день уложиться.</span>

<span style="line-height: 1.5em;">При сборке я использовал заклепочник FIT, цена ~250 рублей, штангенциркуль - очень нужная вещь, помогает подбирать нужные метизы. Набор инструментов “Икея” и набор рожковых ключей “Матрикс”.</span>
<p dir="ltr"><span style="line-height: 1.5em;"> </span>Так же я использовал программу DIView скачанную с сайта производителя <a href="http://avia-sim.ru/forum/download.php?id=3398">http://avia-sim.ru/forum/download.php?id=3398</a>. А так же стандартную утилиту калибровки Windows.</p>
<span style="line-height: 1.5em;">Сейчас хочу сказать, что педали собираются просто, надо просто внимательно подбирать нужные метизы и закручивать все на славу.</span>

Хотя у меня сборка прошла не без косяков.

Первый же косяк вылез при сборе площадок, я не разобрался какими клепками надо клепать, в результате пострадала одна головка заклепочника. Клепки для ушек должны быть 4х10, а для подпятника и крепления площадок 4,8х10. В этом мне помог разобраться штангенциркуль. И так же пригодился надфиль, так как после покраски размер отверстий изменяется и краску пришлось снимать.

Далее при сборке рычага загружателя у меня вылез второй косяк, а именно, не доставало 2-х винтов 6х20. Получилось это в результате того что на этапе сборки механизма тормоза я поставил 2-а винта 6х20, вместо одного 6х20 и одного 6х16. Обнаружил я это путем поиска по инструкции и просмотра фотографий. Не долга думая, я выкрутил внешние болты тормозного механизма и заменил их на 6х16, немного пришлось напрячься, но это операция вселила в меня килотонну уверенности, так как я понял любую неисправность смогу легко исправить в данной конструкции.

<a href="http://ma5ta.ru/wp-content/uploads/2014/03/DSCF13471.jpg"><img class="alignnone size-large wp-image-263" style="margin-left: 50px; margin-right: 50px;" src="http://ma5ta.ru/wp-content/uploads/2014/03/DSCF13471-977x1024.jpg" alt="DSCF13471" width="900" height="943" /></a>

В результате этих манипуляций, я обнаружил второй косяк уже не мой, дело в том что шип пластмассовой коробочки, которая закрывает тормозной механизм, немного выпирал, в результате педаль при торможении терлась. Я это легко устранил обычным канцелярским ножом, подрезал лишние и забыл!

<a href="http://ma5ta.ru/wp-content/uploads/2014/03/DSCF1355.jpg"><img class="alignnone size-large wp-image-260" style="margin-left: 50px; margin-right: 50px;" src="http://ma5ta.ru/wp-content/uploads/2014/03/DSCF1355-904x1024.jpg" alt="DSCF1355" width="900" height="1019" /></a>

Я пожалел что устанавливал пружину загружателя на этапе сборки самого загружателя, в кадр мои старания не попали и слава богу, пыхтел я как старый паровоз, стыдно. По-моему мнению пружину можно сначала одеть на загружатель на этапе сборки обойм и потом уже прикрутить загружатель на 3-юю обойму.

Установка платы контроллера прошла без заминок, а вот с центровка я немного попарился, зажимы для центровки для меня показались очень не удобными. Центровку я выставлял, просто - подкручивал магнит пальцами, потом ставил плату прижимал ее посильнее пальцем и смотрел результаты в DiView, так я добился центровки в 51%, но каково же было мое удивление когда под нагрузкой, если поставить ноги,  педали дали центр в районе 57-61%.

Далее при подгонке выяснилось что я плохо свинтил параллелограмм, в результате было сильное продольное качение, из-за которого и получался такой косяк с центральной осью, а так же левый подпятник терся об основание, не смотря на то что правая нога давит сильнее. Я подкрутил  крепление штанг на обоймах и сами обоймы, проблема исчезла, но для пущей уверенности я поджал совсем немного механизм левого тормоза.

<a href="http://ma5ta.ru/wp-content/uploads/2014/03/DSCF1340.jpg"><img class="alignnone size-large wp-image-252" style="margin-left: 50px; margin-right: 50px;" src="http://ma5ta.ru/wp-content/uploads/2014/03/DSCF1340-1024x768.jpg" alt="DSCF1340" width="900" height="675" /></a>

<a href="http://ma5ta.ru/wp-content/uploads/2014/03/DSCF1351.jpg"><img class="alignnone size-large wp-image-255" style="margin-left: 50px; margin-right: 50px;" src="http://ma5ta.ru/wp-content/uploads/2014/03/DSCF1351-931x1024.jpg" alt="DSCF1351" width="900" height="989" /></a>

После всех манипуляций у меня получился центр на 49%. При калибровке соответственно я имею погрешность в 1%, что на мой взгляд не много, и из разговоров с одним типа вирпилом выяснилось что педали в крайнем положении бывают редко, так что живем.

Вот теперь мешают крайние ушки на площадках, думаю заиметь себе унты или что-то наподобие для полетов.

Педали при использовании на паркетном полу уезжали, а в противоположную сторону уезжал я на обычном офисном кресле. Пришлось съездить в Икею и купить коврик с высоким ворсом и раскладной стул, теперь все нормально.
<p dir="ltr"><span style="line-height: 1.5em;">В конце хотел бы выразить свою благодарность, так сказать, отцу-создателю данного устройства - Бауру. Роман большое спасибо! </span></p>
<p dir="ltr"><span style="line-height: 1.5em;">Я можно сказать теперь немного подсел на конструкторы, хочу себе еще кое-что из поделок BRD.</span></p>
Данное видео не является пособием по сборке, полный мануал вы найдете по ссылке <a title="Сборка кит-набора BRD-F" href="http://avia-sim.ru/forum/viewtopic.php?t=634&amp;postdays=0&amp;postorder=asc&amp;start=45">http://avia-sim.ru/forum/viewtopic.php?t=634&amp;postdays=0&amp;postorder=asc&amp;start=45</a>.

Заказать педали можно здесь <a title="Заказать педали BRD-F" href="http://avia-sim.ru/forum/viewtopic.php?t=682&amp;sid=3ce57157956da6db7f6ba90ae9d2144f">http://avia-sim.ru/forum/viewtopic.php?t=682&amp;sid=3ce57157956da6db7f6ba90ae9d2144f</a>.

На последок туча фотографий, на профессиональный пэк-шот конечно не тянут, но я старался:

[caption id="attachment_265" align="alignnone" width="900"]<a href="http://ma5ta.ru/wp-content/uploads/2014/03/0DSCF1360.jpg"><img class="size-large wp-image-265 " style="margin-left: 50px; margin-right: 50px;" src="http://ma5ta.ru/wp-content/uploads/2014/03/0DSCF1360-1024x768.jpg" alt="Лейбл BRD" width="900" height="675" /></a> Лейбл BRD[/caption]

<a href="http://ma5ta.ru/wp-content/uploads/2014/03/1DSCF1338.jpg"><img class="alignnone size-large wp-image-266" style="margin-left: 50px; margin-right: 50px;" src="http://ma5ta.ru/wp-content/uploads/2014/03/1DSCF1338-1024x806.jpg" alt="1DSCF1338" width="900" height="708" /></a> <a href="http://ma5ta.ru/wp-content/uploads/2014/03/2DSCF1362.jpg"><img class="alignnone size-large wp-image-267" style="margin-left: 50px; margin-right: 50px;" src="http://ma5ta.ru/wp-content/uploads/2014/03/2DSCF1362-1024x631.jpg" alt="2DSCF1362" width="900" height="554" /></a> <a href="http://ma5ta.ru/wp-content/uploads/2014/03/3DSCF1361.jpg"><img class="alignnone size-large wp-image-268" style="margin-left: 50px; margin-right: 50px;" src="http://ma5ta.ru/wp-content/uploads/2014/03/3DSCF1361-1024x883.jpg" alt="3DSCF1361" width="900" height="776" /></a> <a href="http://ma5ta.ru/wp-content/uploads/2014/03/4DSCF1359.jpg"><img class="alignnone size-large wp-image-269" style="margin-left: 50px; margin-right: 50px;" src="http://ma5ta.ru/wp-content/uploads/2014/03/4DSCF1359-1024x730.jpg" alt="4DSCF1359" width="900" height="641" /></a> <a href="http://ma5ta.ru/wp-content/uploads/2014/03/5DSCF1358.jpg"><img class="alignnone size-large wp-image-270" style="margin-left: 50px; margin-right: 50px;" src="http://ma5ta.ru/wp-content/uploads/2014/03/5DSCF1358-1024x850.jpg" alt="5DSCF1358" width="900" height="747" /></a> <a href="http://ma5ta.ru/wp-content/uploads/2014/03/7DSCF1337.jpg"><img class="alignnone size-large wp-image-271" style="margin-left: 50px; margin-right: 50px;" src="http://ma5ta.ru/wp-content/uploads/2014/03/7DSCF1337-1024x804.jpg" alt="7DSCF1337" width="900" height="706" /></a> <a href="http://ma5ta.ru/wp-content/uploads/2014/03/8DSCF1336.jpg"><img class="alignnone size-large wp-image-272" style="margin-left: 50px; margin-right: 50px;" src="http://ma5ta.ru/wp-content/uploads/2014/03/8DSCF1336-1024x672.jpg" alt="8DSCF1336" width="900" height="590" /></a>

И несколько фото на рабочем месте:

<a href="http://ma5ta.ru/wp-content/uploads/2014/03/900DSCF1365.jpg"><img class="alignnone size-large wp-image-276" style="margin-left: 50px; margin-right: 50px;" src="http://ma5ta.ru/wp-content/uploads/2014/03/900DSCF1365-1024x643.jpg" alt="900DSCF1365" width="900" height="565" /></a> <a href="http://ma5ta.ru/wp-content/uploads/2014/03/90DSCF1364.jpg"><img class="alignnone size-large wp-image-273" style="margin-left: 50px; margin-right: 50px;" src="http://ma5ta.ru/wp-content/uploads/2014/03/90DSCF1364-1024x768.jpg" alt="90DSCF1364" width="900" height="675" /></a> <a href="http://ma5ta.ru/wp-content/uploads/2014/03/91DSCF1363.jpg"><img class="alignnone size-large wp-image-274" style="margin-left: 50px; margin-right: 50px;" src="http://ma5ta.ru/wp-content/uploads/2014/03/91DSCF1363-934x1024.jpg" alt="91DSCF1363" width="900" height="986" /></a> <a href="http://ma5ta.ru/wp-content/uploads/2014/03/99DSCF1367.jpg"><img class="alignnone size-large wp-image-275" style="margin-left: 50px; margin-right: 50px;" title="Все &quot;железки вместе&quot;" src="http://ma5ta.ru/wp-content/uploads/2014/03/99DSCF1367-1024x822.jpg" alt="99DSCF1367" width="900" height="722" /></a>','Педали BRD-F1',NULL,NULL),
	 (9,'kompjuter','2014-07-22 22:08:10','Всем привет,

Обновил себе компьютер, вот собственно конфиг с небольшими пояснениями:<!--more-->

<a href="http://ma5ta.ru/wp-content/uploads/2014/07/shema2.jpg" target="_blank"><img class="aligncenter wp-image-287 size-large" title="Компьютер_потроха" src="http://ma5ta.ru/wp-content/uploads/2014/07/shema2-1024x975.jpg" alt="shema2" width="900" height="856" /></a>

<strong>1. Материнская плата:</strong> <a href="http://www.ulmart.ru/goods/484396">ASUS Z87-K</a> 4030 рублей.

<i>    Нормальные отзывы, много USB и хорошее соотношение цена качество. Нареканий к работе у меня нет. Приятно удивил БИОС.</i>

&nbsp;

<strong>2. Процессор:</strong> <a href="http://www.ulmart.ru/goods/480266">Intel Core i5-4570</a>6940 рублей.

<i>Камень как камень, работает. Собираюсь побаловаться Intel® Quick Sync.</i>

<strong>3. Кулер:</strong>  <a href="http://www.ulmart.ru/goods/298474">Cooler Master GeminII S524</a>  1240 рублей

<i>На место штатного 12-ти сантиметрового вентилятора встал 14-ти           сантиметровый, а этот поехал как дополнительный в корпус.</i>

<strong>4. Кулер: </strong> <a href="http://www.ulmart.ru/goods/359364">Arctic Cooling Arctic Fan F14 PWM</a>   410 рублей

<i>Вот теперь такой стоит на радиаторе процессора.</i>

&nbsp;

<strong>5. Память:</strong>  <a href="http://www.ulmart.ru/goods/309010">Crucial Ballistix Tactical DIMM DDR3 2x4ГБ</a>  3220 рублей

<em> Хорошие тайминги и частота выше стандартной - 1800МГц</em>

&nbsp;

<strong>6. Видеокарта:</strong>  <a href="http://www.ulmart.ru/goods/353116">Gigabyte GV-N660OC-2GD GTX660 2048МБ</a>  6440 рублей

<em>На данный момент я решил не брать более производительную карту, для современных игр ее хватает. Выйдет  Стар Ситизен тогда можно будет думать.</em>

<strong>7. Жесткий диски:</strong>

<a href="http://www.ulmart.ru/goods/386665">Kingston V300 60ГБ</a>  1820 рублей

<i>  ССД для системы самое-то.</i>

<a href="http://www.ulmart.ru/goods/243909">Seagate Barracuda 7200.14 1ТБ</a>  1980 рублей

<i>  Обычный винчестер для всего что не так критично к скорости чтения/записи.</i>

&nbsp;

<strong>8. Блок питания:</strong>  <a href="http://www.ulmart.ru/goods/438412">Corsair CX 500 M</a>  2920 рублей

<i>Вообще сначала планировал ставить </i><a href="http://www.ulmart.ru/goods/699186"><i>Chieftec APS-550CB 550W</i></a><i> за 2560 рублей, но его бы доставили на день позже, решил тогда взять </i><a href="http://www.ulmart.ru/goods/164917"><i>Thermaltake TR2 RX W0134RE 550W</i></a><i> за 2610 рублей, но и его бы тоже привезли только через день. Корсар приехал так как надо на следующий день. Искал хороший брендовый блок с модульной системой кабелей, нашел -- доволен.</i>

<strong>9. Корпус:</strong>  <a href="http://www.ulmart.ru/goods/325613">ZALMAN Z9 U3</a>  2800 рублей

<i>Классный корпус, много USB на передней панели, единственный минус что взял старую ревизию - нет 20-pin разъёма для USB 3.0. Пришлось немного исхитриться   что бы вывести USB3.0 разъёмы переднюю панель? протянул внутри корпуса кабели, вытащил их через отверстия для водянки наружу и вставил в USB 3.0 на задней панели.</i>

<a href="http://ma5ta.ru/wp-content/uploads/2014/07/usb30.jpg" target="_blank"><img class="aligncenter wp-image-294 size-large" title="USB 3.0" src="http://ma5ta.ru/wp-content/uploads/2014/07/usb30-1024x706.jpg" alt="usb30" width="900" height="620" /></a>

Итого получается 31 800, но мне обошлось все вместе 31 400 рублей - купил все по второй ценовой категории. Небольшая скидка, но на топливо для сборки хватило ;) Очень выгодно при больших покупках.

&nbsp;
<h3 style="text-align: center;"><b>Съэкономить можно</b> если зарегестрироваться с моим промо-кодом:<b>12204675</b></h3>
<h3 style="text-align: center;"><b>Сразу получите 2-ую категорию </b>и не надо будет покупать на сумму более 50 000 рублей и более 90 000 рублей в месяц.</h3>
<p style="text-align: center;"></p>','Компьютер',NULL,NULL),
	 (10,'t95-tozhe-moget','2014-08-17 21:51:34','&nbsp;
<iframe width="960" height="720" src="//www.youtube.com/embed/UABsKbl3g3g" frameborder="0" allowfullscreen></iframe>
Затащил бой на T95 и такое тоже бывает.

<!--more-->','T95 тоже могет!',NULL,NULL);
INSERT INTO blog.posts (id,slug,post_date,post_content,post_title,description,post_cut) VALUES
	 (11,'ma5ta-master-at-8','2014-09-15 00:48:46','Мой "Мастер" на AT 8. Прокачана только предтоповая 77-ми миллиметровая пушка.

http://www.youtube.com/watch?v=jWdFKFUg5tw&#038;list=UUpsxJ5Fh7V-PjTey48-JB-w

&nbsp;','Ma5ta - Мастер. AT 8',NULL,NULL),
	 (12,'obzor-na-bamper-dlja-sony-z1-compact','2015-04-18 14:39:03','Обзор на алюминиевый бампер Devilcase для смартфона Sony XPeria Z1 COMPACT

https://youtu.be/jjOgkoH8o6U

Купить можно по ссылке http://ru.aliexpress.com/item/DEVILCASE-Premium-Titanium-Aluminum-Bumper-For-SONY-XPERIA-Z1-Compact-M51w-Top-Quality-Metallic-Cellphone-Accessories/2024243303.html

P.S.: даже по-нынешнему курсу стоит уже довольно прилично.

&nbsp;','Обзор на бампер для Sony Z1 Compact',NULL,NULL),
	 (13,'chronodex-kak-poschitat-skolko-vremeni-uhodi','2016-05-01 00:46:35','[caption id="attachment_312" align="alignleft" width="300"]<a href="http://ma5ta.ru/wp-content/uploads/2016/05/chronodex4wp.jpg"><img class="wp-image-312 size-medium" title="Сhronodex с 24-х часовым форматом времени" src="http://ma5ta.ru/wp-content/uploads/2016/05/chronodex4wp-300x300.jpg" alt="chronodex" width="300" height="300" /></a> Сhronodex с 24-х часовым форматом времени[/caption]

Решил сделать свою фотографию времени - посчитать сколько же времени у меня уходит на работу /не работу, нашел для себя отличный метод в виде системы планирования <strong>Scription Chronodex(хронодекс)</strong>, разработал данный календарь корейский дизайнер Patrick NG(Патрик НГ).<!--more-->

Скачал несколько шаблонов chronodex. Подобрал самый удобный шаблон для себя и немного подредактировал:
<ol>
 	<li>Перевел время в 24-х часовой формат</li>
 	<li>Разлиновал лист формата А4</li>
 	<li>Сделал 4 варианта с портретным и альбомным расположением</li>
</ol>
Скачать эти шаблоны хронодекса можете по ссылке с <a onclick="ga(''send'', ''event'', ''download'', ''click'')" href="https://yadi.sk/d/h8FVzen0rRiuK">Яндекс.Диска</a>. В архиве 4 версии: 2 в портретном расположении две в альбомном, так же на 2-х из них нет надписи "хронодекс" - это свободное место можно использовать для записей.','Chronodex. Как посчитать сколько времени уходит в пустую',NULL,NULL),
	 (14,'obzor-rabochego-mesta-dlja-poletov-v-dcs','2021-01-31 18:00:00','Текстовая версия видео. В ней найдете дополнения, которых нет в ролике.

Содержание:
<ol>
 	<li><a href="#brd-ms-1">Педали BRD MS-1</a></li>
 	<li><a href="#cobra-m5">Джойстик Defender Cobra M5 BRD KIT</a></li>
 	<li><a href="#brd-n-stork">Джойстик BRD-N Stork v4.5</a></li>
 	<li><a href="#vpc-mongoost-50cm">Ручка Virpil Controls MongoosT-50CM Grip</a></li>
 	<li><a href="#gametrix-ecs">РУД Gametrix ECS</a></li>
 	<li><a href="#saitek-quadrant">Блок рычагов Saitek Quadrant</a></li>
 	<li><a href="#samsung-odyssey-plus">VR-шлем Samsung Odyssey+</a></li>
 	<li><a href="#collective-u053">РОШ U-053 Collective #7</a></li>
 	<li><a href="#seat">Автомобильное кресло Kia 2011-2017</a></li>
</ol>
<!--more-->
<h2 id="brd-ms-1">Педали BRD MS-1</h2>
<a href="https://ma5ta.ru/wp-content/uploads/2021/01/brd-ms-1.jpg"><img class="wp-image-326 size-full aligncenter" src="https://ma5ta.ru/wp-content/uploads/2021/01/brd-ms-1.jpg" alt="педали brd ms1" width="900" height="506" /></a>

&nbsp;

Свои фридрихи продал в 2016 году. Но через год я приобрел себе новые педали — БРД МС-1 с площадками СУ-35. Качество очень сильно выросло, за счёт заводской порошковой покраски. Теперь не надо думать о покраске. Краска на Фридрихах начала немного облазить из-за сверхинтенсивного использования. Кит-набор собирается проще, в последней ревизии педалей не нужен заклепочник. Новый контроллер гораздо удобнее настраивать. На сборку ушло приблизительно 8 часов с перерывами.

Несмотря на то, что площадки для упора пятки в пол, у меня не получалось летать так, потому что я использовал обычное офисное кресло, оно рассчитано для того, чтобы ноги были в согнутом положении и ступни стояли на полу, а не лежали на педалях. Сидишь как на тракторе. Но даже несмотря на это мне гораздо удобнее леталось на МС-1, чем на фридрихах. Дело в том, что площадки фридрихов приспособлены для полётов в сапогах или унтАх. На ступни давят ушки для крепления ремешков.

Какое-то время использовал педали с мотоциклетным демпфером купленным на  АлиЭкспресс. Такая конструкция позволяет имитировать работу вертолетного триммера. Как показывала практика это улучшение в кавычках. Оно ухудшает работу на малых расходах педалей, так как появляется эффект  страгивания. Снял демпфер и летал без пружины. Сейчас стоит слабая пружина, это не мешает летать на вертолетах без триммирования. Просто ноги остаются в нужном положении. Выработалась устойчивая привычка работы педалями «по-вертолетному» из-за этого на самолетах не возвращаю педали в центр.
<h2 id="cobra-m5">Джойстик Defender Cobra M5 BRD KIT</h2>
<a href="https://ma5ta.ru/wp-content/uploads/2021/01/defender-cobra-m5-mechanica-brd.jpg"><img class="aligncenter size-full wp-image-333" src="https://ma5ta.ru/wp-content/uploads/2021/01/defender-cobra-m5-mechanica-brd.jpg" alt="brd cobra m5 с механикой BRD" width="900" height="1118" /></a>

Это мой, уже бывший джой —  Кобра с металлической механикой БРД. Я приобрел кит-набор для кобры потому, что стал летать на МИ-8, а на пластиковой Кобре есть значительный люфт в центре и твист. Поэтому замена на металлическую механику решает эту проблему.

У кобры неудобная ручка, поэтому я сделал подставку под ладонь с мягкой прорезиненной тканью сверху. Ручку обмотал намоткой для теннисной ракетки. К сожалению я криво вырезал крышку джоя, а потом мне ее еще и покрасили, так что теперь показывать стыдно. Поэтому пришлось крепить дополнительную ось на основание в перевернутом виде. Но на работу джойстика это никак не влияет.
<h2 id="brd-n-stork">Джойстик BRD-N Stork v4.5</h2>
<a href="https://ma5ta.ru/wp-content/uploads/2021/01/brd-n-stork-v-4-5.jpg"><img class="aligncenter size-full wp-image-327" src="https://ma5ta.ru/wp-content/uploads/2021/01/brd-n-stork-v-4-5.jpg" alt="напольный джойстик brd n stork ver 4.5" width="900" height="924" /></a>

Теперь мой основной джойстик для полётов — это напольник BRD Stork. Причина смены настольника на напольник та же — вертолёты. Они  очень чувствительны к точности работы ручкой особенно в центре — на висении. Расход РППУ МИ-8 на висении со спичечный коробок, по словам реальных пилотов. В то же время длина рукоятки настольного джойстика в 3-5 раз меньше, чем у реального вертолета. Соответственно и расходы становятся меньше.

Одно из решений это настроить кривые. Другое удлинить шток джойстика. Плата за напольник тоже велика. Теперь приходиться выстраивать рабочее место вокруг него. Если вы посмотрите все обладатели напольников имеют отдельный лётный стул, он занимает уже не место на столе, а место в комнате!

В сумме педали, кресло и системный блок( монитор не нужен) занимают 2 квадратных метра.

Точность напольника вне конкуренции, но и тут не всё так просто. Из-за этого такой вертолёт как МИ-8 в симуляторе DCS World ведёт себя немного нервно. Поэтому приходиться немного загрублять оси. Более подробно об этом парадоксальном эффекте можете прочитать в обзоре который написал Troll <a href="https://www.mudspike.com/review-brd-n-black-stork-joystick/">https://www.mudspike.com/review-brd-n-black-stork-joystick/</a>

По сборке и качеству сказать нечего, всё на высшем уровне. Собирал несколько дней в своё удовольствие. Сейчас это уже 3 модификация джойстика. Со временем поменял основание, ручку и контроллер.
<h2 id="vpc-mongoost-50cm">Ручка Virpil Controls MongoosT-50CM Grip</h2>
<a href="https://ma5ta.ru/wp-content/uploads/2021/01/vpc-mongoost-50-cm.jpg"><img class="aligncenter size-full wp-image-334" src="https://ma5ta.ru/wp-content/uploads/2021/01/vpc-mongoost-50-cm.jpg" alt="vpc mongoost-50cm" width="900" height="1516" /></a>

Изначально я собрал напольник с ручкой от Кобры. Потом подержал ручку Virpil Controls, на сходке пилотов и понял, что нужно заиметь себе такую же. Благо был промо-код на 25% скидки при покупке. Доставка ручки из Белоруссии заняла около двух-трёх недель — довольно быстро.

По эргономике эта ручка на порядок лучше Кобры. Из минусов только не удобная кнопка под большим пальцем, но к этому можно привыкнуть. И подставка для кисти немного люфтит, чтобы убрать люфт я поставил гайку М6.

Изначально в напольнике стоял контроллер Kreml. Он воспринимал ось тормоза на ручке как кнопку. Для того, чтобы заработала ось пришлось сменить электронику на VPC.
<h2 id="gametrix-ecs">РУД Gametrix ECS</h2>
<a href="https://ma5ta.ru/wp-content/uploads/2021/01/gametrix-ecs-1.jpg"><img class="aligncenter size-full wp-image-335" src="https://ma5ta.ru/wp-content/uploads/2021/01/gametrix-ecs-1.jpg" alt="gametrix ecs" width="900" height="977" /></a>

Всё что я говорил в своей старом ролике про это РУД до сих пор актуально. Самое главное улучшение, которое я сделал — это доработал ось под большим пальцем. Установил резиновое кольцо для лучшего контроля оси. Это какая-то резиновая запчасти от «жигулей», которую я купил в автомагазине.

<a href="https://ma5ta.ru/wp-content/uploads/2021/01/gametrix-ecs-2.jpg"><img class="aligncenter size-full wp-image-336" src="https://ma5ta.ru/wp-content/uploads/2021/01/gametrix-ecs-2.jpg" alt="gametrix ecs upgrade" width="900" height="734" /></a>
<h2 id="saitek-quadrant">Блок рычагов Saitek Quadrant</h2>
<a href="https://ma5ta.ru/wp-content/uploads/2021/01/saitek-quadrant.jpg"><img class="aligncenter size-full wp-image-328" src="https://ma5ta.ru/wp-content/uploads/2021/01/saitek-quadrant.jpg" alt="saitek quadrant" width="900" height="900" /></a>

Квадрант служил мне верой и правдой в качестве Рычага Общего Шага винта около двух лет. Я задумывал его покупку как управление системами двигателя самолета — радиатор, смесь и т.п. В результате, долгое время был моим основным девайсом для полетов на вертолете. Я закрепил его слева вместо подлокотника к офисному креслу — получился примитивный РОШ. Когда пришла пора его снимать решил посмотреть что у него с резисторами. Оказалось что резисторы сильно шумят, я летал на хьюи и не замечал этого. В целом покупка оправдала себя. Думаю в будущем может ещё пригодиться.
<h2 id="samsung-odyssey-plus">VR-шлем Samsung Odyssey+</h2>
<a href="https://ma5ta.ru/wp-content/uploads/2021/01/samsung-odyssey-plus.jpg"><img class="aligncenter size-full wp-image-329" src="https://ma5ta.ru/wp-content/uploads/2021/01/samsung-odyssey-plus.jpg" alt="samsung odyssey plus" width="900" height="675" /></a>

Заказывал в ноябре на чёрную пятницу. Не смог заказать напрямую из магазина samsung.com/us. Воспользовался услугой «Помощь в покупке» доставщика shipito.com.
<ul>
 	<li>20 ноября 2018 года закинул депозит + деньги за услугу через liaylial, $299 + $80,92 соответственно;</li>
 	<li>Через несколько часов аккаунт заблокировала служба безопасности. Потребовали загрузить сканы документов;</li>
 	<li>Загрузил документы в аккаунт. Жду;</li>
 	<li>До конца акции осталось около 3ех дней — ни ответа, ни привета;</li>
 	<li>Начал долбить поддержку на сайте и в Facebook, вроде отвечали, но очень вяло и не внятно;</li>
 	<li>Настроился возвращать деньги взад через liaylial;</li>
 	<li>25 ноября саппорт шипито разродился и купил шлем. Всех делов на 1 час с перепиской и покупкой;</li>
 	<li>Молчание. Товарищ тоже заказал шлем, но другим доставщиком. Услышал от него дату поставки на склад 20 декабря, думал шлем на склад в этих числах и приедет;</li>
 	<li>Начал долбить саппорт после новогодних праздников. Хотел узнать трекномер. Не дали.</li>
 	<li>9 января шлем пришёл на склад в США. Вес и размер не бился с указанным на сайте производителя думал мне кирпич пришлют;</li>
 	<li>Решил сэкономить на доставке, выбрал Boxberry, но нужно было заполнить декларацию меня смутил пункт, что цена покупки должна была быть равна розничной. Пришлось выбрать USliS со страховкой, они ничего не потребовали, только деньги — $87,71;</li>
 	<li>23 января 2019 года шлем приехал курьером домой.</li>
</ul>
По итогу отдал очень много денег — $467,63 или 31 000 рублей по ценам 2019 года. В 2021 году "новый" шлем на Авито стоит — 35 000 рублей.

Могу сказать одно: не пользуйтесь сервисом доставки Шипито.

На тот момент действительно было топовое устройство за небольшие деньги. Сейчас Одиссей уже не производится. Для DCS он не подходит, потому что есть AntiSDE покрытие. Из-за этого хорошо смотрятся сцены с пейзажами, но приборы читаются хуже. Если у вас будет идея приобрести Одиссей, купите лучше шлем из нового поколения или первый Одиссей без +.

Мне достался неудачный экземпляр: есть битый пиксель, его не всегда заметно. Возможно он появился после некоторого времени использования. Контроллеры начали глючить в августе 2019 года. Возможно из-за китайских никель-цинковых аккумуляторов. Но своих денег он конечно стоил.

Сейчас больше всего глюков с контроллерами. Отваливаются в самый неожиданный момент. Для DCS это не существенно. Также у WMR-платформы первого поколения, как показало время и второго тоже, проблема с трекингом контроллеров, которая никак не лечиться. Если держишь оружие двумя руками, то при выводе контроллеров на одну и ту же линию шлем теряет дальний контроллер. Правшам трудно стрелять в правый верхний угол.

С трекингом шлема проблем очень мало если заранее позаботиться об освещении игровой зоны.

Многие вирпилы не рассматривают шлем для других игр кроме как DCS и очень многое теряют. Есть отличные проекты для VR: тот же Half-Life Alyx, Arizona Sunshine, No Man Sky, H3VR. Про H3VR — нужно отдельно рассказывать. Вкратце 400 видов ручного огнестрельного и не только оружия детально смоделированного в песочнице. От пистолетов, винтовок, пулеметов времен войны за независимость Штатов Америки до FIM-92 Stinger. Неплохой обзор на эту игру: <a href="https://www.youtube.com/watch?v=Xw10eflF5dE">https://www.youtube.com/watch?v=Xw10eflF5dE</a>

Если думаете брать шлем или не брать — сначала решите зачем он вам? Если вы используете симулятор как контер страйк на самолётах, то вам шлем не нужен и будет только мешать. TrackIr даёт лучший обзор. Если вам нужно чувство полёта на настоящем самолете, то альтернативы нет. Симуляторы в плоском виде теряют всякий смысл, даже несмотря на то, что графику приходиться значительно снижать по сравнению с плоской версией. Для вертолетов очень нужный девайс. Позволяет точнее определять расстояние до земли. Позволяет удерживать объект для определения собственного положения и приборы в периферийном поле зрения.
<h2 id="collective-u053">РОШ U-053 Collective #7</h2>
<a href="https://ma5ta.ru/wp-content/uploads/2021/01/u053-collective.jpg"><img class="aligncenter size-full wp-image-330" src="https://ma5ta.ru/wp-content/uploads/2021/01/u053-collective.jpg" alt="рош u053 collective ka 50" width="900" height="543" /></a>

Весной 2019 года приобрел Рычаг Общего Шага для вертолёта выполненную по мотивам ручки Ка-50.<em> </em>

Делает этот РОШ Михаил с ником U-053 на всех форумах где есть ветка про самоделки.

Моё устройство под номером 7.

Устройство имеет:
<ul>
 	<li>5 Осей</li>
 	<li>6 кнопок</li>
 	<li>2 хатки</li>
 	<li>6 тумблеров</li>
</ul>
Рычаг держит усилие в 7 килограмм

Электроника GVL-4000 на всех осях.

Механизм фиксации рычага — фрикционный, он не подвержен износу. Но у него другая эргономика. Для работы с РОШем нужно нажимать ручку. Это вносит некоторые коррективы стандартную моторику работы с РОШем. Держать рычаг нужно особым хватом.

У ручки есть регулировка, которая позволяет настроить усилие на рычаге прямо в полёте. Ставишь вертолет в полете на автопилот, правой рукой работаешь с РОШем, левой крутишь гайку. Снимаешь вертолет с автопилота и опробуешь настройку.

Из минусов помимо изменение эргономики работы, также некоторая избыточность конструкции. Есть РРУДЫ, которые и в реальной жизни применяются редко, в виртуальной ещё реже. Поэтому вешаю на них второстепенные функции, например подсветку приборов. Если бы их не было, устройство было бы гораздо меньше и легче.
<h2 id="seat">Автомобильное кресло</h2>
Осенью 2020 установил автомобильное кресло от Kia Rio 2011-2017. Стоимость кресла 4 000 рублей. Сидеть стало удобнее. Но изменилась эргономика, придется поменять прямую трубу джойстика на согнутую. Также переделаю крепление РУДа. Сделаю его откидывающимся, будет находиться ближе к пилоту — над РОШем в рабочем положении.

<a href="https://ma5ta.ru/wp-content/uploads/2021/01/letnoe-mesto-virpila.jpg"><img class="aligncenter size-full wp-image-337" src="https://ma5ta.ru/wp-content/uploads/2021/01/letnoe-mesto-virpila.jpg" alt="рабочее место для полетов вирпила" width="900" height="1502" /></a>
<h2>В заключение</h2>
Когда-то я думал, что можно построить себе идеальное летное место, но теперь понимаю, что это постоянный процесс. На рынке появляются новые железки, меняются мои интересы, появляются новые симуляторы. Думаю это не последнее моё видео про оборудование для авиасимуляторов.

Всем пока и Fly Safe 0/

https://youtu.be/pV-AelIUuEI','Обзор рабочего места для полетов в DCS',NULL,NULL),
	 (15,'trenirovochnaja-missija-dlja-vertoleta-uh-1h','2021-02-08 08:00:43','В этой статье я собрал дополнительные советы по прохождению тренировочной миссии для вертолета UH-1H.

<!--more-->
<h2>Брифинг</h2>
Скачать миссию можно по ссылке: <a href="https://www.digitalcombatsimulator.com/ru/files/3314958/">https://www.digitalcombatsimulator.com/ru/files/3314958/</a>

Миссия даёт минимальные навыки для управления вертолётом UH-1H, которые могут понадобиться при прохождения миссий и сюжетных кампаний. Блоки снабжены текстовыми и голосовыми аннотациями. Рекомендуется перед прохождением прочитать руководство по лётной эксплуатации к модулю, которое расположено по ссылке <a href="https://docs.google.com/file/d/0B_5mV4ss1fj8Zy1ZZTEtQUdlZHM/edit">href="https://docs.google.com/file/d/0B_5mV4ss1fj8Zy1ZZTEtQUdlZHM/edit</a>.

<b>Предстоит выполнить следующие учебные блоки:</b>
<ol>
 	<li><span style="font-weight: 400;">Посадка на аэродром (“9.5. Снижение и посадка” стр. 123) </span></li>
 	<li><span style="font-weight: 400;">Радионавигация с использованием:</span>
<ol>
 	<li><span style="font-weight: 400;">Автоматический радиокомпас AN/ARN-83 (“7.2.2. Автоматический радиокомпас AN/ARN-83” стр. 100)</span></li>
 	<li><span style="font-weight: 400;">Радиостанция УКВ AN/ARC-131 (“7.1.4. Радиостанция УКВ AN/ARC-131” стр. 96)</span></li>
 	<li><span style="font-weight: 400;">Навигационная радиостанция УКВ AN/ARN-82 (“7.2.1.</span></li>
 	<li><span style="font-weight: 400;">Навигационная радиостанция УКВ AN/ARN-82” стр. 99)</span></li>
</ol>
</li>
 	<li><span style="font-weight: 400;">Перевозка грузов</span></li>
 	<li><span style="font-weight: 400;">Посадка на авторотации (“9.6. РСНВ. Практическая часть.” стр. 126)</span></li>
</ol>
Рекомендуется проходить блоки по очереди, но не обязательно.
Установи уровень громкости «Шлемофон» на 100%.

Радиостанция “Good Mood» 257 MHz - AN/ARC-51BX #8

Необходимые клавиатурные сочетания:
Внешняя подвеска, индикатор - вкл./выкл.: RCtrl + RShift + P
Внешняя подвеска, автоотцеп груза: RCtrl + RShift + K
Сброс триммера: LCtrl+T

Голосовые сообщения сгенерированы в Yandex Cloud Voice API jane
Тестирование: RFJack, Frogen
<h2>Подготовка</h2>
Перед началом миссии рекомендую настроить все необходимые комбинации клавиш, которые описаны в брифинге, на кнопки джойстика или РОШа. Я также добавил кнопки вызова меню грузов \ -&gt; F10 -&gt; F6 и выбор конкретного груза — кнопки F1-F4.

<a href="https://ma5ta.ru/wp-content/uploads/2021/02/arc-51bx-8.jpg"><img class="alignleft size-full wp-image-361" src="https://ma5ta.ru/wp-content/uploads/2021/02/arc-51bx-8.jpg" alt="Настройка ARC-51BX" width="600" height="300" /></a>После прохождения стандартной процедуру включения радиостанции ARC-134 можно включить музыкальное сопровождение на радиостанции ARC-51BX канал №8. Музыка включится через 25 секунд после настройки радиостанции. Громкость музыки регулируется с помощью регулятора.

&nbsp;

&nbsp;

&nbsp;

Не забывайте установить метеорологическое направление ветра по умолчанию в этой миссии 310 градусов — совпадает с направлением ВПП.<a href="https://ma5ta.ru/wp-content/uploads/2021/02/wind-direction.jpg"><img class="size-full wp-image-358 aligncenter" src="https://ma5ta.ru/wp-content/uploads/2021/02/wind-direction.jpg" alt="" width="600" height="300" /></a>
<h2>Посадка на аэродром</h2>
Требуется пролететь сквозь все ворота и приземлится на площадку. Для усложнения этого блока можете поставить в настройках миссии боковой ветер с углом под 90 градусов( по умолчанию в этой миссии) со скоростью до 5 м/с, турбулентность 35-40.
Или боковой ветер под углом 45 градусов, скоростью 7-10 м/с и турбулентность 35-40.

<a href="https://ma5ta.ru/wp-content/uploads/2021/02/2.jpg"><img class="aligncenter size-full wp-image-362" src="https://ma5ta.ru/wp-content/uploads/2021/02/2.jpg" alt="" width="405" height="307" /></a>
<h2>Радионавигация с использованием бортового оборудования</h2>
При прохождении этого учебного блока не должно возникнуть никаких проблем. Я постарался максимально подробно показать с помощью аннотаций работу с радиооборудованием вертолёта UH-1H.
<h2>Перевозка грузов</h2>
Самый интересный и в то же время сложный учебный блок. Многие вирпилы обходят стороной работу с грузами. Я постарался внести небольшой соревновательный элемент в это упражнение. Мой рекорд по доставке 4 груза из 5 в центре и 1 в радиусе 10 метров от центра.

При доставке грузов я постоянно держу во поле зрения показания радиовысотомера, указателя воздушной скорости и вариометра.

<a href="https://ma5ta.ru/wp-content/uploads/2021/02/uh-1h-training-camp-attention.jpg"><img class="aligncenter size-full wp-image-378" src="https://ma5ta.ru/wp-content/uploads/2021/02/uh-1h-training-camp-attention.jpg" alt="подъем грузов распределение внимания" width="900" height="308" /></a>

При подъеме груза натяжение должно произойти на высоте в 50 футов по радиовысотомеру. Это означает, что груз поднимете правильно — вертикально, без смещений вперед-назад или в сторону.

<span style="font-weight: 400;">Для усложнения задания можете поменять грузы на Ammo или Подвеска UH-1H поставить вес полегче. Поднимать такие грузы очень легко, но опускать очень трудно. Вертикальная скорость должна быть минимально, иначе грузы могут повредиться или сдетонировать.</span>

<a href="https://ma5ta.ru/wp-content/uploads/2021/02/hard-cargo.jpg"><img class="aligncenter size-full wp-image-368" src="https://ma5ta.ru/wp-content/uploads/2021/02/hard-cargo.jpg" alt="" width="800" height="400" /></a>

&nbsp;
<h2>Посадка на авторотации</h2>
К сожалению не удалось сделать все аннотации для этого блока. Но пользуясь теми, которые есть вы сможете освоить посадку на авторотации и в трудных ситуациях сберечь дорогую технику. Полное описание процесса на авторатации дано в РЛЭ к модулю.

https://youtu.be/4qXU_l3JVTA','Тренировочная миссия для вертолета UH-1H',NULL,NULL),
	 (16,'uh-1h-helicopter-training-mission','2021-02-08 08:00:33','<span style="font-weight: 400;">In this article, I have collected additional tips for completing a training mission for the UH-1H helicopter.</span>

<!--more-->
<h2><span style="font-weight: 400;">Briefing</span></h2>
Download: <a href="https://www.digitalcombatsimulator.com/ru/files/3314958/">https://www.digitalcombatsimulator.com/ru/files/3314958/</a>

The mission gives you the minimum skills to control a UH-1H, that you may need to complete missions and story campaigns. Training blocks are provided with text and voice annotations. We recommend that you read the flight operations manual for the module, which is located in the module folder, before proceeding: X:\DCSWorld\Mods\aircraft\Uh-1H\Doc\DCS UH-1H Flight Manual_EN.pdf.

You will need to complete the following training blocks:
<ol>
 	<li>Landing at the airport (“9.5.Landing at the airport” p. 124)</li>
 	<li>Practice radio navigation:
<ol>
 	<li>AN/ARN-83 (“AN/ARN-83 ADF Set.” p. 91)</li>
 	<li>An/ARC-131 radio station (”7.1.4. AN/ARC-131 FM Radio Set " p. 87)</li>
 	<li>Navigation radio station AN/ARN-82 ("7.2.1. AN/ARN-82 VHF Navigation Set" p. 90)</li>
</ol>
</li>
 	<li>Cargo transportation training (“11.1. Sling load usage” p. 140)</li>
 	<li>Landing on autorotation (“9.7. Autorotation. Practical part” p. 127)</li>
</ol>
It is recommended to pass blocks in turn, but not necessarily.

Set the volume level of "Helmet" to 100%.

Good Mood radio station 257 MHz - AN/ARC-51BX #8

Required keyboard shortcuts:

External Cargo Indicator on/off: RCtrl + RShift + P

External Cargo Autounhook: RCtrl + RShift + K

Trimmer reset: LCtrl+T

Voice messages are generated in the Yandex Cloud Voice API alyss

Testing: RFJack, Frogen
<h2>Preparation</h2>
Before starting the mission, I recommend setting up all the necessary keyboard shortcuts, which are described in the briefing, on the joystick or ROCHE buttons. I also added buttons to call the cargo menu \ -&gt; F10 -&gt; F6 and select a specific cargo-buttons F1-F4.

<a href="https://ma5ta.ru/wp-content/uploads/2021/02/arc-51bx-8.jpg"><img class="aligncenter wp-image-361 size-full" src="https://ma5ta.ru/wp-content/uploads/2021/02/arc-51bx-8.jpg" alt="Настройка радиостанции ARC-51BX на 8 канал" width="600" height="300" /></a>

After passing the standard procedure for turning on the radio station ARC-134, you can turn on the music on the radio station ARC-51BX channel No. 8. The music will turn on 25 seconds after you set up the radio station. The volume of the music is adjusted using the volume control.

<a href="https://ma5ta.ru/wp-content/uploads/2021/02/wind-direction.jpg"><img class="aligncenter wp-image-358 size-full" src="https://ma5ta.ru/wp-content/uploads/2021/02/wind-direction.jpg" alt="Установление метеорологического направления ветра" width="600" height="300" /></a>

Don''t forget to set the default meteorological wind direction in this mission to 310 degrees — the same as the runway direction.
<h2>Landing at the airfield</h2>
You need to fly through all the gates and land on the platform. To complicate this block, you can set aside wind with an angle of 90 degrees in the mission settings( by default in this mission) with a speed of up to 5 m/s, the turbulence of 35-40.

Or a side wind at an angle of 45 degrees, a speed of 7-10 m/s, and turbulence of 35-40.

<a href="https://ma5ta.ru/wp-content/uploads/2021/02/2.jpg"><img class="aligncenter wp-image-362 size-full" src="https://ma5ta.ru/wp-content/uploads/2021/02/2.jpg" alt="Настройка сложных погодных условия для посадки" width="405" height="307" /></a>
<h2>Radio navigation using on-board equipment</h2>
When passing this training block, there should be no problems. I tried to show in as much detail as possible with the help of annotations the work with the radio equipment of the UH-1H helicopter.
<h2>Sling load usage</h2>
The most interesting and at the same time difficult training block. Many of virpil sidestep work with weights. I tried to add a little competitive element to this exercise. My record for delivering 4 loads out of 15 feet in the center and 1 in a radius of 30 feet from the center.

During the delivery of goods, I constantly keep in view the readings of the radio altimeter, the airspeed indicator, and the variometer.

<a href="https://ma5ta.ru/wp-content/uploads/2021/02/uh-1h-training-camp-attention.jpg"><img class="aligncenter size-full wp-image-378" src="https://ma5ta.ru/wp-content/uploads/2021/02/uh-1h-training-camp-attention.jpg" alt="подъем грузов распределение внимания" width="900" height="308" /></a>

When lifting the load, the tension must occur at an altitude of 50 feet according to the radio altimeter. This means that you will lift the load correctly-vertically, without shifting back and forth or to the side.

To complicate the task, you can change the loads to Ammo or the UH-1H suspension to put a lighter weight. Lifting such loads is very easy, but lowering them is very difficult. The vertical speed must be kept to a minimum, otherwise, the loads may be damaged or detonate.

<a href="https://ma5ta.ru/wp-content/uploads/2021/02/hard-cargo.jpg"><img class="size-full wp-image-368 aligncenter" src="https://ma5ta.ru/wp-content/uploads/2021/02/hard-cargo.jpg" alt="Сложные грузы для перевозки DCS" width="800" height="400" /></a>
<h2>Landing on autorotation</h2>
Unfortunately, it was not possible to make all the annotations for this block. But using the available ones, you will be able to master the landing on autorotation and save expensive equipment in difficult situations. A full description of the autorotation process is given in the user manual to the module.

https://youtu.be/4qXU_l3JVTA','UH-1H Helicopter Training Mission',NULL,NULL);


INSERT INTO blog.post_comments (id,comment_author,comment_date,comment_content,comment_parent,comment_post_id) VALUES
     (0,'Vindigo','2015-08-25 22:25:09','привет я использую Gametrix Engine Control System ECS (РУД) в игре elit dangerous. Вопрос такой, он имеет широкий спект хода в 2000+. так почему у меня он работает как нажатие джойстика, вместо того то бы работать как подобает(поднял его на 10%  так он добавил 10%. поднял 50% так скорость 50%) а то у меня  он схватывает когда поднимаешь его в верх 100% и перестаёт набирать когда убираешь на 50%',NULL,1),
     (1,'Ma5ta','2015-08-26 10:06:51','Привет, за Elite Dangerous не скажу не играл, насколько я знаю игра еще довольно сыровата. Думаю для разработчиков задача по отладки работы такого не сильно популярного девайса не в приоритете. Попробуй проэмулировать работу руда через xpadder. 

В том же Star Citizen по началу на джое было очень неудобно летать из-за того что оси не настраивались. Возможно в Элите дела так же обстоят. Думаю все наладиться со временем.',0,1),
     (2,'Vindigo','2015-08-26 20:07:03','спасибо уже всё настроил, не те настройки делал в игре',1,1),
     (3,'Игорь','2014-11-10 21:05:13','Спасибо, полезная информация по настройке
только есть одна особенность, после прошивки имя устройства меняется с GTX Throttle на VKB Throttle
после чего родная программа по калибровке ECS control panel перестает его видеть, а VKB device config видеть начинает
но главное, что с обновленной прошивкой, ось скорости вместо 5-й становится 1-й и начинает конфликтовать с осью джойстика
как можно решить данную проблему?
т.к. с родной прошивкой ничего толком нельзя настроить и доп. оси Rx Ry вообще работают не корректно (с 0 сразу переходят в 32000, без шагов)',NULL,5),
     (4,'Ma5ta','2014-11-25 02:53:58','Странно, у меня ось газа -  Slider 1 и две оси Rx и Ry соответственно, прошивка 1.27

В каком приложении конфликтуют джой и руд?',3,5),
     (5,'Сергей','2014-11-27 13:57:48','Скачайте вот эту программу http://ftp.vkb-sim.pro/Programms/VKBDevCfg-C_v0_60_65.zip
Там есть кнопка Start calibr, нажмите ее и двигайте все ручки, только двигайте их медленно. После этого нажмите end calibr.',3,5),
     (6,'Сергей','2014-11-27 14:00:38','Ma5ta, подскажи, у тебя на этом устройстве есть мертвые зоны? Когда начинаешь двигать основной рычаг, у тебя отклик по оси идет сразу или есть какой-то "свободный ход".
У меня "свободный ход" есть, если считать у основания рукоятки, то он около 3-4 мм. Настораживает, так и должно быть?',NULL,5),
     (7,'Сергей','2014-11-27 14:03:30','Кстати, вот последняя прошивка, ее описание найти не удалось: http://ftp.vkb-sim.pro/VKB_Cobra/Firmware/VKB_Throttle_v1_33.vkb',5,5),
     (8,'Ma5ta','2014-11-27 14:55:46','Да, есть свободный ход, пришлось привыкать. Ну наверное так не должно быть, но как говориться имеем то что имеем.',6,5),
     (9,'kamet','2015-01-17 19:34:21','че-то подключил оси как описано, но одна криво работает совсем. Питание на резисторы(крутилки) нужно брать с разных крутилок или без разницы? я взял с одной и запаралелил. Еще пишут можно взять с марса, но опять же на две крутилки параллельно или как-то отдельно надо делать?',NULL,5);
INSERT INTO blog.post_comments (id,comment_author,comment_date,comment_content,comment_parent,comment_post_id) VALUES
     (10,'kamet','2015-01-17 19:36:02','и к стати какие резисторы лучше стаить? я на 100 кОм поставил простельнкие. они шумят сильно. постоянно ось дергается немного, но может это опять же из-за питания что-то фонит',NULL,5),
     (11,'Ma5ta','2015-01-17 23:28:32','Я с доп. осями заморачиваться не стал. Посмотри вот здесь https://sites.google.com/site/verpilggn/igrovye-zelezaki/rud',10,5),
     (12,'kamet','2015-01-18 12:45:48','я уже смотрел там. к сожалению то же никаких уточнений нет.
Спасибо! Знаю людей которые это проделывали. как выясню отпишусь здесь, чтоб вашу инструкции сделать более полной.',NULL,5),
     (13,'Ma5ta','2015-01-18 15:38:44','Думаю вот здесь помогут http://forum.vkb-sim.pro/',12,5),
     (14,'Christian','2015-09-27 20:08:58','Hello,
I just stumbled upon this very helpful page and wanted to thank you for gathering all this information! Unfortunately I don''t speak russian, but thanks to Google translate I was able to understand almost everything.

I''ve got one question, though, maybe you have a solution:
When clicking GET in VKB Device Config it says "ERROR CPUID read". Any idea why this is happening? I''m using firmware 1.35 The reason I''m asking is because with firmware 1.35 after going into sleep mode the main axis of the throttle doesn''t work. I thought calibrating might help but I doubt it''s possible to write the parameters to the throttle as long as this error message appears.
Cheers
Christian',NULL,5),
     (15,'RFJack','2015-09-27 21:59:19','Hello Christian. The solution for your issue is super easy, but first: this bug happens, when you turn your computer with the throttle setting not "zero", then the driver counts the minimum setting for throttle axis from the physical position of the throttle stick. So you need to set the stick to zero position and replug your joy to comp, and this should solve the problem.

Regards, Jack, for Ma5ta request.',14,5),
     (16,'Ma5ta','2015-09-27 22:03:56','It''s my awesome english speaking mate)',15,5),
     (17,'Ma5ta','2015-09-28 00:29:52','Throttle should be installed at "zero" when you turn on your PC.',14,5),
     (18,'Sergeant','2014-07-10 15:27:35','Спасибо за видео.',NULL,8),
     (19,'Ma5ta','2014-07-22 22:38:55','На здоровье)',18,8);
