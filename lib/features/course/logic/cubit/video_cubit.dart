import 'package:bloc/bloc.dart';
import 'package:chewie/chewie.dart';
import 'package:logging/logging.dart';
import 'package:video_player/video_player.dart';

class VideoState {
  VideoState({
    this.videoPlayerController,
    this.chewieController,
    this.isError = false,
  });
  final VideoPlayerController? videoPlayerController;
  final ChewieController? chewieController;
  final bool isError;
}

class VideoCubit extends Cubit<VideoState> {
  VideoCubit() : super(VideoState());
  final Logger _logger = Logger('VideoCubit');

  Future<void> initializeVideo(String videoAsset) async {
    late VideoPlayerController videoPlayerController;

    videoPlayerController = VideoPlayerController.asset(videoAsset)
      ..addListener(() {
        emit(VideoState(
          videoPlayerController: videoPlayerController,
          chewieController: state.chewieController,
          isError: state.isError,
        ),);
      });

    try {
      await videoPlayerController.initialize();
      final chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        aspectRatio: videoPlayerController.value.aspectRatio,
      );

      emit(VideoState(
        videoPlayerController: videoPlayerController,
        chewieController: chewieController,
      ),);
    } catch (error) {
      _logger.severe('Error initializing video player: $error');
      emit(
        VideoState(
          videoPlayerController: videoPlayerController,
          isError: true,
        ),
      );
    }
  }
  @override
  Future<void> close() {
    state.videoPlayerController?.dispose();
    state.chewieController?.dispose();
    return super.close();
  }
}
