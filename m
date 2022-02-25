Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D594C4AB0
	for <lists+blinux-list@lfdr.de>; Fri, 25 Feb 2022 17:27:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645806477;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nKTeGwpQonAIN8YvXX452jND8TYuasSYlGCIgrxgNwU=;
	b=NnZl+NVwrJOwBK+0V6p1F2zLQY9TuJCqpIfvvA87TV5LgmCo6aHCG0Z8lQBpTeICbBm7JI
	fgoM+b/c+Rgr1OTwLLynRUpA6bo84maSuvll3Wvze6mZuPg3Tin8cTWMhEg81c3/dXwNEy
	Lf5Is/fmJl6JbEftEIDe4XOdxAc6M5M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-486-jCEIcBufNVORptoLaYHnUw-1; Fri, 25 Feb 2022 11:27:55 -0500
X-MC-Unique: jCEIcBufNVORptoLaYHnUw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ABD041091DA0;
	Fri, 25 Feb 2022 16:27:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4524F7C048;
	Fri, 25 Feb 2022 16:27:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 73E804BB40;
	Fri, 25 Feb 2022 16:27:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21PGRZT0028783 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Feb 2022 11:27:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 852062166B13; Fri, 25 Feb 2022 16:27:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 80F2E2166B17
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 16:27:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E14741C04B4F
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 16:27:28 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-19-Psw4goIROku73ZIITW5m1g-1; Fri, 25 Feb 2022 11:27:27 -0500
X-MC-Unique: Psw4goIROku73ZIITW5m1g-1
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K4wCy5Fkrz2prG
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 11:27:26 -0500 (EST)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4K4wCz06M4z1QWf; Fri, 25 Feb 2022 11:27:26 -0500 (EST)
Date: Fri, 25 Feb 2022 11:27:26 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Voting: Which game would you like to have on Linux?
Message-ID: <YhkDbjpmsi4EaKwT@panix.com>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
MIME-Version: 1.0
In-Reply-To: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Mastermind

On Fri, Feb 25, 2022 at 01:03:44PM +0000, Linux for blind general discussion wrote:
> Hello list,
> 
> right now, I'm developing a version of my RTK library for Linux.
> 
> RTK is basically a set of various functions, which should significantly
> easen up my future work.
> 
> And in order to test it before using it in serious projects, I decided
> to build few "minigames", as:
> 
> a. I need to get a better grip of packaging for Linux and
> 
> b. We currently lack a lot of these.
> 
> 
> I already have AudioGo, a blind accessible version of the ancient
> Chinese board game, in a pretty finished state.
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
> a. Be simple to fulfill, these are projects just to test out a library,
> not long-term projects. Generally, all I expect of these games is to be
> able to launch, start a new game, save a game progress and exit, plus
> some basic settings. Nothing more, may be I'll add a game export option
> to the board games, but that's all.
> 
> 
> b. Should be a logical game. I.E. one where you use your logics to win.
> The reason for this is in the first place my personal preference, but
> also the fact that Quentin Playroom already covers many card games and
> similar stuff, so they don't need an immediate addressing.
> 
> 
> Final note, if you don't know some of the games mentioned in the voting
> list, please, I would greatly appreciate if you took the time and
> checked out at least their basic description and rules.
> 
> Linux itself is among the less recognized desktop operating systems
> compared to the mainstream, and yet, many of us on this list simply love it.
> 
> So, why not to give a chance to a game you might not have known, but
> that can turn out to be really interesting?
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

-- 
Rudy Vener
Website: http://www.rudyvener.com
Twitter: https://twitter.com/RudySalt

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

