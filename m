Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C4C2C3CC9DB
	for <lists+blinux-list@lfdr.de>; Sun, 18 Jul 2021 18:29:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626625791;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+ToALFup+0Y+pr9KcPoYWtrgWlWDnTX+pwgeFrtQB/0=;
	b=Te51jXmdq7OJ/fpOvP09u1PrVoDvYSZDUvARoy6N+Ro/kemwlkpCMW1gYdC0HnyZHpCjP0
	zlfFMnbKoza+MX6Q57mmwHC4cP5+w43uXXYFzzRhRJ00rEwJlbmUwlbUREzKm0gtfVTsb+
	gS+cyuPuWxZiyZ+ZmYnojVGuZuivldQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-145-vYGzm_tIPQWcJmZcMACrBw-1; Sun, 18 Jul 2021 12:29:50 -0400
X-MC-Unique: vYGzm_tIPQWcJmZcMACrBw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AF78780365C;
	Sun, 18 Jul 2021 16:29:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1B0CF3AE1;
	Sun, 18 Jul 2021 16:29:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 003114A712;
	Sun, 18 Jul 2021 16:29:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16IGTaYY020384 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 18 Jul 2021 12:29:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 473CF1000DB4; Sun, 18 Jul 2021 16:29:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 41DD41000DB2
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 16:29:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2EB9E1064C75
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 16:29:32 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-176-xidOR-psP_a7jD5FaLMgeA-1; Sun, 18 Jul 2021 12:29:29 -0400
X-MC-Unique: xidOR-psP_a7jD5FaLMgeA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GSVmn2Q6Kz4PyY
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 12:29:29 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GSVmn1Mz3zcbc; Sun, 18 Jul 2021 12:29:29 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GSVmn0yFyzcbP
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 12:29:29 -0400 (EDT)
Date: Sun, 18 Jul 2021 12:29:29 -0400
To: blinux-list@redhat.com
Subject: espeak-ng on archlinux
Message-ID: <alpine.NEB.2.23.451.2107181224250.27095@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I got espeak-ng partly working but not completely.
When I key a line in and hit enter, espeak-ng speaks what I keyed in.
That is all espeak-ng does.  So far as I can tell no espeak-ng.service
file exists to enable and start espeak-ng when the system boots either.
Finally, if during an archlinux installation espeak-ng is installed rather
than espeak it's possible it's not pulling dependencies espeak-ng needs to
speak.
It would be nice if espeak-ng would speak what the computer puts up on the
screen after I type a command but this isn't yet happening over here.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

