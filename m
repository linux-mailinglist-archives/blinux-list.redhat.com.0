Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8543A545290
	for <lists+blinux-list@lfdr.de>; Thu,  9 Jun 2022 19:01:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1654794075;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FEI7afijHnFeAR65YyWI7H/N+Homt6I9HA5+zjrPwEo=;
	b=H+7erBZr+oO0ngDqAYHv1sEl0bO9jvGXSIDDP7UZ0jNnIKUJqabWdP0PlJ2CbCJQdmJT5P
	RiYzrjNDSHDETR8G+qVK5K6kby7UX/xBWsI8H9Z+sD2o0u2qqm3eR32OHMGYetKrnSwxHP
	wbi0wytHN968ZfFhLQIoUJPHm7oeVc0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-600-FzFLJ-ybNx-7r11OIix5Zw-1; Thu, 09 Jun 2022 13:01:14 -0400
X-MC-Unique: FzFLJ-ybNx-7r11OIix5Zw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E18F4185A7A4;
	Thu,  9 Jun 2022 17:01:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5AB41C53360;
	Thu,  9 Jun 2022 17:01:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id EC3911947066;
	Thu,  9 Jun 2022 17:01:11 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Thu, 9 Jun 2022 10:01:04 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How Can I Fix this Error?
In-Reply-To: <mailman.23252.1654793611.111210.blinux-list@redhat.com>
References: <mailman.23546.1654791068.111208.blinux-list@redhat.com>
 <mailman.23252.1654793611.111210.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.23593.1654794071.111204.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Well, thank you, but rdrview is a github package, so fooling with sources would 
probably not help. Sure if I knew exactly which package broke this, I would 
have easier options. Thanks again
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

