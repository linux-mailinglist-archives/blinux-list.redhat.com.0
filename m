Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7520B6B620E
	for <lists+blinux-list@lfdr.de>; Sun, 12 Mar 2023 00:31:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678577495;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NcG99xKrlu5wx8SblJgeiFhwwiijuIlau8+9R5vJJKc=;
	b=AzI66bbWPf3w3jPqXFYohGBuKAS7U39kHZpjnIkBAHYHwMvN7ZDpCm2vlsW94fNTrGIBRW
	1hhWmXfUYo295LXXhsq+H2SkSm1NICsJVFwbRRJXRJ6UxcfqDvqP0xyOjvsqbDb7rH0edy
	DBwN6IAK6/KdA0fTd/XTVu7e8b5IxEc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-445-razG20c9O72_ThOysu5j8g-1; Sat, 11 Mar 2023 18:31:31 -0500
X-MC-Unique: razG20c9O72_ThOysu5j8g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1BD3D85A588;
	Sat, 11 Mar 2023 23:31:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EADB9440E1;
	Sat, 11 Mar 2023 23:31:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3B35A1946A66;
	Sat, 11 Mar 2023 23:31:24 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 11 Mar 2023 18:31:20 -0500
To: blinux-list@redhat.com
Subject: has anyone got emmaubuntus talking?
MIME-Version: 1.0
Message-ID: <mailman.398.1678577483.3486290.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I downloaded the latest release.  It has espeak-ng on it but doesn't have
orca.  I couldn't figure out how to get espeakup-ng to come up on boot so
I'd have a talking install at least.
For those that don't yet know emmaubuntus is a distribution aimed at
under-powered and refurbished machines stuff that would otherwise end up
in the land fills.  It's for beginners to linux and the only reason I'm
doing anything with it at all is to possibly help a remote sighted person
migrate one or more old windows machines to this version of linux and she
hasn't used linux yet.  It offers xfce and lxqt as desktops.  If orca
isn't in the repository being used it ought to get in the repository so
the desktops get accessible for screen reader users.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

