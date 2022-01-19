Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEC24943EA
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jan 2022 00:43:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642635821;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zkNExhAt49LKnLANRDwl/zebZEVV8UiyOigzU86TyMw=;
	b=LQzKySl6ljxJw5R90hROamVcrY1Dg0WmeJvMaZj20/Ts3KP0UPRvhu2gOwgnc1s0sb74Z9
	ttncSKlHECnbcNKJQiZGHlDopi0D2P/3mP7N5Q/QCr6Ez6W3xVJQ3h0XWNxx+IdKLLBx/S
	w2vIQ+6NFMY737e5XIB+qw3xD/WKM1w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-83-dAlQZSeWMgeDUGH3tjyn0Q-1; Wed, 19 Jan 2022 18:43:37 -0500
X-MC-Unique: dAlQZSeWMgeDUGH3tjyn0Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F0AAB1006AB6;
	Wed, 19 Jan 2022 23:43:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CBF9E104C53A;
	Wed, 19 Jan 2022 23:43:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5A5151806D1D;
	Wed, 19 Jan 2022 23:43:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20JNeKUG006075 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Jan 2022 18:40:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 035D2C08097; Wed, 19 Jan 2022 23:40:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F38E2C08093
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 23:40:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DA948185A7BA
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 23:40:19 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-664-kaOlWLV6NSK0zcXnrqzshQ-1; Wed, 19 Jan 2022 18:40:18 -0500
X-MC-Unique: kaOlWLV6NSK0zcXnrqzshQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JfMZT4LzSzn7d
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 18:40:17 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JfMZT3MKyzcbc; Wed, 19 Jan 2022 18:40:17 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JfMZT2yTXzcbP
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 18:40:17 -0500 (EST)
Date: Wed, 19 Jan 2022 18:40:17 -0500
To: blinux-list@redhat.com
Subject: cell phone industry practices
Message-ID: <63f587bb-c045-5b27-4252-26d68fd14c7@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Does anyone know of any cell phone ready Linux operating system that comes
with an accessible desktop environment that has active support
I'm curious about this as a result of cell phone industry practices.
Specifically, no last security update date and no operating system update
date is on packaging or listed on any of the cell phone screens.  This
means if your phone is compromised once these two dates have passed it's
time to throw your phone in the trash since even if you do a factory
reset, the phone can be easily compromised again.
Even if anything like this is available it will be a challenge to find
competent technical support to replace the operating system on the phone
and hook it up with the Linux provider's package repositories.

?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

