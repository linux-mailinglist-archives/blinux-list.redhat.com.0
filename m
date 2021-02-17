Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1F40331DDB0
	for <lists+blinux-list@lfdr.de>; Wed, 17 Feb 2021 17:53:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613580829;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nBE6ofztV3UFDimG8jacIARYdPWDDda3IneFbhkWT34=;
	b=UYS3c5gR1/75LEkFuzhxDhcdvYGQK3V8dMQL9Vg3wx0SWVMEQIGuNgIGYpGXZ4WWF0v6J6
	SBvl+5rKOWcRJ8S4fK/qcjBvtgJWR48zV+kXcuDsuj0pv+/kquCRVHBc6kwH9MWc5DE3MR
	DvFREWT4iAkMSxvd/zfS5NoXlU3blz8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-428-Qah4-an_OImV7dluXMdK0w-1; Wed, 17 Feb 2021 11:53:47 -0500
X-MC-Unique: Qah4-an_OImV7dluXMdK0w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5F376107ACF4;
	Wed, 17 Feb 2021 16:53:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 192055D9D2;
	Wed, 17 Feb 2021 16:53:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0D2FC18095CB;
	Wed, 17 Feb 2021 16:53:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11HGjPFB031993 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Feb 2021 11:45:25 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 51567104848; Wed, 17 Feb 2021 16:45:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4BF03103CC6
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 16:45:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 10FCC186E120
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 16:45:23 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-148-alstcH7DNgmV2jSsioa8bA-1; Wed, 17 Feb 2021 11:45:20 -0500
X-MC-Unique: alstcH7DNgmV2jSsioa8bA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4DgkGl2Fssz1WVG
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 11:45:19 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4DgkGl38yKzcbc; Wed, 17 Feb 2021 11:45:19 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4DgkGl2xgzzcbW
	for <blinux-list@redhat.com>; Wed, 17 Feb 2021 11:45:19 -0500 (EST)
Date: Wed, 17 Feb 2021 11:45:19 -0500
To: blinux-list@redhat.com
Subject: re: bash is hurling
Message-ID: <alpine.NEB.2.23.451.2102171144240.19166@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Correct, the let is not needed.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

