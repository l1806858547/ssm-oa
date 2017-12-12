<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>jQuery鼠标移动发出气泡动画 </title>

<link rel="stylesheet" type="text/css" href="loginhtml/css/demo.css">
<link rel="stylesheet" type="text/css" href="loginhtml/css/style3.css">
<link rel="stylesheet" type="text/css" href="loginhtml/css/ui.css">
<link rel="stylesheet" type="text/css" href="loginhtml/css/style6.css">
<link rel="stylesheet" type="text/css" href="loginhtml/css/stylelogin.css">
<link rel="stylesheet" type="text/css" href="loginhtml/css/styleload.css" >
<link href="loginhtml/css/jquery.jgrowl.min.css" rel="stylesheet" type="text/css">

<style type="text/css">
div.jGrowl div.manilla {
	background-color: #FFF1C2;
	color: navy;
}

div.jGrowl div.smoke {
	background: url('loginhtml/images/smoke.png') no-repeat;
	-moz-border-radius: 0px;
	-webkit-border-radius: 0px;
	width: 298px;
	height: 73px;
	overflow: hidden;
}

div.jGrowl div.flora {
	background: #E6F7D4 url(flora-notification.png) no-repeat;
	-moz-border-radius: 0px;
	-webkit-border-radius: 0px;
	opacity: 1;
	filter: alpha(opacity =       100);
	width: 270px;
	height: 90px;
	padding: 0px;
	overflow: hidden;
	border-color: #5ab500;
}

div.jGrowl div.flora div.message {
	padding: 5px;
	color: #000;
}

div.jGrowl div.flora div.header {
	background: url(flora-header.png) no-repeat;
	padding: 5px;
}

div.jGrowl div.flora div.close {
	background: url(flora-close.png) no-repeat;
	padding: 5px;
	color: transparent;
	padding: 0px;
	margin: 5px;
	width: 17px;
}

div.jGrowl div.iphone {
	font-family: "Helvetica Neue", "Helvetica";
	font-size: 12px;
	background: url(iphone.png) no-repeat;
	-moz-border-radius: 0px;
	-webkit-border-radius: 0px;
	opacity: .90;
	filter: alpha(opacity =       90);
	width: 235px;
	height: 137px;
	overflow: hidden;
	border-color: #5ab500;
	color: #fff;
}

div.jGrowl div.iphone .jGrowl-close {
	padding-right: 20px;
}

div.jGrowl div.iphone div.message {
	padding-top: 0px;
	padding-bottom: 7px;
	padding-left: 15px;
	padding-right: 15px;
}

div.jGrowl div.iphone div.header {
	padding: 7px;
	padding-left: 15px;
	padding-right: 15px;
	font-size: 17px;
}

div.jGrowl div.iphone div.close {
	display: none;
}

div#random {
	width: 1000px;
	background-color: red;
	line-height: 60px;
}
</style>

<script type="text/javascript" src="loginhtml/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="loginhtml/js/form.js"></script>
<script src="loginhtml/js/jquery.jgrowl.js" type="text/javascript"></script>
<script type="text/javascript" src="loginhtml/js/modernizr.custom.79639.js"></script>
	<script type="text/javascript" src="loginhtml/js/jquery.swatchbook.js"></script>
	<script type="text/javascript" src="loginhtml/js/sketch.min.js"></script>
	<script type="text/javascript" src="loginhtml/js/ui.js"></script>
	<script type="text/javascript" src="loginhtml/js/jquery.dropdown.js"></script>
	<script src="loginhtml/js/modernizr.custom.63321.js"></script>
	<script type="text/javascript" src="loginhtml/js/jquery.placeholder.min.js"></script>
	<script type="text/javascript" src="loginhtml/js/PisualFumikaLogin.js"></script>

<!--[if lte IE 8]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
</head>
<body id="body">
<script type="text/javascript">
		(function($){

			$(document).ready(function(){

				$('#test2').jGrowl("Trying a background image.", { 
					theme: 'smoke',
					closer: false,
					life: 999999 
				});
				
			});
		})(jQuery);

		</script>
