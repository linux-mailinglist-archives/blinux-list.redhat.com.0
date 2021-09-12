Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1E163407EF9
	for <lists+blinux-list@lfdr.de>; Sun, 12 Sep 2021 19:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1631467967;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KRiejNKch5up4OMO3IFqAKCkXN0XZOsSr2I2qckkBuQ=;
	b=fpDhdeLdbqrJL3zgjlQwfM4nGsyIVXCx3kd57YxZks68PMPqEiW2Wl3AElKVCwXReYEF4R
	mHonHaE0W3nIql4X29mMXp3v3LI3y+1lWgmVS7t6b9NPb/G/rEXoYG4LjfFkP6aQ01Jb/B
	I5W/N1ehpUkR3Fw6JkCrGImpwRmjpgU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-6-TLuw8Dt9NlqrXCJz8UEa4g-1; Sun, 12 Sep 2021 13:32:45 -0400
X-MC-Unique: TLuw8Dt9NlqrXCJz8UEa4g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 89D9D1084684;
	Sun, 12 Sep 2021 17:32:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1B1BC6A8F5;
	Sun, 12 Sep 2021 17:32:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7CBEC4E58E;
	Sun, 12 Sep 2021 17:32:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18CHWbqN029705 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 12 Sep 2021 13:32:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 82C44216239D; Sun, 12 Sep 2021 17:32:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7DFE32162399
	for <blinux-list@redhat.com>; Sun, 12 Sep 2021 17:32:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B443C101A529
	for <blinux-list@redhat.com>; Sun, 12 Sep 2021 17:32:34 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-395-fm79YHRhN7mFzRyKT_BNvg-1; Sun, 12 Sep 2021 13:32:33 -0400
X-MC-Unique: fm79YHRhN7mFzRyKT_BNvg-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4H6xWh0hlJz8vNb
	for <blinux-list@redhat.com>; Sun, 12 Sep 2021 17:32:32 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id TxW6p_916_By for <blinux-list@redhat.com>;
	Sun, 12 Sep 2021 17:32:31 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net
	[208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4H6xWg0HFJz8vN1
	for <blinux-list@redhat.com>; Sun, 12 Sep 2021 17:32:30 +0000 (UTC)
Message-ID: <20210912.173240.464.4@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Re: best gui vm managers
Date: Sun, 12 Sep 2021 12:32:40 -0500
MIME-Version: 1.0
In-Reply-To: <20210912172806.5dzxk7e3sj4u73it@alex-pc>
References: <20210912.162536.058.3@[192.168.1.100]>
	<20210912172806.5dzxk7e3sj4u73it@alex-pc>
User-Agent: POP Peeper Pro (5.1.2.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 18CHWbqN029705
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

Linux for blind general discussion <blinux-list@redhat.com> wrote:
> I am using qemu with libvert and vert manager. it's the best option IMO.


Does any special configuration need to be done so libvirt and qemu talk to each other?


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

