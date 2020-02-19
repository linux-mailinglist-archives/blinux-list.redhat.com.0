Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 6B1CF164DD8
	for <lists+blinux-list@lfdr.de>; Wed, 19 Feb 2020 19:42:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582137772;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=T0rKkEzARiFH4MYqlDUw2g6fsM8SMgSGC2jyb3aNibA=;
	b=LytjDyo7cq/32Uhrkukt/6N92diMkfao53N9rsj9PdF9SfW4QogcFw1FeQSNeK6Hb4THxE
	sgZ+S/bGgI/C2G4oLqSouVMTPC9G+X2a3y3IIWM19+BHmaBJteltTusCk87kgagCXrugG/
	BoVe9H1LrD4QUrexKAsp8e3jUn5gaMQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-42-zxVe46rYMHuEW8RKmy5nhw-1; Wed, 19 Feb 2020 13:42:49 -0500
X-MC-Unique: zxVe46rYMHuEW8RKmy5nhw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 96BC6800D50;
	Wed, 19 Feb 2020 18:42:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E5C58ECFC;
	Wed, 19 Feb 2020 18:42:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5BAB235B19;
	Wed, 19 Feb 2020 18:42:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01JIgaJV024213 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Feb 2020 13:42:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D0C47F4D49; Wed, 19 Feb 2020 18:42:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CC854F4984
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 18:42:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F0E248007C9
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 18:42:34 +0000 (UTC)
Received: from gmmr2.centrum.cz (gmmr2.centrum.cz [46.255.227.252]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-337-7X9CXjhlOoaqSCz19QUUgQ-1; Wed, 19 Feb 2020 13:42:32 -0500
Received: from gmmr-1.centrum.cz (unknown [10.255.254.38])
	by gmmr2.centrum.cz (Postfix) with ESMTP id 2875E60017A0
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 19:42:31 +0100 (CET)
Received: from out1.virusfree.cz (out1.virusfree.cz [212.24.139.170])
	by gmmr-1.centrum.cz (Postfix) with QMQP id 266DD30000147
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 19:42:31 +0100 (CET)
Received: from out1.virusfree.cz by out1.virusfree.cz
	(VF-Scanner: Clear:RC:0(46.255.227.203):SC:0(1.9/5.0):CC:0:;
	processed in 0.3 s); 19 Feb 2020 18:42:31 +0000
X-VF-Scanner-ID: 20200219184230.880597.19585.out1.virusfree.cz.0
X-Spam-Status: No, hits=1.9, required=5.0
Received: from gmmr-2.centrum.cz (46.255.227.203)
	by out1.virusfree.cz with ESMTPS (TLSv1.3, TLS_AES_256_GCM_SHA384);
	19 Feb 2020 19:42:30 +0100
Received: from gm-smtp5.centrum.cz (unknown [10.255.254.27])
	by gmmr-2.centrum.cz (Postfix) with ESMTP id 6045E20056111
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 19:41:30 +0100 (CET)
Received: from DESKTOPN6LG1HQ (unknown [85.70.144.247])
	by gm-smtp5.centrum.cz (Postfix) with ESMTPA id 47A1484000C8
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 19:41:30 +0100 (CET)
To: <blinux-list@redhat.com>
Subject: Dbus issues when running Fedora 31 for ARM64 Bit platform
Date: Wed, 19 Feb 2020 19:41:29 +0100
Message-ID: <B99ECC0C5B4C4DA9A0EBA3735E38BF98@DESKTOPN6LG1HQ>
MIME-Version: 1.0
Thread-Index: AdXnVDMCpVFJnNLFSw+11kekqCaRBA==
X-MimeOLE: Produced By Microsoft MimeOLE
X-MC-Unique: 7X9CXjhlOoaqSCz19QUUgQ-1
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 01JIgaJV024213
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Dear suers and developers,
	My name is Janusz Chmiel. I Am new mailing list member from Czech
Republic. I do not see at all. Fedora distribution is fascinating Me for
several years. And because I have been very satisfied with this distribution
when I have used it with my Toshiba Satellite L650 D laptop, I have decided
to try it out on my Huavei !) mate lite mobile phone. This mobile phone run
Android 8.0 and I Am running Fedora by using Termux, Proot and special
script.
Unfortunately for Me, I have got in to very complex issues with Dbus.
dbus-launch app name &
simply do not work at all.

Please does somebody of you know, if there is some technique, article which
would describe how to setup Dbus and dbus-x11 so it would run even on chroot
environment by using Termux, Proot and Android device?
Or unfortunately, Dbus version which is The part of Fedora 31 ARM64 Bit
contain Dbus binarz which have been compiled by The way that it will never
support this software environment?
I can install manz applications but Dbus do not work and it is verz
important to use inter process communication.
Thank zou verz much for zours help.
With kindness regards.
Janusz Chmiel


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

