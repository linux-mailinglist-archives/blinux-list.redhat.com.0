Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 48BD13D4081
	for <lists+blinux-list@lfdr.de>; Fri, 23 Jul 2021 21:02:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627066976;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2IciRfKTR7GoF9lthuuxKiZebDxrUq5Gasp05SEia/g=;
	b=PPXmVVAvDV/qpM6mXPbBS7is89M17gHnkTw1sm5uRw5/KABLBUM80eF4R7f13CrYOs8mmt
	sWePmAN3uNjrKgpHCnAjsAfqDUUXZYQLCoKU8olzS2xrfs5nSoz4A2ruShELqnhsgtl+gS
	0ibstOktFrE9AFWo1kZfOgVfkUL5cU8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-265-lPXk9yx5NGyik9Gbnqvmgw-1; Fri, 23 Jul 2021 15:02:53 -0400
X-MC-Unique: lPXk9yx5NGyik9Gbnqvmgw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 07C7C1005D4F;
	Fri, 23 Jul 2021 19:02:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B23B75D9C6;
	Fri, 23 Jul 2021 19:02:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 60797180B7A2;
	Fri, 23 Jul 2021 19:02:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16NJ2OMB013157 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Jul 2021 15:02:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E514B2028677; Fri, 23 Jul 2021 19:02:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E16F7202867F
	for <blinux-list@redhat.com>; Fri, 23 Jul 2021 19:02:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6BDE3800B35
	for <blinux-list@redhat.com>; Fri, 23 Jul 2021 19:02:21 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-274-8-aS3vqROh6_7xNIsr088A-1; Fri, 23 Jul 2021 15:02:17 -0400
X-MC-Unique: 8-aS3vqROh6_7xNIsr088A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GWdwn031RzPwY
	for <blinux-list@redhat.com>; Fri, 23 Jul 2021 15:02:16 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GWdwm707hzcbc; Fri, 23 Jul 2021 15:02:16 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GWdwm6dbWzcbP
	for <blinux-list@redhat.com>; Fri, 23 Jul 2021 15:02:16 -0400 (EDT)
Date: Fri, 23 Jul 2021 15:02:16 -0400
To: blinux-list@redhat.com
Subject: distro without a podcast
Message-ID: <alpine.NEB.2.23.451.2107231500380.29951@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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

gentoo has no accessible installation podcast and though I've installed it
it was one of the more difficult installations I've done.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

