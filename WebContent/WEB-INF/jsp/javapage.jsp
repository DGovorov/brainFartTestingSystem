<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<!DOCTYPE HTML>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">

	<title>	BrainFart Test Collection</title>

	<meta name="description" content="">
	<meta name="keywords" content="">

	<!-- Behavioral Meta Data -->
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="apple-touch-icon" href="#">
	<!-- Place favicon.ico in the root directory -->

	<!-- Web Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,900,900italic,700italic,700,500italic,400italic,500,300italic,300' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet'>

	<!-- Bootstrap's CSS -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/responsive.css">

	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/details.css">

	<!-- Google Fonts-->
	<link rel='stylesheet' id='options_typography_Montserrat-css'
		  href='//fonts.googleapis.com/css?family=Montserrat&#038;subset=latin'>
	<link rel='stylesheet' id='options_typography_Open+Sans-css'
		  href='//fonts.googleapis.com/css?family=Open+Sans&#038;subset=latin'>

	<script>
		var errorList = [];
		function checkFields(){
			check("text", "value");
			check("textarea", "value");
			check("radio", "checked");
			check("checkbox", "checked");

			if(errorList.length == 0){
				return true;
			}
			else {
				errorList = [] ;
				return false;
			}
		}

		function check(type, prop){
			var inputs = document.getElementsByTagName("article")[0];
			for(var i = 0; i < inputs.length; i++){
				if(inputs[i].type == type && prop == "value"){
					if(inputs[i].value == "" ){
						errorList.push(inputs[i].type);
					}
				}
				else if(inputs[i].type == type && prop == "checked"){
					if(!inputs[i].checked){
						errorList.push(inputs[i].type);
					}
				}
			}
		}
	</script>

</head>

<body>

<a name="ancre"></a>

<!-- CACHE -->
<div class="cache"></div>

<!-- HEADER -->

<div class="upper-wrap">
	<header id="wrapper-header">
		<div id="main-header" class="object">
			<div class="logo"><a href="about.html" title="Brainfart"><img src="img/about/brainfart-logo.png" alt="logo burstfly"></a></div>
			<div id="main_tip_search">
				<form>
					<input type="text" name="search" id="tip_search_input" list="search" autocomplete=off required>
				</form>
			</div>
			<div id="stripes"></div>
		</div>
	</header>

	<!-- NAVBAR -->

	<nav id="wrapper-navbar">
		<div class="navbar object">

			<div id="wrapper-sorting">
				<div id="wrapper-title-1">
					<div class="top-rated object">Top-rated</div>
					<div id="fleche-nav-1"></div>
				</div>

				<div id="wrapper-title-2">
					<a href="#"><div class="recent object">Recent</div></a>
					<div id="fleche-nav-2"></div>
				</div>

				<div id="wrapper-title-3">
					<a href="#"><div class="oldies object">Oldies</div></a>
					<div id="fleche-nav-3"></div>
				</div>
			</div> <!-- /.wrapper-sorting -->

			<div id="wrapper-bouton-icon">
				<div id="bouton-app"><img src="img/test-cat/apple.png" alt="Apple Developer" title="Apple Developer"></div>
				<div id="bouton-and"><img src="img/test-cat/android.png" alt="Android Developers" title="Android Developers"></div>
				<div id="bouton-qa"><img src="img/test-cat/qa.png" alt="Quality assurance" title="Quality assurance"></div>
				<div id="bouton-back"><img src="img/test-cat/server-purple.png" alt="Back End" title="Back End"></div>
				<div id="bouton-front"><img src="img/test-cat/html.png" alt="Front End" title="Front End"></div>
			</div>

		</div> <!-- /.navbar object -->
	</nav>

</div>

