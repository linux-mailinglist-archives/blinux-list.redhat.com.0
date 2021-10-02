Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 262AE41FDB2
	for <lists+blinux-list@lfdr.de>; Sat,  2 Oct 2021 20:25:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633199107;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PspvnaSIjvjSiJLuRRxSG4edTIXtgY+TkF7obAXCTcs=;
	b=OweOyb60j4G3EgI4e8zvSBFGwadDQIRB/u/a2JXt3K1DvT5FfgF1WVto0ACQ3fkFYnAu3W
	Qun6yJ8jyq0WErV4v7bSf05qGwomHUdtEFVTIIGwrqXkcIdmWxiiOUdHcMx6h/WEZJ33Et
	ncJa4d2t7I7dzAhdWuD0vGBJReGwdoY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-504-h05hfuBEOzm2LumGWz_LGw-1; Sat, 02 Oct 2021 14:25:05 -0400
X-MC-Unique: h05hfuBEOzm2LumGWz_LGw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B9C831084683;
	Sat,  2 Oct 2021 18:25:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CBA9E53E08;
	Sat,  2 Oct 2021 18:24:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0334D1809C84;
	Sat,  2 Oct 2021 18:24:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 192IObuM016889 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 2 Oct 2021 14:24:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 27ED62164DC1; Sat,  2 Oct 2021 18:24:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 22E0221686B8
	for <blinux-list@redhat.com>; Sat,  2 Oct 2021 18:24:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B750A899EC1
	for <blinux-list@redhat.com>; Sat,  2 Oct 2021 18:24:33 +0000 (UTC)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-125-AZuuhJ5fMpCkdIkngbEIdw-1; Sat, 02 Oct 2021 14:24:31 -0400
X-MC-Unique: AZuuhJ5fMpCkdIkngbEIdw-1
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest
	SHA256) (No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 1885AFA268
	for <blinux-list@redhat.com>; Sat,  2 Oct 2021 14:24:30 -0400 (EDT)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net 1885AFA268
Received: (from janina@localhost)
	by opera.rednote.net (8.16.1/8.16.1/Submit) id 192IOTYw016445
	for blinux-list@redhat.com; Sat, 2 Oct 2021 14:24:29 -0400
Date: Sat, 2 Oct 2021 14:24:29 -0400
To: blinux-list@redhat.com
Subject: Beware: Latest alsa-utils breaks audio
Message-ID: <YVij3XCJGfWo+Zd9@rednote.net>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi, All:

Maybe this won't apply on your Linux distro, but on Arch, where I ran my
customary Saturday upgrades, I find the latest alsa-utils package breaks
audio. It doesn't just break it once. It breaks it every time you
reboot. So, a word to the wise, and all that ...

Here the details ...

alsa-utils 1.2.5.1-1

is setting Master Volume to 0 and Master Volume Switch to off on all devices,.


No real problem you think? Just run:

amixer -c3 controls |grep -i master

to find the numid and fix the issue? Nah, won't work!

mixer -c3 controls
ALSA lib conf.c:5200:(snd_config_expand) Unknown parameters 3
ALSA lib control.c:1471:(snd_ctl_open_noupdate) Invalid CTL sysdefault:3
amixer: Control sysdefault:3 open error: Invalid argument

Fortunately, if you happen to remember the relevant numid for your
default card, you can actually reset your volume. On my default sound
device, the relevant values are 33 for the switch, and 32 for the volume
slider, so I was at least able to get one device working.

Sheesh, what a nuisance. This happens every few weeks/months, whether we
need it or not.

I mean, how radical do we expect the world to be? Allow sound to play?
That's preposterous! Why, that would be like displaying boot messages
and a login prompt on any screen connected during the boot process!
Nobody does that, right? How friggen insecure!

Janina


-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

