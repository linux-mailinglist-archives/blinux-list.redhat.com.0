Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BACAE69987C
	for <lists+blinux-list@lfdr.de>; Thu, 16 Feb 2023 16:14:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676560443;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZL9EjcGAeLN0ELk9bqQTqXM0kjOl2LmquhZ6eRMbb8M=;
	b=Gfh/t4CWIPIwABJWnPAw1hoWSrGRWqES1mZl4y0R7VtyL/U+BKyHOqFbbtjVKCF+ScbPuI
	YVyL1EPoY/WrGKogrgABa2F7kGlzQy5jJd/FQP2IO9ScMiUfeOw5GFG5DNNqhqIGrHUYS/
	h9ebkaySgpS63cMsL8C6hFsYOm1qSXs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-207--49J89vVPPmhgLOCX1QAow-1; Thu, 16 Feb 2023 10:14:01 -0500
X-MC-Unique: -49J89vVPPmhgLOCX1QAow-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7239F882821;
	Thu, 16 Feb 2023 15:13:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0CD68492B0E;
	Thu, 16 Feb 2023 15:13:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A35851946597;
	Thu, 16 Feb 2023 15:13:57 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
X-Spam-Processed: mail.comproom.co.uk, Thu, 16 Feb 2023 15:09:44 +0000
 (not processed: message from trusted or authenticated source)
To: <blinux-list@redhat.com>
References: <mailman.72.1676559958.3521.blinux-list@redhat.com>
In-Reply-To: <mailman.72.1676559958.3521.blinux-list@redhat.com>
Subject: RE: audacity
Date: Thu, 16 Feb 2023 15:09:49 -0000
MIME-Version: 1.0
Thread-Index: AQI4RDKGfvLUN2y5KljAqgO11kb12a4TqMUQ
Message-ID: <mailman.72.1676560436.3516.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-gb
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

No, I don't use Audacity, but all you need to do, is to open the file and
select Normalise, and it will normalise the volume for you.

If you want a quick and dirty fix, then send it to me, and I'll raise the
volume for you. It's what we do, restore badly recorded stuff.

All the best

Steve

-----Original Message-----
From: Blinux-list <blinux-list-bounces@redhat.com> On Behalf Of Linux for
blind general discussion
Sent: 16 February 2023 14:29
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: audacity

Anyone ever used audacity before?
All I want to do with an audio file is to raise its volume and then save it
again.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

