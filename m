Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id EBDF42FC020
	for <lists+blinux-list@lfdr.de>; Tue, 19 Jan 2021 20:39:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611085149;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZwJ+mBDgbnc7tmvvkGIemeuD34nyXZOlNJ5zdgP+6Zo=;
	b=EoHTxWFLhKSK6E+xosdzFB1RFYyipy3pVOc27BKRtrr15Z/GgUXdy71eGTMVgmwYTAY/na
	la2+VZ6p9VRO9p3GWCIJojiVANCX9VNAkEPa4HlqodAzGeXHTMGIIJNMDbVJP4G2UC3B5K
	1Id2AvAyyETgtFjqHINGUS3oRkpeoBo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-568-cXsk_LiAPditdv6BfO-yoQ-1; Tue, 19 Jan 2021 14:39:07 -0500
X-MC-Unique: cXsk_LiAPditdv6BfO-yoQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CBE9E9CDAF;
	Tue, 19 Jan 2021 19:39:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E44435D6AD;
	Tue, 19 Jan 2021 19:38:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7BCA6180954D;
	Tue, 19 Jan 2021 19:38:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10JJcklW020647 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 19 Jan 2021 14:38:46 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7C985110F0B1; Tue, 19 Jan 2021 19:38:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 78361110F0AE
	for <blinux-list@redhat.com>; Tue, 19 Jan 2021 19:38:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4881E800889
	for <blinux-list@redhat.com>; Tue, 19 Jan 2021 19:38:43 +0000 (UTC)
Received: from l2mail1.panix.com (l2mail1.panix.com [166.84.1.75]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-366-Y-nJp9o1OW-dxj09xBfc3g-1; Tue, 19 Jan 2021 14:38:39 -0500
X-MC-Unique: Y-nJp9o1OW-dxj09xBfc3g-1
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by l2mail1.panix.com (Postfix) with ESMTPS id 4DKz6K72vNzDQP
	for <blinux-list@redhat.com>; Tue, 19 Jan 2021 14:21:29 -0500 (EST)
Received: from panix3.panix.com (panix3.panix.com [166.84.1.3])
	by mailbackend.panix.com (Postfix) with ESMTP id 4DKz6K0Lgbz1d62
	for <blinux-list@redhat.com>; Tue, 19 Jan 2021 14:21:29 -0500 (EST)
Received: by panix3.panix.com (Postfix, from userid 20196)
	id 4DKz6J6xslz1QXJ; Tue, 19 Jan 2021 14:21:28 -0500 (EST)
Date: Tue, 19 Jan 2021 14:21:28 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: an espeak phenomena
Message-ID: <20210119192128.GA9767@panix.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

I'm using speakup with espeak and espeakup, and over the past
couple of weeks I've noticed an odd phenomena: on occasion, the speech sounds gravelly. If I continue to
use speakup the gravelliness or roughness of the voice becomes
worse and worse. But If I stop the speech and wait a few seconds, the speech smoothes out and I
can use speakup extensively with no problems, at least until the problem recurs a few days later.

Does anyone have  a clue what's going on?

Thanks
Rudy Vener

-- 
Rudy Vener
Website: http://www.rudyvener.com
Twitter: https://twitter.com/RudySalt

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