<div id="wrapper-container">
	<!-- TEST details -->
	<div class="container object">

		<div id="main-container-image">

			<!--Test icon & title-->
			<div class="title-item">
				<div class="title-icon"><img src="img/test-cat/html.png" alt="Front End" title="Front End"></div>
				<div class="title-text">Test title</div>
				<div class="title-text-2">Subtitle</div>
			</div>

			<!--Main image for the test-->
			<div class="test">
				<figure class="white">
					<img src="img/test-cat/front-end-1.jpg" alt="Front End">
				</figure>

				<!--Test info-->
				<div class="wrapper-text-description">

					<div class="wrapper-view">
						<div class="icon-view"><img src="img/details/numbered-list.png" alt="" width="24" height="16"/></div>
						<div class="text-view">Number of Questions: 11 </div>
					</div>

					<div class="wrapper-file">
						<div class="icon-file"><img src="img/details/html.png" alt="" width="21" height="21"/></div>
						<div class="text-file">Test Category: Front End</div>
					</div>

					<div class="wrapper-desc">
						<div class="icon-desc"><img src="img/details/test-info.png" alt="" width="24" height="24"/></div>
						<div class="text-desc">Test Details: Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. </div>
					</div>

					<div class="wrapper-morefrom">
						<div class="text-morefrom">More Test from Front-end Category</div>
						<div class="image-morefrom">
							<a href="#"><div class="image-morefrom-1"><img src="img/test-cat/front-end-1.png" alt="" width="430" height="330"/></div></a>
							<a href="#"><div class="image-morefrom-2"><img src="img/test-cat/front-end-2.jpg" alt="" width="430" height="330"/></div></a>
							<a href="#"><div class="image-morefrom-3"><img src="img/test-cat/front-end-1.jpg" alt="" width="430" height="330"/></div></a>
							<a href="#"><div class="image-morefrom-4"><img src="img/test-cat/front-end-1.png" alt="" width="430" height="330"/></div></a>
						</div>
					</div>

				</div> <!--end of .wrapper-text-description-->
			</div> <!--end of .work-->

		</div> <!--end of #main-container-image-->


		<form role="form" method="post" action="handler.php" name="t1">
			<h3> Основы HTML и Web</h3>
			<ol class="test-body">
				<li name="t1q1">
					<!-- 1st question -->
					<h4>Чем очищается поток?</h4>
					<article class="test-questions hvr-grow-shadow">
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q1a1" name="t1q1a" value="t1q1a1">
							<label for="t1q1a1">display:table</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q1a2" name="t1q1a" value="t1q1a2">
							<label for="t1q1a2">clear: both</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q1a3" name="t1q1a" value="t1q1a3">
							<label for="t1q1a3">&lt;br /&gt;</label>
						</div>
					</article>
				</li>

				<li name="t1q2">
					<!-- 2d question -->
					<h4>К какому элементу будет применяться селектор a.id?</h4>
					<article class="hvr-grow-shadow">
						<div class="checkbox">
							<input type="checkbox" class="checkbox_mod" id="t1q2a1" name="t1q2a1" value="t1q2a1">
							<label for="t1q2a1">&lt;a id=&quot;a&quot; href=&quot;#&quot;&gt;ссылка&lt;/a&gt;</label>
						</div>
						<div class="checkbox">
							<input type="checkbox" class="checkbox_mod" id="t1q2a2" name="t1q2a2" value="t1q2a2">
							<label for="t1q2a2">&lt;a class="a id" href="#"&gt;ссылка&lt;/a&gt;</label>
						</div>
						<div class="checkbox">
							<input type="checkbox" class="checkbox_mod" id="t1q2a3" name="t1q2a3" value="t1q2a3">
							<label for="t1q2a3">&lt;a href="#"&gt;ссылка&lt;/a&gt;</label>
						</div>
						<div class="checkbox">
							<input type="checkbox" class="checkbox_mod" id="t1q2a4" name="t1q2a4" value="t1q2a4">
							<label for="t1q2a4">&lt;a class="id" href="#"&gt;ссылка&lt;/a&gt;</label>
						</div>
						<div class="checkbox">
							<input type="checkbox" class="checkbox_mod" id="t1q2a5" name="t1q2a5" value="t1q2a5">
							<label for="t1q2a5">&lt;a rel="id" href="#"&gt;ссылка&lt;/a&gt;</label>
						</div>
					</article>

				</li>

				<li name="t1q3">
					<!-- 3d question -->
					<h4>Как задать стиль только для первого блока?</h4>
					<p><pre>&lt;div class="select block"&gt;1&lt;/div&gt;
