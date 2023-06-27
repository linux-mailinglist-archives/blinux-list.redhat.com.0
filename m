Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E18DF74065C
	for <lists+blinux-list@lfdr.de>; Wed, 28 Jun 2023 00:07:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687903631;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+SHauvwJY8o8iykn1fT1z2wb+S4/MXw4BA0WM/dTFFU=;
	b=RZiBGnTmuGlWC8ild5aSRISMWprOTLRyMzjyVpovik367DF9R7nWtGDZN3+HTHEaFfcpH2
	TiRvuJhwskU7+Uq5K4dY3YYHzGnxG3q1ueqHP/Qn2nUB2No5cLs+jq3XzIxm0qR+/1YKwM
	qoGqBLZNgJd5Pv+qG62QB4ZcBZfzJlQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-586-vpKqtgtMOrezN_oEB236rg-1; Tue, 27 Jun 2023 18:07:07 -0400
X-MC-Unique: vpKqtgtMOrezN_oEB236rg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 409588631DB;
	Tue, 27 Jun 2023 22:07:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5DDD14087C6E;
	Tue, 27 Jun 2023 22:07:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id EEF3A194658D;
	Tue, 27 Jun 2023 22:06:52 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Can I run a .bat file from basica
MIME-Version: 1.0
Date: Tue, 27 Jun 2023 17:05:37 -0500
Message-ID: <mailman.543.1687903612.3098365.blinux-list@redhat.com>
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
Content-ID: <21502.1687903537.1@wb5agz.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I haven't gone totally crazy but I need to list some basic
programs from the mid to late eighties and there are about 17 or
18 so I wrote a batch file that should load each program after
sending new, first.  What happens with each .bas program is I
will load it, list it with the list command directed to a file of
the same name as the program only with a .src extention.  I then
send another new command and do the whole routine again with all
the remaining .bas files.

	I wrote some C code back in that time period that used to
work but one part of it fails now and I need to look at what the
basic programs did and make it work in C again.

For this discussion list, all I need to know is can I call the
batch file in basic and can I do the list command >somefile also
from basic?

	You probably don't want to know the rest of the story but
that is what I am trying to do now.

Thank you

Martin McCormick

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

