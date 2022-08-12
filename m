Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 717F8590A5B
	for <lists+blinux-list@lfdr.de>; Fri, 12 Aug 2022 04:40:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660272057;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=e3wTz57L2mkr01wvdd1+CpaO9f/p7FxeYloQYpB4XCM=;
	b=cCW3rm+vXt+ycwFennkxKq3AZ8rEwGOe9CXfbu59bySiFI8k3C2P49CYTHe5MJSBfGnJLn
	f/aJqOm+J+DjwVyMmCvzFKOHCekDqvFKoSETGJgDBAtTli7j0OE68sDc0jSRjvowgSHfuB
	X2a5hNjhs64n/sD4rUlfN4zUDv5UOYE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-589-ZeGZI3NDMr2f8ZzmniG6hQ-1; Thu, 11 Aug 2022 22:40:33 -0400
X-MC-Unique: ZeGZI3NDMr2f8ZzmniG6hQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F04B68039B8;
	Fri, 12 Aug 2022 02:40:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BAF5D400DFD7;
	Fri, 12 Aug 2022 02:40:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2791F1946A52;
	Fri, 12 Aug 2022 02:40:24 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 11 Aug 2022 22:40:18 -0400 (EDT)
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>
Subject: "Accessibility in Fedora Workstation" (fwd)
MIME-Version: 1.0
Message-ID: <mailman.135.1660272023.10501.blinux-list@redhat.com>
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
Cc: Linux for blind general discussion <blinux-list@redhat.com>,
 blind_linux_users <discuss@blvuug.org>
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi folks,
I am sharing the below article for a couple of reasons.
First, someone directly involved with speakup might want to correct the 
slander there seemingly token  blind person shares about speakup.
Second, to encourage others to share the article...it is the sort of 
stereotypical projecting that unfortunately, no matter how well intended 
passes  for  inclusion efforts sometimes.
Honestly I know more qualified people from this list, from the Blinux list, 
for  that matter than the guy hired for this fedora task...and I am not 
a major Linux user.
Please read and at least correct his understanding.
Karen

An article in Fedora Magazine talks about increased efforts to make the
Fedora distribution more accessible.

<https://fedoramagazine.org/accessibility-in-fedora-workstation/>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

