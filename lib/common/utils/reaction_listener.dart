import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

typedef ReactionListenerCallback<T> =
    void Function(BuildContext context, T state);

class ReactionListener<T> extends StatefulWidget {
  const ReactionListener({
    required this.observe,
    required this.listener,
    required this.child,
    super.key,
    this.listenWhen,
  });

  final T Function() observe; // what to observe (like store.status)
  final ReactionListenerCallback<T> listener;
  final Widget child;
  final bool Function(T previous, T next)? listenWhen;

  @override
  State<ReactionListener<T>> createState() => _ReactionListenerState<T>();
}

class _ReactionListenerState<T> extends State<ReactionListener<T>> {
  late ReactionDisposer _disposer;

  @override
  void initState() {
    super.initState();
    _disposer = reaction<T>((_) => widget.observe(), (value) {
      if (!mounted) {
        return;
      }
      if (widget.listenWhen != null) {
        final previous = _previousValue;
        if (previous != null && !widget.listenWhen!(previous, value)) {
          _previousValue = value;
          return;
        }
      }

      widget.listener(context, value);
      _previousValue = value;
    }, fireImmediately: false);
  }

  T? _previousValue;

  @override
  void dispose() {
    _disposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
