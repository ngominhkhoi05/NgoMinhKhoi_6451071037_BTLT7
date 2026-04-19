import 'package:flutter/material.dart';
import 'cau1/screens/user_list_screen.dart';
import 'cau2/screens/product_detail_screen.dart';
import 'cau3/screens/create_post_screen.dart';
import 'cau4/screens/user_profile_screen.dart';
import 'cau5/screens/task_list_screen.dart';
import 'cau6/screens/product_search_screen.dart';
import 'cau7/screens/news_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TBDD App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TBDD App'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.deepPurple,
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 16),
            const Text(
              'Ngô Minh Khôi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              'MSSV: 6451071037',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            const SizedBox(height: 48),
            const Text(
              'Chọn bài tập:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16),
            _buildMenuButton(
              context,
              'Bài 1: Fetch User List',
              Icons.people,
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UserListScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            _buildMenuButton(
              context,
              'Bài 2: Product Detail',
              Icons.shopping_cart,
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductDetailScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            _buildMenuButton(
              context,
              'Bài 3: Create Post',
              Icons.post_add,
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreatePostScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            _buildMenuButton(
              context,
              'Bài 4: Update User',
              Icons.edit,
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UserProfileScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            _buildMenuButton(
              context,
              'Bài 5: Delete Task',
              Icons.task_alt,
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TaskListScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            _buildMenuButton(
              context,
              'Bài 6: Search Products',
              Icons.search,
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductSearchScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            _buildMenuButton(
              context,
              'Bài 7: Pull to Refresh',
              Icons.refresh,
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NewsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton(
    BuildContext context,
    String text,
    IconData icon,
    VoidCallback onPressed,
  ) {
    return SizedBox(
      width: 280,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(text),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          backgroundColor: Colors.deepPurple.shade100,
          foregroundColor: Colors.deepPurple.shade900,
        ),
      ),
    );
  }
}
