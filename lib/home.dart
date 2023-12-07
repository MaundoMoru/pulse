import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/feeds.dart';
import 'package:pulse/topprofiles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String showFeed = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            floating: true,
            pinned: false,
            snap: false,
            centerTitle: false,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(30.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: Center(
                    child: FocusScope(
                      child: TextFormField(
                        // controller: search,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search member',
                          hintStyle: GoogleFonts.roboto(),
                          prefixIcon:
                              const Icon(Icons.search, color: Colors.grey),
                          suffixIcon: Visibility(
                            // visible: isSeaching,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Other Sliver Widgets
          SliverList(
            delegate: SliverChildListDelegate(
              [
                //Top profiles
                const TopProfiles(),
                const Feeds(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.feed_outlined),
      ),
    );
  }
}