&lt;div class="select"&gt;2&lt;/div&gt;
&lt;div class="block"&gt;3&lt;/div&gt;</pre></p>
					<article class="hvr-grow-shadow">
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q3a1" name="t1q3a" value="t1q3a1">
							<label for="t1q3a1">div:first {…}</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q3a2" name="t1q3a" value="t1q3a2">
							<label for="t1q3a2">.block {…}</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q3a3" name="t1q3a" value="t1q3a3">
							<label for="t1q3a3">.select .block {…}</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q3a4" name="t1q3a" value="t1q3a4">
							<label for="t1q3a4">.select.block {…} </label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q3a5" name="t1q3a" value="t1q3a5">
							<label for="t1q3a5">.select {...}</label>
						</div>
					</article>
				</li>

				<li name="t1q4">
					<!-- 4th question -->
					<h4>Как добавить фоновый цвет ко всем элементам &lt;h1&gt;?</h4>
					<article class="hvr-grow-shadow">
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q4a1" name="t1q4a" value="t1q4a1" >
							<label for="t1q4a1">h1[all] { background-color: white }</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q4a2" name="t1q4a" value="t1q4a2">
							<label for="t1q4a2">h1#all { background-color: white }</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q4a3" name="t1q4a" value="t1q4a3">
							<label for="t1q4a3">h1.all { background-color: white }</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q4a4" name="t1q4a" value="t1q4a4">
							<label for="t1q4a4">h1.all { background-color: white }</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q4a5" name="t1q4a" value="t1q4a5">
							<label for="t1q4a5">h1 { background-color: white }</label>
						</div>
					</article>
				</li>

				<li name="t1q5">
					<!-- 5th question -->
					<div>
						<img src="http://sayt-stroy.com/wp-content/uploads/2013/06/vsplyvayuschaya-podskazka-CSS.jpg" alt="CSS tooltip" style="float:right; width:200px;">
						<h4>Чтобы задать всплывающую подсказку при наведении на изображение необходимо использовать атрибут:</h4>
					</div>


					<article class="hvr-grow-shadow">
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q5a1" name="t1q5a" value="t1q5a1" >
							<label for="t1q5a1"><img src="http://www.src-batiment.fr/france/src-batiment.nsf/E5F864CDB5804F50C1257681005D2360/$file/log_src_c_r.png" alt="src" title="src" style="width: 50px;"></label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q5a2" name="t1q5a" value="t1q5a2">
							<label for="t1q5a2"><img src="https://www.muralunique.com/image/data/Differentes_Grandeurs_ANG_Width.jpg" alt="width" title="width" style="width: 50px;"></label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q5a3" name="t1q5a" value="t1q5a3">
							<label for="t1q5a3"><img src="http://images.clipartpanda.com/title-clipart-puzzle-piece-title-md.png" alt="title" title="title" style="width: 50px;"></label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q5a4" name="t1q5a" value="t1q5a4">
							<label for="t1q5a4"><img src="http://compsam.ru/wp-content/uploads/Alt.jpeg" alt="alt" title="alt" style="width: 50px;"></label>
						</div>
					</article>
				</li>

				<li name="t1q6">
					<!-- 6th question -->
					<h4>Какие из перечисленных ниже тегов являются блочными?</h4>
					<acticle class="hvr-grow-shadow">
						<div class="checkbox">
							<input type="checkbox" class="checkbox_mod" id="t1q6a1" name="t1q6a1" value="t1q6a1">
							<label for="t1q6a1">span</label>
						</div>
						<div class="checkbox">
							<input type="checkbox" class="checkbox_mod" id="t1q6a2" name="t1q6a2" value="t1q6a2">
							<label for="t1q6a2">p</label>
						</div>
						<div class="checkbox">
							<input type="checkbox" class="checkbox_mod" id="t1q6a3" name="t1q6a3" value="t1q6a3">
							<label for="t1q6a3">div</label>
						</div>
						<div class="checkbox">
							<input type="checkbox" class="checkbox_mod" id="t1q6a4" name="t1q6a4" value="t1q6a4">
							<label for="t1q6a4">img</label>
						</div>
					</acticle>
				</li>

				<li name="t1q7">
					<!-- 7th question -->
					<h4>В чем отличие тегов &lt;div&gt; и &lt;span&gt;?</h4>
					<article class="hvr-grow-shadow">
						<div class="radio">
							<input type="radio" class="radio_mod" name="t1q7a" id="t1q7a1" value="t1q7a1" >
							<label for="t1q7a1">div - является строчным элементом, а span - блочным</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q7a2" name="t1q7a" value="t1q7a2">
							<label for="t1q7a2">span - является строчным элементом, а div - блочным </label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q7a3" name="t1q7a" value="t1q7a3">
							<label for="t1q7a3">нет разницы</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q7a4" name="t1q7a" value="t1q7a4">
							<label for="t1q7a4">тег span не надо закрывать</label>
						</div>
					</article>
				</li>

				<li name="t1q8">
					<!-- 8th question -->
					<h4>Чтобы организовать ненумерованный список необходимо использовать тег</h4>
					<article class="hvr-grow-shadow">
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q8a1" name="t1q8a" value="t1q8a1">
							<label for="t1q8a1">dd</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q8a2" name="t1q8a" value="t1q8a2">
							<label for="t1q8a2">hq</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q8a3" name="t1q8a" value="t1q8a3">
							<label for="t1q8a3">ol</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q8a4" name="t1q8a" value="t1q8a4">
							<label for="t1q8a4">dt</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q8a5" name="t1q8a" value="t1q8a5">
							<label for="t1q8a5">ul</label>
						</div>
					</article>
				</li>

				<li name="t1q9">
					<!-- 9th question -->
					<h4>В каких ситуациях имена идентификаторов и классов можно называть одинаково?</h4>
					<article class="hvr-grow-shadow">
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q9a1" name="t1q9a" value="t1q9a1">
							<label for="t1q9a1">В любом случае.</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q9a2" name="t1q9a" value="t1q9a2">
							<label for="t1q9a2">Только, если они применяются к разным элементам.</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q9a3" name="t1q9a" value="t1q9a3">
							<label for="t1q9a3">Никогда, это недопустимо.</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q9a4" name="t1q9a" value="t1q9a4">
							<label for="t1q9a4">Только, если они применяются к одному элементу.</label>
						</div>
					</article>
				</li>

				<li name="t1q10">
					<!-- 10th question -->
					<h4>Какой размер в пунктах будет у текста &lt;p&gt;&lt;span&gt;Пример текста&lt;/span&gt;&lt;/p&gt;, если на странице задан следующий стиль?</h4>
					<p><pre>BODY { font-size: 24pt; }
