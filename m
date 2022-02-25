Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DBCA4C462D
	for <lists+blinux-list@lfdr.de>; Fri, 25 Feb 2022 14:25:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645795532;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=14xZgP3zRvwTQCTLHLTD894D3VB/5qNbejBOLk26/uc=;
	b=AKg/1OFp7tc58bB46zqVcnke7HcamKqrE2x6IZ+m7zASxQyuU8wN3sGEWEHzo0Tdj7n+/o
	Slpk9CD98jBYwTWuPswzxqGGKf0Fu6kbQ3kCEHg2UxLI8Q+cE1uPsfC7VX5NoP9fI7Efex
	r3xdM69JnQwX1RfjdvGDigZR6CzD5sk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-610-l4tBhQcqPTa2UOmXjSPw8g-1; Fri, 25 Feb 2022 08:25:28 -0500
X-MC-Unique: l4tBhQcqPTa2UOmXjSPw8g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4C7D41006AA5;
	Fri, 25 Feb 2022 13:25:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 34DC07B8D3;
	Fri, 25 Feb 2022 13:25:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8161F1809CB2;
	Fri, 25 Feb 2022 13:25:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21PDPIJr015438 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Feb 2022 08:25:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A247B401E55; Fri, 25 Feb 2022 13:25:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E35A401E49
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 13:25:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8406C85A5BC
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 13:25:18 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-673-AurjiVdSNwqigfRZ6hHBDA-1; Fri, 25 Feb 2022 08:25:16 -0500
X-MC-Unique: AurjiVdSNwqigfRZ6hHBDA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K4r9m0n6Jz29Mv
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 08:25:16 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4K4r9m09Btzcbc; Fri, 25 Feb 2022 08:25:15 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4K4r9l6k0PzcbP
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 08:25:15 -0500 (EST)
Date: Fri, 25 Feb 2022 08:25:15 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: RE: Voting: Which game would you like to have on Linux?
In-Reply-To: <034a01d82a48$b6039690$220ac3b0$@gmail.com>
Message-ID: <8042f2be-47ef-e0ea-325f-36582653cf1@panix.com>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
	<034a01d82a48$b6039690$220ac3b0$@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

gnugo has existed for some time by now.  The game of Senet is rarely
available in any accessible form though it's complex.


On Fri, 25 Feb 2022, Linux for blind general discussion wrote:

> Sudoku is my vote.
>
> -----Original Message-----
> From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
> Behalf Of Linux for blind general discussion
> Sent: Friday, February 25, 2022 7:04 AM
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Voting: Which game would you like to have on Linux?
>
> Hello list,
>
> right now, I'm developing a version of my RTK library for Linux.
>
> RTK is basically a set of various functions, which should significantly
> easen up my future work.
>
> And in order to test it before using it in serious projects, I decided to
> build few "minigames", as:
>
> a. I need to get a better grip of packaging for Linux and
>
> b. We currently lack a lot of these.
>
>
> I already have AudioGo, a blind accessible version of the ancient Chinese
> board game, in a pretty finished state.
>
>
> The question is, what logical minigame would you like to see next?
>
> The choices I'm considering right now are:
>
>
> * Minishogi
>
> * Arimaa
>
> * Othello
>
> * Connect four
>
> * 2048
>
> * Sudoku
>
> * Minesweeper
>
> * Wordle perhaps? I didn't check yet whether the official version is
> accessible or not.
>
>
> If any of these games already has an open-source accessible Linux native
> version, please let me know, I'm not aware of it.
>
>
> Also, if you have suggestions for other interesting games I might have
> forgotten, feel free to suggest.
>
> Just note, that the suggestion should:
>
> a. Be simple to fulfill, these are projects just to test out a library, not
> long-term projects. Generally, all I expect of these games is to be able to
> launch, start a new game, save a game progress and exit, plus some basic
> settings. Nothing more, may be I'll add a game export option to the board
> games, but that's all.
>
>
> b. Should be a logical game. I.E. one where you use your logics to win.
> The reason for this is in the first place my personal preference, but also
> the fact that Quentin Playroom already covers many card games and similar
> stuff, so they don't need an immediate addressing.
>
>
> Final note, if you don't know some of the games mentioned in the voting
> list, please, I would greatly appreciate if you took the time and checked
> out at least their basic description and rules.
>
> Linux itself is among the less recognized desktop operating systems compared
> to the mainstream, and yet, many of us on this list simply love it.
>
> So, why not to give a chance to a game you might not have known, but that
> can turn out to be really interesting?
>
>
> Thanks!
>
>
> Best regards
>
>
> Rastislav
>
>
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
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

