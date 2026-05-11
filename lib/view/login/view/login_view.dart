import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leave_request_app/helper/text_validator.dart';
import 'package:leave_request_app/view/login/controller/login_controller.dart';

class LoginView extends HookConsumerWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final emailCtrl = useTextEditingController();
    final passwordCtrl = useTextEditingController();
    final obscureText = useState<bool>(true);

    ref.listen(loginControllerProvider, (previoues, next) {
      context.pushReplacement('/');
    });

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Form(
            key: formKey,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Container(
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          height: 300,
                          width: 300,
                          child: Image.asset('assets/login-rafiki.png'),
                        ),
                        SizedBox(height: 36),
                        TextFormField(
                          controller: emailCtrl,
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            labelText: 'Email',
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                            floatingLabelStyle: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(125, 0, 0, 0),
                              fontSize: 14,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Email tidak boleh kosong';
                            } else if (value.isNotEmpty) {
                              return TextValidator.validateEmail(value);
                            }

                            return null;
                          },
                        ),
                        SizedBox(height: 24),
                        TextFormField(
                          controller: passwordCtrl,
                          obscureText: obscureText.value,
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            floatingLabelStyle: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                            labelText: 'Password',
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                            hintStyle: const TextStyle(fontSize: 14),
                            suffixIcon: IconButton(
                              icon: Icon(
                                obscureText.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                obscureText.value = !obscureText.value;
                              },
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 42),
                        SizedBox(
                          width: double.infinity,
                          height: 52,
                          child: ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                ref
                                    .read(loginControllerProvider.notifier)
                                    .login(
                                      email: emailCtrl.text,
                                      password: passwordCtrl.text,
                                    );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(30),
                              ),
                            ),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Spacer(),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Belum memiliki akun? ',
                                style: TextStyle(color: Colors.grey),
                              ),
                              TextSpan(
                                text: 'Buat akun sekarang',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => context.push('/register'),
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
