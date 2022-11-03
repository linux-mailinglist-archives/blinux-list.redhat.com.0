Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C523617EE5
	for <lists+blinux-list@lfdr.de>; Thu,  3 Nov 2022 15:07:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667484429;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Y/x3OftBrSHFNK8bEmj62+hoiJYuuVLWrzYCthBOdx0=;
	b=G+3LasU3BaQUrNrH7gJpKe6dUz2vtJMTL31pXX1tQxn4JrGNQrBBo6FUQIUMykc/g20HdJ
	ZSikNgv6AZQIhai3b3DAA9EdILianU3aIBYohMtPiI5kq2dhk+OjtfvKxUkLSdq4fdbaJK
	CxLkQkx1HTOI885uCCVKepkqpozUVYM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-528-KMzr6EMXMk-mIreB5svwaw-1; Thu, 03 Nov 2022 10:07:06 -0400
X-MC-Unique: KMzr6EMXMk-mIreB5svwaw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5A98A88282B;
	Thu,  3 Nov 2022 14:07:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 39B05492B1E;
	Thu,  3 Nov 2022 14:07:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D21FA1946A68;
	Thu,  3 Nov 2022 14:07:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: <blinux-list@redhat.com>
Subject: Re: Javascript for text mode (fwd)
In-Reply-To: Your message of Thu, 3 Nov 2022 08:46:48 -0500
 <mailman.4400.1667483225.3008.blinux-list@redhat.com>
References: <mailman.4326.1667439822.3008.blinux-list@redhat.com>
 <mailman.4292.1667467115.3005.blinux-list@redhat.com>
 <mailman.4321.1667468317.3007.blinux-list@redhat.com>
 <mailman.4503.1667475991.3004.blinux-list@redhat.com>
 <mailman.4358.1667481898.3007.blinux-list@redhat.com>
 <mailman.4328.1667483150.3005.blinux-list@redhat.com>
 <mailman.4400.1667483225.3008.blinux-list@redhat.com>
Date: Thu, 03 Nov 2022 15:06:49 +0100
Message-ID: <mailman.4510.1667484422.3003.blinux-list@redhat.com>
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
MIME-Version: 1.0
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Good point Devin!
I really doubt that this language will disappear. Beside, it is brilliant but
needs long practice to understand it well.

Returning to the topic, It would be nice to have console browsers with
JavaScript fully implemented but for now only headless mode of graphical
browsers have to be used if there is no usable console browser.

Greetings.
Artur

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

