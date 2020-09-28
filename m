Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id BBE8C27B4A4
	for <lists+blinux-list@lfdr.de>; Mon, 28 Sep 2020 20:36:39 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601318198;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jzrA/+bBz7fBRS72WU2nw0fEZU3IIVfJwWe3so9P48g=;
	b=N3ji8LgFdESHH2m/Zi5bH87mNamTDCxyMPe3EiYTeqbC7+oq9g7XxqG8H/Kw1Bp/v03UwM
	ZnFtUnnmtxkgxyQJcX/Iru5fRWZeFg/aacs8DShkHtdKOUZfnYVi+4QHwxbSk1QV/Mo9+S
	N/ZCx21HW9Lx0v8ohjQftagP0eBG16M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-6-SP9E5I8RONScIZM9nNX2Jg-1; Mon, 28 Sep 2020 14:36:35 -0400
X-MC-Unique: SP9E5I8RONScIZM9nNX2Jg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D383802B6A;
	Mon, 28 Sep 2020 18:36:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BF1CB60C11;
	Mon, 28 Sep 2020 18:36:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 03D0F18408A5;
	Mon, 28 Sep 2020 18:36:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08SIaGwW006470 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 28 Sep 2020 14:36:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6B74E110F0D1; Mon, 28 Sep 2020 18:36:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 67BA3110F0D0
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 18:36:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 51698858295
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 18:36:13 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-66-yhn7wYaGM5q98QZ4x8S5aA-1; Mon, 28 Sep 2020 14:36:09 -0400
X-MC-Unique: yhn7wYaGM5q98QZ4x8S5aA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4C0WS93QxCzpWS
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 14:36:09 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4C0WS932z8zcbc; Mon, 28 Sep 2020 14:36:09 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4C0WS92wYLzcbV
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 14:36:09 -0400 (EDT)
Date: Mon, 28 Sep 2020 14:36:09 -0400
To: blinux-list@redhat.com
Subject: gentoo!
Message-ID: <alpine.NEB.2.23.451.2009281409420.23872@panix1.panix.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Apparently

 mirrorselect didn't get the news about stuff being deprecated in
portage's make.conf file and in the latest downloads is putting things
into make.conf that are deprecated.  The handbook says as much but fails
to give the new syntax and you'd have to be able to read man 5 portage to
get the new syntax.  The left hand doesn't know what the right hand is
doing.  Put simply, I picked a bad time to try to install gentoo.  I'll
probably wait until 2021 to try this again.

The deprecated variable at issue here is rsync-uri.



--

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

