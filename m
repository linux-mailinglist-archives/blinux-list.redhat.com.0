Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8A84C5ED2
	for <lists+blinux-list@lfdr.de>; Sun, 27 Feb 2022 21:40:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645994427;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=g0i6JBtEp2QZfhZvHXpqrlw4oG1xmU2VRFUZPtq+Xl0=;
	b=co2YkiLEgvofeTEaYMsqXH4E1Ylhit2OqWAAtRoZkYdeFlyc8KS2Mh13hi7DV3nAfCrbUj
	+QzMHaqRo5cYFywIdwLqXK828en49q6XIKwca5gDG1PsNR/DgZ4+4fIy06nLhnKbI3jci+
	sLPYKo8IoqjQDit78hXEpmqKwGsAJGY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-538-TfqUoY2PMhyP-RK_mx_jGA-1; Sun, 27 Feb 2022 15:40:23 -0500
X-MC-Unique: TfqUoY2PMhyP-RK_mx_jGA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 211872D4;
	Sun, 27 Feb 2022 20:40:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3F90B2D1F1;
	Sun, 27 Feb 2022 20:40:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B9A4F4BB40;
	Sun, 27 Feb 2022 20:39:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21RKdkHU007563 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 27 Feb 2022 15:39:46 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 354FD400DB0E; Sun, 27 Feb 2022 20:39:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 31331400E877
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 20:39:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 19DDF82A6C2
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 20:39:46 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-460-yY8_BKoHNaK26NrVTz9O4Q-1; Sun, 27 Feb 2022 15:39:44 -0500
X-MC-Unique: yY8_BKoHNaK26NrVTz9O4Q-1
Received: by mail-qt1-f170.google.com with SMTP id q10so7346075qtw.4
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 12:39:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=QF+grevgOxY0Einu0X6pMhL+wDiQJPbXVlzNdOtcGHY=;
	b=q/X3LEkBG9tv5O5+K5ZqXNgZh/dcwLWHSzfCXr5tv31qaADddLlPQ4H1M4L7jQaOdQ
	ICjhNkEinpnrC6644kGe9TaWfNPVHzp3mUnbAD38QtUo8gOE0sxq9iflHrzc92OdiG7U
	d9LgWHqsnObZsSkr+YXuzfxeQrlOXM56HWO5zn8AItCbvrH1OVtu/k2wKTpkaEVxrpWN
	m8Ukg6L8IsEIZZum60deFnpF+hU7e9sVcBMZkioTUIlUiPv2qc1DFUQvfA0ePKuuHkI3
	RzYRYnkGTJKmzQHyyRHMId8M4IX5M3J1GPF17j43pUc9KaQ7v8xpSRM+uxjlEXvl9CJG
	RDYg==
X-Gm-Message-State: AOAM533V8zYW0PQUdm6exXpPK+K3Ct0U8K/T/pieQKmrUIPo3LReTe15
	8KwzJSGpOGyQval6s0BUPbSgsmXO3FY1dEdjANSy874hJkw=
X-Google-Smtp-Source: ABdhPJxpliqcN8G+QPJFqUMwTbRnOgq/vWSeMDubG815AW45XhMxug3zkDOO5Ppr54YdvaPnKmGFu1EdGJczurioUXg=
X-Received: by 2002:ac8:5d8b:0:b0:2dd:d855:66e0 with SMTP id
	d11-20020ac85d8b000000b002ddd85566e0mr14397471qtx.258.1645994383241;
	Sun, 27 Feb 2022 12:39:43 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:5f08:0:0:0:0:0 with HTTP; Sun, 27 Feb 2022 12:39:42
	-0800 (PST)
In-Reply-To: <c5d02c2a-8fe1-7d26-ef60-c7c8b192b7e9@protonmail.com>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
	<FE6B19F6-999D-4FBE-8CB8-4A552ABCA9ED@cfcl.com>
	<c5d02c2a-8fe1-7d26-ef60-c7c8b192b7e9@protonmail.com>
Date: Sun, 27 Feb 2022 20:39:42 +0000
Message-ID: <CAO2sX33bsq5dtKCJg-J_XgqTM2LRWj6W1gU7D9FDdM3hhH_dqg@mail.gmail.com>
Subject: Re: Voting: Which game would you like to have on Linux?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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

Now that you mention it, arrows to move around the board and shifted
arrows to shift the board does sound like an elegant, one handed
control scheme for 2048. Using modifier keys on the arrow keys never
occured to me, possibly because I can't recall a program that ever did
anything with such beyond the standard "hold shift and use navigation
keys to select text" function most are familiar with.

Mastermind... That's the game where one player has 10 turns to guess
the series of 4 colored pegs the other player selected, and at each
turn, the Code master indicates how many of the guess's colors are in
the answer and how many ae in the correct postion? Memory is a bit
fuzzy since I was in highschool or possibly even middle school last
time I played it, and it's beennearly 17 years since I graduated high
school.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

