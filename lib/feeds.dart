import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/comment.dart';
import 'package:pulse/data.dart';
import 'package:readmore/readmore.dart';

class Feeds extends StatefulWidget {
  const Feeds({super.key});

  @override
  State<Feeds> createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> {
  String showFeed = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 25,
            child: Text(
              'Feeds',
              style: GoogleFonts.roboto(
                textStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ),
        ListView.separated(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: feeds.length,
          separatorBuilder: (context, index) {
            return Container(
              height: 4,
            );
          },
          itemBuilder: (context, index) {
            var feed = feeds[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade100,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        feed.user!.image.toString(),
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    feed.user!.name.toString(),
                                    style: GoogleFonts.roboto(),
                                  ),
                                  Text(
                                    feed.time.toString(),
                                    style: GoogleFonts.roboto(),
                                  )
                                ],
                              )
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.star_outline),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        feed.title.toString(),
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      ReadMoreText(
                        feed.description.toString(),
                        trimLines: 4,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Show more',
                        trimExpandedText: 'Show less',
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        moreStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      if (feed.image!.isNotEmpty)
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(
                                feed.image.toString(),
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          feed.vote!.any((vote) =>
                                  vote.userId == 1 && vote.vote == true)
                              ? Row(
                                  children: [
                                    const Icon(
                                      Icons.arrow_upward,
                                      size: 20,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(width: 3),
                                    Text(
                                      feed.vote!
                                          .where((vote) => vote.vote == true)
                                          .length
                                          .toString(),
                                      style:
                                          const TextStyle(color: Colors.blue),
                                    )
                                  ],
                                )
                              : Row(
                                  children: [
                                    const Icon(
                                      Icons.arrow_upward,
                                      size: 20,
                                    ),
                                    const SizedBox(width: 3),
                                    Text(feed.vote!
                                        .where((vote) => vote.vote == true)
                                        .length
                                        .toString())
                                  ],
                                ),
                          const SizedBox(width: 20),
                          feed.vote!.any((vote) =>
                                  vote.userId == 1 && vote.vote == false)
                              ? Row(
                                  children: [
                                    const Icon(
                                      Icons.arrow_downward,
                                      size: 20,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(width: 3),
                                    Text(
                                      feed.vote!
                                          .where((vote) => vote.vote == false)
                                          .length
                                          .toString(),
                                      style:
                                          const TextStyle(color: Colors.blue),
                                    )
                                  ],
                                )
                              : Row(
                                  children: [
                                    const Icon(
                                      Icons.arrow_downward,
                                      size: 20,
                                    ),
                                    const SizedBox(width: 3),
                                    Text(feed.vote!
                                        .where((vote) => vote.vote == false)
                                        .length
                                        .toString())
                                  ],
                                ),
                          const SizedBox(width: 20),
                          feed.bookmark!.any((bookmark) => bookmark.userId == 1)
                              ? const Row(
                                  children: [
                                    Icon(
                                      Icons.bookmark_outline,
                                      size: 20,
                                      color: Colors.blue,
                                    ),
                                  ],
                                )
                              : const Row(
                                  children: [
                                    Icon(
                                      Icons.bookmark_outline,
                                      size: 20,
                                    ),
                                  ],
                                ),
                          const SizedBox(width: 20),
                          const Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.shareSquare,
                                size: 16,
                              ),
                            ],
                          ),
                          const SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                showFeed = feed.id.toString();
                              });
                            },
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (showFeed == "" ||
                                      showFeed != feed.id.toString()) {
                                    showFeed = feed.id.toString();
                                  } else {
                                    showFeed = "";
                                  }
                                });
                              },
                              child: Row(
                                children: [
                                  const Icon(
                                    FontAwesomeIcons.comment,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 3),
                                  Text(comments.length.toString())
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Visibility(
                        visible: showFeed == feed.id.toString(),
                        child: CommentList(comments: comments),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
