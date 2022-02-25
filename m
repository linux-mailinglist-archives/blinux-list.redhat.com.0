Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F414C4542
	for <lists+blinux-list@lfdr.de>; Fri, 25 Feb 2022 14:04:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645794286;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VFNncU3eRLkf7odt1ALkTYxEY0Cqbx8ZNFa6cVEFNRc=;
	b=bILscHmmHkp5hQFKpJTEpjks1BMIqi+og0bTvuh3mGZU9l5ePd1WGmDA7ezVGc5bY5mM3h
	EtFw2yYUYgqHnp4akVvQm4uYRSSRJfF9RCZR1az2i3cwb9jklhFQkcSwNLvnoqZUitOZj2
	TCkLYKLwgfESSRavW7qxF645J99Smpo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-34-eq_mUOPqO7WOKu9BPX94OQ-1; Fri, 25 Feb 2022 08:04:45 -0500
X-MC-Unique: eq_mUOPqO7WOKu9BPX94OQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DA7191854E26;
	Fri, 25 Feb 2022 13:04:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 00F578089D;
	Fri, 25 Feb 2022 13:04:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 09B5C1809CB2;
	Fri, 25 Feb 2022 13:04:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21PD40ij012913 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Feb 2022 08:04:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8A2C02026D67; Fri, 25 Feb 2022 13:04:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 860A2201AC58
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 13:03:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E3E2A29AA383
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 13:03:55 +0000 (UTC)
Received: from mail-4316.protonmail.ch (mail-4316.protonmail.ch
	[185.70.43.16]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-127-XYWPBkaKNCGUc7dk_uXe7A-1; Fri, 25 Feb 2022 08:03:54 -0500
X-MC-Unique: XYWPBkaKNCGUc7dk_uXe7A-1
Date: Fri, 25 Feb 2022 13:03:44 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Voting: Which game would you like to have on Linux?
Message-ID: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	T_SCC_BODY_TEXT_LINE shortcircuit=no autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21PD40ij012913
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

Hello list,

right now, I'm developing a version of my RTK library for Linux.

RTK is basically a set of various functions, which should significantly
easen up my future work.

And in order to test it before using it in serious projects, I decided
to build few "minigames", as:

a. I need to get a better grip of packaging for Linux and

b. We currently lack a lot of these.


I already have AudioGo, a blind accessible version of the ancient
Chinese board game, in a pretty finished state.


The question is, what logical minigame would you like to see next?

The choices I'm considering right now are:


* Minishogi

* Arimaa

* Othello

* Connect four

* 2048

* Sudoku

* Minesweeper

* Wordle perhaps? I didn't check yet whether the official version is
accessible or not.


If any of these games already has an open-source accessible Linux native
version, please let me know, I'm not aware of it.


Also, if you have suggestions for other interesting games I might have
forgotten, feel free to suggest.

Just note, that the suggestion should:

a. Be simple to fulfill, these are projects just to test out a library,
not long-term projects. Generally, all I expect of these games is to be
able to launch, start a new game, save a game progress and exit, plus
some basic settings. Nothing more, may be I'll add a game export option
to the board games, but that's all.


b. Should be a logical game. I.E. one where you use your logics to win.
The reason for this is in the first place my personal preference, but
also the fact that Quentin Playroom already covers many card games and
similar stuff, so they don't need an immediate addressing.


Final note, if you don't know some of the games mentioned in the voting
list, please, I would greatly appreciate if you took the time and
checked out at least their basic description and rules.

Linux itself is among the less recognized desktop operating systems
compared to the mainstream, and yet, many of us on this list simply love it.

So, why not to give a chance to a game you might not have known, but
that can turn out to be really interesting?


Thanks!


Best regards


Rastislav




_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

