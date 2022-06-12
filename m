Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CB5547CE5
	for <lists+blinux-list@lfdr.de>; Mon, 13 Jun 2022 01:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1655074876;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=CNzJb4rRKbdINysoDEeDsJDNourACwMM8DzUWb8XSMQ=;
	b=UGlrETB/0yVClJ9e3M/cr6EbAFvgghDOJ8+duxetboyU9l9YiKxUo373rHpceJZt/epKz9
	ah1H7WDFbFu62EVmrRrzHA8BOo+6m/Jep5xbOv4xKY7Ju4KiFTmi71qceXpjH6XYQqg8Qy
	KESMQqjbTwK2K7YN/Oe7Phvzk/6zaOI=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-70-UbHpxx87NneE1HLSbftexA-1; Sun, 12 Jun 2022 19:01:13 -0400
X-MC-Unique: UbHpxx87NneE1HLSbftexA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D56283810D24;
	Sun, 12 Jun 2022 23:01:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1C31340D282F;
	Sun, 12 Jun 2022 23:01:02 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 10FF01947061;
	Sun, 12 Jun 2022 23:01:01 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Date: Sun, 12 Jun 2022 19:00:55 -0400
Subject: install OpenSuse with Orca?
To: blinux-list@redhat.com
Message-ID: <mailman.24174.1655074860.111204.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGFzIGFueWJvZHkgaW5zdGFsbGVkIE9wZW5TdXNlIHdpdGggT3JjYT8gIEkgd2FzIHRoaW5raW5n
IGFib3V0IHRyeWluZyBvdXQgdGhpcyBkaXN0cmlidXRpb24gb3V0IG9mIGN1cmlvc2l0eSwgYnV0
IGZyb20gd2hhdCBJIHVuZGVyc3RhbmQsIHRoZSBpbnN0YWxsIGltYWdlIGp1c3QgYm9vdHMgaW50
byB0aGUgaW5zdGFsbGVyLCBzbyBJIGRvbuKAmXQga25vdyBpZiB0aGVyZSBpcyBhIHdheSB0byB0
dXJuIG9uIE9yY2EgbGlrZSB5b3UgY2FuIHdpdGggdGhlIEZlZG9yYSBvciBVYnVudHUgbGl2ZSBE
VkTigJlzLgoKUnlhbgoKClNlbnQgZnJvbSBteSBpUGhvbmUKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QK

