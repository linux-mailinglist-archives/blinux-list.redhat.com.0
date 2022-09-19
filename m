Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB595BD1C8
	for <lists+blinux-list@lfdr.de>; Mon, 19 Sep 2022 18:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663603440;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TQwPuz7FPzL8LpcTs0je0XX5+ATmE3NBtbPK4Xhib68=;
	b=SlmSIOLqIm61UJS+2W3hbcsI7jsaTcywO9S9064hUN/e0M0+F6iat0th3aeqoO/Uuu/0Pr
	4pdFJzRgcfbflm9f6VQSOozpqaamJPBtww/MJEhDdmXOtZMyUV2CIW/drPuBjdftGqv3a/
	h0wt6WZUSvZEPDhU93ktQLd3I8sVSKo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-638-dvkoW-tSM8y4howTU-QKbw-1; Mon, 19 Sep 2022 12:03:58 -0400
X-MC-Unique: dvkoW-tSM8y4howTU-QKbw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 47EFF185A794;
	Mon, 19 Sep 2022 16:03:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 61C7E40C2064;
	Mon, 19 Sep 2022 16:03:47 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B257519465B1;
	Mon, 19 Sep 2022 16:03:46 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: <blinux-list@redhat.com>
Subject: Re: How to getstart amulecmd?
In-Reply-To: Your message of Sun, 18 Sep 2022 23:16:37 +0800 (CST)
 <mailman.973.1663514206.6078.blinux-list@redhat.com>
References: <mailman.934.1663393847.6081.blinux-list@redhat.com>
 <mailman.1051.1663503355.6077.blinux-list@redhat.com>
 <mailman.973.1663514206.6078.blinux-list@redhat.com>
Date: Mon, 19 Sep 2022 18:03:36 +0200
Message-ID: <mailman.1184.1663603426.6077.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yes. You have to install amule-daemon package and run it first.
amulecmd is a client to the amuled beeing server.

Greetings.
Artur

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

