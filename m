Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 844E735B313
	for <lists+blinux-list@lfdr.de>; Sun, 11 Apr 2021 12:24:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618136645;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EGbJDrrGomsuPmS+jnLWkkesEUElf2M5JbC8YmIn6aQ=;
	b=fdGPCra6fZT+7U4fO5pJy3c/H1Xk4s7O+rBq+hR0pXvAdeIuJN9Ha2c+lKjn6x7JE10cIN
	1f+9XcgaYuwdcnA7zHU+I4whCCwhoBiFOyHa/wuqg/VnepHAV1ZFsku9qCdIHCHFdr73vV
	Q+H2ddUouGS8F2yxo+fRS2asM6qQex4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-397-h3uGQHggOYG88d7iKzn0ZA-1; Sun, 11 Apr 2021 06:24:03 -0400
X-MC-Unique: h3uGQHggOYG88d7iKzn0ZA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4B75E8030A1;
	Sun, 11 Apr 2021 10:23:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0CCE260C13;
	Sun, 11 Apr 2021 10:23:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 39D021806D0F;
	Sun, 11 Apr 2021 10:23:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13BANLjU011548 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Apr 2021 06:23:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A13C42021450; Sun, 11 Apr 2021 10:23:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9BB22202144A
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 10:23:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EAB2780331A
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 10:23:18 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-187-TAtgqiykPeqA-eDYQePiIg-1; Sun, 11 Apr 2021 06:23:16 -0400
X-MC-Unique: TAtgqiykPeqA-eDYQePiIg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FJ7HS2J72z1pWK;
	Sun, 11 Apr 2021 06:23:16 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FJ7HS1Clszcbc; Sun, 11 Apr 2021 06:23:16 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FJ7HS0mThzcbV;
	Sun, 11 Apr 2021 06:23:16 -0400 (EDT)
Date: Sun, 11 Apr 2021 06:23:15 -0400
To: blinux-list@redhat.com
Subject: flash drive required for jenux accessible installs
Message-ID: <alpine.NEB.2.23.451.2104110619070.23806@panix1.panix.com>
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
Cc: Daniel Nash <dnl.nash@gmail.com>, orca-list@gnome.org
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Since a file needs creation to specify reader (espeakup or fenrir) in the 
root of a jenux installer media this requires a large enough flash drive 
to do the installs.  It is no longer possible to do hard drive installs 
say directly from a jenux dvd to a hard drive.
No rootpasswd file with any defaults exists in the root of the jenux dvd 
so jenux when it does come up does so without any reader enabled.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

