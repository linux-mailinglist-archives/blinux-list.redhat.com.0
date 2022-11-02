Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7ED61620D
	for <lists+blinux-list@lfdr.de>; Wed,  2 Nov 2022 12:52:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667389921;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bzvnKlaRYR08BNG33olCIgHee6GI9tsMaxX8gVbNDgc=;
	b=XmTYUszNeFfJYhjpAHjtrceYlQc6vJD+zIvwJPOlkpYAEabGUlUt44Fr37uue1PhHvNjCW
	uz2EG5NPCUxx1mB2dOe9kMLIrJKzTIc5wN+64SphHM5WSoNyKcPRcSm+3QcIggkCtxJlfS
	rn/3l/wZbyJKp4Ecdl06xLtF69yThIw=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-104-f88FQIbgN1KBSxJionBBhw-1; Wed, 02 Nov 2022 07:51:57 -0400
X-MC-Unique: f88FQIbgN1KBSxJionBBhw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1A24E3C01DA3;
	Wed,  2 Nov 2022 11:51:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 641357AE5;
	Wed,  2 Nov 2022 11:51:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id CD17D1946A45;
	Wed,  2 Nov 2022 11:51:50 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 2 Nov 2022 11:51:44 +0000
To: blinux-list@redhat.com
Subject: Console/other login managers other than GDM/lightdm that work with
 Orca?
MIME-Version: 1.0
Message-ID: <mailman.3888.1667389910.3008.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I was browsing the Arch wiki and came across a page on console based login managers/greeters.

Anyone on here have experience with them or any others aside from lightdm/GDM? I'm wondering if any others work with Orca, essentially since the info is lacking. I'm tempted to give CDM a shot and see how that goes. I want to like GDM but I don't like all the Gnome dependencies it drags in and I'm honestly not sure what the status of Lightdm with Orca is any more, I've been told different things by different people on that one.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

