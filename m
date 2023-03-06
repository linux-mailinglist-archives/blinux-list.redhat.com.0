Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1036ABFF2
	for <lists+blinux-list@lfdr.de>; Mon,  6 Mar 2023 13:54:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678107251;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XIgmi9WhXm6nWZSQcsEK9T389Rm7fGvg+YBfFB5ZqN0=;
	b=dfxgQhsCV2Gd0veki66uuxM8z0NBEwYQM2r6n9s/Vo7c0g4j7cT3fh6j3e0rHpBvuSj1Is
	U0idINoka5m5YP7KqtNVoZzebbJuBW4rOzq3kbIoZDAkYACiepnSdOlJOV9Q80vrNMwzlI
	Gv7pTzmGlyUeB437xYRXqwZ9X+TdQpg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-477-AfX1dpgGM6Ws_7E1Wx9Ydw-1; Mon, 06 Mar 2023 07:54:08 -0500
X-MC-Unique: AfX1dpgGM6Ws_7E1Wx9Ydw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 34C31882823;
	Mon,  6 Mar 2023 12:54:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 497EB40CF8F0;
	Mon,  6 Mar 2023 12:54:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0C16D19465B3;
	Mon,  6 Mar 2023 12:54:03 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 6 Mar 2023 07:53:58 -0500
To: slint@freelists.org
Subject: Numen Voice Control (fwd)
MIME-Version: 1.0
Message-ID: <mailman.279.1678107242.1521165.blinux-list@redhat.com>
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
Cc: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit




Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

---------- Forwarded message ----------
Date: Mon, 6 Mar 2023 07:02:01
From: John Gebbie <me@johngebbie.com>
To: debian-accessibility@lists.debian.org
Subject: Numen Voice Control
Resent-Date: Mon,  6 Mar 2023 12:27:12 +0000 (UTC)
Resent-From: debian-accessibility@lists.debian.org

Hello,
I use Numen instead of a keyboard and mouse.  It's Free Software voice
control that I maintain, and the website is: https://numenvoice.com

I just thought I'd try reaching out to one of the accessibility mailing
lists to see how it goes.  It would be nice to get Numen in more package
managers.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

