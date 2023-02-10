Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 40015692049
	for <lists+blinux-list@lfdr.de>; Fri, 10 Feb 2023 14:55:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1676037350;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=h3mvuoqT+40TRKorW0+qVC/LtM1lC9sCxr4akAaM60M=;
	b=CMfjPjiWvHb13c7Jndi/M+9GCbyKU/NmE/+WgTlf35L5BjZoapZQ1b4KXwJa6pPxqMhE02
	fsjhdQdcueN9s7QgR+NMNKsj0VRUn8sXVWaQbGMg1J6cYnF2WSMZIRrCr5h9PK2PxGJejw
	O2uAxp4yaPWRAW7bL+JqI63Q+jgYofs=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-63-2s1a6nHqNEqhGLN3iv8hAQ-1; Fri, 10 Feb 2023 08:55:45 -0500
X-MC-Unique: 2s1a6nHqNEqhGLN3iv8hAQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EF70C971080;
	Fri, 10 Feb 2023 13:55:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 13971404CD8F;
	Fri, 10 Feb 2023 13:55:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A744819465A2;
	Fri, 10 Feb 2023 13:55:41 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Fri, 10 Feb 2023 05:55:34 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Can I Launch Alpine on Startup with a higher Priority?
In-Reply-To: <mailman.5326.1676034460.8168.blinux-list@redhat.com>
References: <mailman.5622.1675966853.8172.blinux-list@redhat.com>
 <mailman.5326.1676034460.8168.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.5980.1676037341.8177.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thank you Wilem: I was not familliar with nice, only renice. Anyway, as I 
mentioned yesterday, I seemingly was having better luck exporting groups of 
news-group articles without Alpine closing the folder as read only.. Thanks 
again. This will be really helpful.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

