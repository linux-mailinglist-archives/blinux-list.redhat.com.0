Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 600DB29A2B4
	for <lists+blinux-list@lfdr.de>; Tue, 27 Oct 2020 03:33:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1603766028;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0DpGd6LAxTD3xmvOV1ekZ53mvye9o12vwik1BiVCSR0=;
	b=AimbxIvW+8P5itzCGEdxsGE+SBPojWySu8J2ylwCVBpcD5ZLr33LLgJ4AiBU/znHRCungx
	MEsZBt6Yve+/GS68Y9YpYfxyirNa9GOGZ88LKpWvl1WqHlgmMIA4MW4ZWuErg5Vw9pOK/6
	6yIfPyRmppsqKO0WDx1mfJFFRhn8XLw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-401-pJi3BlGTMdKGQQF_gM2adA-1; Mon, 26 Oct 2020 22:33:45 -0400
X-MC-Unique: pJi3BlGTMdKGQQF_gM2adA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E7AAD809DC9;
	Tue, 27 Oct 2020 02:33:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 49EB65D9E4;
	Tue, 27 Oct 2020 02:33:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D4952181A869;
	Tue, 27 Oct 2020 02:33:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09R2Qfjx008038 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 26 Oct 2020 22:26:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E27742166B27; Tue, 27 Oct 2020 02:26:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DBF1E2156A36
	for <blinux-list@redhat.com>; Tue, 27 Oct 2020 02:26:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B3B4685829E
	for <blinux-list@redhat.com>; Tue, 27 Oct 2020 02:26:37 +0000 (UTC)
Received: from server2.shellworld.net (ip-66-172-12-120.chunkhost.com
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-230-2xrxPDRPNsaMPxlr4BBSDQ-1; Mon, 26 Oct 2020 22:26:34 -0400
X-MC-Unique: 2xrxPDRPNsaMPxlr4BBSDQ-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 6EA9E540130; Tue, 27 Oct 2020 02:26:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 6E2455400F6
	for <blinux-list@redhat.com>; Mon, 26 Oct 2020 22:26:33 -0400 (EDT)
Date: Mon, 26 Oct 2020 22:26:33 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: the brave browser?
In-Reply-To: <5c169b90-14b6-62cf-f898-79fc149eee6b@crosslink.net>
Message-ID: <Pine.LNX.4.64.2010262224160.308363@server2.shellworld.net>
References: <07C9A138-5900-4138-9663-B659A1DC7D74.ref@yahoo.com>
	<07C9A138-5900-4138-9663-B659A1DC7D74@yahoo.com>
	<5c169b90-14b6-62cf-f898-79fc149eee6b@crosslink.net>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi folks,
Came across a reference to  this fairly new tool.
www.brave.com
I hope laughs.
In any case, the Brave browser is an opensource tool which I understand is 
inclusive for some in other platforms.  Wondering if anyone has tried the 
Linux editions?



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

