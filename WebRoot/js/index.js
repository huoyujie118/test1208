
$(function () {

	$( '#main' ).height( $( window ).height() - $( '#top' ).height() - 45);

	var paper = $( '.paper' );
	var FW = $( window ).width();
	var FH = $( '#main' ).height();
	for (var i = 0; i < paper.length; i++) {
		var obj = paper.eq(i);
		obj.css( {
			left : parseInt(Math.random() * (FW - obj.width())) + 'px',
			top : parseInt(Math.random() * (FH - obj.height())) + 'px'
		} );
		drag(obj, $( 'dt', obj ));
	}

	paper.click( function () {
		$( this ).css( 'z-index', 1 ).siblings().css( 'z-index', 0 );
	} );

	$( '.close' ).click( function () {
		$( this ).parents( 'dl' ).fadeOut('slow');
		return false;
	} );

	$( '#send' ).click( function () {
		$( '<div id="windowBG"></div>' ).css( {
			width : $(document).width(),
 			height : $(document).height(),
 			position : 'absolute',
 			top : 0,
 			left : 0,
 			zIndex : 998,
 			opacity : 0.3,
 			filter : 'Alpha(Opacity = 30)',
 			backgroundColor : '#000000'
		} ).appendTo( 'body' );

		var obj = $( '#send-form' );
		obj.css( {
			left : ( $( window ).width() - obj.width() ) / 2,
			top : $( document ).scrollTop() + ( $( window ).height() - obj.height() ) / 2
		} ).fadeIn();
	} );

	$( '#close' ).click( function () {
		$( '#send-form' ).fadeOut( 'slow', function () {
			$( '#windowBG' ).remove();
		} );
		return false;
	} );
	

	$( 'textarea[name=content]' ).keyup( function () {
		var content = $(this).val();
		var lengths = check(content);  //璋冪敤check鍑芥暟鍙栧緱褰撳墠瀛楁暟

		//鏈�ぇ鍏佽杈撳叆50涓瓧
		if (lengths[0] >= 50) {
			$(this).val(content.substring(0, Math.ceil(lengths[1])));
		}

		var num = 50 - Math.ceil(lengths[0]);
		var msg = num < 0 ? 0 : num;
		//褰撳墠瀛楁暟鍚屾鍒版樉绀烘彁绀�		$( '#font-num' ).html( msg );
	} );

	$( '#phiz img' ).click( function () {
		var phiz = '[' + $( this ).attr('alt') + ']';
		var obj = $( 'textarea[name=content]' );
		obj.val(obj.val() + phiz);
	} );

});

/**
* 鍏冪礌鎷栨嫿
* @param  obj		鎷栨嫿鐨勫璞�* @param  element 	瑙﹀彂鎷栨嫿鐨勫璞�*/
function drag (obj, element) {
	var DX, DY, moving;

	element.mousedown(function (event) {
		obj.css( {
			zIndex : 1,
			opacity : 0.5,
 			filter : 'Alpha(Opacity = 50)'
		} );

		DX = event.pageX - parseInt(obj.css('left'));	//榧犳爣璺濈浜嬩欢婧愬搴�		DY = event.pageY - parseInt(obj.css('top'));	//榧犳爣璺濈浜嬩欢婧愰珮搴�
		moving = true;	//璁板綍鎷栨嫿鐘舵�
	});

	$(document).mousemove(function (event) {
		if (!moving) return;

		var OX = event.pageX, OY = event.pageY;	//绉诲姩鏃堕紶鏍囧綋鍓�X銆乊 浣嶇疆
		var	OW = obj.outerWidth(), OH = obj.outerHeight();	//鎷栨嫿瀵硅薄瀹姐�楂�		var DW = $(window).width(), DH = $(window).height();  //椤甸潰瀹姐�楂�
		var left, top;	//璁＄畻瀹氫綅瀹姐�楂�
		left = OX - DX < 0 ? 0 : OX - DX > DW - OW ? DW - OW : OX - DX;
		top = OY - DY < 0 ? 0 : OY - DY > DH - OH ? DH - OH : OY - DY;

		obj.css({
			'left' : left + 'px',
			'top' : top + 'px'
		});

	}).mouseup(function () {
		moving = false;	//榧犳爣鎶捣娑堝彇鎷栨嫿鐘舵�

		obj.css( {
			opacity : 1,
 			filter : 'Alpha(Opacity = 100)'
		} );

	});
}

/**
 * 缁熻瀛楁暟
 * @param  瀛楃涓� * @return 鏁扮粍[褰撳墠瀛楁暟, 鏈�ぇ瀛楁暟]
 */
function check (str) {
	var num = [0, 50];
	for (var i=0; i<str.length; i++) {
		//瀛楃涓蹭笉鏄腑鏂囨椂
		if (str.charCodeAt(i) >= 0 && str.charCodeAt(i) <= 255){
			num[0] = num[0] + 0.5;//褰撳墠瀛楁暟澧炲姞0.5涓�			num[1] = num[1] + 0.5;//鏈�ぇ杈撳叆瀛楁暟澧炲姞0.5涓�		} else {//瀛楃涓叉槸涓枃鏃�			num[0]++;//褰撳墠瀛楁暟澧炲姞1涓�		}
	}
	return num;
}}