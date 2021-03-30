Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id B803534F338
	for <lists+blinux-list@lfdr.de>; Tue, 30 Mar 2021 23:28:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1617139711;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+wlCwxQ8RxdoP8twQwyKGLThSHU8popwSW7CTKyRAXY=;
	b=UrzRmhRqs6bEWyeJhoqPcyXZnX3QZeBaJO42LPJIeXPKL1NKAP+7z5DxdvkoQKEOpDF7DH
	yVKvaIypqgx2sE7rXnYqbyAo9yrUFjE712P3VPakFDMlfDKuKr4hFYUoIgcIRUKF/u7fmK
	re6TY1mH36P5eZmYnSY1P7X5UrJuwxI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-141-4AIaIJCHPPSuGAAQGsccLA-1; Tue, 30 Mar 2021 17:28:29 -0400
X-MC-Unique: 4AIaIJCHPPSuGAAQGsccLA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ECBFC8189EB;
	Tue, 30 Mar 2021 21:28:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E1DDD179E6;
	Tue, 30 Mar 2021 21:28:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 99B4A1809C84;
	Tue, 30 Mar 2021 21:28:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12ULNghF004333 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Mar 2021 17:23:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E68FA11457CD; Tue, 30 Mar 2021 21:23:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E1D4210FFE6F
	for <blinux-list@redhat.com>; Tue, 30 Mar 2021 21:23:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E2338811E93
	for <blinux-list@redhat.com>; Tue, 30 Mar 2021 21:23:36 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-103-JGN2zyIHNtyOg3QPtgaW6A-1; Tue, 30 Mar 2021 17:23:34 -0400
X-MC-Unique: JGN2zyIHNtyOg3QPtgaW6A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4F92Vs53Y7zScl;
	Tue, 30 Mar 2021 17:23:33 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4F92Vs4k8tzcbc; Tue, 30 Mar 2021 17:23:33 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4F92Vs4gJlzcbV;
	Tue, 30 Mar 2021 17:23:33 -0400 (EDT)
Date: Tue, 30 Mar 2021 17:23:33 -0400
To: slint@freelists.org
Subject: dosemu 1.x is deprecated in favor of dosemu2.x
Message-ID: <alpine.NEB.2.23.451.2103301720550.8687@panix1.panix.com>
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
Cc: blinux-list@redhat.com
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I just learned this today and slint needs a more up-to-date fluidsynth 
package and I haven't started looking for sound fonts though they'll 
probably be on slackware in main or slackbuilds repositories.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

