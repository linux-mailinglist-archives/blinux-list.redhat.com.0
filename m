Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id CF5D6209FED
	for <lists+blinux-list@lfdr.de>; Thu, 25 Jun 2020 15:30:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593091856;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=x9ywpCJICCdoy5JFP+Be4GRYgbttwU+pGCN+TIQZCEo=;
	b=RsxISVp3as+axpp63/O3My86ob0tdwXTQelkoVb2ypyuiYEcqb72y9JVZi+pwtYOTOlRDb
	3SUdpRO5AA8DWNbrDvby0GT/hBQ/m97N6qRQQ99iu4QEz9CD5GtPVMKPUUlVyYLlcenR2X
	Imt3i/LrczxUHicxvTO7DjzakqWTptc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-296-UilRdtj5PtKvdBSP0BrFSw-1; Thu, 25 Jun 2020 09:30:54 -0400
X-MC-Unique: UilRdtj5PtKvdBSP0BrFSw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1ED9718A0760;
	Thu, 25 Jun 2020 13:30:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6983819D61;
	Thu, 25 Jun 2020 13:30:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 92497180954D;
	Thu, 25 Jun 2020 13:30:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05PDUfEI001169 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Jun 2020 09:30:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0FCE12144B37; Thu, 25 Jun 2020 13:30:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0B8572144B39
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 13:30:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9931E805C1E
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 13:30:38 +0000 (UTC)
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
	[209.85.160.195]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-494-BUZOs_J3N6KWYmxgvaSPxg-1; Thu, 25 Jun 2020 09:30:36 -0400
X-MC-Unique: BUZOs_J3N6KWYmxgvaSPxg-1
Received: by mail-qt1-f195.google.com with SMTP id g13so4548884qtv.8
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 06:30:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=DjefpeGk19AlRgDkXJ7JX/AHGWoHpApSeVms2UnFu1g=;
	b=GJwXIWjf8/BYDb0Lfeb1ghSVKb2uof4zxF7P80wNSR4Z0b+D1IqI0M5//SYW6F6Wbg
	8HaPMTA1ucMhe9q5YjxYrLo/UAbmgSTnY3G6JjZkp9XbcoNKw/jbMiz7gxGXlF9t+dun
	mAi5FYNNx1552FejeVbwjxwYdD/W0v5Iyzy3pVtphE1IhJTnY2GscpE3xDJrpKIgH34a
	2Nf8H2ArCETE2OqGVCY5BUnA9x3ydXog74iHhlhR2lN6JWWAJarQkytQAnTFB+auOf8R
	08eZnt0QQ3CsGVELq93MIEjK7UowaI7c0Ht+7PUzy1u6qUp7Bgj3RQ7g5QNxqALRQkpx
	q5zw==
X-Gm-Message-State: AOAM530zO2zXgyh9k1Kuzpua2Rdr3psiwxNqr6P+SnPGg9Rq9f8q/o3r
	8lz3iJ3e1BM3MycXtlCwTt03luhKBnin4F5Lvy0+06VW
X-Google-Smtp-Source: ABdhPJwSpJNPusOtfE+bk2YIZAqE6uH+GPqkZeJTFxbINp+qHOmr2xOMpXVIsq6wDtJmrppiHZlnP8KU33eJqvtUWTM=
X-Received: by 2002:aed:2ba1:: with SMTP id e30mr22660312qtd.357.1593091835411;
	Thu, 25 Jun 2020 06:30:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ea4a:0:0:0:0:0 with HTTP; Thu, 25 Jun 2020 06:30:34
	-0700 (PDT)
In-Reply-To: <20200625121548.GB245455@rednote.net>
References: <CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<20200622.140639.018.15@192.168.1.130>
	<004701d648e3$0ac2e850$2048b8f0$@gmail.com>
	<CAO2sX31=Tkng2Zms9yLK7gVEyz+HKHDck5PEbTqL4xCe+diK=w@mail.gmail.com>
	<e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
	<CABKqQvEu6kC9SS7BCYK349DnxAh2moF1xLBFVoXBa1Hag5uHXA@mail.gmail.com>
	<63801353-D7D0-43CF-B340-E95876634B1C@gmail.com>
	<CAO2sX325iMBmhA4hs+iY5jNZ+weePFrRBgyk81BZT7Kyy23t8w@mail.gmail.com>
	<20200624120822.GG2690@rednote.net>
	<83CB53E7-F6D3-4B37-BA8D-EE7DBA340BF8@gmail.com>
	<20200625121548.GB245455@rednote.net>
Date: Thu, 25 Jun 2020 13:30:34 +0000
Message-ID: <CAO2sX30VsKxkCqGryAoqeqKHhs1Bi-dLMamNmz21+F-7VrmY6w@mail.gmail.com>
Subject: Re: Prospects for an accessible and open version of Android?
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Using Wodim to burn discs isn't hard, it's just something I do
infrequently enough that if I didn't have a 2-line bash script(the #!
line and the actual wodim command), I'd have to google the syntax
everytime Knoppix gets a new public release or I decide to play around
with the latest vanilla Debian.

I have similar scripts for wrighting/creating .img files to/from SD
cards using dd for when I'm playing around with my Raspberry Pi and
using Partimage to backup/restore my root partition so I don't have to
do a clean install everything I break something tinkering around that
I can't fix from a Live environment.

Still clueless about writing images intended for optical media to
flash media and actually have the flash drive boot, though again,
probably less that its hard and probably more that I've never had a
pressing need to learn, and like above, it's probable I'll hand the
task off to a super short script in the long run.

Though, now I'm curious, if optical drives really are going the way of
floppy drives(now there's an old user-facing technology I don't miss
though I do like floppy drive music and wouldn't mind an SD card case
made of upcycled 3-1/2 floppies), what, if anything, do modern
full-size towers use their exterior facing drive bays for? My vintage
2011 HP with a CD-RW/DVD-RW drive and no floppy and has two such bays
free, and the only thing I can think to put in either is a second
optical drive, which even I think would be overkill(I do tend to buy
multiple CDs at a time and Books-on-CD tend to be several discs, but I
doubt two instances of abcde ripping from two separate drives would
really speed up the overall proces, and I can't remember the last time
I had need to copy a disc or burn two copies at the same time).

Or have full-sized towers been deported to the land of retro-styling
and everything these days is either slim towers or mini PCs?

-Jeff

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

