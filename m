Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 84FA92B6C30
	for <lists+blinux-list@lfdr.de>; Tue, 17 Nov 2020 18:48:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605635323;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7vb5gHLPsyRKMEDjuTC2jebPvOjVUA9t3LHz2dZ7u8o=;
	b=VrLaxhfww7XHz4KH6T2dywBIRvbuC5Lb0qCAiKNx0M5KIsoVdLRuiWqgQRltpveRFrnDWO
	3NRHSjL5FWawwT1oxl/5ua543q+jAuJ3/qz6JsZqYBLvkP2lxvkns8iu1Kv3AjoXi3XjRD
	o0XCd32UzGYabeOPNkUDppA3Nh3eeEM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-80-FZ1nSQQ-N42DbDQz5CqJBQ-1; Tue, 17 Nov 2020 12:48:41 -0500
X-MC-Unique: FZ1nSQQ-N42DbDQz5CqJBQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F17DA802B46;
	Tue, 17 Nov 2020 17:48:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E9255C26B;
	Tue, 17 Nov 2020 17:48:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A04F979FF7;
	Tue, 17 Nov 2020 17:48:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AHHmVHj017426 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 17 Nov 2020 12:48:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id AA611AB41B; Tue, 17 Nov 2020 17:48:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A53D1AB594
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 17:48:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6EC3B811E78
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 17:48:28 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-396-iBgefHAMM7KX2wqSgJ3dZA-1; Tue, 17 Nov 2020 12:48:25 -0500
X-MC-Unique: iBgefHAMM7KX2wqSgJ3dZA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4CbD214Zxhz1x53
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 12:48:25 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4CbD2140wDzcbc; Tue, 17 Nov 2020 12:48:25 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4CbD213vmvzcbV
	for <blinux-list@redhat.com>; Tue, 17 Nov 2020 12:48:25 -0500 (EST)
Date: Tue, 17 Nov 2020 12:48:25 -0500
To: blinux-list@redhat.com
Subject: as I suspected
Message-ID: <alpine.NEB.2.23.451.2011171247360.29919@panix1.panix.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
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

A new iso was released.
https://nashcentral.duckdns.org/projects/Jenux-2020.11.16-dual.iso
for Jenux.


-- 
United States has 633 Billionaires with only 10 doing any annual
significant giving.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

