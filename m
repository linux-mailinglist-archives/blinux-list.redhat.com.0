Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id ED5B8407E96
	for <lists+blinux-list@lfdr.de>; Sun, 12 Sep 2021 18:26:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1631463967;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QCJVqFwfaKVhw/SCewxs2egcq68pIxjSaEPRT0lBquY=;
	b=PWm8ifaUGMVD3WksGHpSF6RrGGn+r8vR3yP6KD5D4TqQ/rmK8JA5kTgvMcy/qd4BUwSxFV
	RCrm6ENTU3zrzwjnqdJc9vtGzXEXWrMMv3f+3553pL9GuaFfqjqZqvJBD1GXUexKgfa5ty
	KYX7NzwdoRCVLYJIqaYqBULT35mGCeU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-230-2hd_bfmiP5quXIOLQbOlEA-1; Sun, 12 Sep 2021 12:26:05 -0400
X-MC-Unique: 2hd_bfmiP5quXIOLQbOlEA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E1F37835DE0;
	Sun, 12 Sep 2021 16:25:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D2FFB608BA;
	Sun, 12 Sep 2021 16:25:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4BF834E58E;
	Sun, 12 Sep 2021 16:25:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18CGPcVx025098 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 12 Sep 2021 12:25:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5AB08216239D; Sun, 12 Sep 2021 16:25:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 565CA2162398
	for <blinux-list@redhat.com>; Sun, 12 Sep 2021 16:25:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6980D185A7A4
	for <blinux-list@redhat.com>; Sun, 12 Sep 2021 16:25:35 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-371-NUPaEgsTMeWAXRnSfL69Pw-1; Sun, 12 Sep 2021 12:25:31 -0400
X-MC-Unique: NUPaEgsTMeWAXRnSfL69Pw-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4H6w2H4Hyvz8vNb
	for <blinux-list@redhat.com>; Sun, 12 Sep 2021 16:25:27 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id ecJeDEeAaoqx for <blinux-list@redhat.com>;
	Sun, 12 Sep 2021 16:25:26 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net
	[208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4H6w2G4SKbz8vN1
	for <blinux-list@redhat.com>; Sun, 12 Sep 2021 16:25:26 +0000 (UTC)
Message-ID: <20210912.162536.058.3@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: best gui vm managers
Date: Sun, 12 Sep 2021 11:25:36 -0500
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 18CGPcVx025098
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm looking at throwing another 16 gb ram into my linux box, and then switching over to it fulltime, running a win 7 vm for those times I need windows for something. What's the most accessible vm manager? VMWare player? Virtualbox? I'm on arch.
Thanks.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

