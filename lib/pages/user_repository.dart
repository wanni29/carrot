class UserRepository {
  // 스프링 컨트롤러에 연결해야해!

  void login(String email, String password) {
    print("email : " + "$email");
    print("password : " + "$password");
  }
}
