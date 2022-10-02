Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7405F2520
	for <lists+blinux-list@lfdr.de>; Sun,  2 Oct 2022 21:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1664738986;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zktYtcoBctDHPZUlkaFdzNatihI/JJzrh3f3SOwp2Tk=;
	b=UlqJROE2/ToBUIBq6zDPqMJOd4YZDXC7kX3+m30P5/K44ZKd3GBRkVyu2FNrPsB/IX8luW
	Srej2BmrIUDAAUxkyVQIez85DlGb3TSwrQSGJYpd+n+a/PRg/uYYucCCbIe98Ehv+npE18
	859xYCocz82G+8WJOho4+YJhl8Dpuvg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-294-fuRWQNh3NZuOz9TJ7if4qw-1; Sun, 02 Oct 2022 15:29:43 -0400
X-MC-Unique: fuRWQNh3NZuOz9TJ7if4qw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B429A800B30;
	Sun,  2 Oct 2022 19:29:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 775ED40C6EC2;
	Sun,  2 Oct 2022 19:29:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B58271946594;
	Sun,  2 Oct 2022 19:29:32 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 2 Oct 2022 15:29:27 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: screen in Ubintu shell question?
MIME-Version: 1.0
Message-ID: <mailman.4818.1664738971.6081.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi folks,
Hope I ask this clearly.
Both shellworld, and dreamhost, <my office host company>  use Ubuntu as 
the basis for the cli shells they provide with their services.
last week for a different project, a Debian user first told me, than 
provided me, with a file somewhat like a screenshop created using the 
screen program.
In their example if I ran a command like
screen links www.website.com
screen would open, let relaunch the links browser, and then visit the site 
in question.
whereupon control + a followed by -h would create a file called hardcopy, 
with numbers associated for said file.
My issue tough is that in the Ubuntu shell to to which I have access, 
typing
screen links www.website.com
produces the following error.
screen cannot accept www.website.com no such file or directory.  screen is 
terminating.
Is there an extra command line option needed to manage screen via Ubuntu in 
the same way the program seems to run in Debian?
Thanks,
Karen


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

