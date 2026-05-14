import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leave_request_app/domain/model/user.dart';
import 'package:leave_request_app/helper/text_validator.dart';
import 'package:leave_request_app/view/register/controller/register_controller.dart';

class RegisterView extends HookConsumerWidget {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final nameCtrl = useTextEditingController();
    final phoneNumberCtrl = useTextEditingController();
    final emailCtrl = useTextEditingController();
    final passwordCtrl = useTextEditingController();
    final obscureText = useState<bool>(true);

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
                      children: [
                        SizedBox(
                          height: 300,
                          width: 300,
                          child: Image.asset('assets/register-rafiki.png'),
                        ),
                        SizedBox(height: 36),
                        TextFormField(
                          controller: nameCtrl,
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
                            labelText: 'Nama karyawan',
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
                              return 'Nama karyawan tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 24),
                        TextFormField(
                          controller: phoneNumberCtrl,
                          keyboardType: TextInputType.phone,
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
                            labelText: 'No HP',
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                            hintStyle: const TextStyle(fontSize: 14),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'No HP tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 24),
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
                            floatingLabelStyle: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                            labelText: 'Email',
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                            hintStyle: const TextStyle(fontSize: 14),
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
                            labelText: 'Password',
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                            hintStyle: const TextStyle(fontSize: 14),
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
                                // ref
                                //     .read(registerControllerProvider.notifier)
                                //     .insertUser(
                                //       user: User(
                                //         name: nameCtrl.text,
                                //         phoneNumber: int.parse(
                                //           phoneNumberCtrl.text,
                                //         ),
                                //         email: emailCtrl.text,
                                //         password: passwordCtrl.text,
                                //       ),
                                //       onSuccess: () {
                                //         context.pushReplacement('/login');
                                //       },
                                //     );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(30),
                              ),
                            ),
                            child: Text(
                              'Register',
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
                                text: 'Sudah memiliki akun? ',
                                style: TextStyle(color: Colors.grey),
                              ),
                              TextSpan(
                                text: 'Masuk sekarang',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () =>
                                      context.pushReplacement('/login'),
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
