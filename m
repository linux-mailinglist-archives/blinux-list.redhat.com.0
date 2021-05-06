Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 87901375DCC
	for <lists+blinux-list@lfdr.de>; Fri,  7 May 2021 02:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620346028;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AjqJo18f5ZBfxR7cZR+9w/IWt6sOCzUZXo/DXZVo60Q=;
	b=BEYKtTSUhayV3qa8NotvSm5XEx9iqb/WVG9NDGtBuzC0Po6dEXfSePFczptpnLs7KvEvkc
	i9uk1OKBOv9fvqka4L99nEFYowPOMQeU3jrORyp4uzO8oTCCD3RrNtuQNgGfsYkDeoNxBR
	JDr+calLGJ8weaN8dUG0hKTRfIsVJkY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-487-1pOqMa_WPV-MNQNMlf57OQ-1; Thu, 06 May 2021 20:07:06 -0400
X-MC-Unique: 1pOqMa_WPV-MNQNMlf57OQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3756C801817;
	Fri,  7 May 2021 00:07:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E19045C1C5;
	Fri,  7 May 2021 00:07:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0760A55352;
	Fri,  7 May 2021 00:07:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14706qfP022155 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 6 May 2021 20:06:52 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2AE0410ABC93; Fri,  7 May 2021 00:06:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2494510ABC91
	for <blinux-list@redhat.com>; Fri,  7 May 2021 00:06:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E61231066558
	for <blinux-list@redhat.com>; Fri,  7 May 2021 00:06:48 +0000 (UTC)
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch
	[185.70.41.104]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-482-WuOVdsPWOcmyNVCneGePdw-1; Thu, 06 May 2021 20:06:46 -0400
X-MC-Unique: WuOVdsPWOcmyNVCneGePdw-1
Received: from mail-02.mail-europe.com (mail-0201.mail-europe.com
	[51.77.79.158])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by mail-41104.protonmail.ch (Postfix) with ESMTPS id 4Fbr8w0GG3z4wwvg
	for <blinux-list@redhat.com>; Thu,  6 May 2021 23:57:04 +0000 (UTC)
Date: Thu, 06 May 2021 23:56:53 +0000
To: blinux-list@redhat.com
Subject: Introduction
Message-ID: <990fd5c6-8f5f-4813-3fb3-a3b849ab5ffe@protonmail.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
	autolearn=disabled version=3.4.4
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 14706qfP022155
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello everyone,

I have already sent a mail or two to this list some time ago, but until
now, I did not introduce myself. And before I'll continue posting, I
thought it'd be good to fix this.


My name is Rastislav Kish, I am a blind student from Slovakia.

My interests are very, very wide, but from the most common, I like
mathematics, artificial intelligence and coding.


I'm a Linux user and FOSS fan since april of the previous year. That's
not really long, but I've already successfully developed few projects
for my new home, from which some got even to the release stage :).


You can find my production on my GitHub:

https://github.com/RastislavKish/


Although not all projects are there yet, namely KeyJutsu:

https://rastisoftslabs.com/2020/02/29/keyjutsu-superpowers-right-in-your-fingers/

and Ride:

https://rastisoftslabs.com/2017/12/02/ride-editor-pre-nevidiacich-programatorov/


Both are for Windows, so updating them will most likely take some time
as I'm too lazy to boot into that... "system".


btw, Im currently using Ubuntu Mate 20.04 64-bit, just for information.


Anyway, I'm happy to meet the community, and I'll be glad to hear your
opinions on my projects!


Wish you a nice day, in the libre world!


Best regards


Rastislav




_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

