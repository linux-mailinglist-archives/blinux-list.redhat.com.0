Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C8B63CCBE
	for <lists+blinux-list@lfdr.de>; Wed, 30 Nov 2022 02:16:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669771010;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9APxoI0S8qIva3aummFBatONsncfgVsc+FIlpGlI2po=;
	b=EEp2KcznFHAZNOe8inWovmjW759O9shMyKE4/RJ2CwrjBcGCZvhtgxeMFM8fLpAWVhuwxV
	ZpWfWx16vx3xJN5RZ4jYeGXK6fJlihkKt8/Bae1uFDo0rLXkY3WUMBfOMxEPS9SsHUqdi2
	Quttr19cUoiGkLjUgL4JpTojXUfZAw4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-596-mQ_oTeyvM7qUkp7bKryPmQ-1; Tue, 29 Nov 2022 20:16:47 -0500
X-MC-Unique: mQ_oTeyvM7qUkp7bKryPmQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F1A653C0F224;
	Wed, 30 Nov 2022 01:16:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0BC9C140EBF5;
	Wed, 30 Nov 2022 01:16:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7D35419465A2;
	Wed, 30 Nov 2022 01:16:41 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 30 Nov 2022 01:07:07 +0000
To: orca@freelists.org,
 Linux for blind general discussion <blinux-list@redhat.com>
Subject: Mlock - unfreeze your Mate
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.2608.1669771001.6927.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello lists,

as I mentioned few days ago, on my machine, it seems I have worked
around the pretty annoying bug of Mate keyboard navigation freezing
after A chromium app is closed.


I'm publishing the first version of my app I've put together to resolve
this. I haven't experienced a single freeze in the recent days, so it
seems promising, but keep in mind that machines wary, systems wary, so
as a public project, this is still pretty experimental and your feedback
is very welcome.


If you're interested, the readme of the project contains more details on
what exactly is the problem, and how does the program fix it.


https://github.com/RastislavKish/mlock


Best regards


Rastislav



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

