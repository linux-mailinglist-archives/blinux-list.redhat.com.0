Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9DDA73FF34A
	for <lists+blinux-list@lfdr.de>; Thu,  2 Sep 2021 20:34:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630607675;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=y/aaEZTA5/UCa/DsH2E4XW9/A0KVbSw2/2InozUFvRk=;
	b=ZrOngqem6k5+adPfKw5x2AJfN63ZZYsKP7vC939MmZ24dWY0smXJIv8ooAS+VTENyGuwQN
	EWKTIi30XO63R4T0eyiW8wXfgrzibJT5AYT9lhmbIHx9lT1THP2QwUrmkYAGgtTz7VNnLW
	bbq8qOMFIBlsUiphFhH3Dh/o6Hf1tKs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-446-IamXpz0rMBqVj9bkpkMU0g-1; Thu, 02 Sep 2021 14:34:33 -0400
X-MC-Unique: IamXpz0rMBqVj9bkpkMU0g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EA887108593D;
	Thu,  2 Sep 2021 18:34:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DC780784C9;
	Thu,  2 Sep 2021 18:34:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B19224EEA1;
	Thu,  2 Sep 2021 18:34:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 182IY4GK029787 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Sep 2021 14:34:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3F34614E763; Thu,  2 Sep 2021 18:34:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A63714E76F
	for <blinux-list@redhat.com>; Thu,  2 Sep 2021 18:34:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6F5C18007B1
	for <blinux-list@redhat.com>; Thu,  2 Sep 2021 18:34:01 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-475-IlykL3ELOSa6ICERbUmFog-1; Thu, 02 Sep 2021 14:33:59 -0400
X-MC-Unique: IlykL3ELOSa6ICERbUmFog-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4H0qMB2kmvz45cQ
	for <blinux-list@redhat.com>; Thu,  2 Sep 2021 14:33:58 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4H0qMB11Rpzcbc; Thu,  2 Sep 2021 14:33:58 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4H0qMB0fhgzcbW
	for <blinux-list@redhat.com>; Thu,  2 Sep 2021 14:33:58 -0400 (EDT)
Date: Thu, 2 Sep 2021 14:33:57 -0400
To: blinux-list@redhat.com
Subject: blind-arch script fail
Message-ID: <alpine.NEB.2.23.451.2109021427340.24056@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This one was a surprise for me.
I followed the script in the podcast describing how to do the install.
Everything went normal until I chose gnome for the operating system.
Whatever the script did, it did very fast.
So I exit and reboot and find no operating system on the computer.
Not only that, the script did things to the computer making it necessary
to reset the computer to use another working distro on it to write this
message.
>From here, I'll try putting xfce on the computer since it's the smallest
of the operating systems and see if the script can do that for me.
If that doesn't work, I'll conclude the script is broken.  I could try i3
and mate to see if any of them would install but we're supposed to have a
choice of more than one operating system with this script.
So everyone knows, I tried putting this system on a 240G solid state disk
in a computer with 16g of available memory.  These failures are
understandable on lesser resourced equipment but that's not the case here.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

