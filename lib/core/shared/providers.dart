import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final logInFormKeyProvider = Provider(
  (ref) => GlobalKey<FormState>(),
);

final registerFormKeyProvider = Provider(
  (ref) => GlobalKey<FormState>(),
);
