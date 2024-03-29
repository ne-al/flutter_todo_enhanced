import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_enhanced/app/widgets/todo_card_widget.dart';
import 'package:flutter_todo_enhanced/core/providers/todo_provider.dart';
import 'package:flutter_todo_enhanced/core/services/auth_service.dart';
import 'package:go_router/go_router.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODO ENHANCED'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              AuthService().signOutUser();
            },
            icon: const Icon(Icons.logout_rounded),
          ),
        ],
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(
              child: Text('Todo'),
            ),
            Tab(
              child: Text('Categories'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('/addTodo');
        },
        child: const Icon(Icons.add_rounded),
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: TabBarView(
            controller: tabController,
            children: [
              Consumer(
                builder: (context, ref, child) {
                  final getAllTodos = ref.watch(getAllTodosProvider);

                  return getAllTodos.when(
                    data: (data) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return TodoCardWidget(
                            data: data[index],
                          );
                        },
                      );
                    },
                    error: (error, stackTrace) {
                      return Center(
                        child: Text(
                          'An error occurred\n$error',
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                    loading: () => const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  );
                },
              ),
              Consumer(
                builder: (context, ref, child) {
                  final categories = ref.watch(categoriesProvider);
                  return categories.when(
                    data: (data) {
                      List<double> customWidths = [];
                      List<String> labels = data.toList();
                      labels.insert(0, 'All');
                      while (customWidths.length < labels.length) {
                        customWidths.add(100.0);
                      }

                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12,
                          ),
                          child: Column(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Scrollbar(
                                  child: ToggleSwitch(
                                    labels: labels,
                                    customWidths: customWidths,
                                    centerText: true,
                                    multiLineText: true,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    error: (error, stackTrace) {
                      return Center(
                        child: Text('An error occurred\n$error'),
                      );
                    },
                    loading: () => const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
