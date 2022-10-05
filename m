Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A5D5F54F5
	for <lists+blinux-list@lfdr.de>; Wed,  5 Oct 2022 15:04:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1664975094;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Qplyz2QHrrnpqp/jKBrzEzKhWStGRn9aXYKfU366dwc=;
	b=QHTxmZTD8LPpjyuKmvTrLO+qsv2CQXXYbMS5nX3K6EJ3OGnuRoBobu1a0RpwRxo7BNk09I
	oVVliuYHuAI5EbdwR++DWC5howIDz+sSSoT/rWD6UIY7DUx+PNXzwIiNxyb8TWR9am6UV7
	YRksDiBA/eTLvMWOZfH6VaYdrGRtEbY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-571-ft-ufKoRMmiz347UM2t9gQ-1; Wed, 05 Oct 2022 09:04:50 -0400
X-MC-Unique: ft-ufKoRMmiz347UM2t9gQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B65242932481;
	Wed,  5 Oct 2022 13:04:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A624940C6F9F;
	Wed,  5 Oct 2022 13:04:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 587571947BAC;
	Wed,  5 Oct 2022 13:04:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.5499.1664962129.6081.blinux-list@redhat.com>
References: <mailman.5499.1664962129.6081.blinux-list@redhat.com>
Date: Wed, 5 Oct 2022 13:04:40 +0000
Subject: Re: mpv
To: blinux-list@redhat.com
Message-ID: <mailman.6217.1664975083.6076.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It's been a while since I've used MPV(I generally use gst123 for
playing video files on my desktop, and even then, I prefer using my
portable media player even if it sometimes requires extracting audio
from poorly supported containers or downmixing surround sound tracks
to stereo), but if memory serves,

--no-video

Will make mpv play audio from a video file when there's no GUI running.

and redirecting the console output to /dev/null will prevent any
console screen readers from reading it over the audio playback...
Granted, there's no way to read it deliberately, and it does included
the elapsed/total runtime.

One reason I switched to gst123 was that it didn't need an extra
option to play the audio from a video file in the absence of the GUI
and its console output wasn't constantly updating in a way that kept
my screen reader constantly chatty and with no way to move the reading
cursor somewhere to quiet the chattiness... The other being that,
while It still forced me to install a lot of video codecs I have no
use for, it wasn't as bad as mpv in that regard(still, my metaphorical
kingdom for a audio-only player that doesn't try to be a media
library(I'm happy with command-line file management, thank you very
much) but can still play audio from multimedia containers and doesn't
pull in a single video codec).

On 10/5/22, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> Does a way exist to play a file with mpv and completely suppress the
> and statistics?  I can only use the audio from what I download.
>
>
>
> Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty:
>  soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

