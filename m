Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 2227B14AD97
	for <lists+blinux-list@lfdr.de>; Tue, 28 Jan 2020 02:31:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580175074;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RIrRus6Jbr68JX9+vKPOU/9i3qZ5ydCB7WdOUqXg8fc=;
	b=ZJjsO0/Z36y7x2SpOPnrp/DlmWGxClxU5/WRQAWVId5zkrZKzwyXc6UB3taxqO62nBzqsn
	jSoK0+0m2CjlfDuKYSXaQsPVFaWFvVp4upx2obfnFaSFPucrdt8v8fvbf+JSwDDHZtbLj8
	DYm8BZJfWSvVh3puFWS+9+ESDEn8KQA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-11-EjvAOohHPHSWGTFQOBquNg-1; Mon, 27 Jan 2020 20:31:12 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AB06210054E3;
	Tue, 28 Jan 2020 01:31:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B26F1001B35;
	Tue, 28 Jan 2020 01:31:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0F4A918095FF;
	Tue, 28 Jan 2020 01:30:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 00S1Uj0X027389 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 27 Jan 2020 20:30:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0D0571CBD0; Tue, 28 Jan 2020 01:30:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 08558422DA
	for <blinux-list@redhat.com>; Tue, 28 Jan 2020 01:30:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 90D728012CF
	for <blinux-list@redhat.com>; Tue, 28 Jan 2020 01:30:42 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-295-T8UDBrQOOGe1bTxbHKy9Lw-1; Mon, 27 Jan 2020 20:30:40 -0500
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4868FX1kL6z1Qkn
	for <blinux-list@redhat.com>; Mon, 27 Jan 2020 20:30:40 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4868FW6klhzcbc; Mon, 27 Jan 2020 20:30:39 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4868FW6FnRzcbW
	for <blinux-list@redhat.com>; Mon, 27 Jan 2020 20:30:39 -0500 (EST)
Date: Mon, 27 Jan 2020 20:30:39 -0500
To: blinux-list@redhat.com
Subject: any other devuan users here?
Message-ID: <alpine.NEB.2.21.2001272024070.29626@panix1.panix.com>
MIME-Version: 1.0
X-MC-Unique: T8UDBrQOOGe1bTxbHKy9Lw-1
X-MC-Unique: EjvAOohHPHSWGTFQOBquNg-1
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 00S1Uj0X027389
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If so,  though espeak and espeakup work fine, I can't get aplay paplay
audacious mpd mplayer and vlc to play any sound.  Any ideas what I can try
to get these packages working correctly?
If I can't get these packages going I'm going to ash can this distribution
and replace it with slint since slint doesn't have these problems.
Another problem I'm having with devuan is none of the graphical interfaces
I've tried so far mate and xfce4 cannot get orca talking in them.
Slint and Jenux do not have this problem and my Jenux disk has gnome
talking on it.

Another problem with devuan is the website isn't taking any more
subscriptions for the dng mail list which is where such issues could be
raised if the https://www.devuan.org/ website mail form was working.  I
put several subscription requests in for that mail list and never got a
confirmation message.


--


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

