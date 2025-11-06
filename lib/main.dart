import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // Ensure Flutter is initialized before setting system UI styles
  WidgetsFlutterBinding.ensureInitialized();

  // Set the status bar style to be light to contrast with the dark app bar
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.light,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fantastic Pancake',
      theme: ThemeData(
        brightness: Brightness.dark,
        // Define a modern, professional color scheme
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFFDB813), // A warm, inviting yellow/gold
          secondary: Color(0xFF2C3E50), // A deep, professional blue-gray
          background: Color(0xFF1C1C1E), // A slightly off-black for depth
          onPrimary: Colors.black, // Text color on primary buttons
          onBackground: Colors.white, // Main text color
        ),
        // Define text styles for consistency
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Colors.white,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            height: 1.5, // Line spacing for readability
            color: Colors.white70,
          ),
          labelLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Fantastic Pancake'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // Access theme data for consistent styling
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: theme.colorScheme.background,
        elevation: 0, // Remove shadow for a flatter, modern look
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. A welcoming header
              Text(
                'Welcome, Chef!',
                style: theme.textTheme.headlineMedium,
              ),
              const SizedBox(height: 12),
              Text(
                'Discover and create delicious meals every day. What are you in the mood for?',
                style: theme.textTheme.bodyLarge,
              ),
              const SizedBox(height: 32),

              // 2. An engaging "Card of the Day"
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: theme.colorScheme.secondary,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'RECIPE OF THE DAY',
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Classic Fluffy Pancakes',
                      style: theme.textTheme.headlineMedium?.copyWith(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: const [
                        Icon(Icons.timer_outlined, color: Colors.white70, size: 20),
                        SizedBox(width: 8),
                        Text('20 mins', style: TextStyle(color: Colors.white70)),
                        SizedBox(width: 24),
                        Icon(Icons.people_outline, color: Colors.white70, size: 20),
                        SizedBox(width: 8),
                        Text('4 servings', style: TextStyle(color: Colors.white70)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              // 3. A clear Call to Action (CTA) Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: theme.colorScheme.primary,
                  foregroundColor: theme.colorScheme.onPrimary,
                  minimumSize: const Size(double.infinity, 52),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  textStyle: theme.textTheme.labelLarge,
                ),
                onPressed: () {
                  // TODO: Navigate to the recipe search page
                },
                child: const Text('Find a Recipe'),
              ),
              const SizedBox(height: 16),

              // 4. A secondary action
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: theme.colorScheme.primary,
                  minimumSize: const Size(double.infinity, 52),
                  side: BorderSide(color: theme.colorScheme.primary, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  textStyle: theme.textTheme.labelLarge,
                ),
                onPressed: () {
                  // TODO: Navigate to user's saved recipes
                },
                child: const Text('My Saved Recipes'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
