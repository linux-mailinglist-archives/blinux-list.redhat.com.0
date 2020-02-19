Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 2961D16476F
	for <lists+blinux-list@lfdr.de>; Wed, 19 Feb 2020 15:52:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582123945;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YPe3ziQmUkTrBMOkhV32N54KJVwiwWAFOdAAoijXRTw=;
	b=LFMNOs4zvkxBdoQspVUTzYw922ZXCZWG7CB6zTxIdE057msfmMsWkrZGwV0Jk4GRKUNcpf
	geS27rq/bCqkg8BUnW1nkZQdCvPMTPuYUD3s74vuMZBUxT3/pQTmTIYLnux8vhMAEhpbow
	u3ygWQ96NzEWBH5n0sJmZyzcCKMYU74=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-249-UUSmAc5DNQqJNRjW8V53kQ-1; Wed, 19 Feb 2020 09:52:22 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D12DC8010CA;
	Wed, 19 Feb 2020 14:52:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BCBC4863A5;
	Wed, 19 Feb 2020 14:52:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B2B9F1808878;
	Wed, 19 Feb 2020 14:52:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01JEq6p4011722 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Feb 2020 09:52:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 866ED2038B82; Wed, 19 Feb 2020 14:52:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 81A1A2026D69
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 14:52:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C69C5900822
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 14:52:02 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-377-GMw94CuZPs2-rcZE54daHA-1; Wed, 19 Feb 2020 09:51:59 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48N0zy4Cs4z12dJ
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 09:51:58 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48N0zy2swBzcbc; Wed, 19 Feb 2020 09:51:58 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48N0zy2KrVzcbW
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 09:51:58 -0500 (EST)
Date: Wed, 19 Feb 2020 09:51:58 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Getting started with Debian
In-Reply-To: <6d42bdc1-f6c8-1e64-64e8-702f030cc84d@GMAIL.COM>
Message-ID: <alpine.NEB.2.21.2002190950470.18901@panix1.panix.com>
References: <28075e6a-979d-c1b5-cc1f-7ead9c893dac@GMAIL.COM>
	<alpine.NEB.2.21.2002190617580.12705@panix1.panix.com>
	<6d42bdc1-f6c8-1e64-64e8-702f030cc84d@GMAIL.COM>
MIME-Version: 1.0
X-MC-Unique: GMw94CuZPs2-rcZE54daHA-1
X-MC-Unique: UUSmAc5DNQqJNRjW8V53kQ-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01JEq6p4011722
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Those instructions will work on hard iron, additional steps are
necessary to properly prepare for virtual installs and I haven't got
into virtual installs so I can't help you with those.

On Wed, 19 Feb 2020, Linux for blind general discussion wrote:

> Date: Wed, 19 Feb 2020 08:25:07
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: Getting started with Debian
>
> I'm more referring to going from a totally fresh VM and doing it that way.
> \But, your instructions should work, correct?
>
> On 19/02/2020 11:26, Linux for blind general discussion wrote:
> > If you already have linux and wget on a system,
> > wget -bc
> > https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/10.3.0+nonfree/amd64/iso-dvd/firmware-10.3.0-amd64-DVD-1.iso
> > probably will help.
> > It starts up silent so hit the s key then hit enter to get a screen
> > reader going.
> > I'm recommending this since you can stack the deck in terms of most
> > awkward software and get a system installed.
> > Get into the main menu by hitting < repeatedly until the main numbered
> > menu comes up and choose the selection to check disk integrity first.
> > If that passes, you may want to consider setting notification priority
> > to low and saving installation logs to a mounted file system and then
> > continue the installation
> > A long long time ago, the main menu program on acbradio used to have
> > programs demonstrating linux installations one of which was a debian
> > installation from a now obsolete version of debian.  You control your
> > flavor of distribution by editing /etc/apt/sources.list.  And for now,
> > what you call testing is better known as bullseye.
> > I hope this helps.
> > On Wed, 19 Feb 2020,
> > Linux for blind general discussion wrote:
> >
> >> Date: Wed, 19 Feb 2020 05:23:40
> >> From: Linux for blind general discussion <blinux-list@redhat.com>
> >> To: Linux for blind general discussion <blinux-list@redhat.com>
> >> Subject: Getting started with Debian
> >>
> >> So, since Debian got brought up on the list...
> >>
> >> What all do I need to get started with it, exactly? I'd like to get a
> >> system
> >> up and going on debian-testing, and set it up how I want
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://www.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> >>
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

