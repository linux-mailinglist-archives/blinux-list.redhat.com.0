Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FEE479C49
	for <lists+blinux-list@lfdr.de>; Sat, 18 Dec 2021 20:20:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639855240;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=axbHNRc1GCdfOg7fSNQg1POI32ysNQ5Xh+0fF0TJBdw=;
	b=gsVHDqD/2xvFoJXmfCciZLfhc2bat/fANNwKp4GFA7XBeFMMFed1gcLPJqWxh6siu+awdV
	9OivvLhoQ6H7PjFIeG8tAaMl859PxgzCkDG+vAOkh9mKA1Eog63srm5RNa6pTUSHAHvU7X
	Xc1Me8zYvJHsuPFI034ch8IYp6vAtVY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-486-uBppe2s3MjmwrJJL3Cmegg-1; Sat, 18 Dec 2021 14:20:36 -0500
X-MC-Unique: uBppe2s3MjmwrJJL3Cmegg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 44E80801ADC;
	Sat, 18 Dec 2021 19:20:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 728345BE1B;
	Sat, 18 Dec 2021 19:20:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 86D601809CB8;
	Sat, 18 Dec 2021 19:20:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BIJIHT2020667 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 18 Dec 2021 14:18:17 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 53C1A1120AC7; Sat, 18 Dec 2021 19:18:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4FE8D1120AC6
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 19:18:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 630908039D5
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 19:18:14 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-493-yV28hA41M8ywh2e4WIH8YA-1; Sat, 18 Dec 2021 14:18:12 -0500
X-MC-Unique: yV28hA41M8ywh2e4WIH8YA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JGbGr1GrXz3rRV
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 14:18:12 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JGbGr0yYPzcbc; Sat, 18 Dec 2021 14:18:12 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JGbGr0dkyzcbP
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 14:18:12 -0500 (EST)
Date: Sat, 18 Dec 2021 14:18:11 -0500
To: blinux-list@redhat.com
Subject: fenrir-screenreader and python 3.10
Message-ID: <alpine.NEB.2.23.451.2112181416290.28889@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Fenrir will need rebuilding locally as will all other older python
applications.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

