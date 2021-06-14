Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3DDBE3A678C
	for <lists+blinux-list@lfdr.de>; Mon, 14 Jun 2021 15:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1623676555;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=g8LDTmA3ReUUvVbXpU0s1/PcBOZi1fkqZ5iEQOi2p1k=;
	b=OO+rKb777bMF4Z30gHIShUT2zdLeCO2qKfmTlaDo/ugOUShR5hmC1NRCFVsZUfDWlzqcsd
	5PaBRHGMYFrdzvM868fJzP7JaYQt2efpAeAj24s/v+9abMYMLDEwyKq0TwY9DiWANmuLww
	h+8OayKkMeOSe9eL5DfprFjWPUAW5QM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-596-uqqPBEwiOp6CWTomGwfIjQ-1; Mon, 14 Jun 2021 09:15:53 -0400
X-MC-Unique: uqqPBEwiOp6CWTomGwfIjQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 08E52100C609;
	Mon, 14 Jun 2021 13:15:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ABD56189BB;
	Mon, 14 Jun 2021 13:15:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ADFEE46F58;
	Mon, 14 Jun 2021 13:15:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15EDFPKM030368 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 14 Jun 2021 09:15:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 10D619D73; Mon, 14 Jun 2021 13:15:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C3417AED
	for <blinux-list@redhat.com>; Mon, 14 Jun 2021 13:15:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 647A1800883
	for <blinux-list@redhat.com>; Mon, 14 Jun 2021 13:15:22 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-24-h6neTzA_PcO3oNTifHfUrg-1; Mon, 14 Jun 2021 09:15:20 -0400
X-MC-Unique: h6neTzA_PcO3oNTifHfUrg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4G3X4R68y9z3jrC
	for <blinux-list@redhat.com>; Mon, 14 Jun 2021 09:15:19 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4G3X4R5lMrzcbc; Mon, 14 Jun 2021 09:15:19 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4G3X4R5QLVzcbW
	for <blinux-list@redhat.com>; Mon, 14 Jun 2021 09:15:19 -0400 (EDT)
Date: Mon, 14 Jun 2021 09:15:19 -0400
To: blinux-list@redhat.com
Subject: espeak-ng
Message-ID: <alpine.NEB.2.23.451.2106140909510.29269@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I have it installed but it's not yet working.
speech-dispatcher is installed and after having run spd-conf and chosen
espeak-ng as output and alsa as sound source all tests passed.
In /usr/share/espeak-ng-data/ there's many _dict files though what to do
with them I don't yet know.
My guess is more configuration is needed though with only italian
documentation on archwiki I haven't got useable documentation to guide my
configuration to a correct result.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

