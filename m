Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 59DFE3D1B85
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 03:53:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626918795;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wjvwOp9aFrY+CXBOd+KtiP7J09WkzV6UHNUITRxvgsQ=;
	b=EZeN3dq+dzhJnVAAvDYBDkztZLGvQ/aRx9qvGyGsD74JlTVNDZs05tzQ/aR+F12iOiFSgp
	8P5MOQ0o48hf5ay7s5ShkbXWQKO3LcoeU/UX1Px5Fv07HXX/NmEaSrcTtIvGvX0C8AmOOs
	UgPtY8sEc9l1KRoC7Ya56bqC7c0CjOQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-420-0QBOu4voPeiC-563b6H9Fg-1; Wed, 21 Jul 2021 21:53:08 -0400
X-MC-Unique: 0QBOu4voPeiC-563b6H9Fg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B7068801B0A;
	Thu, 22 Jul 2021 01:52:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 41DFF607A1;
	Thu, 22 Jul 2021 01:52:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7B00B1819AC9;
	Thu, 22 Jul 2021 01:52:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16M1qkQi013662 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 21:52:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5A63210328B; Thu, 22 Jul 2021 01:52:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 55B19FED29
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 01:52:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 03551185A79C
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 01:52:43 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-203-Z1WMEB5fPDiJITNAQT_quA-1; Wed, 21 Jul 2021 21:52:40 -0400
X-MC-Unique: Z1WMEB5fPDiJITNAQT_quA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GVb7D2HbjzSYC
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 21:52:40 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GVb7D19Pjzcbc; Wed, 21 Jul 2021 21:52:40 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GVb7D0StzzcbP
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 21:52:40 -0400 (EDT)
Date: Wed, 21 Jul 2021 21:52:39 -0400
To: blinux-list@redhat.com
Subject: archinstall extras
Message-ID: <alpine.NEB.2.23.451.2107212151260.26301@panix1.panix.com>
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Apparently extra scripts exist that archinstall can run.  What these are
called and what the scripts do I don't yet know.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

