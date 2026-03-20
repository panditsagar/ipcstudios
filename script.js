document.addEventListener('DOMContentLoaded', () => {
    // Video Playback Logic
    const videoThumbnail = document.getElementById('video-thumbnail');
    const playButton = document.getElementById('play-button');
    const videoContainer = document.getElementById('video-container');

    if(playButton && videoThumbnail) {
        playButton.addEventListener('click', () => {
            const videoUrl = videoThumbnail.getAttribute('data-video-url');
            
            if(videoUrl) {
                // Replace the thumbnail with an iframe that covers the whole container
                videoContainer.innerHTML = `
                    <iframe 
                        width="100%" 
                        height="100%" 
                        src="${videoUrl}?autoplay=1" 
                        title="Video Player" 
                        frameborder="0" 
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
                        allowfullscreen
                        style="position:absolute; top:0; left:0; width:100%; height:100%;"
                    ></iframe>
                `;
            } else {
                alert("Please add your video embed link (e.g., YouTube) in the data-video-url attribute inside index.html!");
            }
        });
    }
});
