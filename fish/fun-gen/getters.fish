#!/usr/bin/env fish

function ytm-album --wraps yt-dlp
    yt-dlp -4 --format="ba[ext=m4a]"/ba \
        --extract-audio --audio-format m4a \
        --no-overwrites --embed-metadata \
        --embed-thumbnail --ppa "ThumbnailsConvertor:-lavfi crop=ih:ih" \
        -o "%(album)s/%(track_number,playlist_index)s %(title)s.%(ext)s" $argv[1]
end
funcsave ytm-album

function commons-dl
    set -l url $argv[1]
    set -l user_agent "CommonsDownloader/1.0 (terminal_script@example.com)"
    set -l api "https://commons.wikimedia.org/w/api.php"
    set -l target_width 1920

    set -l title (string replace -r '^.*/' '' $url \
        | string replace -r '[?#].*$' '' \
        | string unescape --style=url
    )
    set -l output_file (string replace '^File:' '' $title)
    set -l output_ext (path extension $output_file)

    set -l en_caption (curl -sGH "User-Agent: $user_agent" $api \
        --data-urlencode "action=wbgetentities" \
        --data-urlencode "sites=commonswiki" \
        --data-urlencode "titles=$title" \
        --data-urlencode "props=labels" \
        --data-urlencode "languages=en" \
        --data-urlencode "format=json" \
        | jq -r '.entities | to_entries[0].value.labels.en.value // empty')

    if test -n "$en_caption"
        set -l cleaned (string replace -r '[/\\:*?"<>|\']' '' $en_caption \
            | string replace -a ' ' '_'
        )
        set output_file "$cleaned$output_ext"
    else
        echo "no english caption, using original title."
    end

    set -l response (curl -sGH "User-Agent:$user_agent" "$api" \
        --data-urlencode "action=query" \
        --data-urlencode "titles=$title" \
        --data-urlencode "prop=imageinfo" \
        --data-urlencode "iiprop=url|size" \
        --data-urlencode "iiurlwidth=$target_width" \
        --data-urlencode "format=json"
    )

    set -l thumb_url (echo $response | jq -r '
        .query.pages
        | to_entries[0].value
        | if .invalid != null then empty else (.imageinfo[0].thumburl // .imageinfo[0].url // empty) end
    ')

    curl -sLH "User-Agent:$user_agent" "$thumb_url" -o "$output_file"
end
funcsave commons-dl
