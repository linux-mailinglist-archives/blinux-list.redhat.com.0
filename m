Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B0C7272FC
	for <lists+blinux-list@lfdr.de>; Thu,  8 Jun 2023 01:29:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686180588;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BlX9L61y+VnbsROytoboCS1vNT7leqGNbblMqqYSrz0=;
	b=RbAkBeVhViyfctLVYzu9Kfymd8DAcgcNuJhPmBQ5sQP5X7Ppleo2iqpEWNvtQD7Gnh/zXn
	0D4uYPyHCp3dhz+q0TVJAm9KtmQGwly8/aRj6Kjz1O8E3UK+wjdE2VFwWma2QbDcemK9UH
	iQE7CRfwoAgnSHpPBsBiEfa81MUnXh0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-299-sgKfA6LUMjOr5tKdnEs2XA-1; Wed, 07 Jun 2023 19:29:44 -0400
X-MC-Unique: sgKfA6LUMjOr5tKdnEs2XA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 23AF73C025BA;
	Wed,  7 Jun 2023 23:29:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 93B351121315;
	Wed,  7 Jun 2023 23:29:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C189519452CA;
	Wed,  7 Jun 2023 23:29:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.600.7\))
Subject: Fedora Mate and wifi
Date: Wed, 7 Jun 2023 18:28:00 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <mailman.1470.1686180577.910454.blinux-list@redhat.com>
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

I have just put Fedora 35 on a machine which had had windows 10.
I cannot remember how to get wifi network names to be seen.
The items on the top pannel I find are:
sound, blue tooth, dragora, a menu for editing connections, but nothing offering to show what wifi networks are available.
Last night I found the list with another machine on which I had put the same operating system.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

