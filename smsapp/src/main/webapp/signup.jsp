<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Form Name</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Student full name">Student Full Name</label>  
  <div class="col-md-5">
  <input id="Student full name" name="Student full name" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Student College Name">Student College Name</label>  
  <div class="col-md-6">
  <input id="Student College Name" name="Student College Name" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Student Age">Student Age</label>  
  <div class="col-md-4">
  <input id="Student Age" name="Student Age" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Fees Paid">Fees Paid</label>  
  <div class="col-md-4">
  <input id="Fees Paid" name="Fees Paid" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Batch Number">Batch Number</label>  
  <div class="col-md-4">
  <input id="Batch Number" name="Batch Number" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Button Drop Down -->
<div class="form-group">
  <label class="col-md-4 control-label" for="Student Course">Student Course</label>
  <div class="col-md-4">
    <div class="input-group">
      <input id="Student Course" name="Student Course" class="form-control" placeholder="" type="text">
      <div class="input-group-btn">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
          Action
          <span class="caret"></span>
        </button>
        <ul class="dropdown-menu pull-right">
          <li><a href="#">Java</a></li>
          <li><a href="#">python</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>

<!-- Appended Input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="appendedtext">Student Email</label>
  <div class="col-md-4">
    <div class="input-group">
      <input id="appendedtext" name="appendedtext" class="form-control" placeholder="" type="text">
      <span class="input-group-addon">.com</span>
    </div>
    
  </div>
</div>
<!-- Button Drop Down -->
<div class="form-group">
  <label class="col-md-4 control-label" for="batchmode">Batch mode</label>
  <div class="col-md-4">
    <div class="input-group">
      <input id="batchmode" name="batchmode" class="form-control" placeholder="" type="text">
      <div class="input-group-btn">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
          Action
          <span class="caret"></span>
        </button>
        <ul class="dropdown-menu pull-right">
          <li><a href="#">Offline</a></li>
          <li><a href="#">Online</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Student id">Student id</label>  
  <div class="col-md-4">
  <input id="Student id" name="Student id" type="text" placeholder="Id" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="password">Password</label>
  <div class="col-md-4">
    <input id="password" name="password" type="password" placeholder="" class="form-control input-md" required="">
    
  </div>
</div>

</fieldset>
</form>


</body>
</html>