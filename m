Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2051B3D1B6F
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 03:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626917355;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FjvYt39yqg9oRciDhhbvsiSBhDK3L00lGdUxoajb4cs=;
	b=RmhlPzoCvzsYlIs5/jhpVdzh51EGAxuE5SBCwnUdxWfT914DK48e5FHKAHobI4sZrsGc0Y
	EmXkUFxj+KioG4OqS+8fry2SkRhqv5aX9jBKD+dsappXCBzEunKIFSl5uQu7gqw3kJYVuI
	jtpmumwoPIAG3wpea28X3R096PmpuxI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-390-6byD3BFTNsqwMnEdfElaxg-1; Wed, 21 Jul 2021 21:29:13 -0400
X-MC-Unique: 6byD3BFTNsqwMnEdfElaxg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7DFD9180FCCC;
	Thu, 22 Jul 2021 01:29:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8584A5D6B1;
	Thu, 22 Jul 2021 01:29:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 711824BB7C;
	Thu, 22 Jul 2021 01:28:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16M1SolX011180 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 21:28:50 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 711C710328B; Thu, 22 Jul 2021 01:28:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C57F100D8F
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 01:28:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F1661185A7A4
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 01:28:46 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-424-z2PQCoqlNLOkjpsMyxIzlw-1; Wed, 21 Jul 2021 21:28:44 -0400
X-MC-Unique: z2PQCoqlNLOkjpsMyxIzlw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GVZbc0w4MzRtb
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 21:28:44 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GVZbc0B4zzcbc; Wed, 21 Jul 2021 21:28:43 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GVZbb6q91zcbW
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 21:28:43 -0400 (EDT)
Date: Wed, 21 Jul 2021 21:28:43 -0400
To: blinux-list@redhat.com
Subject: archinstall and espeak-ng
Message-ID: <alpine.NEB.2.23.451.2107212115390.1346@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Though I can install a system using archinstall I have yet to get
espeak-ng to speak after first reboot.
spd-conf threw many errors when run didn't have directories and wouldn't
create them so speech-dispatcher could be started automatically along with
other errors.
The first time I chose xorg for install type and I expect though that got
me a system it was speechless.
Then I tried minimal with no better luck.
One of the things I was told was that no audio server would be installed
even though alsa-utils and alsa-plugins were both installed.
The sound card does pop when the system comes up.
Two things on the system that wouldn't install were pcspkr and sg in the
kernel so no grub beep on the way up.  That's usually not a problem since
if I can find a sound file to play at boot up I can make that happen if
necessary.
My extra packages line was:
lynx surfraw alsa-plugins-alsa-utils espeak-ng mlocate pulseaudio
speech-dispatcher
Why I didn't install a desktop is I like to be able to login on the
console and run on the console and only if I need the desktop for
something then run startx and use the desktop.
First computer I used was an Ampro little board Series 100! with cp/m and
after that pcdos and msdos and Apple with Sam it was only very late I
touched Windows and the experience with Windows is why Windows isn't on
any of my equipment.
Among others service pack install fails some of them spectacular.  When I
did use windows, I had tech support I could call and in time get some
help.  No tech support now I'm retired.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

