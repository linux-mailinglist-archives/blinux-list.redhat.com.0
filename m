Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id AC1A518049D
	for <lists+blinux-list@lfdr.de>; Tue, 10 Mar 2020 18:18:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583860705;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SPMh52XhBYs81ryubZ7eBF48l5sgsHCsv6RaH3n0qJU=;
	b=ZL8opf/1/dRlQt7zuDj0IvDvLv0F0lNtjDbevoD0peOa8XkV2a3MVM+1QUhmOeDi1pX5lI
	88mtA7sQhShIRDrHtotR+C9/eBXVqfikG+YWjDfOCbBq35Wz5jaE2/1LrfYdidBKeor7qz
	8bdOQVWuJQc4rMFguf170NYtAs1rXMc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-233-RB6eiKhePNyDUj0HNroj2Q-1; Tue, 10 Mar 2020 13:18:23 -0400
X-MC-Unique: RB6eiKhePNyDUj0HNroj2Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4185C189D6CC;
	Tue, 10 Mar 2020 17:18:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 547455D9C5;
	Tue, 10 Mar 2020 17:18:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 76CEE38A1;
	Tue, 10 Mar 2020 17:18:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02AHI7gl008962 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Mar 2020 13:18:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 65C30F18CE; Tue, 10 Mar 2020 17:18:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 616ECF4D22
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 17:18:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A99A180028B
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 17:18:02 +0000 (UTC)
Received: from gmmr2.centrum.cz (gmmr2.centrum.cz [46.255.227.252]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-313-VHdcKY5VMU6Mr-FNg2eKWg-1; Tue, 10 Mar 2020 13:18:00 -0400
X-MC-Unique: VHdcKY5VMU6Mr-FNg2eKWg-1
Received: from gmmr-2.centrum.cz (unknown [10.255.254.19])
	by gmmr2.centrum.cz (Postfix) with ESMTP id 991C5600155A
	for <Blinux-list@redhat.com>; Tue, 10 Mar 2020 18:17:58 +0100 (CET)
Received: from out2.virusfree.cz (out2.virusfree.cz [79.133.37.42])
	by gmmr-2.centrum.cz (Postfix) with QMQP id 941FD2BF1
	for <Blinux-list@redhat.com>; Tue, 10 Mar 2020 18:17:58 +0100 (CET)
Received: from out2.virusfree.cz by out2.virusfree.cz
	(VF-Scanner: Clear:RC:0(46.255.225.205):SC:0(1.8/5.0):CC:0:;
	processed in 0.2 s); 10 Mar 2020 17:17:58 +0000
X-VF-Scanner-ID: 20200310171758.360530.12288.out2.virusfree.cz.0
X-Spam-Status: No, hits=1.8, required=5.0
Received: from gmmr-3.centrum.cz (46.255.225.205)
	by out2.virusfree.cz with ESMTPS (TLSv1.3, TLS_AES_256_GCM_SHA384);
	10 Mar 2020 18:17:58 +0100
Received: from gm-smtp5.centrum.cz (unknown [10.255.254.20])
	by gmmr-3.centrum.cz (Postfix) with ESMTP id 2E29420055F20
	for <Blinux-list@redhat.com>; Tue, 10 Mar 2020 18:17:58 +0100 (CET)
Received: from DESKTOPN6LG1HQ (unknown [85.70.144.247])
	by gm-smtp5.centrum.cz (Postfix) with ESMTPA id 061E684000C7
	for <Blinux-list@redhat.com>; Tue, 10 Mar 2020 18:17:57 +0100 (CET)
To: <Blinux-list@redhat.com>
Subject: Dbus in choort environment
Date: Tue, 10 Mar 2020 18:17:57 +0100
Message-ID: <899C4D90DF2649B0AE394A2614B285C2@DESKTOPN6LG1HQ>
MIME-Version: 1.0
Thread-Index: AdX2/9ewZrmrFiQqRlqDsdStAX/G+Q==
X-MimeOLE: Produced By Microsoft MimeOLE
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02AHI7gl008962
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I Am using Latest stable Arch Linux ARM64 on Android device. I Am running it
on non rooted Android phone by using Termux, Proot and special Bash shell
script to install ArchLinux to Android device.
May be, that you will not believe that but I Am able to use many GTK apps
including. Orca, Mate desktop environment, Gradio application when I have
successfully build it and I have compiled it myself on ARM 64 platform.
I AM controlling GTK apps by using VNC Android client app. But I have
problems with Dbus.
Some times, come app can not connect to The DBus socket. The file exist. And
to be able to run mate-session, I must type.
dbus-launch mate-session &
dbus/launch is The crucial command to be able to use Orca and mate-session
and other desktop environments.

Does somebody of you know how to setup Dbus so it would be correctly
started?
By The way. Fedora do not support dbus even while typing dbus-launch app
name &
It seems to me, that Arch Linux have some advantages while comparing it with
Fedora.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

