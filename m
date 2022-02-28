Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 709904C78D2
	for <lists+blinux-list@lfdr.de>; Mon, 28 Feb 2022 20:32:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646076762;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XwIPj++LFvglLgFcaV+wBx0lvGu8XfVsyUaIIE5vLH4=;
	b=YM3EreMue7yy2jQ9SrnZNgEaLS5jQKuzN4TNMa006HaWpzB6NZko8x/bRghgUchRVDs0/u
	gvxMv9f1EEp0PT+9x54UXEbAAP02AKlYf0WqoRdeaZuO0rG7t9X/JBLLVRq+NYEv7nzSwc
	vtKxqRusnH3qjRxfcqEWVhmc/ZhfaYk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-641-JUhmm9WpNEWwMIpFnzptTA-1; Mon, 28 Feb 2022 14:32:39 -0500
X-MC-Unique: JUhmm9WpNEWwMIpFnzptTA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 54C5C80EDAC;
	Mon, 28 Feb 2022 19:32:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6DD3B39A5B;
	Mon, 28 Feb 2022 19:32:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 09D5B1809C98;
	Mon, 28 Feb 2022 19:32:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21SJWFZO003606 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 28 Feb 2022 14:32:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8331E401E37; Mon, 28 Feb 2022 19:32:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7F46B401E2B
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 19:32:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 66C3338035C3
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 19:32:15 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
	[209.85.219.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-336-O2NqJ4FWNy-b_ZekSwsKPQ-1; Mon, 28 Feb 2022 14:32:13 -0500
X-MC-Unique: O2NqJ4FWNy-b_ZekSwsKPQ-1
Received: by mail-qv1-f47.google.com with SMTP id w7so14340338qvr.3
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 11:32:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=LPbYQclhm1e7+ZKV0/9Wzz/ydOMdnlU1N/5l7/DAaQk=;
	b=eIojJe9g23Wvgeu/8gREO5tmwh6Y/F/bSdSiduN20/F6uyyTBQM7GmFDLG7miBC17m
	sqe7G7gGKzH4lo0nWXjXopvpp+bzyM2hKbmhh4JxIhBlCwsL3qy69sOgPkD/O3bUkwD/
	6SGHM5gFnb1ZUO3WDvDNmswjBh33YJgvoTndcZ7kMI/bOVCu+ASx852ZniN66iYQj6I8
	ix0iRqu/+cLaSPI6mXp1hWIPmfyZ/dVYSBe7XxgiwtfgLwuG4lY6OTsCUcXfimIdp4sX
	8YijkEhZ6WjNDRlGX2sWjAel3Z1qhs0/dgIPWQjHJlFZymIKpeqe5KV2olT58L4TS7mj
	+oeA==
X-Gm-Message-State: AOAM531eT++OOlmxGHN8WirXAo1TJUU7wG9U4Y/AHDeGm/mzFUd94k1M
	Jh72/uBmaukTxf3ChRLWJR6ATX2tzQy7g/BH9fOwBQ0OElk=
X-Google-Smtp-Source: ABdhPJzhT4bRnmRdlt8/WO6fEVV+OCbifctgL+tY6dwi6OjlI3sQa14qJm6HK70JYkosP3yvVFD7qCwDD/puwXLPDQQ=
X-Received: by 2002:ad4:4d52:0:b0:432:5e06:a2ad with SMTP id
	m18-20020ad44d52000000b004325e06a2admr14859131qvm.99.1646076732924;
	Mon, 28 Feb 2022 11:32:12 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:5f08:0:0:0:0:0 with HTTP; Mon, 28 Feb 2022 11:32:12
	-0800 (PST)
In-Reply-To: <c3ddb44e-6888-beda-3f87-3acd1744e461@protonmail.com>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
	<FE6B19F6-999D-4FBE-8CB8-4A552ABCA9ED@cfcl.com>
	<c5d02c2a-8fe1-7d26-ef60-c7c8b192b7e9@protonmail.com>
	<CAO2sX33bsq5dtKCJg-J_XgqTM2LRWj6W1gU7D9FDdM3hhH_dqg@mail.gmail.com>
	<3aa8b542-556-90ee-80ff-16d7754096eb@hubert-humphrey.com>
	<CAN8CudhVwgPCHnDt6-qHKT6uo9F8Wo9bSJZVtgHVWrtd5wKrrQ@mail.gmail.com>
	<c3ddb44e-6888-beda-3f87-3acd1744e461@protonmail.com>
Date: Mon, 28 Feb 2022 19:32:12 +0000
Message-ID: <CAO2sX33cQsgANZ1pLRCOafTJoodvsaHrYxDgpnFpS-n8RGxZbA@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have some interest in Go... started with me reading Hikaru no Go in
Viz's version of Shonen Jump back in the day, and I own a Go board,
though sadly, I've long since lost the stones that came with it and
the grid lines are just printed on... and the most I've ever had the
opertunity to play was some training games on a 9*9 board.

I also have an interest in other classic abstract strategy games like
Checkers(Draughts to the Brits if I'm not mistaken), Chess,
Othello/Reversi, Chinese Checkers, though its been what feels like
forever since I've had anyone to play face-to-face...

And speaking specifically of Othello, one of the dorms at the school
for the blind I attended for most of my K-12 education had a really
nice set that I wish I could find...

The game pieces consisted of three parts: black plastic with a ridged,
concentric circle pattern, white plastic with a smooth surface, a
small disc magnet that fit between the two pieces of plastic, which
snapped together. And the magnets all alinged so they stack with the
same orientation. There were also black plastic cases with rounded
sides that each held two stacks of 16 pieces. The board had green
painted metal squares the magnets would stick to, an embossed grid of
black lines, the squares just barely wider than the diameter of the
game pieces... also the board was thick, the play surface maybe an
inch about the table top, and the board folded in half, shut with
magnets, and the bottom of the board had two cut outs that the piece
containers could be stored in. Closed it was maybe 5"*10"*2", and
overall, I would say it was perfectly designed both for portability
and blind play... throw in a set of 32 fridge magnets to block off
half the squares, and it could have doubled as the perfect
portable/blind friendly checker set(could have played checkers with it
as is, but making the checkering of the board more obvious would help
avoid illegal moves on to "red" squares... Still, would love to own a
set like that... two distinct armies of chessmen with magnetized bases
would be nice too.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

