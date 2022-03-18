Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F354DD36D
	for <lists+blinux-list@lfdr.de>; Fri, 18 Mar 2022 04:04:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647572684;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=M8LqrC8l/eNBrKy5/DM1J+7IwiXmTI8zIauwtZUCxo8=;
	b=Kf5WFrdVfVogQ4FnDaIw/McauHF78Tcyw3GN+KiwKghQFNo/FxxqJom105W3X/FJE7sUkM
	M76pQMptDIX+36nYveSZys+5hQXJ5RFOhSd4mzzM0Cbbw6hH8LC49JJWOx/kQUuKOljSHv
	Gqbc7QZwjMEkzNIsKlp1MYtpFgJ6QgQ=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-613-jRWT71vvPViP76aar4kRqQ-1; Thu, 17 Mar 2022 23:04:41 -0400
X-MC-Unique: jRWT71vvPViP76aar4kRqQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7EB613817489;
	Fri, 18 Mar 2022 03:04:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0FA68140265A;
	Fri, 18 Mar 2022 03:04:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4FE5C1964184;
	Fri, 18 Mar 2022 03:04:32 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
References: <mailman.2712.1647554312.111205.blinux-list@redhat.com>
 <mailman.2790.1647555545.111203.blinux-list@redhat.com>
 <mailman.2906.1647556769.111202.blinux-list@redhat.com>
 <mailman.2934.1647568523.111202.blinux-list@redhat.com>
User-agent: mu4e 1.7.9; emacs 27.2
To: blinux-list@redhat.com
Subject: Re: MP3 Tag editor?
Date: Fri, 18 Mar 2022 04:42:32 +0200
In-reply-to: <mailman.2934.1647568523.111202.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.2943.1647572671.111202.blinux-list@redhat.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"


Hi,

In addition to what others have suggested, you can try kid3. While 
I do
not like its graphical interface, its command line version invoked 
via
the kid3-cli is what I normally use to tag my sound files, be they 
mp3,
m4a, ogg or even wma formats.


For instance, in a directory with paths like ~/music/artist/album, 
you can tag your files
like this:

$ kid3-cli
to invoke  it in interactive mode. When it comes up, the prompt 
will be
something like

kid3>

 The application has got few commands you can
run in this interactive mode such as fromtag to rename files using 
their
tags, totag to save files using string format based on path and 
file
names. tag 1 to change tags to the tag one format; tag 2 to switch 
to
v2.3 tags; save to save your tagged files; select all to select 
files,
etc.


So you can format a  string which tells it the
structure of your files.
You separate files, directories and
subdirectories using a slash. You use its builtin tag references 
like
"year", "albumartist", "artist", "genre", "track" "title". Title 
is
simply the title for a file, track is the track number, and the 
rest are
self explanatory. Thus, a folder with these files:

1 Country Boy.mp3
2 Make me believe.mp3
etc.

By an artist called Roy Fitz, in a directory structure such as
"~/Music/Roy Fitz/", you would do something like this:

$ kid3-cli

kid3-cli> totag "{artist}/{track} {title}"

And all your mp3 files will be tagged. After tagging, before 
quitting,
you have to save with the "save" command.


You can check to see which files changed by simply issuing a "ls"
command. Any modified files will have a  Star before it.

HTH,


Ishe

On Thu, Mar 17, 2022 at 09:55  Linux for blind general discussion 
<blinux-list@redhat.com> wrote:
> You can try something like discogs.com to find track information 
> for
> disks that you couldn't find in cddb, although you will need a
> starting place, like the CD title, the artist, or maybe a song 
> title
> you know that you can pop into the search box. You can then fill 
> in
> the information and submit it to cddb, I think freedb actually,
> assuming you still have the CD. I'm not sure though what will 
> submit
> to freedb, and getting this information may or may not be useful 
> for
> automatic tagging, meaning that you may need to fill in your 
> tags
> manually as well. Keep in mind also that discogs has lots of 
> disks you
> cannot find in freedb, but I have found at least one CD on 
> freedb that
> discogs knows nothing about, so depending on what you have, your
> mileage can certainly vary.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list


-- 
Good people do not need laws to tell them to act responsibly, 
while bad people will find a way around the laws.
- Plato (427-347 B.C.)

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

