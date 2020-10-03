Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 84B6628203E
	for <lists+blinux-list@lfdr.de>; Sat,  3 Oct 2020 03:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601690329;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OJ0xEKKhO7LXax+k2/8fXex5u2eiHXtls0k2EOabxC8=;
	b=AhK2o79vBFjs2Nr2OlOW1YmW7JPCBDmY7c5nW5+TYJWjFbV6cm5RTcLJX1XYnmvOw2jwAI
	8F7Pn+wHEZ4XOGiC9vvmwIlxIA0aRPwg2MZrDkkDpr0Z3ASw6s/QM9Zg2Cq71zrKOmcCOJ
	ZI/ZzB4ve/XQP/9sR5VZFokprfcPBBE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-415-S7tuy8EnM6O53aqTYDDaLg-1; Fri, 02 Oct 2020 21:58:47 -0400
X-MC-Unique: S7tuy8EnM6O53aqTYDDaLg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 67E6E1074660;
	Sat,  3 Oct 2020 01:58:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D8DA178806;
	Sat,  3 Oct 2020 01:58:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 63A361826D32;
	Sat,  3 Oct 2020 01:58:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0931shiZ015962 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 2 Oct 2020 21:54:44 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BC92710ABCB5; Sat,  3 Oct 2020 01:54:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B8DB010ABCB2
	for <blinux-list@redhat.com>; Sat,  3 Oct 2020 01:54:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5F225185A78B
	for <blinux-list@redhat.com>; Sat,  3 Oct 2020 01:54:41 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-491-k6YfjZe0P7WdHFpejo4fdw-1; Fri, 02 Oct 2020 21:54:39 -0400
X-MC-Unique: k6YfjZe0P7WdHFpejo4fdw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4C390G4twFz15ll
	for <blinux-list@redhat.com>; Fri,  2 Oct 2020 21:54:38 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4C390G3pLZzcbc; Fri,  2 Oct 2020 21:54:38 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4C390G3F8BzcbV
	for <blinux-list@redhat.com>; Fri,  2 Oct 2020 21:54:38 -0400 (EDT)
Date: Fri, 2 Oct 2020 21:54:38 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Continuous reading in Emacspeak and Cursor Movement
In-Reply-To: <CAO2sX30h6iatqJRhauvYjCMw6PAAx9DSdtO=y_7w=m3YM5BgMA@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2010022151300.17203@panix1.panix.com>
References: <87ft6xoznv.fsf.ref@yahoo.com> <87ft6xoznv.fsf@yahoo.com>
	<CAGJxbF4FkVdc2mykt9ChgN2Yj2en6EvnmPeL+uVbjondqY+gsg@mail.gmail.com>
	<alpine.NEB.2.23.451.2010021020430.4800@panix1.panix.com>
	<87362wpr0h.fsf@yahoo.com>
	<CAO2sX30h6iatqJRhauvYjCMw6PAAx9DSdtO=y_7w=m3YM5BgMA@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Not only that, it's entirely possible to miss text with continuous
reading due to buffer overflows.  I've had that happen several times on
Linux and on a Mac a few years ago.  Times happen when you have to
sacrifice yourself to the system and this is one Dr. Raman found out
about before all of us did.

You can tell when a buffer overflow has happened when continuous reading
appears to stop before a document has ended.

On Fri, 2 Oct 2020, Linux for blind general discussion wrote:

> Date: Fri, 2 Oct 2020 12:51:19
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Subject: Re: Continuous reading in Emacspeak and Cursor Movement
>
> While I don't have any experience with emacspeak or emacs in general,
> I think this might just be the difference between a graphical screen
> reader and a console screen reader.
>
> As far as I know, pretty much every console screen reader just reads
> the raw text from the buffer that gets printed to the screen and
> really has no way of controlling what's on screen, while much of what
> Orca and other graphical screen readers depends on at-spi(or something
> similar) allowing two-way communication between screen reader and the
> active app from app to screen reader so Orca knows what to make the
> synth speak and orca to app to allow Orca some control over the app.
>
> In addition to allowing Orca to make a web browser or editor scroll as
> needed to allow continuous reading, I'm assuming this two-way
> communication is also why Orca can do hotkey navigation in
> Firefox/Chromium, but you don't get similar in elinks with a text-mode
> screen reader.
>
> Admittedly, emacspeak might be more integrated into emacs and have
> such two-way communication unlike a general purpose text-only screen
> reader.
>
> And if any of what I just said is wrong, please correct me, but yeah,
> I think you might need a talking text-based eBook reader to actually
> get continuous read without the GUI.
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

