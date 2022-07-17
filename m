Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CF75774A9
	for <lists+blinux-list@lfdr.de>; Sun, 17 Jul 2022 07:29:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1658035792;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aGfFvR8ubnw/1tzwEX7SxJ8aqEBSdM8UtIfTiE7GpLs=;
	b=NU98D3Aa8zTWQHIES9NgYam45HdG35b8dpGMDhEfzzhqHsb3tBVJp+EFqWqfuIr/X15O3l
	mY87iQ7jdiMH6/liOmt5Q4EErkA5bFAhCH2Eosaw2XO19VWoJkT0qikbwCOkB7bLiy6+/u
	6fpEw7r/chuzOLzrkvLs5F8TywDY6Mg=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-396-JH2ZvHWmN_iiqbHCjmspgA-1; Sun, 17 Jul 2022 01:29:48 -0400
X-MC-Unique: JH2ZvHWmN_iiqbHCjmspgA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1533F28084F6;
	Sun, 17 Jul 2022 05:29:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id F0E472026D64;
	Sun, 17 Jul 2022 05:29:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3EAEB1947059;
	Sun, 17 Jul 2022 05:29:38 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Sat, 16 Jul 2022 22:29:26 -0700 (PDT)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: An Escape Issue From Readline?
MIME-Version: 1.0
Message-ID: <mailman.5688.1658035777.3475251.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi All: Several days ago I tried installing hopefully some commandline Shazam 
clients for my Debian SID machine. They were songrec and instantmusic. So far 
couldn't get them working, but now, even after un-installing instantmusic 
through pip, I have this nasty issue in some programs such as youtube-viewer. 
Now I cannot type a "d" to download results. Instantmusic had this same issue. 
In running searches, mentions about an escape r. It was suggested to hit escape 
1 or more times. Well, here in bash, if I hit escape 4 times, it asks if I want 
to display all files on my system 
If I hit escape twice in tcsh, it seems to act as an "ls" So, can some1 please 
suggest how to fix this. Thanks so much in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

