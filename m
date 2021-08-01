Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 25D033DC969
	for <lists+blinux-list@lfdr.de>; Sun,  1 Aug 2021 05:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627788282;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PkIIKyYKJ4ju0dY1fwlRMertGSdTgZFNNHZJ8TIvAc0=;
	b=dG43j0LE59qJD/GmuQQPT2+Grj1Ks4kxA9wUsHAdzwDq0SJ13nh2uqNvZY5OMUVLKv7csS
	CZg7POuRnSWoJcD8Vng3Uh3G9p/aJ26792tZiDkHcA/kLEMbxspJEOBDQZgxa3apSLAt2q
	yncGfd7qCJGQWELlVd71XwLthH8DsoY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-75-5OUbZIQzNce2oNcZsfv1KA-1; Sat, 31 Jul 2021 23:24:40 -0400
X-MC-Unique: 5OUbZIQzNce2oNcZsfv1KA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F32CF871805;
	Sun,  1 Aug 2021 03:24:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0245460C04;
	Sun,  1 Aug 2021 03:24:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 358D0180BAB1;
	Sun,  1 Aug 2021 03:24:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1713OG8l013730 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 31 Jul 2021 23:24:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DC5C79E75; Sun,  1 Aug 2021 03:24:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D7CD56D9E2
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 03:24:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 29186101A529
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 03:24:13 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-321--PEOF74cOyi5wId9OMBiEw-1; Sat, 31 Jul 2021 23:24:10 -0400
X-MC-Unique: -PEOF74cOyi5wId9OMBiEw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GcmhB0spMz46r8
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 23:24:10 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GcmhB0WsQzcbc; Sat, 31 Jul 2021 23:24:10 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GcmhB0T7GzcbP
	for <blinux-list@redhat.com>; Sat, 31 Jul 2021 23:24:10 -0400 (EDT)
Date: Sat, 31 Jul 2021 23:24:09 -0400
To: blinux-list@redhat.com
Subject: I'm cured of clear archlinux installs
Message-ID: <alpine.NEB.2.23.451.2107312319020.3719@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

alsa doesn't work post-install; espeak-ng and espeak-ng-espeak conflict
with espeak which would normally not be a problem except spd-conf part of
speech-dispatcher can't run and set alsa as default output with pulseaudio
on the system.  If I were to use pulseaudio as output for
speech-dispatcher and maybe get espeak-ng up and working pulseaudio blocks
all media players.
What's worse no documentation in archwiki for how to install espeak-ng
that's readable in English.
I might be able to get jenux running espeak-ng, that's my next project.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

