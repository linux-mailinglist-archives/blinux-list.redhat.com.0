Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 431B8365DF5
	for <lists+blinux-list@lfdr.de>; Tue, 20 Apr 2021 18:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618937725;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CXGjAnsgPjPByfS6QugCWIugWMyTCeDWqm37VNryGgs=;
	b=cIifruLo8mGLa1K8O+sp1/9t+3MvZvlOT5VzhLy/3IJEkMf34P2yZFWGURd9FuBq16OC+L
	KjtCUROxt3u2W+/DE1qU3mMi6V3Ed7+m7VwDXF8no9Bw/zaps/3iMxhdp40593vb2gBoCg
	WqZNVlAX7I/6dvjpbIT/ReiRae7A8mE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-169-1qc45lNEPuy5bXOzNYSUYw-1; Tue, 20 Apr 2021 12:55:20 -0400
X-MC-Unique: 1qc45lNEPuy5bXOzNYSUYw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 968E61116DF1;
	Tue, 20 Apr 2021 16:53:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C5E018A60;
	Tue, 20 Apr 2021 16:53:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A3B5A1806D0F;
	Tue, 20 Apr 2021 16:53:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13KGrLHD020830 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 20 Apr 2021 12:53:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DBB6020F8C3C; Tue, 20 Apr 2021 16:53:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D507420FE6BB
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 16:53:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5907A85A5BD
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 16:53:18 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-266-tvtRX8_sPGiV7xr3ErJUjQ-1; Tue, 20 Apr 2021 12:53:11 -0400
X-MC-Unique: tvtRX8_sPGiV7xr3ErJUjQ-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4FPqW96n9kz8tyG
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 16:53:09 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id DrU8ZrFG1FUy for <blinux-list@redhat.com>;
	Tue, 20 Apr 2021 16:53:09 +0000 (UTC)
Received: from [0.0.0.0] (184-169-119-73-dynamic.midco.net [184.169.119.73])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4FPqW854kJz8sj7
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 16:53:08 +0000 (UTC)
Message-ID: <20210420.165240.599.3@[0.0.0.0]>
To: blinux-list@redhat.com
Subject: Using Sox to volume Level
Date: Tue, 20 Apr 2021 11:52:40 -0500
MIME-Version: 1.0
User-Agent: POP Peeper Pro (5.1.2.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 13KGrLHD020830
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

I have a playlist which I want to have all at the same volume; some tracks are loud and some are so quiet I have to crank. Not conducive for a smooth listening experience. What can I pass to sox to have this directory of files leveled?
for f in *.mp3;do sox --insert-fun-options-here "$f";done
Like that.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

