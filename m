Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3B35BF3C9
	for <lists+blinux-list@lfdr.de>; Wed, 21 Sep 2022 04:51:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663728680;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dgSwc+5MbLLoHLNy1v3CbnJo7fwv0XwXO/rngtyBadk=;
	b=GWhD2yQUqyMDmsUrN58noUfUmCuEVW7ORXNxDOPNWpyq/UGRDtTkC8fD2/VOSiO6i7Kf/4
	tzF3Nrz4Cg1vuzGZ/JQEBVej8CoDsMPEnD6NV9HWi+Lnbg4EpVdOrpVrtCu3/ws+k4ZEUi
	i8dYpgQXUTO4yT2yBWwMrxIn7EVXOKo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-363-ojQuMD_CMV-seaDFE7jZkg-1; Tue, 20 Sep 2022 22:51:18 -0400
X-MC-Unique: ojQuMD_CMV-seaDFE7jZkg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 28586833941;
	Wed, 21 Sep 2022 02:51:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C1E7E40C2066;
	Wed, 21 Sep 2022 02:51:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5D49919465B9;
	Wed, 21 Sep 2022 02:51:12 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 20 Sep 2022 22:51:07 -0400
To: blinux-list@redhat.com
Subject: for console users
MIME-Version: 1.0
Message-ID: <mailman.1887.1663728671.6082.blinux-list@redhat.com>
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

When times come where an url absolutely must be opened with firefox or
equivalent browser as a console user this is what I do.
First copy the entire url from its original location using mark and cut in
speakup.  Next drop back to my linux box and edit a new file called surf.
Paste the url into surf once surf is in append mode.
Next join all lines in the file to a single line.  Next remove all spaces
from that single line.
Next append firefox followed by a space to the beginning of that line.
Next exit and save surf.
Next make surf executeable chmod 755 surf.
Next start x and orca.
Finally alt+f2 then type ~/surf.
If all of this got done correctly, firefox will open your url for you
automatically and leave you on the web page.
After that, you're on your own.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

