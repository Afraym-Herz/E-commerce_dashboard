// import 'dart:developer';

// import 'package:e_commerce_dashboard/core/widgets/show_snack_bar.dart';
// import 'package:e_commerce_dashboard/features/add_products/presentation/views/widgets/custom_progress_hud.dart';
// import 'package:e_commerce_dashboard/features/orders/presentation/manager/order_cubit/order_cubit.dart';
// import 'package:e_commerce_dashboard/features/orders/presentation/views/widgets/orders_view_body.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class OrderViewBlocConsumer extends StatelessWidget {
//   const OrderViewBlocConsumer({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<OrderCubit, OrderState>(
//       listener: (context, state) {
//         if (state is OrdersGetSuccess) {
//           log('Orders Get Successfully!');
//           customSnackBar(context, message: 'Orders Get Successfully!');
//         }
//         else if (state is OrdersGetFailure) {
//           log(state.message);
//           customSnackBar(context, message: state.message);
//         }
//       },
//       builder: (context, state) {
//         return CustomProgressHud(
//           isLoading: state is OrdersLoading,
//           child:  OrdersViewBody(

//           ),
//         ) ;
//       },
//     );
//   }
// }
