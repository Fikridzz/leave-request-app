import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:signature/signature.dart';
import 'package:leave_request_app/domain/model/data_leave_form.dart';
import 'package:leave_request_app/domain/model/data_sick_form.dart';
import 'package:leave_request_app/domain/model/user.dart';
import 'package:leave_request_app/view/form/controller/form_controller.dart';

class FormSickView extends HookConsumerWidget {
  const FormSickView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();
    final nameCtrl = useTextEditingController();
    final departmenCtrl = useTextEditingController();
    final submitDateCtrl = useTextEditingController();
    final sickDateCtrl = useTextEditingController();
    final totalDayCtrl = useTextEditingController();
    final submitDate = useState<DateTime?>(null);
    final sickDate = useState<DateTime?>(null);
    final signatureImg = useState<Uint8List?>(null);
    final userData = useState<User?>(null);

    SignatureController signatureCtrl = SignatureController(
      penStrokeWidth: 1,
      penColor: Colors.black,
      exportBackgroundColor: Colors.transparent,
      exportPenColor: Colors.black,
    );

    useEffect(() {
      Future<void> getUser() async {
        final prefs = await SharedPreferences.getInstance();
        final data = prefs.getString('user_data');

        userData.value = User.fromMap(jsonDecode(data ?? ''));

        nameCtrl.text = userData.value?.name ?? '';
      }

      getUser();

      return null;
    }, []);

    ref.listen(formControllerProvider, (previoues, next) {
      context.pop();
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
                    padding: EdgeInsets.all(32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Form Sakit',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 36),
                        TextFormField(
                          controller: nameCtrl,
                          readOnly: true,
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
                            labelText: 'Nama Karyawan',
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
                          controller: departmenCtrl,
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
                            labelText: 'Departemen',
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
                              return 'Departemen tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 24),
                        TextFormField(
                          controller: submitDateCtrl,
                          onTap: () {
                            _selectDateSubmit(
                              submitDateCtrl,
                              submitDate,
                              context,
                            );
                          },
                          readOnly: true,
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(color: Colors.black54),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            labelText: 'Tanggal Pengajuan',
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
                              return 'Tanggal pengajuan tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 24),
                        TextFormField(
                          controller: sickDateCtrl,
                          onTap: () {
                            _selectDateLeave(
                              sickDateCtrl,
                              totalDayCtrl,
                              submitDate,
                              sickDate,
                              context,
                            );
                          },
                          readOnly: true,
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
                            labelText: 'Tanggal Cuti',
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
                              return 'Tanggal cuti tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 24),
                        TextFormField(
                          controller: totalDayCtrl,
                          readOnly: true,
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
                            labelText: 'Jumlah Cuti',
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
                              return 'Jumlah cuti tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 24),
                        Text(
                          'Diajukan Oleh:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8),
                        GestureDetector(
                          onTap: () {
                            showDialogSignature(
                              context,
                              signatureCtrl,
                              signatureImg,
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.grey[300],
                            width: 160,
                            height: 120,
                            child: signatureImg.value != null
                                ? Image.memory(signatureImg.value!)
                                : Text('Tanda tanggan'),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('(${userData.value?.name})'),
                        Spacer(),
                        SizedBox(height: 36),
                        SizedBox(
                          width: double.infinity,
                          height: 52,
                          child: ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                ref
                                    .read(formControllerProvider.notifier)
                                    .insertSickForm(
                                      DataSickForm(
                                        employeeName: nameCtrl.text,
                                        department: departmenCtrl.text,
                                        submissionDate: submitDateCtrl.text,
                                        sickDate: sickDateCtrl.text,
                                        totalSickDate: int.tryParse(
                                          totalDayCtrl.text,
                                        ),
                                        userId: userData.value?.id,
                                      ),
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
                              'Ajukan',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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

  void _selectDateSubmit(
    TextEditingController dateCtrl,
    ValueNotifier<DateTime?> selectedDate,
    BuildContext context,
  ) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      initialDatePickerMode: DatePickerMode.day,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );

    if (picked != null) {
      dateCtrl.text = DateFormat('dd MMMM yyyy').format(picked);
      selectedDate.value = DateTime.parse(
        DateFormat('yyyy-MM-dd').format(picked),
      );
    }
  }

  void _selectDateLeave(
    TextEditingController dateCtrl,
    TextEditingController totalDayCtrl,
    ValueNotifier<DateTime?> submitDate,
    ValueNotifier<DateTime?> sickDate,
    BuildContext context,
  ) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      initialDatePickerMode: DatePickerMode.day,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );

    if (picked != null) {
      dateCtrl.text = DateFormat('dd MMMM yyyy').format(picked);
      sickDate.value = DateTime.parse(DateFormat('yyyy-MM-dd').format(picked));

      totalDayCtrl.text = sickDate.value!
          .difference(submitDate.value ?? DateTime.now())
          .inDays
          .toString();
    }
  }

  void showDialogSignature(
    BuildContext context,
    SignatureController signatureCtrl,
    ValueNotifier<Uint8List?> signatureImg,
  ) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (dialogContext) {
        return Dialog(
          child: Padding(
            padding: EdgeInsetsGeometry.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      child: Text(
                        'Clear',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        signatureCtrl.clear();
                      },
                    ),
                    TextButton(
                      child: Text(
                        'Save',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        exportImage(dialogContext, signatureCtrl, signatureImg);
                        dialogContext.pop();
                      },
                    ),
                  ],
                ),
                Signature(
                  controller: signatureCtrl,
                  width: 300,
                  height: 240,
                  backgroundColor: Colors.grey.shade300,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void exportImage(
    BuildContext context,
    SignatureController signatureCtrl,
    ValueNotifier<Uint8List?> signatureImg,
  ) async {
    if (signatureCtrl.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(key: Key('snackbarPNG'), content: Text('No content')),
      );
      return;
    }

    final Uint8List? data = await signatureCtrl.toPngBytes(
      height: 300,
      width: 240,
    );
    signatureImg.value = data;
    if (data == null) {
      return;
    }
  }
}
