Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C15BE39C2C1
	for <lists+blinux-list@lfdr.de>; Fri,  4 Jun 2021 23:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622843020;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=imRoDc6rPNwenab9INffEiTK5qHQ/tw7lSnEMOHsKLQ=;
	b=gjiRMaYzMzRt0KF8enHuETQ22mcFOAQUvu0o44oBKlNl7yDjEYaUljJcgK7Pespmt8jeNY
	BldqEGltFIujwKtjwii5y5zDy7NcvRSzo+oEcSFIl9ggP0z81UL5xskym3evq66DPftZyn
	tGd6Dnc3rLha1RJE4XGkawn6H9Y66XY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-441-3xjQjeVOPNaMt0yDUS1Grw-1; Fri, 04 Jun 2021 17:43:38 -0400
X-MC-Unique: 3xjQjeVOPNaMt0yDUS1Grw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5B7DB501E1;
	Fri,  4 Jun 2021 21:43:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4F55F5D9DC;
	Fri,  4 Jun 2021 21:43:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CF7541800BB8;
	Fri,  4 Jun 2021 21:43:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 154LhAoG012671 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Jun 2021 17:43:10 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3F06C1054FCC; Fri,  4 Jun 2021 21:43:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 397FA1054FD9
	for <blinux-list@redhat.com>; Fri,  4 Jun 2021 21:43:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 12C23805C1D
	for <blinux-list@redhat.com>; Fri,  4 Jun 2021 21:43:07 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-521-llO3avn5Of6XhMbBUnPtPQ-1; Fri, 04 Jun 2021 17:43:02 -0400
X-MC-Unique: llO3avn5Of6XhMbBUnPtPQ-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4Fxbpr0mvQz8wQt
	for <blinux-list@redhat.com>; Fri,  4 Jun 2021 21:43:00 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id 8r93J5-f9BlA for <blinux-list@redhat.com>;
	Fri,  4 Jun 2021 21:42:58 +0000 (UTC)
Received: from [192.168.1.100] (184-169-119-73-dynamic.midco.net
	[184.169.119.73])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4Fxbpp2gFgz8tNF
	for <blinux-list@redhat.com>; Fri,  4 Jun 2021 21:42:58 +0000 (UTC)
Message-ID: <20210604.214256.298.7@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: GRML or other live environment
Date: Fri, 04 Jun 2021 16:42:56 -0500
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 154LhAoG012671
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

I want to boot up a system with active compilation tools. Goal is to build lfs on a new system such that it's the only OS on the hard disk. Does GRML have speakup on it still? According to this:
http://git.grml.org/?p=grml-live.git;a=blob_plain;f=templates/GRML/grml-cheatcodes.txt;hb=HEAD
it does not. If it actually does, how do you start it. And if not, what is another live distro that has compilation tools on it already so I can do what I want to do?


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

