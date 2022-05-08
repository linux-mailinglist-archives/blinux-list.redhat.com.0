Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B5E51F1DB
	for <lists+blinux-list@lfdr.de>; Sun,  8 May 2022 23:44:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1652046278;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=I5X1O3fbf1uRxZTyopIUYYbqWk5BpPO5924VZqjjb6E=;
	b=XOVrOMMZgwrdR1otbTRj+3VSX9lvLV9a/uAqNpVzJpZ+eLw6ysO3ATHk+dNyPR+mlOpMF1
	+M81YSDoWTgfVIxynPG/4k9PZG7AkhFT5JaeIF4URzWr0Tv93fgDMRdLOLm1Puzc4eoUAZ
	DfHhE2GvDu8ogzD6E8vwYRXtH7Wxhxc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-527-8CjfeHneOwqb4E-VlCk2Gw-1; Sun, 08 May 2022 17:44:34 -0400
X-MC-Unique: 8CjfeHneOwqb4E-VlCk2Gw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 85B72185A7A4;
	Sun,  8 May 2022 21:44:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DD3F2438BF0;
	Sun,  8 May 2022 21:44:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0FABF194705D;
	Sun,  8 May 2022 21:44:23 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 08 May 2022 21:44:10 +0000
To: orca-list@gnome.org,
 Linux for blind general discussion <blinux-list@redhat.com>
Subject: Aria-label cleaner now on GitHub
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.13681.1652046262.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello everyone,

just wanted to let you know, that my TM script for fixing the "(opens in
a new tab)" links is already on my GitHub:

https://github.com/RastislavKish/AriaLabelCleaner


if you encounter a website containing them, you can now fix it!


Fortunately, this problem doesn't seem to be really frequent, so let's
hope you won't need this script.


But in case you do, it's ready. :)


Best regards


Rastislav



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

