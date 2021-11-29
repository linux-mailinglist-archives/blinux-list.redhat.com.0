Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D4EA7462265
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 21:42:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638218577;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cvDvmX3knh15aS/wD1iVAGE1TzQSo2xJZmbqJSSQKDc=;
	b=Mif+bLQzfqiFTLmo/8pURTZVYmYNESIKsuNKMtlOZnUhch0RQXI8hTyNcl6pnu/VsYRcJt
	XpupdgYVmG49pRPweX4HVeCO8rWW3PV/I+cRv4FPKu85aqAX23NyPX/9A9enm9SBN77GVV
	OM/4RPgsdAxGvPnrFxEhDH0yS0bZadI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-40-oF5f7OX5Nkq2GSJiI07Keg-1; Mon, 29 Nov 2021 15:42:56 -0500
X-MC-Unique: oF5f7OX5Nkq2GSJiI07Keg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C19E483DD20;
	Mon, 29 Nov 2021 20:42:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B5528101E68B;
	Mon, 29 Nov 2021 20:42:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 957EF4A700;
	Mon, 29 Nov 2021 20:42:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATKgWaF005761 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 15:42:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C4316C23DB2; Mon, 29 Nov 2021 20:42:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BFF4FC15E72
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 20:42:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A5EAB185A794
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 20:42:32 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-439-PBqU7serOh-azWR_-EQgDA-1; Mon, 29 Nov 2021 15:42:30 -0500
X-MC-Unique: PBqU7serOh-azWR_-EQgDA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4J2y2s5BVlz4Lt5
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 15:42:29 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4J2y2s4f96zcbc; Mon, 29 Nov 2021 15:42:29 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4J2y2s4JjzzcbW
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 15:42:29 -0500 (EST)
Date: Mon, 29 Nov 2021 15:42:29 -0500
To: blinux-list@redhat.com
Subject: re: most accessible editor
Message-ID: <alpine.NEB.2.23.451.2111291528050.12676@panix1.panix.com>
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
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

emacs is available.  It has a tutorial to run to learn it.  There is also
emacspeak that can turn emacs into a talking linux environment for those
that will use it.  Best to learn emacs first then move onto emacspeak
since that'll be another learning curve.  Both of these have learning
curves but the reason to learn at least one or both is the extra
extensions that can be installed on them to get all manner of work done
you can't do with nano or vi or pico.
Nano is supposed to be an improved successor to pico with more features.
The vi editor is peculiar and unique in that when you start it up it's in
command mode and you toggle between command mode and input mode using the
escape key.  Not the case with the other editors mentioned.  Command mode
can be a highly dangerous place to be especially for a new vi user when
starting out.
The emacs editor/platform has its own help list any subscriber can write
and ask questions and get pointed to web pages or documentation already on
their system.  Slint already has emacs and info installed and typing info
emacs gets you into that documentation.  A couple other info commands to
try are info info, info erc, info org, info forms, info eww, and info
newsticker.  All of this runs out of emacs; once emacs is started these
other commands can be run.
In emacs you start out in input mode if you open a file with it.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

