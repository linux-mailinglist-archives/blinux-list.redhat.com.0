Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BEEDB527AB8
	for <lists+blinux-list@lfdr.de>; Mon, 16 May 2022 00:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1652654281;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=09sI+tRJ1euBIYzK0Yvq2iz+rt164hWLORAcDW/rQMo=;
	b=QOGVNRki3v+qzQYPEHWWz/3XbQVTr5lx8rC+4XkrJNkjFHt/GE3QHNPzMsAP/dJTdoCqiv
	7EP3TcwWZRbAUae6KLsQgTQDxbVL1wcSv0o8Ek2jYUvVPby2954Jsxijju47lYViGW14IK
	pDJYtql48Zvx5SXXU5YJorX7GuLTh8M=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-629-6SmD26lBPCa_X1H4dqoOag-1; Sun, 15 May 2022 18:37:58 -0400
X-MC-Unique: 6SmD26lBPCa_X1H4dqoOag-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 65D183C0D187;
	Sun, 15 May 2022 22:37:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 766591558757;
	Sun, 15 May 2022 22:37:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 90DB31947060;
	Sun, 15 May 2022 22:37:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 15 May 2022 15:37:30 -0700 (PDT)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Are Their Any Easier dot nzb Programs?
MIME-Version: 1.0
Message-ID: <mailman.15572.1652654256.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi There: While I am still grabbing usenet files in trn, I am having 
incompletes. I noticed alot of posters in addition to .par files were also 
posting these nzb. Well I have only 2 of these. nzbget as well as sabnzbdplus. 
The later one has an odd concept of launching, then opening your favorite 
web-browser to a 127 address, but L Y N X only has 4 links, also cannot find a 
config, but it seems to defalt to l i n k s 2.26. In the nzbget, I tried
editing the config but it never seems to connect to my giganews server. I
looked in Debian SID packages, not seeing any other console nzb items. Wouldn't mind 
if there were a menu-driven one which would prompt for info. Thanks so much in 
advance for any info.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

