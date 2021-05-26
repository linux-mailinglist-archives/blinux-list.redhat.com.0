Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 10200390E04
	for <lists+blinux-list@lfdr.de>; Wed, 26 May 2021 03:48:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621993682;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dZBPhyTIktJDLQB5W5t9CxDBZjGEEm+JRKtA39HR2iE=;
	b=QkgLxZy8T1r9cANksOjcEbP13qc3AUuR8vOsAFLzSPSTgBpv7I0+t/NKMTxiN0JWip9NRJ
	yv/MvvWPsZBOJvmtzTBZeGZzt/9hwEJ8PrlFWDhEcwFQ6t26eqMQNuFwuh02ZEE34otH1F
	2J70JA5XUapaldMqVGisx1qdRnWcrlY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-573-bo9QQopvN5SiL70En_xZZQ-1; Tue, 25 May 2021 21:47:58 -0400
X-MC-Unique: bo9QQopvN5SiL70En_xZZQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1204718557D1;
	Wed, 26 May 2021 01:47:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D8FB074AC7;
	Wed, 26 May 2021 01:47:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2262F55348;
	Wed, 26 May 2021 01:47:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14Q1lLju023665 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 25 May 2021 21:47:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EA540208AB6F; Wed, 26 May 2021 01:47:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E68EC208AB75
	for <blinux-list@redhat.com>; Wed, 26 May 2021 01:47:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8D9F28556F0
	for <blinux-list@redhat.com>; Wed, 26 May 2021 01:47:17 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-540-ItQauoqgN_-IQd-gz3G4fQ-1; Tue, 25 May 2021 21:47:13 -0400
X-MC-Unique: ItQauoqgN_-IQd-gz3G4fQ-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4FqYjC1Ss2z8tdJ
	for <blinux-list@redhat.com>; Wed, 26 May 2021 01:47:11 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id xsVByjMAfBmd for <blinux-list@redhat.com>;
	Wed, 26 May 2021 01:47:10 +0000 (UTC)
Received: from [192.168.1.100] (184-169-119-73-dynamic.midco.net
	[184.169.119.73])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4FqYjB0sZNz8tdH
	for <blinux-list@redhat.com>; Wed, 26 May 2021 01:47:09 +0000 (UTC)
Message-ID: <20210526.014710.170.3@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Arch linux not in boot menu
Date: Tue, 25 May 2021 20:47:10 -0500
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 14Q1lLju023665
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

I have 3 operating systems on the same disk. Windows, slint and, as of this morning, arch. Installed in just that order. The bios type is UEFI.
Slint runs grub, so I did not install it in arch.
After completing the arch install, I got back into slint and ran
update-grub
It found arch on /dev/sda7
When  I ran
efibootmgr
Arch was not listed there, however.
What step did I miss?


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

