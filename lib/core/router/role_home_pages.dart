import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/auth/domain/user_role.dart';
import '../../features/shell/employee_shell.dart';
import '../../features/shell/role_home_shell.dart';

@RoutePage()
class EmployeeHomePage extends StatelessWidget {
  const EmployeeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const EmployeeShell();
  }
}

@RoutePage()
class SupplierHomePage extends StatelessWidget {
  const SupplierHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const RoleHomeShell(role: UserRole.supplier);
  }
}

@RoutePage()
class LogisticsHomePage extends StatelessWidget {
  const LogisticsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const RoleHomeShell(role: UserRole.logistics);
  }
}
