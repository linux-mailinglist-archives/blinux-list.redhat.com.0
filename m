Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F2364681792
	for <lists+blinux-list@lfdr.de>; Mon, 30 Jan 2023 18:28:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675099711;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bVy9vQJ2gYoxcFnu+i+4HeuULaf1ZmhY6effiQLj4+U=;
	b=HRl/sv3YIhGf5Uoxy+pPoDjFGd6jPD7NY04AUa6lUyjI0R47Qh+j7D9mMQyoWuTgvLvzDH
	b+BPWSD6jObO10ObgAspSL8Gj2X7JiJG2gbzqbs+vwTNwbyY2eWqFdO5BOKRUaLte7a4LM
	GuLc+r0VwrT0ALx4gbINd3qHcBfTk8Y=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-632-zWJ2YHPCNH6j58oxq8czBw-1; Mon, 30 Jan 2023 12:28:27 -0500
X-MC-Unique: zWJ2YHPCNH6j58oxq8czBw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F571885629;
	Mon, 30 Jan 2023 17:28:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 782DD40C2064;
	Mon, 30 Jan 2023 17:28:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DE0351946597;
	Mon, 30 Jan 2023 17:28:19 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 30 Jan 2023 12:28:15 -0500
To: blinux-list@redhat.com
Subject: re: twitter alternatives for blind users
MIME-Version: 1.0
Message-ID: <mailman.2394.1675099698.8171.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

oysttyer cannot authorize with twitter and I expect all other 3rd party
apps can't authorize either.  Got no reply from oysttyer on twitter so
downloaded the app and attempted an authorization and made no mistakes in
entering the authorization url either.
For those predominately using console when you have to use a g.u.i.
browser to do stuff on the web a way I found around that was to put a line
like firefox followed by a space and the offending url in a file called
surf.  Then I made surf executeable.  Next I ran startx and then opened a
terminal then did ./surf and when surf runs, it has firefox take you to
the offending web location.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

