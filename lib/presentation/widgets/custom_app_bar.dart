// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../bloc/theme/theme_cubit.dart';

// class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String title;
//   final List<Widget>? actions;

//   const MyAppBar({Key? key, required this.title, this.actions})
//       : super(key: key);

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ThemeCubit, AppTheme>(
//       builder: (context, theme) {
//         return AppBar(
//           title: Text(
//             title,
//             style: const TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           centerTitle: true,
//           elevation: 8,
//           actions: actions ?? [],
//           // flexibleSpace: Container(
//           //   decoration: BoxDecoration(
//           //     gradient: LinearGradient(
//           //       begin: Alignment.topLeft,
//           //       end: Alignment.bottomRight,
//           //       colors: theme == AppTheme.light
//           //           ? [Color(0xFF4B68FF), Colors.purple.shade300]
//           //           : [Color(0xFF4B68FF).shade800, Colors.purple.shade700],
//           //     ),
//           //   ),
//           // ),
//         );
//       },
//     );
//   }
// }
