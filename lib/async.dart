// Copyright 2013 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

library quiver.async;

import 'dart:async';

import 'package:quiver_time/clock.dart';
import 'package:quiver_time/time_unit.dart';

part 'src/countdown_timer.dart';
part 'src/future_group.dart';
part 'src/future_stream.dart';
part 'src/iteration.dart';
part 'src/metronome.dart';
part 'src/stream_router.dart';

/// The signature of a one-shot [Timer] factory.
typedef Timer CreateTimer(Duration duration, void callback());

/// Creates a new one-shot [Timer] using `new Timer(duration, callback)`.
Timer createTimer(Duration duration, void callback()) =>
    new Timer(duration, callback);

/// The signature of a periodic timer factory.
typedef Timer CreateTimerPeriodic(Duration duration, void callback(Timer));

/// Creates a new periodic [Timer] using
/// `new Timer.periodic(duration, callback)`.
Timer createTimerPeriodic(Duration duration, void callback(Timer)) =>
    new Timer.periodic(duration, callback);
