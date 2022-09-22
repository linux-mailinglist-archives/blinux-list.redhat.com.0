Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9712B5E6CF2
	for <lists+blinux-list@lfdr.de>; Thu, 22 Sep 2022 22:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663878096;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ypY5w9vMPQCSW9fB7HcLklHYQEU6qo3RoVL/CdpdD9o=;
	b=XUJOQwrKkBZNeEJaMhTf3LinA/34P4MHq8ktor2bHnrq3gb3MA39U7KzD8nLsx6IhzNEi/
	lYAMkwZPjZlHqZZy0B/aOwXQjairdhrqfBvkqLicsurcDLPOU4qTizKV/yszoRoh9uLBP1
	dxeVG05FQ1my4xi8BD15bvwHiDZW3+4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-292-4WUJkerQMPirUCBiIq4nkA-1; Thu, 22 Sep 2022 16:21:31 -0400
X-MC-Unique: 4WUJkerQMPirUCBiIq4nkA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 75BCD29AB3FB;
	Thu, 22 Sep 2022 20:21:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8156840C2064;
	Thu, 22 Sep 2022 20:21:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E6DE11946A42;
	Thu, 22 Sep 2022 20:21:22 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 22 Sep 2022 13:21:17 -0700 (PDT)
To: Blinux list <blinux-list@redhat.com>
Subject: Firefox in ubuntu 22.04
MIME-Version: 1.0
Message-ID: <mailman.2509.1663878082.6075.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I am running ubuntu 22.04 with the mate desktop (using a startx file as I 
don't normatlly use a gui desktop so only want it up when I need it).  If 
I try to run firefox from the menu I get no response and no firefox.  If I 
try to run it from a terminal I get the following error:
/user.slice/user-1000.slice/session-22.scope is not a snap cgroup

The session number may vary.

Any one know how to get firefox working in this setup?

Thnks
Tom

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

