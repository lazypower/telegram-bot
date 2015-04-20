import httplib2
import os
import sys

from apiclient.discovery import build
from oauth2client.client import flow_from_clientsecrets
from oauth2client.file import Storage
from oauth2client.tools import run


# The CLIENT_SECRETS_FILE variable specifies the name of a file that contains
# the OAuth 2.0 information for this application, including its client_id and
# client_secret. You can acquire an OAuth 2.0 client ID and client secret from
# the Google Cloud Console at
# https://cloud.google.com/console.
# Please ensure that you have enabled the YouTube Data API for your project.
# For more information about using OAuth2 to access the YouTube Data API, see:
#   https://developers.google.com/youtube/v3/guides/authentication
# For more information about the client_secrets.json file format, see:
#   https://developers.google.com/api-client-library/python/guide/aaa_client_secrets

secrets_path = os.path.join(sys.path[0], '..', 'data', 'google_secrets.json')
CLIENT_SECRETS_FILE = os.path.abspath(secrets_path)

# This variable defines a message to display if the CLIENT_SECRETS_FILE is
# missing.
MISSING_CLIENT_SECRETS_MESSAGE = """
WARNING: Please configure OAuth 2.0

To make this sample run you will need to populate the client_secrets.json file
found at:

%s

with information from the Cloud Console
https://cloud.google.com/console

For more information about the client_secrets.json file format, please visit:
https://developers.google.com/api-client-library/python/guide/aaa_client_secrets
""" % os.path.abspath(CLIENT_SECRETS_FILE)

# This OAuth 2.0 access scope allows for full read/write access to the
# authenticated user's account.
YOUTUBE_SCOPE = "https://www.googleapis.com/auth/youtube"
YOUTUBE_API_SERVICE_NAME = "youtube"
YOUTUBE_API_VERSION = "v3"


def get_authenticated_service():
    flow = flow_from_clientsecrets(CLIENT_SECRETS_FILE, scope=YOUTUBE_SCOPE,
                                   message=MISSING_CLIENT_SECRETS_MESSAGE)

    storage = Storage("%s-oauth2.json" % sys.argv[0])
    credentials = storage.get()

    if credentials is None or credentials.invalid:
        credentials = run(flow, storage)

    return build(YOUTUBE_API_SERVICE_NAME, YOUTUBE_API_VERSION,
                 http=credentials.authorize(httplib2.Http()))


def add_video_to_playlist(youtube, videoID, playlistID):
    reqbody = {'snippet': {
               'playlistId': playlistID,
               'resourceId': {
                   'kind': 'youtube#video',
                   'videoId': videoID
                   }
               }
               }
    youtube.playlistItems().insert(part="snippet", body=reqbody).execute()


def get_id_from_video_link(link):
    if link.find("v=") == -1:
        print("Not a valid youtube link")
        sys.exit(0)
    part = link.split("v=")[-1]
    video_id = part.split("&")[0]
    return video_id

if __name__ == '__main__':
    youtube = get_authenticated_service()
    video_id = get_id_from_video_link(sys.argv[1])
    # for now, always submit to letrollhole
    playlist_id = "PL9bhW0Bb2C6ywfi41PbAYYUPUBya7gy6h"
    add_video_to_playlist(youtube, video_id, playlist_id)
