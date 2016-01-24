/* Fucus*/
$(function() {
	var sWidth = $("#Focus").width(); //��ȡ����ͼ�Ŀ�ȣ���ʾ���
	var len = $("#Focus ul li").length; //��ȡ����ͼ����
	var index = 0;
	var picTimer;
	
	//���´���������ְ�ť�Ͱ�ť��İ�͸������������һҳ����һҳ������ť
	var btn = "<div class='btnBg'></div><div class='btn'>";
	for(var i=0; i < len; i++) {
		btn += "<span></span>";
	}
	btn += "</div><div class='preNext pre'></div><div class='preNext next'></div>";
	$("#Focus").append(btn);
	$("#Focus .btnBg").css("opacity",0.5);

	//ΪС��ť�����껬���¼�������ʾ��Ӧ������
	$("#Focus .btn span").css("opacity",0.5).mouseenter(function() {
		index = $("#Focus .btn span").index(this);
		showPics(index);
	}).eq(0).trigger("mouseenter");

	//��һҳ����һҳ��ť͸���ȴ���
	$("#Focus .preNext").css("opacity",0.1).hover(function() {
		$(this).stop(true,false).animate({"opacity":"0.3"},300);
	},function() {
		$(this).stop(true,false).animate({"opacity":"0.1"},300);
	});

	//��һҳ��ť
	$("#Focus .pre").click(function() {
		index -= 1;
		if(index == -1) {index = len - 1;}
		showPics(index);
	});

	//��һҳ��ť
	$("#Focus .next").click(function() {
		index += 1;
		if(index == len) {index = 0;}
		showPics(index);
	});

	//����Ϊ���ҹ�����������liԪ�ض�����ͬһ�����󸡶�������������Ҫ�������ΧulԪ�صĿ��
	$("#Focus ul").css("width",sWidth * (len));
	
	//��껬�Ͻ���ͼʱֹͣ�Զ����ţ�����ʱ��ʼ�Զ�����
	$("#Focus").hover(function() {
		clearInterval(picTimer);
	},function() {
		picTimer = setInterval(function() {
			showPics(index);
			index++;
			if(index == len) {index = 0;}
		},3000); //��4000����Զ����ŵļ������λ������
	}).trigger("mouseleave");
	
	//��ʾͼƬ�����ݽ��յ�indexֵ��ʾ��Ӧ������
	function showPics(index) { //��ͨ�л�
		//var nowLeft = -index*sWidth; //���indexֵ����ulԪ�ص�leftֵ
		$("#Focus ul").children().eq(index).stop(true,false).fadeIn()
		              .siblings().fadeOut();
		$("#Focus .btn span").removeClass("on").eq(index).addClass("on"); //Ϊ��ǰ�İ�ť�л���ѡ�е�Ч��
		//$("#Focus .btn span").stop(true,false).animate({"opacity":"0.5"},300).eq(index).stop(true,false).animate({"opacity":"1"},300); //Ϊ��ǰ�İ�ť�л���ѡ�е�Ч��
	}
});



