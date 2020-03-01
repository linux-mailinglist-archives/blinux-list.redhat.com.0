Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 548E6174D0C
	for <lists+blinux-list@lfdr.de>; Sun,  1 Mar 2020 12:55:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583063717;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lBj2e7zSEM0ePf/kQKbabbAe1cLBnJcFnrLtNVcRLQA=;
	b=GoTPZ/NsmtjjcriHm5LAIneLFUG+ZqwxBUQy5hg+LuRnw6FuSsB7Ax6YP8hv+8sutoCy6D
	lLurw4x4xe79vr0ms9q+p/eqhCujk5cKSMusp70vmWG1/+HSr3yKGDle2e8vStTP+79odY
	T/0lWf4LzZeQOf+P+CwDK69AjxFJdlY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-119-kBkG_7QJMDOF_nnxxmK9iQ-1; Sun, 01 Mar 2020 06:55:14 -0500
X-MC-Unique: kBkG_7QJMDOF_nnxxmK9iQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 02226800D4E;
	Sun,  1 Mar 2020 11:55:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C4E2F10016EB;
	Sun,  1 Mar 2020 11:55:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E033E35AE1;
	Sun,  1 Mar 2020 11:54:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 021BseTq015674 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Mar 2020 06:54:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5F4CD2166B2E; Sun,  1 Mar 2020 11:54:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5B4D32166B2B
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 11:54:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3F87F800294
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 11:54:35 +0000 (UTC)
Received: from mailbox.supranet.net (mailbox.supranet.net [66.170.1.9])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-327-qP_jOgxVMPSpvUpJa5Yj3g-1; Sun, 01 Mar 2020 06:54:32 -0500
X-MC-Unique: qP_jOgxVMPSpvUpJa5Yj3g-1
Received: from [68.190.112.237] (port=56988 helo=localhost)
	by mailbox.supranet.net with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.82 (FreeBSD)) (envelope-from <john@godtouches.org>)
	id 1j8Mbf-000LJz-OH; Sun, 01 Mar 2020 05:17:59 -0600
Date: Sun, 1 Mar 2020 05:17:59 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Want to try a GUI. Which one is best?
Message-ID: <20200301111759.GA12551@abilitiessoft>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 021BseTq015674
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Hello,

I am using Debian command line as much as possible. When I must deal with a GUI I use Microsoft Windows 10. However, i'm getting disgusted with Microsoft's 
updates, which it makes without asking permission. they keep causing trouble with my computers. I've heard of several Linux Desktop environments, but I'm 
skeptical if they are as good as Windows. Which one would you recommend?

I want my Linux machine to continue to boot into the command line, and when I want a GUI to start it with a simple command, or maybe a shell script.

Thanks,
John

-- 
John J. Boyer
Email: john.boyer@abilitiessoft.org
website: http://www.abilitiessoft.org
Status: Company dissolved but website and email addresses  live.
Location: Madison, Wisconsin, USA
Mission: developing assistive technology software and providing STEM services 
        that are available at no cost



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

