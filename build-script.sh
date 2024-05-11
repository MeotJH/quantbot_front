flutter build web --dart-define=IS_PRODUCTION=true &&
scp -r ./build/web ubuntu@192.168.0.7:/home/ubuntu/app/quant_bot

#freezed
#dart run build_runner build