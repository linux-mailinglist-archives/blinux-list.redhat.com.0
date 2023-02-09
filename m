Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D62C0691333
	for <lists+blinux-list@lfdr.de>; Thu,  9 Feb 2023 23:22:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675981331;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EWboo/uZ2qKGVqmxj9UDDLJ/ZedqT7Ns1Wvt/u8jI30=;
	b=JqhrKODe81v4O9wScpPd87quPWv1e8MrTYXDyX5BtZDaMCde30UPXu4n0YRW78OBZK03mJ
	lfBZEZohE9cMypTpLU2JdpFNzuKcQIqw5UCfEJ/uVpOdOB/5CiefYyIXQqJgjTaAa/Dq+f
	YIK86m5LSuimpOOo2pXMWje/1jhUZsw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-463-FEJKnOzvMyml5e_x-VglBQ-1; Thu, 09 Feb 2023 17:22:04 -0500
X-MC-Unique: FEJKnOzvMyml5e_x-VglBQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B3C94801779;
	Thu,  9 Feb 2023 22:22:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C3B60492B00;
	Thu,  9 Feb 2023 22:21:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 94DF719465A8;
	Thu,  9 Feb 2023 22:21:59 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Subject: carbonyl: Chromium based browser built to run in a terminal
Date: Thu, 9 Feb 2023 23:16:14 +0100
To: blinux-list@redhat.com
Message-ID: <mailman.5886.1675981319.8177.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpoYXMgYW55b25lIHRyaWVkIGNhcmJvbnlsIGFscmVhZHkgd2l0aCBicmx0dHkgb3IgZXNw
ZWFrPwoKaHR0cHM6Ly9naXRodWIuY29tL2ZhdGh5Yi9jYXJib255bAoKV291bGQgYmUgc28gZ3Jl
YXQgdG8gaGF2ZSBhIG1vZGVybiB0ZXh0YmFzZWQgYnJvd3NlciBmb3IgdGhlIHRlcm1pbmFs4oCm
CgpDaWFvLAoKICBTY2jDtnBwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cg==

