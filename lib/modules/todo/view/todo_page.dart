import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:rs_ui/engine/engine.dart';
import 'package:rs_ui/modules/todo/cubit/todo_cubit.dart';
import 'package:rs_ui/routes/routes.dart';
import 'package:rs_ui/widgets/widgets.dart';

import '../../../themes/themes.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TodoCubit>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Sessions.clear();
              context.go(RouteNames.root);
            },
            icon: Icon(Icons.logout, color: Colors.white),
          ),
        ],
        backgroundColor: AppColor.appColor.primary,
        title: Text("To Do List", style: AppFont.whiteLarge(context)),
      ),
      body: SafeArea(
        child: BlocBuilder<TodoCubit, TodoState>(
          builder: (context, state) {
            return ContainerStateHandler(
              status: state.status,
              loading: Center(child: CircularProgressIndicator()),
              errorOptions: ErrorOptions(error: state.message),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                child: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: FormBuilder(
                    key: cubit.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FormBuilderTextField(
                          name: 'title',
                          decoration: InputDecoration(
                            labelText: 'Title',
                            hintText: '',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.grey[100],
                          ),
                          onChanged:
                              (value) => cubit.formKey.currentState!.validate(),
                        ),
                        const SizedBox(height: 16),
                        FormBuilderTextField(
                          name: 'desc',
                          maxLines: 3,
                          decoration: InputDecoration(
                            labelText: 'Description',
                            hintText: '',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.grey[100],
                          ),
                          onChanged:
                              (value) => cubit.formKey.currentState!.validate(),
                        ),
                        const SizedBox(height: 24),
                        SizedBox(
                          height: 50,
                          width: baseWidth,
                          child: ElevatedButton.icon(
                            icon: Icon(Icons.save),
                            label: Text(
                              "Simpan",
                              style: AppFont.whiteSmall(
                                context,
                              )!.copyWith(fontSize: 14),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {
                              if (cubit.formKey.currentState!
                                  .saveAndValidate()) {
                                cubit.sendMessage(cubit.formKey);
                              } else {
                                ShowNotify.error(
                                  context,
                                  msg: "Invalid Message",
                                );
                              }
                            },
                          ),
                        ),
                        SizedBox(height: 20),
                        ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: state.listMessage.length,
                          separatorBuilder: (_, __) => SizedBox(height: 8),
                          itemBuilder: (context, index) {
                            Map<String, dynamic> messageData =
                                state.listMessage[index];
                            return Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.blueAccent,
                                  child: Text(
                                    '${index + 1}',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                title: Text(
                                  messageData['title'].toString(),
                                  style: AppFont.medium(context),
                                ),
                                subtitle: Text(
                                  messageData['desc'].toString(),
                                  style: AppFont.largePrimaryLighten(context),
                                ),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
