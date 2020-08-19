<div id="home-slider">
  <div class="container">
    <div class="row">
      <div class="col-sm-12">
        <div class="homeslider">
          <div class="content-slide">
            <ul id="contenhomeslider">
              @foreach($slide as $sl)
              <li><img alt="Funky roots" src="uploads/slide/{{$sl->image_link}}" title="" /></li> 
              @endforeach  
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>