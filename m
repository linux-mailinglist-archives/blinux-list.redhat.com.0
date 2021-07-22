Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id EC9C43D1B95
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 04:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626919360;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=93PRW0FusB9D+WHFHRA+dl8qKNSVAsNE0AoenAKtM0I=;
	b=d6Gsf9bte3M26WzJQoTVA2lgMkVajpdWHpCWTu1hXgWHlEFUekt4yjskufAf2bXoNvzRMS
	ikZjmSE/1Q+sxyyY3gaoRQX8/VTz0D7Q3nnd7ttz0wKHQNDdZpWPjreWlVV4GdC5iqhVJc
	slTAsmurUv1sHh7zWdiqTZaoo5LTEfg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-534-NuP6GIaQOT2ikDrEGXWJXQ-1; Wed, 21 Jul 2021 22:02:39 -0400
X-MC-Unique: NuP6GIaQOT2ikDrEGXWJXQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 70088190A7A0;
	Thu, 22 Jul 2021 02:02:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 48D935D9DD;
	Thu, 22 Jul 2021 02:02:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C51814BB7C;
	Thu, 22 Jul 2021 02:02:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16M22Txj014443 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 22:02:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DABDC2028646; Thu, 22 Jul 2021 02:02:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D62AB2028686
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 02:02:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4334E800141
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 02:02:27 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-284-DWDokixXMKGmrdBrLNbfxQ-1; Wed, 21 Jul 2021 22:02:24 -0400
X-MC-Unique: DWDokixXMKGmrdBrLNbfxQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GVbLS1sJWzSn9
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 22:02:24 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GVbLS1kNfzcbc; Wed, 21 Jul 2021 22:02:24 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GVbLS1d2LzcbP
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 22:02:24 -0400 (EDT)
Date: Wed, 21 Jul 2021 22:02:24 -0400
To: blinux-list@redhat.com
Subject: archwiki could probably use an update
Message-ID: <alpine.NEB.2.23.451.2107212158050.3910@panix1.panix.com>
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

espeak-ng has no mention and if espeak-ng is trying to replace espeak
espeak-ng could use pacstrap install instructions and a note that it's
recommended over espeak.
I'm back burnering espeak-ng since I need archlinux talking when I run it
since I want to transfer some org files onto my phone and need a google
drive client on archlinux that works to do that.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

