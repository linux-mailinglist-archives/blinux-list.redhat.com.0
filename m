Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FB7602608
	for <lists+blinux-list@lfdr.de>; Tue, 18 Oct 2022 09:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666078954;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ogG9mzoDOn6YIqNuqwMrDrwHvdOi2c3GFe4foboJe64=;
	b=CVWni+p/Z4LdGmjHaKQwHGK9E1JZ5d86dfTKH0NNZl7IthI/sHBqSSuENOZ6f6ogUbThNR
	kWJh3Yve4XjSOagnY+r+o0EPW1RY3LQrJWIM+CH9pMciko6htMNyplqnWfXHlz5pQUZCwq
	7A5fN3k6VCcNZrTzsy2s6v6KZvaSn+s=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-617-pcqgxNtnMQ25rTrWHf_U7g-1; Tue, 18 Oct 2022 03:42:32 -0400
X-MC-Unique: pcqgxNtnMQ25rTrWHf_U7g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 63B4529DD988;
	Tue, 18 Oct 2022 07:42:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3B8DC1121320;
	Tue, 18 Oct 2022 07:42:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5362619465A2;
	Tue, 18 Oct 2022 07:42:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 18 Oct 2022 07:41:37 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Turning off screen in Linux
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.882.1666078921.3006.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello everyone,

Ubuntu Mate 22.04 64-bit.


I suppose there are multiple ways to go about turning off the laptop
screen on Linux, from switches to more invasive configuration modifications.


I wonder, what is the ideal solution for us to set up, so it would be
possible to turn off the screen, so we could save battery, protect the
displayed information etc. but we could at the same time switch the
setting when necessary without the need to log out / restart?


Thanks for your advices!


Best regards


Rastislav



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

