<%--
  Created by IntelliJ IDEA.
  User: quang
  Date: 01-Mar-25
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Trang Chủ Du Lịch</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container">
    <a class="navbar-brand" href="#">TravelExplore</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link" href="#">Trang Chủ</a></li>
        <li class="nav-item"><a class="nav-link" href="#">Điểm Đến</a></li>
        <li class="nav-item"><a class="nav-link" href="#">Dịch Vụ</a></li>
        <li class="nav-item"><a class="nav-link" href="#">Liên Hệ</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container mt-5">
  <h1 class="text-center text-primary">Khám Phá Thế Giới Cùng Chúng Tôi</h1>
  <p class="text-center">Hãy lựa chọn những điểm đến tuyệt vời nhất cho kỳ nghỉ của bạn.</p>

  <div class="row">
    <div class="col-md-4">
      <div class="card">
        <img src="images/destination1.jpg" class="card-img-top" alt="Điểm đến 1">
        <div class="card-body">
          <h5 class="card-title">Đà Nẵng</h5>
          <p class="card-text">Thành phố đáng sống với bãi biển đẹp và nhiều điểm tham quan hấp dẫn.</p>
          <a href="#" class="btn btn-primary">Chi tiết</a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <img src="images/destination2.jpg" class="card-img-top" alt="Điểm đến 2">
        <div class="card-body">
          <h5 class="card-title">Hà Nội</h5>
          <p class="card-text">Thủ đô ngàn năm văn hiến với nét đẹp cổ kính và ẩm thực phong phú.</p>
          <a href="#" class="btn btn-primary">Chi tiết</a>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <img src="images/destination3.jpg" class="card-img-top" alt="Điểm đến 3">
        <div class="card-body">
          <h5 class="card-title">Phú Quốc</h5>
          <p class="card-text">Thiên đường biển đảo với bãi cát trắng và làn nước trong xanh.</p>
          <a href="#" class="btn btn-primary">Chi tiết</a>
        </div>
      </div>
    </div>
  </div>
</div>

<footer class="bg-primary text-white text-center p-3 mt-5">
  &copy; 2025 TravelExplore. Mọi quyền được bảo lưu.
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>