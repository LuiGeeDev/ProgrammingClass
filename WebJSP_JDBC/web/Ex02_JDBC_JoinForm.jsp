<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
  <jsp:include page="common/Head.jsp" />
  <title>Join Form</title>
  <script type="text/javascript">
    //jquery 로 간단하게 유효성 check 하기
    $(function() {
      $("#joinForm").submit(function() {
        //alert("가입");
        if ($("#id").val() === "") {
          // 아이디 검사
          alert("ID를 입력해 주세요.");
          $("#id").focus();
          return false;
        } else if ($("#password").val() === "") {
          // 비밀번호 검사
          alert("PWD를 입력해 주세요.");
          $("#password").focus();
          return false;
        } else if ($("#name").val() === "") {
          // 이름 검사
          alert("이름을 입력해 주세요.");
          $("#name").focus();
          return false;
        } else if ($("#age").val() === "") {
          // 나이 검사
          alert("나이를 입력해 주세요.");
          $("#age").focus();
          return false;
        } else if ($("#email").val() === "") {
          // 우편번호
          alert("email를 입력해 주세요.");
          $("#email").focus();
          return false;
        }
      });
    });
  </script>
</head>
<body>
<div class="d-flex" id="wrapper">
  <div class="bg-light border-right" id="sidebar-wrapper">
    <jsp:include page="common/Left.jsp" />
  </div>
  <div id="page-content-wrapper">
    <jsp:include page="common/Top.jsp" />

    <div class="container">
      <form
              action="Ex02_JDBC_JoinOK.jsp"
              method="post"
              name="joinForm"
              id="joinForm"
              class="form-horizontal"
              role="form"
      >
        <div>
            <h2>회원가입</h2>
            <div class="form-group">
              <label for="id" class="col-sm-3 control-label">ID</label>
              <div class="col-sm-9">
                <input
                        type="text" name="id" id="id"
                        placeholder="아이디"
                        class="form-control"
                        autofocus
                />
              </div>
            </div>
            <div class="form-group">
              <label for="pwd" class="col-sm-3 control-label"
              >Password</label
              >
              <div class="col-sm-9">
                <input
                        type="password" name="pwd" id="pwd"
                        placeholder="비밀번호"
                        class="form-control"
                />
              </div>
            </div>
            <div class="form-group">
              <label for="mname" class="col-sm-3 control-label">Name</label>
              <div class="col-sm-9">
                <input
                        type="text" name="mname" id="mname"
                        placeholder="이름"
                        class="form-control"
                />
              </div>
            </div>
            <div class="form-group">
              <label for="age" class="col-sm-3 control-label">Age</label>
              <div class="col-sm-9">
                <input
                        type="text" name="age" id="age" maxlength="3"
                        placeholder="나이"
                        class="form-control"
                />
              </div>
            </div>
            <div class="form-group">
              <label class="control-label col-sm-3">Gender</label>
              <div class="col-sm-6">
                <div class="row">
                  <div class="col-sm-4">
                    <label class="radio-inline">
                      <input
                              type="radio"
                              id="femaleRadio"
                              name="gender"
                              value="F"
                      />&nbsp;여성
                    </label>
                  </div>
                  <div class="col-sm-4">
                    <label class="radio-inline">
                      <input
                              type="radio"
                              id="maleRadio"
                              name="gender"
                              value="M"
                      />&nbsp;남성
                    </label>
                  </div>
                </div>
              </div>
            </div>
            <div class="form-group">
              <label for="email" class="col-sm-3 control-label"
              >Email*
              </label>
              <div class="col-sm-9">
                <input
                        type="text" name="email" id="email"
                        placeholder="Email"
                        class="form-control"
                />
              </div>
            </div>
            <!-- /.form-group -->
            <button
                    type="submit"
                    class="btn btn-primary btn-block col-sm-9"
            >
              Register
            </button>
        </div>
      </form>
    </div>
  </div>
</div>

<jsp:include page="common/Bottom.jsp" />

