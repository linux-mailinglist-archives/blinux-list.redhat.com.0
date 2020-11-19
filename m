Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 03A0D2B9ACD
	for <lists+blinux-list@lfdr.de>; Thu, 19 Nov 2020 19:42:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605811360;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Hxilk3BD+9bnkuqCnv19YeamH/chM6a0BoTUMs8vKQ4=;
	b=MExhi7k1xndbKydF33BwwFjaKEEROqdU0fuHsdDfbVTMl5AdtQyq517q7MhCYuoui+G7EZ
	YiY/sKUAVjCR3Wp2osKuavV1cy7CFhh6RNrZfldU1NKN3vAFx46ZYWkzWaRKDyqRvwkov4
	ZmPBjGKFQyMo6DKjO5b2aPouDrgCpzA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-537-PWQWTYTUOOi6aqIH210Caw-1; Thu, 19 Nov 2020 13:42:37 -0500
X-MC-Unique: PWQWTYTUOOi6aqIH210Caw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D94368030A1;
	Thu, 19 Nov 2020 18:42:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E593F60BE2;
	Thu, 19 Nov 2020 18:42:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ECFC44BB7B;
	Thu, 19 Nov 2020 18:42:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AJIgD3S027957 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 19 Nov 2020 13:42:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5E83F2166B2B; Thu, 19 Nov 2020 18:42:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 59D1F2166B29
	for <blinux-list@redhat.com>; Thu, 19 Nov 2020 18:42:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 816FD1875041
	for <blinux-list@redhat.com>; Thu, 19 Nov 2020 18:42:10 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-323-R2gPbLmYPJ-mVeMQ4eb8Zw-1; Thu, 19 Nov 2020 13:42:07 -0500
X-MC-Unique: R2gPbLmYPJ-mVeMQ4eb8Zw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4CcT734KC0zMC3
	for <blinux-list@redhat.com>; Thu, 19 Nov 2020 13:42:07 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4CcT733D35zcbc; Thu, 19 Nov 2020 13:42:07 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4CcT732l5czcbW
	for <blinux-list@redhat.com>; Thu, 19 Nov 2020 13:42:07 -0500 (EST)
Date: Thu, 19 Nov 2020 13:42:07 -0500
To: blinux-list@redhat.com
Subject: brltty and orbit writer
Message-ID: <alpine.NEB.2.23.451.2011191340430.28817@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Can these two make braille together?  Can the orbit writer be used as a
terminal if necessary on Linux systems?  Anyone out there doing this yet?



-- United States has 633 Billionaires with only 10 doing any annual
significant giving.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

