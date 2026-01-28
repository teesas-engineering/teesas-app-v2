import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../_shared/stores/tab_store/index_store.dart';
import '../../../favorites/presentation/screens/favorite_screen.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Provider(create: (_)=>IndexStore(),
    child: const FavoriteScreen(),);
  }
}
