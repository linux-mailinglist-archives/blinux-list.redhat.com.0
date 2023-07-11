Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 324CA74FAEB
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jul 2023 00:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689114390;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uKzixAXilOES0n/wMjfSv1EJBaiE3DJ/bLtIm0CHmpo=;
	b=SxIhmE/Vwem3IHHlZzLFa+LPlLvrNGp4w5vL1jIqOJNjDD4l2YgBLqbd2iBy0fj7gisisA
	0/0fpzM3oEckzvfgWsrKDYatxY+FG/fgOk0ujVFqEsYQfrT/DglE6m0cL+jR0wU96XdoRA
	oxjLe2lMtkpjMrXJvN48A6WduHCPgmI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-164-rUg6H2H1N0qmJraKgM0fpA-1; Tue, 11 Jul 2023 18:26:27 -0400
X-MC-Unique: rUg6H2H1N0qmJraKgM0fpA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 68ED38EBBA0;
	Tue, 11 Jul 2023 22:26:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CE13F1121315;
	Tue, 11 Jul 2023 22:26:18 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 1251619465BD;
	Tue, 11 Jul 2023 22:26:16 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 11 Jul 2023 18:17:03 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: inclusive hardware testing tools?
MIME-Version: 1.0
Message-ID: <mailman.481.1689114375.3826223.blinux-list@redhat.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi folks,
Karen Lewellen with a creative question for folks who  work with hardware.
Do you have a tool that lets you test the integrity of things like 
motherboards and the link?
due to a power issue with my new apartment, surges are impacting things 
like serial ports and so forth.
I only have so many computers around, so want to have the issue diagnosed.
ideas?
Thanks,
Karen


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

