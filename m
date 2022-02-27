Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CE44C5F26
	for <lists+blinux-list@lfdr.de>; Sun, 27 Feb 2022 22:44:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645998255;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vrvT2UeyhjTXIG6GNhQXuOFg2t8Kj3oUe+KKAQ1ZsUo=;
	b=amX7OlQaErKVU83mtHsntNzkPTeVbmp0Qm/OwCRxe+DucOI/1xdy2PZhSidTf1BKWT+G9q
	3I25YMFZcMPRO5aYO4f67fZhB2M0iyO7rNrzxLvGMUl6/zoSea4aNaU4b4+K6sLk7zjsky
	9PcP/ybjUNL2UpLDeRFOO/1fFXla3+s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-381-IJuBTU7GMqKGE8N1nZt5cg-1; Sun, 27 Feb 2022 16:44:12 -0500
X-MC-Unique: IJuBTU7GMqKGE8N1nZt5cg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A6DF18015BA;
	Sun, 27 Feb 2022 21:44:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 63A89610F1;
	Sun, 27 Feb 2022 21:44:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0BF4D1809C98;
	Sun, 27 Feb 2022 21:43:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21RLhrs9011461 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 27 Feb 2022 16:43:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C840C141DC2D; Sun, 27 Feb 2022 21:43:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C48F9141DC2C
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 21:43:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ABFD6800B24
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 21:43:53 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
	[209.85.222.177]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-453-mkMt_LgYPDK0no1RkCGa0w-1; Sun, 27 Feb 2022 16:43:51 -0500
X-MC-Unique: mkMt_LgYPDK0no1RkCGa0w-1
Received: by mail-qk1-f177.google.com with SMTP id n185so9011641qke.5
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 13:43:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=xQ4JWBrxvyBl1PEmWRgFdZTJyUI4YJWwU9fU4notMoQ=;
	b=pY8exl2LZ0l4crj37nggSz7jGDcn5OoY9CTVJtESZh4koRP/R5W8qap/4vFNhWZ7yt
	4PgfN+NMLQX5bvN59yYnbpLbaYT0dQWx8zlikZvzlYbY/fgcz+2hAd4vRaBbaa4t2rfM
	tfx/U7tWg6i3U8s2ueA5BqtqWkcpeXkAfd7+3187AyGZXIF3mJVjPiKPvFuQx/+Ubg5f
	QqeW/1hXMcg9zTtF8zUO/Eb4VO7mcepTAl69yxJwH3IZHouapN8qJ/an+RY+pFDo5d23
	CFf0sn578nAHokdBd0P4IeVOWBa++G+0Fb4Ugd+E24l9wLSYs+eLTQ7OMxOq2yvDwyyN
	oRvw==
X-Gm-Message-State: AOAM530L1U04eV7yXRw4bD6Wy0z9UYazeGH4HwnMklz3iFKeyJ4aHqTr
	T87VvGQIL/05YWM7RUQLpiyYTI2gr3NnTnMq5bJdlJupF24=
X-Google-Smtp-Source: ABdhPJyPvz6KYcPw4+OspREGl/lNA3sZXy6RMoF8bc1ILnW5o5KyFifGd2jBiK2KGdh3lzc2q2A3uzMyKEHM62Vigec=
X-Received: by 2002:a05:620a:1981:b0:477:6e45:3e7d with SMTP id
	bm1-20020a05620a198100b004776e453e7dmr9564168qkb.407.1645998230537;
	Sun, 27 Feb 2022 13:43:50 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:5f08:0:0:0:0:0 with HTTP; Sun, 27 Feb 2022 13:43:50
	-0800 (PST)
In-Reply-To: <3aa8b542-556-90ee-80ff-16d7754096eb@hubert-humphrey.com>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
	<FE6B19F6-999D-4FBE-8CB8-4A552ABCA9ED@cfcl.com>
	<c5d02c2a-8fe1-7d26-ef60-c7c8b192b7e9@protonmail.com>
	<CAO2sX33bsq5dtKCJg-J_XgqTM2LRWj6W1gU7D9FDdM3hhH_dqg@mail.gmail.com>
	<3aa8b542-556-90ee-80ff-16d7754096eb@hubert-humphrey.com>
Date: Sun, 27 Feb 2022 21:43:50 +0000
Message-ID: <CAO2sX303T7OgFDkL5qZwAwDc2T1miTVrrAaB24EZ=i-R8H6syw@mail.gmail.com>
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

You know, while Radio's hayday was before my time and I was never big
on boxing, that actually sounds like an awesome auditory aesthetic to
go for... and now I'm imagining some noir-inspired audio adventure
where a slightly edited recording of a game session could pass for an
episode from an oldschool radio serial, simulated microphone/antenna
static included... I also kind of wonder how much of the Hitchhiker's
Guide to the Galaxy text adventure from Infocom could be converted to
an audio game using snippets from the original radio show and how much
would need to rely on TTS or require recording new dialog.

A fully voiced version of the original Zork trilogy that also
modernizes them some(say, along the lines of resetting puzzles you've
rendered unsolveable whenever the player dies, destroyed important
items respawning, the lantern regaining some charge after a grue eats
you and you respawn, a way to force a respawn at a safe spot if you
get trapped with no way out, etc... perhaps with a hardcore or
masochist setting that restores all the ways you can render the game
unwinnable through even the smallest mistakes)...

But this is going way off the original topic...

More in the vein of the kind of games this thread was originally
about, an accessible version of Panel de Pon/Tetris Attack/Puzzle
League, Bejewelled, or another rearrange random pieces on a grid to
make n-in-a-row game would be cool... There's also this logic game I
remember, forget what its called, but the version I played was
Alchemy-themed... you were given a random alchemical symbol in a
random color and had to place it on a 10*10 grid so it was adjacent to
a symbol that would match in shape or color. each symbol placed would
cause the square it was placed on to turn from lead to gold, filling a
column or row would make the pieces vanish to free up space, and the
goal was to turn the whole board gold. There was a forge meter that
slowly filled over time, and you could discard a piece you can't find
a place to put it, but it would add a decent chunk to your forge meter
and the game ended if the forge ever overflows. I think each time you
completely turned the board to gold, the fill rate for the forge would
increase, and there would be more distinct symbol/color combinations
to deal with. Probably a good candidate for a move around board with
arrows, enter or spacebar to place the active piece if the highlighted
square is a valid spot to put it.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

