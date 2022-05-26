Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A39F53525B
	for <lists+blinux-list@lfdr.de>; Thu, 26 May 2022 18:58:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653584293;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tXlDLLzEiBZcjVIG0mmwhvwFAwTEoypx0ClluWuP57g=;
	b=bTqfdYNnk6/G3omhvgCG6Q1dDO/y3hMIMBntQBdwyUhXWjKCnidiLE4MCSlPSGWjQ14SWP
	5gS4X1PTIF7zitPhRckifXlI0V1ehYLD3nFbyymhqvR9FmhEs0m2YrVl94gVMSo1+OZ7sV
	0OV9bTZfG9AvBU4oJtPCXpMva/5zvYQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-631-8VculfyYOMqpU5fBPZRGIg-1; Thu, 26 May 2022 12:58:09 -0400
X-MC-Unique: 8VculfyYOMqpU5fBPZRGIg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DFCE780A0B5;
	Thu, 26 May 2022 16:58:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 684A963F54;
	Thu, 26 May 2022 16:58:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BDD61192F6C0;
	Thu, 26 May 2022 16:58:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 26 May 2022 12:57:58 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: alpine and Gmail future changes?
In-Reply-To: <933cd1dc-db4e-f903-b964-8eb0f3be2019@busby.net>
References: <4e42aba7-4da4-8e33-0968-b7492da81094@gmail.com>
 <933cd1dc-db4e-f903-b964-8eb0f3be2019@busby.net>
MIME-Version: 1.0
Message-ID: <mailman.18876.1653584281.111206.blinux-list@redhat.com>
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
Cc: alpine-info@u.washington.edu
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi folks,
I am  both starting this thread, and including the list where the question 
is rather important.
My goal being helping those blind Linux users who rely on alpine to manage 
their gmail account, and letting them know how to reach the alpine list 
too.
I recall? there might? be a solution already in place, but just in case 
can someone articulate how to keep alpine working with gmail in light of 
anticipated changes by google?
best,
karen



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

