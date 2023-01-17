

main() async {
  var task0 = Future.delayed(Duration(seconds: 1), () {
    throw AssertionError('Error');
    return 'hi world';
  }).then((value) {
    print(value);
  }, onError: (e) {
    print('here');
    print(e);
  }).catchError((e) {
    print('here1');
    print(e);
  }).whenComplete(() {
    print('finish all');
  });

  var task1 = Future.wait([
    Future.delayed(Duration(seconds: 2), (){
      return 'hello';
    }),
    Future.delayed(Duration(seconds: 3), (){
      return ' world';
    }),
  ]).then((results) {
    print(results[0] + results[1]);
  }).catchError((e) {
    print(e);
  });

  Future<String> login(String userName, String pwd) {
    print('login');
    return Future.value('login');
  }

  Future<String> getUserInfo(String userId) {
    print('get user info');
    return Future.value('get user info');
  }

  Future saveUserInfo(String userInfo) {
    print('userInfo');
    return Future.value('save user info');
  }
  print('here2');
  var task2 = login('user', 'password').then((value) {
    return getUserInfo(value);
  }).then((userInfo) {
    return saveUserInfo(userInfo);
  }).then((value) {
    print(value);
  });

  task() async {
    String id = await login('user1', 'password1');
    String userInfo = await getUserInfo(id);
    var savedUserInfo = await saveUserInfo(userInfo);
    print(savedUserInfo);
  }
  print('begin task0\n');
  await task0;
  print('begin task1\n');
  await task1;
  print('begin task2\n');
  await task2;
  print('begin task\n');
  await task();

  Stream.fromFutures([
    Future.delayed(const Duration(seconds: 1), () {
      return 'hello1';
    }),
    Future.delayed(const Duration(seconds: 2), () {
      throw AssertionError('Error');
    }),
    Future.delayed(const Duration(seconds: 3), () {
      return 'hello3';
    }),
  ]).listen((data) {
    print(data);
  }, onError: (e) {
    print(e.message);
  });
}