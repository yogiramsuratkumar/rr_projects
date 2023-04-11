<!DOCTYPE html>
<html>
<style>
body, html {
  height: 100%;
  margin: 0;
}

.bgimg {
  background-image: url('https://img.freepik.com/free-photo/happy-child-orange-sweater-plays-with-feather-floor_8353-182.jpg?w=900&t=st=1681241589~exp=1681242189~hmac=2c4522f09a58b927c0d9030abc7eb2c4dbc1bb594803dfea77231c8abcec90bf');
  height: 100%;
  background-position: center;
  background-size: cover;
  position: relative;
  color: white;
  font-family: "Courier New", Courier, monospace;
  font-size: 25px;
}

.topleft {
  position: absolute;
  top: 0;
  left: 16px;
}

.bottomleft {
  position: absolute;
  bottom: 0;
  left: 16px;
}

.middle {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

hr {
  margin: auto;
  width: 40%;
}
</style>
<body>

<div class="bgimg">
  <div class="topleft">
    <p>Logo</p>
  </div>
  <div class="middle">
    <h1>COMING SOON</h1>
    <hr>
    <p>35 days left</p>
  </div>
  <div class="bottomleft">
    <p>Some text</p>
  </div>
</div>

</body>
</html>
