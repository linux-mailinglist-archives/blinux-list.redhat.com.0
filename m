Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4963D7C9757
	for <lists+blinux-list@lfdr.de>; Sun, 15 Oct 2023 02:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1697328466;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sJIUw/At+FrpBpNv2Gk8aHi16vxDySris713ZpuKXjc=;
	b=SfVNuOPtNbv9eE6KIS2cWJIbeDiB+LpKt1HQO2XWM5fIgJntJz0czBFWxZB0g8D9eVBwFc
	xFW6A/M/o86GjqI5cbKKNAnHl7NkxZTOZU3GGGd1Y3T0Uy8JH2j9iubyFcJSwA65Qb8wDs
	QgpzjDpDXQU7T7Afap2fOQdAQ4Y4p9U=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-539-7ibW5od3OhOvy7hl8Ol4ng-1; Sat, 14 Oct 2023 20:07:44 -0400
X-MC-Unique: 7ibW5od3OhOvy7hl8Ol4ng-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 593941C05151;
	Sun, 15 Oct 2023 00:07:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 00F4E25C0;
	Sun, 15 Oct 2023 00:07:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 32F471946594;
	Sun, 15 Oct 2023 00:07:33 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 15 Oct 2023 00:06:43 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: UMAI v0.4.1: Welcome on Ubuntu Mate 23.10!
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.76.1697328452.843856.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello everyone,
ubuntu Mate 23.10 is a fresh release of the popular Linux distribution, 
shipping the latest and greatest the Linux accessibility infrastructure 
can offer.

I'm happy to announce my umai script:
https://github.com/RastislavKish/umai

for auto-setting-up UM for accessibility, now supports also this new 
release of Ubuntu.

I apologize for a slight delay, I wanted to make sure everything works 
as expected.
My tests show very satisfying results, so I can't but say "Hey everyone, 
welcome on Ubuntu Mate 23.10!"

Happy Minotaur rides!

Best regards

Rastislav


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

