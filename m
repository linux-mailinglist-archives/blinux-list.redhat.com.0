Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B4454B5CB
	for <lists+blinux-list@lfdr.de>; Tue, 14 Jun 2022 18:19:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1655223541;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=g3UH94w00DRj/Yh9bVn1WkeEnFlBGE38IBCQihR47cc=;
	b=GaICwiWDEJaYqHxSKy2IpT1Gih0YznJxIsQirPyVi7z+Tj6DlDgpkV3NROQ3TzD+K14ejs
	SlrHLG6GEumJ8DC05hmP0B7w+ga+aL2CNG+BG5GxIUMSfw/riQ3uI1OdXWGJYnOAdN4qyi
	59FKvVVsE/U6RMkAi0AQC3ryjckDYcg=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-208-KWsjlnrMMzWlz5-uc2zimQ-1; Tue, 14 Jun 2022 12:18:57 -0400
X-MC-Unique: KWsjlnrMMzWlz5-uc2zimQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 42A243C021A9;
	Tue, 14 Jun 2022 16:18:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5DB701415103;
	Tue, 14 Jun 2022 16:18:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DA72419452D2;
	Tue, 14 Jun 2022 16:18:52 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
Date: Tue, 14 Jun 2022 16:18:48 +0000
Subject: Improving my audio extraction script.
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <mailman.24399.1655223532.111203.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, so I often use mkvextract to extract the audio from mkv files
both because my portable media player generally doesn't like .mkv and
other containers that do multi-audio and built-in soft subs, and
because the media player has much less storage.(a 50-episode
television show that takes up 100GB is a drop in the bucket of a 4TB
hard drive, it's an unmanageable chunk on a 512GB SD card when you
already have 100GB of MUSIC and 100GB of audiobooks on that same SD
card)

I've written a script to automate the process:

#! /bin/bash
for file in */*.mkv; do
mkvextract tracks "$file" $1:"$file""$1".ac3
done

This script takes a track number as a command line argument, loops
over all the mkv files in the immediate subdirectories of the working
directory, extracts the track matching the track number provided, and
saves the extracted file with the name of the source file, the track
number, and the .ac3 extension.

This has several issues:

1. I generally don't know which track I'm getting ahead of time, be it
audio or subtitle, and if it's audio, whether it's English, Japanese,
or something else... and while the video stream is usually track 0,
this isn't universal, a given set of mkvs isn't guaranteed to have the
same track ordering, and since the script loops over every immediate
subdirectory, even if all of the mkvs within a given directory are
uniform, uniformity across directories is unlikely, and there's no
easy way to omit directories where I got what I wanted extracting
track 1 when I do a run to extract track 2.

2. the new files retain the .mkv of the original file's filename, so I
end up with a bunch of .mkv1.ac3, .mkv2.ac3, etc. files. Also, since
the output is saved in the same place as the source, I often have to
manually separate the extracted audio from the original files.

3. The script assumes the extracted audio is AC3, and while that seems
to be the most popular codec for storing the audio streams in .mkv
files, it's not universal.

Improvements I would like to make but am not sure how to do so:

1. instead of extracting a specific track number, it would be nice if
I could extract English audio regardless of which track its stored in.
Bonus if I could get all English audio tracks in the event of files
containing an English language commentary.

2. Instead of looping through all subdirectories in the working
directory, looping through a set specified at the command line,
perhaps with the empty set treated like *.

3. remove the .mkv from the original filename before appending the new
extension.

4. Actually giving the output files the appropriate extension.

5. Instead of saving the output files to SourceDirectory, saving them
to sourceDirectoryAudio or something similar.

6. This would just be Gravy, but if anyone knows a way to either
convert subtitle files to human readable plain text(e.g. stripping out
the metadata, timestamps, and formatting) or having a TTS generate a
audio file of the subtitles using the subtitle timing, either having
the script extract and process English subtitles would be nice... if
the script could be made to do this if and only if there isn't an
English audio track would be amazing... but extracting audio is my
primary concern, being able to do something useful with subs when no
English audio exists is lower priority...

I think the basename command I use in my uncompress script to create a
separate folder for each extracted file might be of some help on
getting rid of the .mkv in the ouput filenames, but I'm not sure...
for reference, here's the contents of my uncompress.sh:

#! /bin/bash
for file in *.rar; do
dir=$(basename "$file" .rar) # remove the .zip from the filename
mkdir "$dir"
cd "$dir" && unrar x -y ../"$file" # unzip and remove file if successful
cd ..
done
for file in *.zip; do
dir=$(basename "$file" .zip) # remove the .zip from the filename
mkdir "$dir"
cd "$dir" && unzip ../"$file" && rm ../"$file" # unzip and remove file
if successful
cd ..
done


But I'm not sure where to start on any of the other issues.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

