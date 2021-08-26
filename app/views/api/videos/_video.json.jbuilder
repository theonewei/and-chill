json.extract! video, :id,:name, :info,:format,:genre_id,:video
json.videoUrl url_for(video.video)
json.imageUrl url_for(video.thumbnail)
json.clipUrl url_for(video.clip)