<div class="container">
  <div class="brand-showcase">
    <h2 class="brand-showcase-title"></h2>
    <div class="brand-showcase-box">
      <ul class="brand-showcase-logo owl-carousel"  data-autoplay="true" data-loop="true" data-nav = "true" data-dots="false" data-margin = "1" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-responsive='{"0":{"items":2},"600":{"items":5},"1000":{"items":8}}'>
        @foreach($brandlogo as $item)
        <li data-tab="showcase-1" class="item"><img src="upload/banner/{{$item->image_link}}" alt="logo" class="item-img" /></li>
        @endforeach
      </ul>
      
    </div>
  </div>
</div>