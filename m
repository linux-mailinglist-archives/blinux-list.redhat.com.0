Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5B63140B637
	for <lists+blinux-list@lfdr.de>; Tue, 14 Sep 2021 19:49:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1631641739;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Tl2UMtQd8TdUntdLKsaKZGzyN6GJ74h6WXNx7CVdOHI=;
	b=DmgyswLz6fgeYXWBYVUo8nTeUUd3iLV4cXM80P/7kyqVWUcVjJCCJ3AWFrx2y1/kwd1xgl
	vsaFzkR+1RsEwi+uJ/Q/2GYEhtfTkQWERQYR2mLhn2/HqHniD/J8G1R4ZQfNr9Lrpddnus
	RWPKh6xULJMsxxT5Q1nQUojeZs3s7Co=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-360--51YhJ8nPBuSaeZIBVuf-g-1; Tue, 14 Sep 2021 13:48:57 -0400
X-MC-Unique: -51YhJ8nPBuSaeZIBVuf-g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C7C4F19251A1;
	Tue, 14 Sep 2021 17:48:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 635E860C7F;
	Tue, 14 Sep 2021 17:48:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EEC7B1809C84;
	Tue, 14 Sep 2021 17:48:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18EHma2Y007462 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Sep 2021 13:48:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 700D820285B0; Tue, 14 Sep 2021 17:48:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 696F92028646
	for <blinux-list@redhat.com>; Tue, 14 Sep 2021 17:48:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E20328934E9
	for <blinux-list@redhat.com>; Tue, 14 Sep 2021 17:48:31 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-413-GgNlfNMsNKiWPi15QZcKJA-1; Tue, 14 Sep 2021 13:48:29 -0400
X-MC-Unique: GgNlfNMsNKiWPi15QZcKJA-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4H89n83bmFz8vNb
	for <blinux-list@redhat.com>; Tue, 14 Sep 2021 17:48:28 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id 2m9Ij49kRdlD for <blinux-list@redhat.com>;
	Tue, 14 Sep 2021 17:48:27 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net
	[208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4H89n72ynBz8vMw
	for <blinux-list@redhat.com>; Tue, 14 Sep 2021 17:48:27 +0000 (UTC)
Message-ID: <20210914.174836.561.5@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Persistent device naming, alsa
Date: Tue, 14 Sep 2021 12:48:36 -0500
MIME-Version: 1.0
User-Agent: POP Peeper Pro (5.1.2.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 18EHma2Y007462
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

I have a USB audio device that I use for system sounds via pulse, and speech.
In my default.pa, I have
set-default-sink alsa_output.usb-C-Media_Electronics_Inc._USB_Audio_Device-00.analog-stereo
I also have onboard audio, to which my surround speakers are connected.
For my mpv, I can use this line in ~/.config/mpv/mpv.conf:
audio-device=pulse/alsa_output.pci-0000_00_1f.3.analog-stereo
That's the onboard card.
I also use pianobar, which uses libao, to produce its audio. The problem is that
dev=hw:0
changes on each boot. I need a way to specify a device by it's name somewhere, so that I can call it in application, even if it's hw ID changes.
What can I do there?


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

