Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 6AB22131DC4
	for <lists+blinux-list@lfdr.de>; Tue,  7 Jan 2020 03:54:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1578365665;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=y2GeYNKjgT/z8R8Yn/uDueW8hNmrJ4N7sJ5SQsPdV5s=;
	b=UT7M4gK+DvsN5S1ALaqUNbK6gwGXbbr6IfJDmPM6NpC5BkoJ4T9rGAu7uSoi/HIXsms2Pn
	jlQd98VUwCcH8wZBsIdgSrC9MSFWwazgwLgDyE4AlO0hKVDoiyT6Pq0QUycnWdue5f512c
	uB/VbNX2hVhqexG700awu137qGTbBQ8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-280-QkBb_xu2OBGXtyKj2fridQ-1; Mon, 06 Jan 2020 21:54:23 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F086C477;
	Tue,  7 Jan 2020 02:54:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E4E85C21B;
	Tue,  7 Jan 2020 02:54:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DF2EA81C68;
	Tue,  7 Jan 2020 02:54:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0072s9Dj025433 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 6 Jan 2020 21:54:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 638C42022EB0; Tue,  7 Jan 2020 02:54:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5F0EE2022EAC
	for <blinux-list@redhat.com>; Tue,  7 Jan 2020 02:54:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DCD7B8ED1D2
	for <blinux-list@redhat.com>; Tue,  7 Jan 2020 02:54:06 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-220-VXX-vAuKNFGXPpHVTBON6g-1; Mon, 06 Jan 2020 21:54:05 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 47sH5S6Vy7z1hgj
	for <blinux-list@redhat.com>; Mon,  6 Jan 2020 21:54:04 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 47sH5S4m0lzcbc; Mon,  6 Jan 2020 21:54:04 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 47sH5S4FnCzcbW
	for <blinux-list@redhat.com>; Mon,  6 Jan 2020 21:54:04 -0500 (EST)
Date: Mon, 6 Jan 2020 21:54:04 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Slint: No Sound, Screen not in text mode
In-Reply-To: <20200107.021828.169.22@[0.0.0.0]>
Message-ID: <alpine.NEB.2.21.2001062149520.22387@panix1.panix.com>
References: <20200107.021828.169.22@[0.0.0.0]>
MIME-Version: 1.0
X-MC-Unique: VXX-vAuKNFGXPpHVTBON6g-1
X-MC-Unique: QkBb_xu2OBGXtyKj2fridQ-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0072s9Dj025433
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Could it be e2fsck needs to be run as root on that hard disk?
I think for us screen reader users it would be helpful to have a chron
job run that would repair the hard drive while the system was able to
use the screen reader and let the user know the disk repair job is
starting and to leave the system alone until maybe some sound signal or
message comes up telling them the job is done and here's what got fixed.
I just had to run e2fsck a few minutes ago.

On Mon, 6 Jan 2020, Linux for blind general discussion wrote:

> Date: Mon, 6 Jan 2020 21:18:28
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Slint: No Sound, Screen not in text mode
>
> I have installed the latest slint onto a hard drive, choosing
> "start in graphical mode"
> . Speech was available during install. However, I rebooted with my braille display attached, saw that ubiquitous
> screen not in text mode
> message, and there is no sound.
> I attempted to get a console with ctrl+alt+f1-2-3. No console prompt appeared. Obviously it has started up, because the
> screen not in text mode
> would not be there otherwise.
> During install, I chose the mate desktop, but I forget which window manager I chose.
> Any tips for rescuing this situation would be appreciated.
> Rob
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

