
//카테고리 상세메뉴 색상 선택
$(function(){
    $('#caBtn2').css('background','rgba(0, 129, 250, 0.33)');   
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
       values: [ 5000 , 250000],
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
           console.log("슬라이드 토글 확인");
       });
   });

   // 카테고리 선택 토글

   $(function(){ 
       $(".main_sub_caca li:has(a)").on("click",function(){
           $(this).toggleClass("high_light_4");
       });
   });

//하단 페이지 변경
   $(function(){
       $('#pglk_sh').hide();
       $('#mbtn_sh').on({
           'mouseenter':function(){
            $('#mbtn_sh').css('background','lightgray');
           },'mouseleave' : function(){
            $(this).removeAttr('style');  
        },'click' : function(){
            $('#mbtn_sh').slideUp();
            $('#pglk_sh').show(); 
        }

   });
   });