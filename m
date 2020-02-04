Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 6A071151DF5
	for <lists+blinux-list@lfdr.de>; Tue,  4 Feb 2020 17:14:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580832850;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Wu0h3a9F85DcqgXHwL1HLOEAxJksirsm3hLOPcESNIs=;
	b=ZbXiOnp/usavwA5S20K7jucp8ObjI2dkxKpGyyUIk5gvVI3uvwC7+h7bW6qFzCPHWrt2yk
	1qASEWLAttOxbF94070wYoAsN+gcku0PfnvVqDipjZLt55mNG55/gGbsP6m1/daDpfnIJ2
	SIpebN9VL9Xfrwc4mMO87D+Rl2zbkIQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-96-PPrUcEgROUmcC4rvt9i4Mg-1; Tue, 04 Feb 2020 11:14:06 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A008B1085926;
	Tue,  4 Feb 2020 16:14:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D1E3860BF3;
	Tue,  4 Feb 2020 16:14:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2B59C8173F;
	Tue,  4 Feb 2020 16:13:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 014GDqaW001708 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 4 Feb 2020 11:13:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 227CD20316F9; Tue,  4 Feb 2020 16:13:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1DA622093CE9
	for <blinux-list@redhat.com>; Tue,  4 Feb 2020 16:13:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0B43018AE954
	for <blinux-list@redhat.com>; Tue,  4 Feb 2020 16:13:50 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-417-k7-TCeG-OzSPbov4YI9jKw-1; Tue, 04 Feb 2020 11:13:47 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48BqWH4Kr4z1Lbq
	for <blinux-list@redhat.com>; Tue,  4 Feb 2020 11:13:47 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48BqWH3Zwlzcbc; Tue,  4 Feb 2020 11:13:47 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48BqWH3WVpzcbW
	for <blinux-list@redhat.com>; Tue,  4 Feb 2020 11:13:47 -0500 (EST)
Date: Tue, 4 Feb 2020 11:13:47 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Looking for Emacspeak users
In-Reply-To: <bc9ce353-0b50-f93e-345f-c9d53da80968@gmail.com>
Message-ID: <alpine.NEB.2.21.2002041112390.13803@panix1.panix.com>
References: <bc9ce353-0b50-f93e-345f-c9d53da80968@gmail.com>
MIME-Version: 1.0
X-MC-Unique: k7-TCeG-OzSPbov4YI9jKw-1
X-MC-Unique: PPrUcEgROUmcC4rvt9i4Mg-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 014GDqaW001708
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Why not send e-mail to:
emacspeak-request@cs.vassar.edu
and ask to be subscribed to the emacspeak list?  That's where all of
that action happens.
On Tue, 4 Feb 2020, Linux for blind general
discussion wrote:

> Date: Tue, 4 Feb 2020 11:01:49
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Looking for Emacspeak users
>
> Hello
>
>
> I have Several years curious about emacspeak.
>
> I tried it out in a raspberry pi, but regarding it needs its own TTS engine
> whuich I was not able to configure in those times.
>
>
> I would like to contact emacspeak users in linux to discuss about what can I
> do in that environment and how versatile it is.
>
>
> Thanks
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

