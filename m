Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2730546E2C1
	for <lists+blinux-list@lfdr.de>; Thu,  9 Dec 2021 07:49:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639032540;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CfbknGs/Ww8eij/pct63qu4eI7rxrEcjAbHrHOOGKu8=;
	b=F5cf/BFsak6Zo4+PJzqK4yCgwK49u/XrQqzNbugmJRzBugCeYKAn4nHidKX62F0s3hKdSc
	FvDJ0+BrmQg0uM0kkdYb/3s8AwqWFrql1bb6ofB9yhVMce1cVSAVQsEeIu9Sgam3TOrksN
	Q0GgoCdXWHhiJY2rOnyNGy5eglmrnCI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-575-HjP5BDiFN1C4xIo0aRqgwA-1; Thu, 09 Dec 2021 01:48:56 -0500
X-MC-Unique: HjP5BDiFN1C4xIo0aRqgwA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6BEDF185302B;
	Thu,  9 Dec 2021 06:48:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9684660FDD;
	Thu,  9 Dec 2021 06:48:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A3C081809CB9;
	Thu,  9 Dec 2021 06:48:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B96iQ19014356 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 9 Dec 2021 01:44:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 857FA2166B25; Thu,  9 Dec 2021 06:44:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7CCA62166B2D
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 06:44:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1A0271C1CD61
	for <blinux-list@redhat.com>; Thu,  9 Dec 2021 06:44:20 +0000 (UTC)
Received: from mail.schoeppi.net (mail.schoeppi.net [193.41.226.221]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-165-RcZ7fJ-4Nm-bJ2gG68meww-1; Thu, 09 Dec 2021 01:43:37 -0500
X-MC-Unique: RcZ7fJ-4Nm-bJ2gG68meww-1
Received: from k.n5t.de (unknown [172.19.7.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits)
	server-digest SHA256) (Client did not present a certificate)
	by mail.schoeppi.net (Postfix) with ESMTPS id 13C7A2ADB3B;
	Thu,  9 Dec 2021 07:43:35 +0100 (CET)
Date: Thu, 9 Dec 2021 07:43:34 +0100
To: orca-list@gnome.org, blinux-list@redhat.com, brltty@brltty.app,
	debian-accessibility@lists.debian.org
Subject: Bootable linux cd iso image with ssh daemon activated
Message-ID: <YbGlll0E/v3DlWEs@k.n5t.de>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello,

some weeks ago I've created a bootable linux cd ISO image which has ssh 
enabled and allows login remotely as root. Now I've created another image 
which has also included brltty. After booting this ISO you can still 
connect via ssh, but also a connected braille device should be detected and 
brltty should be started.

Both ISOs can be written to a USB stick and used as bootmedia e.g. to have 
a powerfull rescue system. Because the ISOs are based on the well known 
SystemRescue CD many usefull tools are included out of the box:

https://www.system-rescue.org

The cd contains many usefull tools for different administrative tasks, see 
here for more infos about the included tools, but the programms which need a 
grafical environment will not be useable and speech support has to be 
configured manulay if wanted:

https://www.system-rescue.org/System-tools/

If a package is missing it can be installed after booting the cd, the whole 
system is based on Arch linux. 

You can download the ISO files, with and without brltty included, here:

https://download.schoeppi.net/systemrescuecd-custom/

After booting the cd your computer will get a dynamic ip address in your 
network. You can get this address e.g. by scanning your network or via your 
routers webinterface. If you know the address you can connect via ssh with 
the following userdata, the ssh daemon is activated on both ISOs:

Username: root
Password: geheim

I am using the cd to install new linux machines or as a rescue system for my 
home server or virtual servers which I am administrating and which are 
running at a provider.

If you have questions or ideas regarding the cd just let me know!

Have fun with the ISOs! I hope you find the cd also that usefull and 
helpfull as I do ;-).

Ciao,

  Schoepp

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

