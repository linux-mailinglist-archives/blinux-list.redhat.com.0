Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7159A482C5A
	for <lists+blinux-list@lfdr.de>; Sun,  2 Jan 2022 18:25:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641144308;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CQFx1/NMU3f8troV9KiAX9Sp3d7o4/tDkqNbfz/B/RA=;
	b=H5HrLilNvYCjzyboTwAZVX3bzO35OTMjhTWz+G0Dw882ISwK0JyPAMWvM6LMOFWFGc6W/U
	HjOOwkDD9Y1yEzKV31Q9i8z9MbCKFdRYkxWy++qmE3N7aDnNHVjCVt+vtT7dybNMgvojGI
	m0UM2eyApFVhRRI4PQbvrekpqWTGKt0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-329-fNEGe0hOOFmEK_EvB3t2cg-1; Sun, 02 Jan 2022 12:25:04 -0500
X-MC-Unique: fNEGe0hOOFmEK_EvB3t2cg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 96CED104ECE6;
	Sun,  2 Jan 2022 17:25:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 83C711091EDB;
	Sun,  2 Jan 2022 17:24:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 648194BB7C;
	Sun,  2 Jan 2022 17:24:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 202HOkeB000625 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 2 Jan 2022 12:24:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D09AF40CFD05; Sun,  2 Jan 2022 17:24:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB9174010FF6
	for <blinux-list@redhat.com>; Sun,  2 Jan 2022 17:24:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A5790811E78
	for <blinux-list@redhat.com>; Sun,  2 Jan 2022 17:24:46 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-248-Iceqrjt3NcqJ5TwCCyrimA-1; Sun, 02 Jan 2022 12:24:45 -0500
X-MC-Unique: Iceqrjt3NcqJ5TwCCyrimA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JRm304TXyzFLy
	for <blinux-list@redhat.com>; Sun,  2 Jan 2022 12:24:44 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JRm303YfWzcbc; Sun,  2 Jan 2022 12:24:44 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JRm3032WczcbP
	for <blinux-list@redhat.com>; Sun,  2 Jan 2022 12:24:44 -0500 (EST)
Date: Sun, 2 Jan 2022 12:24:44 -0500
To: blinux-list@redhat.com
Subject: archlinux pipewire
Message-ID: <ab319496-14b2-e66c-d6d-a33ddb144a6e@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I installed pipewire after having got alsa and no sound server working on
the machine even with multimedia players like vlc.
After pipewire got installed I did a reboot and heard the grub beep and
then all was silence.
This was several minutes of silence.
So I logged in and then ran sudo and ran poweroff and the system powered
off.
Before running power off, I ran systemctl eneable espeak and systemctl
start espeak.  On starting the system again, no change silence again.
On this system pipewire does not work out of the box.
Fortunately this is a newly installed archlinux system and not one with
lots of files or miles on it.
Jude

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

