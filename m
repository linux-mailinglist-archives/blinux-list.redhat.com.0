Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2E04C5F19
	for <lists+blinux-list@lfdr.de>; Sun, 27 Feb 2022 22:38:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645997885;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1Kvu7EdYgkTnaoZc12JdCDuKSjJSqxLKJ+29UrkPsQo=;
	b=hvRjfUKpK0LzhBB9vo2e9lhoMYgIumOSiYQ37C/TuEinLkal+r2QaAUdSEHZS7KDtr0Fle
	zIJDc+m7NK5bk+sPKtZ9osB0iSf4jjwhJQEkWrjhJy7mg0AQENZpX98C4yoGjucd3HFk0J
	9lSXxKCcymfeB8pK2xGtcTtBmjy1t4k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-608-mGMmVltlPli0xtAhlBpT_Q-1; Sun, 27 Feb 2022 16:38:02 -0500
X-MC-Unique: mGMmVltlPli0xtAhlBpT_Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 81EB98145F7;
	Sun, 27 Feb 2022 21:37:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 27EED1078664;
	Sun, 27 Feb 2022 21:37:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 283E64ED66;
	Sun, 27 Feb 2022 21:37:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21RLbr4w011148 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 27 Feb 2022 16:37:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DED7B2026D64; Sun, 27 Feb 2022 21:37:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D9EA32026D4D
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 21:37:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D09E5185A794
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 21:37:49 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-321-phcuvKOoMqGfhccYviUgDw-1; Sun, 27 Feb 2022 16:37:47 -0500
X-MC-Unique: phcuvKOoMqGfhccYviUgDw-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id 2449E1BBEEE
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 21:37:45 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id YfaFOqmkX8zh for <blinux-list@redhat.com>;
	Sun, 27 Feb 2022 21:37:44 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d]
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:e826:5227:4681:6e2d])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id 37C221BB092
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 21:37:43 +0000 (UTC)
Message-ID: <9c76ace7-b89b-c7c0-0d97-d3b90f576fef@free2.ml>
Date: Sun, 27 Feb 2022 16:37:40 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Voting: Which game would you like to have on Linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
	<FE6B19F6-999D-4FBE-8CB8-4A552ABCA9ED@cfcl.com>
	<c5d02c2a-8fe1-7d26-ef60-c7c8b192b7e9@protonmail.com>
	<CAO2sX33bsq5dtKCJg-J_XgqTM2LRWj6W1gU7D9FDdM3hhH_dqg@mail.gmail.com>
	<3aa8b542-556-90ee-80ff-16d7754096eb@hubert-humphrey.com>
	<CAN8CudhVwgPCHnDt6-qHKT6uo9F8Wo9bSJZVtgHVWrtd5wKrrQ@mail.gmail.com>
In-Reply-To: <CAN8CudhVwgPCHnDt6-qHKT6uo9F8Wo9bSJZVtgHVWrtd5wKrrQ@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Any chance of your audio version being ported to Windows?


On an OS that was designed from the ground up to cater to gamers and 
script kiddies? Seriously, they have more than enough games over there, 
audio and video. Linux and perhaps Android could use more, especially 
online multi-player games. Of course Steam is working on some of this, 
but they are seriously lacking in the audio game department, not to 
mention that they have no Android version other than I believe a remote 
stream to a desktop computer.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

