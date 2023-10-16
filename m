Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F427CB2E4
	for <lists+blinux-list@lfdr.de>; Mon, 16 Oct 2023 20:45:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1697481957;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vFBU++NJ6TXZW+foSwKezEfSyrb4h0Fsdy/hSkq5Plk=;
	b=Q4J+76/VwStVagiNxiPU8F7ptMFbOdP8WFnX4qz3AZGacTuNH6GmF6VrZMNtkUmK+p5hI0
	5uJyEb8NAeLrFjEAtLDdzOu3NrOM54pk4dib3B4fXHU6DFjuidk0HwVKfBuvcdt6Rdz/Gu
	gCC7tq3yod46T8uxEyv0K+yVHjcbGGQ=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-358-tW1Xv2oEM-eaK6q6fE_z6Q-1; Mon, 16 Oct 2023 14:45:49 -0400
X-MC-Unique: tW1Xv2oEM-eaK6q6fE_z6Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8597D2999B2D;
	Mon, 16 Oct 2023 18:45:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 16F2CC15BB8;
	Mon, 16 Oct 2023 18:45:39 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3EE2619465BB;
	Mon, 16 Oct 2023 18:45:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 16 Oct 2023 14:45:30 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: command line tool for this task?
MIME-Version: 1.0
Message-ID: <mailman.428.1697481936.843860.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi folks,
Let me begin by stating that my access to Linux is a shell service, 
specifically shellworld.net

what I am seeking is a tool likely to be included that lets me create 
a file I will then use as a gift acknowledgment letter sent via email.
What I mean is this.
I have the name and email of a contributor.  I create the body, but wish 
to change slight details, their name, the amount their email etc.
Is there a tool in command line Linux that will provide this sort of 
solution?
thanks,
Karen


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

