Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 078944B12B3
	for <lists+blinux-list@lfdr.de>; Thu, 10 Feb 2022 17:27:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644510423;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=y0O8eGmecAA8RGxsTggF4M1pkigktBlH+IG/2tWheFw=;
	b=SVsque1ueAJK4eRNwGHKU53TyBd4CdwxTxCJa5Xg+tYobH6S5FT4srmWjxqaHC1ht8DSOK
	9Rd3r7RBCs0kFsNrW3ArWq3OQE5SPpDpXFlHeBrJtFGJ9ilMRtjLnGOyOuy7TvwCv4I0P5
	aFajwcaB99EORdA6XFaGh7+whAoRAZk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-490-DziffHK8N46v3e8rLOg__w-1; Thu, 10 Feb 2022 11:27:01 -0500
X-MC-Unique: DziffHK8N46v3e8rLOg__w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A628293920;
	Thu, 10 Feb 2022 16:26:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C87EA77459;
	Thu, 10 Feb 2022 16:26:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5B3F74A7C9;
	Thu, 10 Feb 2022 16:26:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21AGQoD1016282 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 10 Feb 2022 11:26:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3C0A82026614; Thu, 10 Feb 2022 16:26:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3576D2024CB7
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 16:26:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5CC111C07CC7
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 16:26:44 +0000 (UTC)
Received: from leibniz.telenet-ops.be (leibniz.telenet-ops.be
	[195.130.137.77]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-343-Ryb4XAalPuiVdz0r4Czb-Q-1; Thu, 10 Feb 2022 11:26:42 -0500
X-MC-Unique: Ryb4XAalPuiVdz0r4Czb-Q-1
Received: from andre.telenet-ops.be (andre.telenet-ops.be
	[IPv6:2a02:1800:120:4::f00:15])
	by leibniz.telenet-ops.be (Postfix) with ESMTPS id 4Jvhw13GjyzMqng6
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 17:26:41 +0100 (CET)
Received: from linuxcomputers ([IPv6:2a02:1811:b61c:2900:78d3:29a0:daa1:3622])
	by andre.telenet-ops.be with bizsmtp
	id tUSg260031T5gGr01USgxg; Thu, 10 Feb 2022 17:26:40 +0100
Received: from aldo by linuxcomputers with local (Exim 4.93)
	(envelope-from <yellowpenguin@telenet.be>) id 1nICHH-0001bp-Jm
	for blinux-list@redhat.com; Thu, 10 Feb 2022 17:26:39 +0100
Date: Thu, 10 Feb 2022 17:26:39 +0100
To: blinux-list@redhat.com
Subject: "Screen on" message at login then no more .....
Message-ID: <20220210162639.GA5949@linuxcomputers>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

I would appreciate some tips to trace the source of my login problem:
on my Ubuntu 20.04.3 LTS the only thing I currently see when it starts up
is:
"Scherm aan" (what means in English "Screen on").
I wait... and then can log in a console using ctrl+alt+f*
but to be able to get my graphical desktop back I have to use alt+super+s to
stop then restart Orca and braille in the graphical desktop.

How to know if the problem comes from brltty 6.0 or from Orca or something
else ?

(NB: I already got such problem on another Ubunu @ another computer, but
there were no problems before Ubuntu 20.04.
Also note that I recently accidently rm *log in /var/log but the system
boots-up, except that the "Screen on" problem now happens @ every restart).

Thanx in advance,
Grts,

Aldo. 

 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

