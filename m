Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id C16AE315A1E
	for <lists+blinux-list@lfdr.de>; Wed, 10 Feb 2021 00:37:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1612913864;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+FOG141LAlRDSAZlzoLSDV2GJu8NbFYXBTz3w6MPnIQ=;
	b=JYILFgwnHk8OZy/uyAOs/1B6Vez6Zbr1DktockhxcbM/k/N12bqquHRWNX2SBoBCy/fK7l
	yiJM/UbaTpEfxGq3k9Pl0aQ2M0N8E/v9IT/cYp8PtBmm+Ik56UIS8u/ShzAm/lQJdgRTf/
	h9TEZ/pcDlD18g+LhigrD15nYBDFcig=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-20-7X6BuDRHP46rZFbuimd54A-1; Tue, 09 Feb 2021 18:37:42 -0500
X-MC-Unique: 7X6BuDRHP46rZFbuimd54A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 35E67427C1;
	Tue,  9 Feb 2021 23:37:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B93F460C4D;
	Tue,  9 Feb 2021 23:37:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8CB1618095C9;
	Tue,  9 Feb 2021 23:37:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 119NbHRn004265 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 9 Feb 2021 18:37:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C37241134CBD; Tue,  9 Feb 2021 23:37:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BF3F71134CBB
	for <blinux-list@redhat.com>; Tue,  9 Feb 2021 23:37:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3ED36802A69
	for <blinux-list@redhat.com>; Tue,  9 Feb 2021 23:37:13 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-218-XRm7gIc7OLSxU5Vw3BkTxQ-1; Tue, 09 Feb 2021 18:37:11 -0500
X-MC-Unique: XRm7gIc7OLSxU5Vw3BkTxQ-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 4B389621C75; Tue,  9 Feb 2021 23:30:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 487D0620231
	for <blinux-list@redhat.com>; Tue,  9 Feb 2021 18:30:50 -0500 (EST)
Date: Tue, 9 Feb 2021 18:30:50 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: simple Ubintu question?
Message-ID: <Pine.LNX.4.64.2102091827530.24393@server2.shellworld.net>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,
On another list an individual indicated that the desktop installation of 
Ubuntu allows for speech with a keystroke at the start.
If this is correct, what is the synthesizer in use?
thanks


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

