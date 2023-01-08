import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:going_home_app/common/color.dart';
import 'package:going_home_app/pages/contact/notifier/contact_notifier.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddGoalLocationPage extends ConsumerStatefulWidget {
  const AddGoalLocationPage({super.key});

  @override
  AddGoalLocationPageState createState() => AddGoalLocationPageState();
}

class AddGoalLocationPageState extends ConsumerState<AddGoalLocationPage> {
  final Set<Marker> _markers = {};

  @override
  Widget build(BuildContext context) {
    final noti = ref.watch(contactNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('目的地を追加'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            if (_markers.isEmpty) {
              context.pop();
              return;
            }
            noti.setGoalLocation(_markers.first.position);
            context.pop();
          },
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(35.681236, 139.767125),
          zoom: 12,
        ),
        markers: _markers,
        onTap: (goalLocation) {
          print(goalLocation);
          setState(() {
            _markers.clear();
            _markers.add(
              Marker(
                markerId: const MarkerId('goalLocation'),
                position: goalLocation,
              ),
            );
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_markers.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  '目的地を設定してください',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: kRed),
                ),
              ),
            );
            return;
          }
          noti.setGoalLocation(_markers.first.position);
          context.pop();
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}