<div id="test2" class="bottom-left"></div>

<div id="Loading" class="demo-3 demo-dark" style="z-index:10002;position:fixed;margin-left:47%;margin-top:9%;display:none;">
		<div class="container">
					
			<section class="main">
				<!-- the component -->
				<ul class="bokeh">
					<li></li>
					<li></li>
					<li></li>
					<li></li>
				</ul>
			</section>
		</div>
		</div>


	<script>
		function CloseMouseEffects() {
			demo.mousemove = function() {
			};
		}

		function OpenMouseEffects() {

			demo.mousemove = function() {

				var particle, theta, force, touch, max, i, j, n;

				for (i = 0, n = demo.touches.length; i < n; i++) {

					touch = demo.touches[i], max = random(1, 4);
					for (j = 0; j < max; j++) {
						demo.spawn(touch.x, touch.y);
					}

				}
			};

		}
		
		function ChangeBackgroundWhite()
		{ 

		document.getElementById("body").style.background="#ddd url(loginhtml/images/bg.jpg) repeat top left";
		}
		
		function ChangeBackgroundBlack()
		{ 

		document.getElementById("body").style.background="#ddd url(loginhtml/images/egg_shell.png) repeat top left";
		}


		var menu = ui.menu().add('Close Mouse Effects', CloseMouseEffects).add(
				'Open Mouse Effects', OpenMouseEffects).add("ChangeBackgroundWhite",ChangeBackgroundWhite).add("ChangeBackgroundBlack",ChangeBackgroundBlack);

		menu.on('Add item', function() {
			console.log('added an item');
		});

		oncontextmenu = function(e) {
			e.preventDefault();
			menu.moveTo(e.pageX, e.pageY).show();
		};
	</script>



	<script>
		$.jGrowl("Welcome to Fumika System !!!");

		$
				.jGrowl(
						"Connect Servers Stahd By ..<br>Conect Spring security System.... <br>Get ROLE_ANONYMOUS Role  ",
						{
							theme : 'manilla',
							speed : 'slow',
							animateOpen : {
								height : "show"
							},
							animateClose : {
								height : "hide"
							}
						});
	</script>

	<div id="test" style=" position:fixed;top:0px;z-index:20;"></div>

	<div id="BlackGroung"
		style="background: rgba(0,0,0,0.8);z-index:9999;width:100%;height:100%;position:fixed;display:none"
		onclick="$('#BlackGroung').fadeOut(400);$('#LoginForm').fadeOut(300);stangbylogin();">
		<img src="images/pisuallogo.png" style="margin-left:39%;margin-top:8%">

		<script>
			function stangbylogin() {

				$.jGrowl("Stand By Login..", {
					theme : 'manilla',
					speed : 'slow',
					animateOpen : {
						height : "show"
					},
					animateClose : {
						height : "hide"
					}
				});

			}
		</script>


	</div>

	<div class="container">

		<header>
			<img src="loginhtml/images/fumikaLogo.png" style="top:100px;">

			<div class="support-note">
				<!-- let's check browser support with modernizr -->
				<!--span class="no-cssanimations">CSS animations are not supported in your browser</span-->
				<span class="no-csstransforms">CSS transforms are not
					supported in your browser</span>
				<!--span class="no-csstransforms3d">CSS 3D transforms are not supported in your browser</span-->
				<span class="no-csstransitions">CSS transitions are not
					supported in your browser</span> <span class="note-ie">Sorry, only
					modern browsers.</span>
			</div>

		</header>



		<div id="sb-container" class="sb-container">

			<div>
				<span class="sb-icon icon-cog"></span>
				<h2><span style="color:#99ffff ;">美女壮壮</span></h2>
				<h4>
					
					<span>姜桃叶</span>
				</h4>
			</div>
			<div>
				<span class="sb-icon icon-flight"></span>
				<h2><span style="color:#99ffff ;">汉子丫蛋</span></h2>
				<h4>
					
					<span>赵雅楠</span>
				</h4>
			</div>
			<div>
				<span class="sb-icon icon-eye"></span>
				<h2><span style="color:#99ffff ;">中华曲库</span></h2>
				<h4>
					
					<span>张作争</span>
				</h4>
			</div>
			<div>
				<span class="sb-icon icon-install"></span>
				<h2><span style="color:#99ffff ;">技术小白</span></h2>
				<h4>
					
					<span>郭明</span>
				</h4>
			</div>
			<div>
				<span class="sb-icon icon-bag"></span>
				<h2><span style="color:#99ffff ;">牛屁经理</span></h2>
				<h4>
					
					<span>刘少璞</span>
				</h4>
			</div>
			<div>
				<span class="sb-icon icon-globe"></span>
				<h2><span style="color:#99ffff ;">老板秘书</span></h2>
				<h4>
					
					<span>刘三立</span>
				</h4>
			</div>
			<div>
				<span class="sb-icon icon-picture"></span>
				<h2><span style="color:#99ffff ;">1706B</span></h2>
				<h4>
					
					<span>四组</span>
				</h4>
			</div>
			<div>
				<span class="sb-icon icon-video"></span>
				<h2><span style="color:#99ffff ;">内测项目</span></h2>
				<h4>
					
					<span>办公BOM系统</span>
				</h4>
			</div>
			<div>
				<span class="sb-icon icon-download"></span>
				<h2><span style="color:#99ffff ;">老板</span></h2>
				<h4>
					
					<span>朱大大</span>
				</h4>
			</div>
			<div>
				<span class="sb-icon icon-mobile"></span>
				<h2><span style="color:#99ffff ;">广告</span></h2>
				<h4>
					<span>北京金科</span>
				</h4>
			</div>
			<div onClick="login();">
				<span class="sb-icon icon-camera"></span>
				<h4>
					<span>登录</span>
				</h4>
			</div>
			<div>
				<h4>
					<span>欢迎</span>
				</h4>
				<span class="sb-toggle">Click to open</span>

			</div>


		</div>
		<!-- sb-container -->

	</div>
	<script>
		function login() {

			$("#Login").fadeTo(200, 1);
			ui.dialog('Overlay time').closable().overlay().showno();
			document.getElementById("Login").style.visibility = "visible";

		}
	</script>

	<div id="Login"
		style="position:fixed;z-index:999;text-align:center;visibility:hidden;top:20%;left:35%;">
		<div>
			<select id="cd-dropdown" class="cd-select">
				<option value="-1" selected>Select You Login Method</option>
				<option value="1" class="icon-camera">Safe Login Model!</option>
				<option value="2" class="icon-diamond">Normel Login Model!</option>
				<option value="3" class="icon-rocket">Remote Login Model!</option>
				<option value="4" class="icon-star">Login Out!</option>
				<option value="5" class="icon-clock">Forget Password</option>
			</select>
		</div>
	</div>

	<div id="LoginForm"
		style="position:fixed;z-index:10000;top:30%;left:37%;display:none;">
		<form class="form-5 clearfix" id="Safelogin">
			<p>
				<input type="text" id="username" name="username" placeholder="用户名">
				<input type="password" name="userpass" id="userpass"
					placeholder="密码">
