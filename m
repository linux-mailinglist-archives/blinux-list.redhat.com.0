Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAF373BE51
	for <lists+blinux-list@lfdr.de>; Fri, 23 Jun 2023 20:13:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687544005;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=x45UHZ8YGeUVvTdwbgpPAB4zKvIbvWj4ZN3cKpucrsA=;
	b=eip5AEBe8YqPkhTpC+dRgKTvg8cR+JhTkckvO8u7WkeBANBCM/8U5eLn9dqDpPnVhf9wSO
	rWJevRuC/UxI0gmir1FWFctq+NtWNO8sJ31reunuTJKxvjFY8C1ItIqYW5Wki9i56WPZBa
	87bh4iW4dO56jmmPdqYS0q0pEEs+7gg=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-398-b72BEsNOMFGqTLgqYMLGWg-1; Fri, 23 Jun 2023 14:13:20 -0400
X-MC-Unique: b72BEsNOMFGqTLgqYMLGWg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 912223C34662;
	Fri, 23 Jun 2023 18:13:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D1D0CC57961;
	Fri, 23 Jun 2023 18:13:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 267841946594;
	Fri, 23 Jun 2023 18:13:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 23 Jun 2023 18:12:42 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>,
 orca@freelists.org
Subject: mtg: A utility for toggling the monitor state on Linux
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.1745.1687543983.653864.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello everyone,

I have written a utility in Rust for toggling the monitor on Linux. It's 
inspired by the script recently discussed on the Orca mailing list.

I find the monitor control functionality very useful for blind people, 
so I thought it deserves a decent, though still easy to use 
implementation that would be easily available and findable to all Linux 
users.


See:

https://github.com/RastislavKish/mtg


For more details.

Please note this is the v0.1 release, it apparently does work on my 
computer, but I can't say much for other machines.

Checking out the screen using a light detector or a sighted person is 
always a good idea, regardless of the used technique.


As usual, any constructive feedback is welcome.


Have fun!


Best regards


Rastislav



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

