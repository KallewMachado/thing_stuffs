import 'package:asp/asp.dart';
import 'package:thing_stuffs/src/core/exceptions/exceptions.dart';

final globalLoaderState = Atom(
  false,
  key: 'globalLoaderState',
);

final globalExceptionsState = Atom<ThingsException?>(
  null,
  key: 'globalExceptionsState',
);
