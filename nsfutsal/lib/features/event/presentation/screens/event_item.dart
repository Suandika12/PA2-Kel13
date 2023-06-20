import 'package:nsfutsal/features/event/data/models/event_model.dart';
import 'package:flutter/material.dart';

class EventItem extends StatefulWidget {
  final EventList? eventList;

  const EventItem({Key? key, this.eventList}) : super(key: key);

  @override
  State<EventItem> createState() => _EventItemState();
}

class _EventItemState extends State<EventItem> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.eventList!.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            // AutoRouter.of(context).push(
            //     EventDetailScreen(eventId: widget.eventList![index].id));
          },
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                // name, distributor, price, rating
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.eventList![index].title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // category
                      Text(
                        widget.eventList![index].start_date,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        widget.eventList![index].end_date,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