P { font-size: 50%; }
SPAN { font-size: 1.5em; }</pre></p>
					<article class="hvr-grow-shadow">
						<div class="radio" name="t1q10">
							<input type="radio" class="radio_mod" id="t1q10a1" name="t1q10a" value="t1q10a1">
							<label for="t1q10a1">24pt</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q10a2" name="t1q10a" value="t1q10a2">
							<label for="t1q10a2">36pt</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q10a3" name="t1q10a" value="t1q10a3">
							<label for="t1q10a3">48pt</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q10a4" name="t1q10a" value="t1q10a4">
							<label for="t1q10a4">18pt</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q10a5" name="t1q10a" value="t1q10a5">
							<label for="t1q10a5">12pt</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q10a6" name="t1q10a" value="t1q10a6">
							<label for="t1q10a6">ни одного из выше перечисленых</label>
						</div>
						<div class="radio">
							<input type="radio" class="radio_mod" id="t1q7a7" name="t1q10a" value="t1q10a7">
							<label for="t1q7a7">ошибка, единицы измерения pt в CSS не существует</label>
						</div>
					</article>
				</li>

				<li name="t1q11">
					<!-- 11th question -->
					<h4>Опишите правила построения браузером абзаца на экране</h4>
					<article class="hvr-grow-shadow">
						<textarea class="comment" rows="5" id="comment" name="comment" placeholder="Браузер строит абзац следующим образом:"></textarea>
					</article>
				</li>
			</ol>

			<!-- User Details -->

			<div class="user-image">
				<div class="male">
					<input type="radio" name="gender" id="male" value="male" checked>
					<label for="male">м</label>
				</div>
				<div class="female">
					<input type="radio" name="gender" id="female" value="female">
					<label for="female">ж</label>
				</div>

			</div>

			<div class="user-data">
				<div class="form-group">
					<label for="inputName" class="inputName">Имя</label>
					<input type="text" class="form-control" id="inputName" name="inputName" value="" placeholder="Имя">
				</div>

				<div class="form-group">
					<label for="inputLastName" class="inputLastName">Фамилия</label>
					<input type="text" class="form-control" id="inputLastName" name="inputLastName" value=""
						   placeholder="Фамилия">
				</div>

				<div class="form-group">
					<label for="phone" class="inputPhone">Телефон</label>
					<input type="text" class="form-control" id="phone" name="phone" placeholder="Телефон">
				</div>

				<div class="form-group">
					<label for="inputEmail" class="inputEmail">Email</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="inputEmail" name="inputEmail" placeholder="Email">
					</div>
				</div>
			</div> <!--end of.user-data-->

			<div class="form-group">
				<div class="submit">
					<button type="submit" class="btn-submit" name="submit" onclick="checkFields();">Отправить</button>
				</div>
			</div>

			<div class="form-group reset">
				<div class="reset">
					<button type="reset" class="btn-reset" name="reset">Сбросить</button>
				</div>
			</div>
		</form>
	</div>

	<div id="wrapper-oldnew">
		<div class="oldnew">
			<div class="wrapper-oldnew-prev">
				<div id="oldnew-prev"></div>
			</div>
			<div class="wrapper-oldnew-next">
				<div id="oldnew-next"></div>
			</div>
		</div>
	</div>

	<div id="wrapper-thank">
		<div class="thank">
			<div><img src="img/about/brainfart-logo-grey.png" alt=""></div>
		</div>
	</div>

	<div id="main-container-footer">
		<div class="container-footer">

			<div id="row-1f">
				<div class="text-row-1f"><span style="font-weight:600;font-size:15px;color:#666;line-height:250%;text-transform:uppercase;letter-spacing:1.5px;">Lorem ipsum </span><br>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
			</div>

			<div id="row-2f">
				<div class="text-row-2f"><span style="font-weight:600;font-size:15px;color:#666;line-height:250%;text-transform:uppercase;letter-spacing:1.5px;">Dolor sit amet</span><br>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</div>
			</div>

			<div id="row-3f">
				<div class="text-row-3f"><span style="font-weight:600;font-size:15px;color:#666;line-height:250%;text-transform:uppercase;letter-spacing:1.5px;">Consectetur elit!</span><br>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</div>
			</div>

			<div id="row-4f">
				<div class="text-row-4f"><span style="font-weight:600;font-size:15px;color:#666;line-height:250%;text-transform:uppercase;letter-spacing:1.5px;">Sed do eiusmod tempor</span><br>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>

				<div id="main_tip_newsletter">
					<form>
						<input type="text" name="newsletter" id="tip_newsletter_input" list="newsletter" autocomplete=off required>
					</form>
				</div>
			</div>

		</div>
	</div>


	<div id="wrapper-copyright">
		<div class="copyright">
			<div class="copy-text object">Copyright © 2016 | <a style="color:#D0D1D4;" href="index.html">Brainfart</a></div>
		</div>
	</div>

