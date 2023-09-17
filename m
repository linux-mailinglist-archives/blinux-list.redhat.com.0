Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA4F7A33F4
	for <lists+blinux-list@lfdr.de>; Sun, 17 Sep 2023 08:13:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1694931195;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5wewwJjCnDI5A+HKbbEW2zkOAm2ppGb+CWh7vIqmfvs=;
	b=Foz2RN5Y9oMd1F162yPlORhDxJiP297uZ+pzYQUslHy0gdhwblB90w7dq4Y1hO7hE2nTyT
	1r/9hQ9b/lqJ9ynN2RFVrpZIBPC/0J8umltdM0d355ytlBiI57MFUdgy5pxUpB/X3ccp3G
	uPtQ0UiyueWTRc3M9zrKez8AdPzWkPU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-321-SpAkLGE_Pbe6i6VAHrcyyA-1; Sun, 17 Sep 2023 02:13:11 -0400
X-MC-Unique: SpAkLGE_Pbe6i6VAHrcyyA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 98375101A53B;
	Sun, 17 Sep 2023 06:13:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BF63A2156702;
	Sun, 17 Sep 2023 06:13:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E84461946595;
	Sun, 17 Sep 2023 06:13:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 17 Sep 2023 09:13:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
To: blinux-list@redhat.com
Subject: development of linux phones for the visually impaired
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.110.1694931182.855699.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

hi

My idea would be to install the sxmo user interface on pinephone and use 
it with orca or fenrir, sxmo is based on Sway andthe menus are built 
with dmenu or bemenu, which apparently doesn't work on orca, I was 
thinking about installing the i3 window manager for e.g. postmarketOS or 
mobian operating systems, would that combination work any better on orca 
with the pinephone keyboard add-on,I see great development potential in 
pinephone and other Linux phone solutions for the visually impaired 
community. The adaptability of the systems and their cheap 
price.Unfortunately, I'm not a software developer myself, but a power 
user interested in possibilities. Discussionsystems, experiences and 
tips, has anyone tried anything similar before.


https://sxmo.org/
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

