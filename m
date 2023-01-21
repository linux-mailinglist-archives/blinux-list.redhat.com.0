Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3545767679E
	for <lists+blinux-list@lfdr.de>; Sat, 21 Jan 2023 18:22:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1674321730;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oTwIYqPbm3vDz2ErtkIz8bumr01l1dQTSCWWs/oYJWU=;
	b=Hulr7uiRc86scwIy11ojGEhT9btY23TnvyK1IAWXhEd7QgBv0NKZPj4BiGa/wt255CxHzP
	jiewhzDEP9yvhNtvgPWGlrMd7GeDoUw2rMkWbVyhul2U/EFjzFOcTaTLIT7hG6Tkwlz0/E
	rtBsMpTdl9/6LYjiyyCel4LxL2gOL90=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-484-v3wiom7kMqqIzIArAUbP1g-1; Sat, 21 Jan 2023 12:22:08 -0500
X-MC-Unique: v3wiom7kMqqIzIArAUbP1g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 54A63185A794;
	Sat, 21 Jan 2023 17:22:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E78241731B;
	Sat, 21 Jan 2023 17:22:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 37D341946597;
	Sat, 21 Jan 2023 17:22:03 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.398.1674308652.8171.blinux-list@redhat.com>
References: <mailman.402.1674304781.8177.blinux-list@redhat.com>
 <mailman.398.1674308652.8171.blinux-list@redhat.com>
Date: Sat, 21 Jan 2023 17:21:57 +0000
Subject: Re: question on how to enable orca on latest version of raspberry pi
 os
To: blinux-list@redhat.com
Message-ID: <mailman.407.1674321722.8176.blinux-list@redhat.com>
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

To give you fair warning, while I haven't tried running a desktop or
Orca on my own Pi 3b, all reports have been that the 3B doesn't have
sufficient resources to run a desktop, the accessibility stack, and
have enough leftover for running anything other than the lightest of
apps.

If you want to run a Desktop with Orca on a Raspberry Pi and actually
have resources left over to be able to use heavier applications like
Firefox or LibreOffice, the recommendation is to use a Pi 4 with
either 4 or 8GB of RAM or the Pi 400.

Admittedly, using a Pi 4 is easier said than done with how
covid-related supply chain rusting has impacted the Raspberry Pi
Foundation's ability to keep up withh demand and how it seems like the
only people with Pi 4s in stock are the scalpers... and the Pi 400
sacrificed the 3.5mm jack for some incomprehensible reason, so while
the Pi 400 basically has everything a blind person needs for a
portable computing device in one unit, it does require either knowing
one's way around USB audio or configuring bluetooth over ssh.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

