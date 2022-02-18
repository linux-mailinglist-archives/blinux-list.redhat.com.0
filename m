Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 711494BB6C6
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 11:23:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645179779;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9DGf6J4HmApd74EtZD17b8hAMQOllmcNx01I2drDl+0=;
	b=iqjXvBiEs9cMvmDE6fk9/6pTxT3KYUY7AE1xt3/wTnLhTfeddI6nl7KxzV9XaDAwH/MZ5Z
	URY1CnF+iDSV4j0x/cekCBzqRb+uMp99DM9fQuKZhlnocpR06Rim5d2KZYb3EoEgDk/qvy
	Huwut2Jkebs1gYZebFySkorx+o5SF2c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-244-LJ39w-28P3OYY9g_BP1jqg-1; Fri, 18 Feb 2022 05:22:55 -0500
X-MC-Unique: LJ39w-28P3OYY9g_BP1jqg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B5B6A1091DA0;
	Fri, 18 Feb 2022 10:22:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1172F2B45E;
	Fri, 18 Feb 2022 10:22:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F20561809CAA;
	Fri, 18 Feb 2022 10:22:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IAIxTp025467 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 05:19:00 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7CA0E778A; Fri, 18 Feb 2022 10:18:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 788707774
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 10:18:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7D8942B16880
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 10:18:56 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-547-cfuAhuupNt6TL1RDkttwuw-1; Fri, 18 Feb 2022 05:18:54 -0500
X-MC-Unique: cfuAhuupNt6TL1RDkttwuw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K0SMy22sdz12kR
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 05:18:54 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4K0SMy27Z2zcbc; Fri, 18 Feb 2022 05:18:54 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4K0SMy1mRmzcbP
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 05:18:54 -0500 (EST)
Date: Fri, 18 Feb 2022 05:18:54 -0500
To: blinux-list@redhat.com
Subject: debuan getting web suppression
Message-ID: <a8d11184-d0f8-b1fa-91b8-1f30a5945e22@panix.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

For now and I don't know how far back, debuan has been getting web
suppression.  This can be called web suppression since popularity is not
the only way to have things moved up in web rankings.  This also happens
by means of manipulation of keywords among other strategies.  I don't know
if debuan got killed off by the pandemic in addition to web suppression
but this is what has happened.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

