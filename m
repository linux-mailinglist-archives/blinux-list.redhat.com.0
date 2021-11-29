Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B22846253E
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 23:34:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638225247;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tNyG+igUrP/gLKMorAtrTyDDt0srQmGV+LTQMdMSMt4=;
	b=WiJJCp0knWRNXhJYqFhwDcwjpynLFJvvw9nK+IO5yl9VVDctAkczL2LDPGs1M6g/cb5f39
	TwNLahLvdnCGMdIHcsW3QiPCrHC6ErOECNYWgwe8NBurjPnk+WysALdFC7nkheK+Nt4PVD
	irszpfchabKLvycs3uv90EQbGrHw48Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-572-Rhruu2flN5aisKgUxuWS-Q-1; Mon, 29 Nov 2021 17:34:05 -0500
X-MC-Unique: Rhruu2flN5aisKgUxuWS-Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8C1ED2F23;
	Mon, 29 Nov 2021 22:34:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 712045D6BA;
	Mon, 29 Nov 2021 22:34:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EB2764BB7C;
	Mon, 29 Nov 2021 22:33:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATMXrax014967 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 17:33:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4A1D0C23DB3; Mon, 29 Nov 2021 22:33:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 46004C202C6
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 22:33:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2C088808784
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 22:33:53 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-572-TxZF-Y4JMfisuUxkls2KyA-1; Mon, 29 Nov 2021 17:33:51 -0500
X-MC-Unique: TxZF-Y4JMfisuUxkls2KyA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4J30WL67LRzMJS
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 17:33:50 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4J30WL5V01zcbc; Mon, 29 Nov 2021 17:33:50 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4J30WL59bmzcbW
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 17:33:50 -0500 (EST)
Date: Mon, 29 Nov 2021 17:33:50 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: What is the easiest and most accessible editor?
In-Reply-To: <CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

There is teachjove and jove is jonathan's own version of emacs and
teachjove can be run without running jove or emacs directly.  This can be
done from the terminal for any willing to learn.  I suppose emacs could be
configured in the same way but haven't tried that yet.  It probably would
need a small script.


On Mon, 29 Nov 2021, Linux for blind general discussion wrote:

> I actually have a computer science degree and still find both emacs
> and vi to be riddles, wrapped in mysteries, inside enigmas and I
> should probably figure out a way to add puzzle, conundrum, and a few
> other synonyms to that Matryoshka doll of an idiom.
>
> I don't doubt the claims they are powerful bits of kit once mastered,
> but they certainly for the faint of heart and not a good choice if you
> just want to edit the occasional config file.
>
> I personally use Nano, and it lets you just enter nano to open a blank
> file you can just start typing in or nano path/to/filename.ext to open
> an existing file, but it does have some commands that might throw
> people coming from a grapphical editor or word processor for a
> loop(e.g. save is ctrl+o, not ctrl+s, quit is ctrl+x, not ctrl+q) and
> has cut and paste that is line based instead of selection based(e.g.
> ctrl+k cuts the current line in its entirety, repeating ctrl+k without
> otheer input continues adding lines to the cut buffer, ctrl+u uncuts
> evereything in the cut buffer, copying is accomplished by uncutting
> where youo cut, then uncutting again where you want the copy). Also,
> pressing ctrl+g will bring up nano's full command list, while the most
> commond commandsare printed on the bottom two lines of the screen.
>
> For simpler console text editors, there's also Micro, which is similar
> to Pico/nano, but has key bindings more in line with the majority of
> graphical editors.
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

