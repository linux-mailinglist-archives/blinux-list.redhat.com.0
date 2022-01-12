Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 446CC48CB7E
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jan 2022 20:06:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642014380;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Yf4SSMHzC8rbMjn0ahmGUHSW143EYU0vrvABrYyXV2c=;
	b=ZYzc3zLGszmnAP1fGUN1OO5AyrmH12GD0Qw/2yLXbO7HBEZACGOlUCV0/0ivivY8GRG2nV
	ybnd/1DecL6P221i2jXGiV/KjBRlF/Yv//VbsE4Dcn5AROr1vlC02/m6r1Uti+CMz0A7DN
	RBK14LIK2L1TJPYqgaDRV/og9wsgX1w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-663-CDkAbOrPMLWZvnOtAYA5Pw-1; Wed, 12 Jan 2022 14:06:18 -0500
X-MC-Unique: CDkAbOrPMLWZvnOtAYA5Pw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C89291006AA3;
	Wed, 12 Jan 2022 19:06:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 989C760C0F;
	Wed, 12 Jan 2022 19:06:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 108334BB7B;
	Wed, 12 Jan 2022 19:06:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20CJ5rMt008201 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 12 Jan 2022 14:05:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 782AD140240B; Wed, 12 Jan 2022 19:05:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 73BEE140EBFD
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 19:05:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 559CD85A5A8
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 19:05:53 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-588-tjVZwpvHMu-BkGyUNxhimA-1; Wed, 12 Jan 2022 14:05:51 -0500
X-MC-Unique: tjVZwpvHMu-BkGyUNxhimA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JYxq30cPCz2rmf
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 14:05:51 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JYxq2702Gzcbc; Wed, 12 Jan 2022 14:05:50 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JYxq26gXNzcbC
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 14:05:50 -0500 (EST)
Date: Wed, 12 Jan 2022 14:05:50 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: MPV problem
In-Reply-To: <2cacb971-28b5-30a5-d6e2-4aa40a7c010f@gmail.com>
Message-ID: <aeefa8d8-f59d-d354-e74b-445e20ebdd79@panix.com>
References: <4f8b44c7-7955-ceb2-491f-b3a6de4cdda8@seznam.cz>
	<ff09d0ee-685d-97bc-4691-fb9ee4aa2fdf@gmail.com>
	<030518a4-9ddf-fb4f-61d8-a578520c902e@seznam.cz>
	<15e33618-54f2-8516-271c-a3b050dc6d20@gmail.com>
	<7e483b15-919b-b9ef-6fe4-60cc39a6da71@seznam.cz>
	<2cacb971-28b5-30a5-d6e2-4aa40a7c010f@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

My guess is mpv saves your bookmark in a file and another guess is mpv
allows only one bookmark to be useable at any time.  In order to handle
multiple bookmarks, the file name of the original bookmark will need
editing.  For the original I''d copy it to its name with a .0 suffix at
its end.  Then play the file again and move to your original bookmark
again.  Then play the file to a little before where you want the next
bookmark and background mpv see if control-z works.  Once backgrounded
remove the original bookmark file then foreground mpv and listen until you
get to where you want your bookmark and make the bookmark.  To make
another bookmark repeat the process described above with the difference
you add a .1 to the bookmark filename when you copy it.  That way you can
create multiple bookmarks.  To get to any of them, copy the file to the
current bookmark name then play the mp3.  It's an involved process and
maybe a script to manage multiple bookmarks could be written  but I don't
know that since I've not tried it yet.


On Wed, 12 Jan 2022, Linux for blind general discussion wrote:

> I have an mp3 file that is nearly an hour long. I have randomly saved and quit
> throughout the file, but I still can't reproduce the problem. The file is
> always saved at the point when I press shift+q, and it always starts at the
> position that I saved. it whenever I open the same file. I didn't play the
> entire file at normal speed, but did use arrow keys to move backward and
> forward, and mpv still allowed me to press shift+q in all cases to save the
> position where I stopped. My best guess is that there is likely a bug in your
> version of mpv.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

