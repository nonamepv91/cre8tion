@extends('layout.index')
@section('content')

<div id="content-wrap">
  <div class="container">
    <div id="hot-categories" class="row">
      <div class="col-sm-12 group-title-box">
        <h2 class="group-title "> <span>Cre8tion video</span> </h2>
      </div>
      @foreach($video as $vd)
      <div class="col-sm-6  col-lg-3">
          <div class="video">{!! $vd->video_link !!}</div>
       
      </div>
      @endforeach
      
    </div>
    <!-- /#hot-categories -->
  </div>
  <!-- /.container -->
</div>
@endsection 