Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FD1597AE0
	for <lists+blinux-list@lfdr.de>; Thu, 18 Aug 2022 03:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660785330;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZZV4KPcWPO7iBIf35IOftZBit6Pqm7kFE5yK3HhjA1E=;
	b=XjHN3xeEmRebZaJ6dyAU8MB5BB69VhpkExKV2eY3ztMTGf9/c1seWGJhVYlZ6rRLYUJ7UE
	f+Y4AIzMNqr1GMyz8Bl0iCqXUEHIxjHb1geiwIC5o5uItA3C1I/15jlIPjNSOcqrXK3Y6G
	YQBRt42++BsAhILU1zwz4ZEV2w6AifM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-114-3sWYgKQAMTq19_l69sFEgw-1; Wed, 17 Aug 2022 21:15:26 -0400
X-MC-Unique: 3sWYgKQAMTq19_l69sFEgw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A33B38032E3;
	Thu, 18 Aug 2022 01:15:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 41C9740D2827;
	Thu, 18 Aug 2022 01:15:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2EE8E194E00F;
	Thu, 18 Aug 2022 01:15:19 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Wed, 17 Aug 2022 18:15:07 -0700 (PDT)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Trying to Recover Deleted Files?
MIME-Version: 1.0
Message-ID: <mailman.1939.1660785318.10502.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

We interrupt this discussion to bring you a new topic.
Hi All: Back on August 01, I ripped several streams of President Biden's speech 
on Afghanistan. I have a script to convert from mp3 to an aac. However, in my 
haste, instead of just deleting the mp3s in that directory, I nuked all audio 
files I recorded that day. I know, I need a backup strategy, something where 
any file which I nuke would endup in a temporary trash for like 6 hours. 
Usually when I make similar errors, I know rather fast.
So, many years ago, when I was in DOS, I could type "undelete" and it would 
provide a list of files, which you fill in the first letter. I gather 
recovering files in a Debian SID system is complicated? 1 of my Linux experts 
suggested I install testdisk. Trouble is it really doesn't read well in 
speakup. Another of my experts ran it here, says I have an LVM. Seemingly 
running a df -h shows home as /dev/sda3. At this point I only need files I 
nuked from August 01. Can some1 please inform of either packages or sequences I 
can run to try-and-restore these? I suppose if I can use a wild-card in that 
directory or provide it on a commandline? 
Thanks so much in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

