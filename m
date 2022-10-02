Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 356C35F253F
	for <lists+blinux-list@lfdr.de>; Sun,  2 Oct 2022 22:20:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1664742057;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OHtePLfmB3OBHIwNokyqX7jUzFqGlfPxoL9aSJ2BOfw=;
	b=LVQe0c/cInI8Bz6To3sLQy0G/BKDto9j/o7w3aNfqXTUeAaHk8a8REin9Ipi3RhxWjW+py
	Bkncero9bAsXiVBvVmcL7X/qi4bNlk5pUd+SnzmuMOrEb8pW6fin7dno+TtgFE8G3QOCpC
	azvskHRaQ1pU0JIeR9qsk2x8odagQFs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-382-aGUZribSNeCMFkVGbxeKjw-1; Sun, 02 Oct 2022 16:20:53 -0400
X-MC-Unique: aGUZribSNeCMFkVGbxeKjw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F426811E67;
	Sun,  2 Oct 2022 20:20:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 14F1740C6EC4;
	Sun,  2 Oct 2022 20:20:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5B38E1946594;
	Sun,  2 Oct 2022 20:20:48 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 2 Oct 2022 20:14:04 +0000
To: blinux-list@redhat.com
Subject: Re: screen in Ubintu shell question?
References: <mailman.4818.1664738971.6081.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.4818.1664738971.6081.blinux-list@redhat.com>
Message-ID: <mailman.4806.1664742047.6077.blinux-list@redhat.com>
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 2022-10-02 15:29, Linux for blind general discussion wrote:
> My issue tough is that in the Ubuntu shell to to which I have access, typing
> screen links www.website.com
> produces the following error.
> screen cannot accept www.website.com no such file or directory.  screen is
> terminating.

This sounds suspicously like you omitted "links" (or "lynx") from
the command, typing

  $ screen www.website.com

instead of

  $ screen links www.website.com

(assuming that error was "cannot exec" rather than "cannot except",
which is what would match the error I get when omit the browser)

You can use whichever browser you want (as long as it's available
on shellworld), so you could use lynx-the-cat instead of links-the-chain.

-Tim





_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

