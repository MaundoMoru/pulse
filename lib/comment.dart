import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulse/model/comment.dart';

class CommentList extends StatefulWidget {
  final List<Comment> comments;

  const CommentList({super.key, required this.comments});

  @override
  State<CommentList> createState() => _CommentListState();
}

class _CommentListState extends State<CommentList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.comments.length,
      itemBuilder: (context, index) {
        return CommentItem(comment: widget.comments[index]);
      },
    );
  }
}

class CommentItem extends StatefulWidget {
  final Comment comment;

  const CommentItem({super.key, required this.comment});

  @override
  State<CommentItem> createState() => _CommentItemState();
}

class _CommentItemState extends State<CommentItem> {
  final TextEditingController _comment = TextEditingController();

  Map<String, dynamic> commentObject = {};
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              widget.comment.user!.image == ""
                  ? Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          widget.comment.user!.name![0],
                        ),
                      ),
                    )
                  : Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                              widget.comment.user!.image.toString(),
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
              const SizedBox(
                width: 3,
              ),
              Text(
                widget.comment.user!.name.toString(),
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              Text(
                'Dec 03 2023',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: [
                Text(
                  widget.comment.text.toString(),
                  style: GoogleFonts.roboto(),
                ),
                const SizedBox(
                  width: 3,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (commentObject['id'] ==
                          widget.comment.toJson()['id']) {
                        commentObject.clear();
                      } else {
                        // commentObject.clear();
                        commentObject = widget.comment.toJson();
                      }
                      print(commentObject['id']);
                    });
                  },
                  child: Text(
                    'Reply',
                    style: GoogleFonts.roboto(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          commentObject['id'] == widget.comment.toJson()['id'] &&
                  commentObject['id'] != null
              ? Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: TextFormField(
                          maxLines: null,
                          controller: _comment,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text('Send')
                    ],
                  ),
                )
              : Container(),
          const SizedBox(height: 8),
          if (widget.comment.replies != null &&
              widget.comment.replies!.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: CommentList(comments: widget.comment.replies!),
            ),
        ],
      ),
    );
  }
}