</div>



<!-- SCRIPT -->

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.scrollTo.min.js"></script>
<script type="text/javascript" src="js/jquery.inputmask.js"></script>
<script type="text/javascript" src="js/jquery.localScroll.min.js"></script>
<script type="text/javascript" src="js/jquery-animate-css-rotate-scale.js"></script>
<script type="text/javascript" src="js/fastclick.min.js"></script>
<script type="text/javascript" src="js/jquery.animate-colors-min.js"></script>
<script type="text/javascript" src="js/jquery.animate-shadow-min.js"></script>

<script>

	$(document).ready(function() {
		$("#phone").inputmask("+38(099)999-999-99");
	});


	$(document).ready(function() {
		$.localScroll();
		$(".cache").delay(1000).fadeOut(500);
		$("#wrapper-header").delay(1500).animate({opacity:'1',width:'100%'},500);
		$("#wrapper-navbar").delay(2000).animate({opacity:'1',height:'60px'},500);
		$("#main-container-image").delay(2500).animate({opacity:'1'},500);

	});

	/*TRANSITION PAGE*/

	var speed = 'slow';

	$('html, body').hide();

	$(document).ready(function() {
		$('html, body').fadeIn(speed, function() {
			$('a[href], button[href]').click(function(event) {
				var url = $(this).attr('href');
				if (url.indexOf('#') == 0 || url.indexOf('javascript:') == 0) return;
				event.preventDefault();
				$('html, body').fadeOut(speed, function() {
					window.location = url;
				});
			});
		});
	});

	/* DISABLE HOVER EFFECT WHILE YOU SCROLL FOR A SMOOTHY NAVIGATION */

	var body = document.body,
			timer;

	window.addEventListener('scroll', function() {

		clearTimeout(timer);

		if(!body.classList.contains('disable-hover'))
			body.classList.add('disable-hover')

		timer = setTimeout(function(){
			body.classList.remove('disable-hover')
		}, 200);

	}, false);

	/* BOUTON MENU */

	$(document).on('touchstart mouseover', '#stripes', function(event){

		event.stopPropagation();
		event.preventDefault();
		if(event.handled !== true) {

			$("#stripes").stop().animate({scale:'1.2',opacity:'0.5'},300);

			event.handled = true;
		} else {
			return false;
		}
	});

	$(document).on('touchend mouseout', '#stripes', function(event){

		event.stopPropagation();
		event.preventDefault();
		if(event.handled !== true) {

			$("#stripes").stop().animate({scale:'1',opacity:'1'},300);

			event.handled = true;
		} else {
			return false;
		}
	});

	/* MENU SIDE OPEN */

	var MENUSIDEOPEN = document.getElementById('stripes');

	MENUSIDEOPEN.addEventListener('click', function() {
		$("#main-container-menu").stop().animate({left:'0'},300);
	});

	/* BOUTON CROSS */

	$(document).on('touchstart mouseover', '#cross-menu', function(event){

		event.stopPropagation();
		event.preventDefault();
		if(event.handled !== true) {

			$("#cross-menu").stop().animate({scale:'1.2',opacity:'0.5'},300);

			event.handled = true;
		} else {
			return false;
		}
	});

	$(document).on('touchend mouseout', '#cross-menu', function(event){

		event.stopPropagation();
		event.preventDefault();
		if(event.handled !== true) {

			$("#cross-menu").stop().animate({scale:'1',opacity:'1'},300);

			event.handled = true;
		} else {
			return false;
		}
	});

	/* MENU SIDE CLOSE */

	var MENUSIDECLOSE = document.getElementById('cross-menu');

	MENUSIDECLOSE.addEventListener('click', function() {
		$("#main-container-menu").stop().animate({'left':'-100%'},300);
	});

	/* BOUTON MENU ARROW-2 */

	$(document).on('touchstart mouseover', '#wrapper-title-2', function(event){

		event.stopPropagation();
		event.preventDefault();
		if(event.handled !== true) {

			$("#fleche-nav-2").stop().animate({rotate: '90deg',opacity:'1'},300);

			event.handled = true;
		} else {
			return false;
		}
	});

	$(document).on('touchend mouseout', '#wrapper-title-2', function(event){

		event.stopPropagation();
		event.preventDefault();
		if(event.handled !== true) {

			$("#fleche-nav-2").stop().animate({rotate: '0deg',opacity:'0.5'},300);

			event.handled = true;
		} else {
			return false;
		}
	});

	/* BOUTON MENU ARROW-3 */

	$(document).on('touchstart mouseover', '#wrapper-title-3', function(event){

		event.stopPropagation();
		event.preventDefault();
		if(event.handled !== true) {

			$("#fleche-nav-3").stop().animate({rotate: '90deg',opacity:'1'},300);

			event.handled = true;
		} else {
			return false;
		}
	});

	$(document).on('touchend mouseout', '#wrapper-title-3', function(event){

		event.stopPropagation();
		event.preventDefault();
		if(event.handled !== true) {

			$("#fleche-nav-3").stop().animate({rotate: '0deg',opacity:'0.5'},300);

			event.handled = true;
		} else {
			return false;
		}
	});

	/* BOUTON MENU */

	$(document).on('touchstart mouseover', '#stripes', function(event){

		event.stopPropagation();
		event.preventDefault();
		if(event.handled !== true) {

			$("#stripes").stop().animate({scale:'1.2',opacity:'0.5'},300);

			event.handled = true;
		} else {
			return false;
		}
	});

	$(document).on('touchend mouseout', '#stripes', function(event){

		event.stopPropagation();
		event.preventDefault();
		if(event.handled !== true) {

			$("#stripes").stop().animate({scale:'1',opacity:'1'},300);

			event.handled = true;
		} else {
			return false;
		}
	});

	/* BOUTON NEXT */

	$(document).on('touchstart mouseover', '#oldnew-next', function(event){

		event.stopPropagation();
		event.preventDefault();
		if(event.handled !== true) {

			$("#oldnew-next").stop().animate({scale:'1.2',opacity:'0.5'},300);

			event.handled = true;
		} else {
			return false;
		}
	});

	$(document).on('touchend mouseout', '#oldnew-next', function(event){

		event.stopPropagation();
		event.preventDefault();
		if(event.handled !== true) {

			$("#oldnew-next").stop().animate({scale:'1',opacity:'1'},300);

			event.handled = true;
		} else {
			return false;
		}
	});

	/* BOUTON PREV */

	$(document).on('touchstart mouseover', '#oldnew-prev', function(event){

		event.stopPropagation();
		event.preventDefault();
		if(event.handled !== true) {

			$("#oldnew-prev").stop().animate({scale:'1.2',opacity:'0.5'},300);

			event.handled = true;
		} else {
			return false;
		}
	});

	$(document).on('touchend mouseout', '#oldnew-prev', function(event){

		event.stopPropagation();
		event.preventDefault();
		if(event.handled !== true) {

			$("#oldnew-prev").stop().animate({scale:'1',opacity:'1'},300);

			event.handled = true;
		} else {
			return false;
		}
	});


	/*FORMULAIRE NEWSLETTER*/

	$("form").on("submit", function(event) {
		event.preventDefault();
		$.post("/burstfly/form-burstfly-modified.asp",$("form").serialize(), function(data) {//alert(data);
		});
	});

	/* PRELOADER */

	function preloader() {
		if (document.images) {
			var img1 = new Image();
			var img2 = new Image();
			var img3 = new Image();
			var img4 = new Image();
			var img5 = new Image();
			var img6 = new Image();
			var img7 = new Image();
			var img8 = new Image();
			var img9 = new Image();
			var img10 = new Image();
			var img11 = new Image();
			var img12 = new Image();
			var img13 = new Image();
			var img14 = new Image();
			var img15 = new Image();
			var img16 = new Image();
			var img17 = new Image();
			var img18 = new Image();
			var img19 = new Image();
			var img20 = new Image();

			img1.src = "img/psd-4.jpg";
			img2.src = "img/font-1.jpg";
			img3.src = "img/psd-1.jpg";
			img4.src = "img/psd-2.jpg";
			img5.src = "img/ai-1.jpg";
			img6.src = "img/theme-2.jpg";
			img7.src = "img/psd-3.jpg";
			img8.src = "img/font-2.jpg";
			img9.src = "img/font-3.jpg";
			img10.src = "img/ai-2.jpg";
			img11.src = "img/icons-1.jpg";
			img12.src = "img/ui-1.jpg";
			img13.src = "img/font-5.jpg";
			img14.src = "img/theme-2.jpg";
			img15.src = "img/psd-5.jpg";
			img16.src = "img/icons-3.jpg";
			img17.src = "img/font-4.jpg";
			img18.src = "img/theme-3.jpg";
			img19.src = "img/font-6.jpg";
			img20.src = "img/theme-4.jpg";
		}
	}
	function addLoadEvent(func) {
		var oldonload = window.onload;
		if (typeof window.onload != 'function') {
			window.onload = func;
		} else {
			window.onload = function() {
				if (oldonload) {
					oldonload();
				}
				func();
			}
		}
	}
	addLoadEvent(preloader);

</script>


</body>


</html>
    