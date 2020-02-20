
//카테고리 상세메뉴 색상 선택
$(function(){
    $('.cate').on({
        'mouseenter':function(){
            $(this).css('background','rgba(0, 129, 250, 0.33)');
        },'mouseleave' : function(){
            $(this).css('background','rgba(0, 129, 250, 0.137)');   
        },'click' :function(){
            $('.cate').removeAttr('style');
            $(this).off('mouseenter').off('mouseleave').css({
                'background':'rgba(0, 129, 250, 0.33)',
                })
                }
    });
   });

// 카테고리 상세메뉴
   function shmenuView1(val){
    $('cate_sub').show();
    var va = val;
    str = '#sub'+val;
    menu = "#menu"+val;

    $('.cates').hide();
    $(str).show();
    };


   // 슬라이드 바
   $( function() {
   $( "#slider-range" ).slider({
       range: true,
       min: 1000,
       max: 300000,
       values: [ 1000 , 300000],
       slide: function( event, ui ) {
       $( "#amount" ).val( ui.values[ 0 ] + "원 - " + ui.values[ 1 ]+"원" );
       }
   });
   $( "#amount" ).val($( "#slider-range" ).slider( "values", 0 ) +
       "원 - " + $( "#slider-range" ).slider( "values", 1 )+"원" );
   } );

	
   
   //메인 클래스 마우스 온
   $(function(){
    $('.cate_tt_sh').on({
        'mouseenter':function(){
            $(this).css('font-weight','600');
        },'mouseleave' : function(){
            $(this).removeAttr('style');  
        }
    });
    });


   // 슬라이드 업
   $(function(){
       //초기 상태 설정
       $('.category_form').hide();
       $('#cate6check').on("click",function(){
           $('.category_form').slideToggle(100);
       });
   });

   // 카테고리 선택 토글

   $(function(){ 
       $(".main_sub_caca0 li:has(a)").on("click",function(){
           $(this).toggleClass("high_light_4");
       });
   });
   
   $(function(){ 
       $(".main_sub_caca1 li:has(a)").on("click",function(){
           $(this).toggleClass("high_light_5");
       });
   });
   
   $(function(){ 
       $(".main_sub_caca2 li:has(a)").on("click",function(){
           $(this).toggleClass("high_light_6");
       });
   });



   
   