<!-- 					 <input type="password" name="SafeNum" id="password" placeholder="验证码"> -->
			</p>
			<button type="button" id="but" name="submit" style="height:153px" >
				<i class="icon-arrow-right"></i> <span>进入</span>
			</button>
			</form>
	</div>


	

	<script type="text/javascript">
		$(function() {

			$('#cd-dropdown').dropdown({
				gutter : 5,
				stack : false,
				delay : 100,
				slidingIn : 100
			});

		});
	</script>

	<script type="text/javascript">
		$(function() {

			$('#sb-container').swatchbook({
				// number of degrees that is between each item
				angleInc : 15,
				neighbor : 15,
				// if it should be closed by default
				initclosed : true,
				// index of the element that when clicked, triggers the open/close function
				// by default there is no such element
				closeIdx : 11
			});

		});
	</script>

	<script>
		// ----------------------------------------
		// Particle
		// ----------------------------------------

		function Particle(x, y, radius) {
			this.init(x, y, radius);
		}

		Particle.prototype = {

			init : function(x, y, radius) {

				this.alive = true;

				this.radius = radius || 10;
				this.wander = 0.15;
				this.theta = random(TWO_PI);
				this.drag = 0.92;
				this.color = '#fff';

				this.x = x || 0.0;
				this.y = y || 0.0;

				this.vx = 0.0;
				this.vy = 0.0;
			},

			move : function() {

				this.x += this.vx;
				this.y += this.vy;

				this.vx *= this.drag;
				this.vy *= this.drag;

				this.theta += random(-0.5, 0.5) * this.wander;
				this.vx += sin(this.theta) * 0.1;
				this.vy += cos(this.theta) * 0.1;

				this.radius *= 0.96;
				this.alive = this.radius > 0.5;
			},

			draw : function(ctx) {

				ctx.beginPath();
				ctx.arc(this.x, this.y, this.radius, 0, TWO_PI);
				ctx.fillStyle = this.color;
				ctx.fill();
			}
		};

		// ----------------------------------------
		// Example
		// ----------------------------------------

		var MAX_PARTICLES = 280;
		var COLOURS = [ '#69D2E7', '#A7DBD8', '#E0E4CC', '#F38630', '#FA6900',
				'#FF4E50', '#F9D423' ];

		var particles = [];
		var pool = [];

		var demo = Sketch.create({
			container : document.getElementById('test')
		});

		demo.setup = function() {

			// Set off some initial particles.
			var i, x, y;

			//  for ( i = 0; i < 20; i++ ) {
			x = (demo.width * 0.5) + random(-100, 100);
			y = (demo.height * 0.5) + random(-100, 100);
			demo.spawn(0, 999);
			// }
		};

		demo.spawn = function(x, y) {

			if (particles.length >= MAX_PARTICLES)
				pool.push(particles.shift());

			particle = pool.length ? pool.pop() : new Particle();
			particle.init(x, y, random(5, 40));

			particle.wander = random(0.5, 2.0);
			particle.color = random(COLOURS);
			particle.drag = random(0.9, 0.99);

			theta = random(TWO_PI);
			force = random(2, 8);

			particle.vx = sin(theta) * force;
			particle.vy = cos(theta) * force;

			particles.push(particle);
		};

		demo.update = function() {

			var i, particle;

			for (i = particles.length - 1; i >= 0; i--) {

				particle = particles[i];

				if (particle.alive)
					particle.move();
				else
					pool.push(particles.splice(i, 1)[0]);
			}
		};

		demo.draw = function() {

			demo.globalCompositeOperation = 'lighter';

			for ( var i = particles.length - 1; i >= 0; i--) {
				particles[i].draw(demo);
			}
		};

		demo.mousemove = function() {

			var particle, theta, force, touch, max, i, j, n;

			for (i = 0, n = demo.touches.length; i < n; i++) {

				touch = demo.touches[i], max = random(1, 4);
				for (j = 0; j < max; j++) {
					demo.spawn(touch.x, touch.y);
				}

			}
		};
		
		
		
		
		$(function(){
			
			$("#but").click(function(){
				$.ajax({
					url:"<%=request.getContextPath()%>/login/loginquery.do",
					type:"post",
					data:$("#Safelogin").serialize(),
					success:function(res){
						 console.info(res)
					   if(res==123){
						   alert("错误")
						   location.href=location;
						}
					    else {
					    	alert("成功")
							location.href="EasyuiList.jsp";
							
						}
					},
					error:function(){
						alert("错误")
					}
				})
			})
			
		})
		
		
	</script>

</body>
</html>