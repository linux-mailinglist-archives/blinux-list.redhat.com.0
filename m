Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9759E750FC4
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jul 2023 19:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689183366;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DZAUKmzlMk3gT3CWPbRKCvUeLq9uM738/jdXsdxF3/g=;
	b=DTm89S4gVRG+Rw7UuCJXGVdYRKBpEvvic2kjQoqjo1MKJf731pUKmhKf8mnkUnH4pSUqlv
	bsYq/BpS7XKx0/840/G9NUwU5deZiNvrNW3DUeL0KYkS+vPXnw6V+G3jsbn+Q34wEb6eGN
	npPBc5utjd62P4BA3ewzrAFfQVvQ9/I=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-438-tWlYWGaqMQ639qOtGOkMdQ-1; Wed, 12 Jul 2023 13:36:02 -0400
X-MC-Unique: tWlYWGaqMQ639qOtGOkMdQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A6C2E8F2985;
	Wed, 12 Jul 2023 17:35:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EC8F7C1ED96;
	Wed, 12 Jul 2023 17:35:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 461B219465B3;
	Wed, 12 Jul 2023 17:35:58 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: "Blinux-list@redhat.com" <Blinux-list@redhat.com>
Subject: Slint for beginners?
Thread-Topic: Slint for beginners?
Thread-Index: Adm05uD88hv5UJkYQMOOiYyG1QKUig==
Date: Wed, 12 Jul 2023 17:35:49 +0000
Accept-Language: en-US
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.821.1689183357.3826225.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Good afternoon,
I am new to Linux & am currently using Mint 21.1, but keep loosing speech with Orca.
As a result, I may switch to Slint, which was recently recommended to me by a friend.
Before I do though, I'd like to get opinions from the members of this list as to whether or not this would be a good distribution for me, as a beginner?


Thanks,
Jessica Dail

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

