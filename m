Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 804446C046B
	for <lists+blinux-list@lfdr.de>; Sun, 19 Mar 2023 20:36:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679254573;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NA+Jbm7HhLc30Hj0nKQGqrA5KYz1RqRbsJvcoh/RsXA=;
	b=aiebdPCYsT+8kRnwKqQYVmqJWb2HtCOj6u7u1iw/aM9U9ben94ENCuYy8lIeuKAKPXb0Ja
	CF8FhMwoypRxoJa2toX4DXMI5y2EdRmic36iuGxdahUn29CBfOHOuTBoUpBGkBjL4fE34I
	FA/OqDqBHCkc98KYxngwQoY4HVS7Ggc=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-132-oX5KY0XtNnGMEM5DvBVKXA-1; Sun, 19 Mar 2023 15:36:09 -0400
X-MC-Unique: oX5KY0XtNnGMEM5DvBVKXA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5D2B51C05B07;
	Sun, 19 Mar 2023 19:36:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 93400C15BAD;
	Sun, 19 Mar 2023 19:36:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 007061946A54;
	Sun, 19 Mar 2023 19:36:07 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.241.1679253393.636363.blinux-list@redhat.com>
References: <mailman.236.1679249091.636363.blinux-list@redhat.com>
 <mailman.241.1679253393.636363.blinux-list@redhat.com>
Date: Sun, 19 Mar 2023 19:35:59 +0000
Subject: Re: Seamonkey 2.53.1X not working with Orca?
To: blinux-list@redhat.com
Message-ID: <mailman.218.1679254566.636361.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

For what its worth, I downloaded version 2.53.15 of SeaMonkey from
their website today and its working just fine with Orca 43.1-2 from
Debian Testing.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

