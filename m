Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1958A599338
	for <lists+blinux-list@lfdr.de>; Fri, 19 Aug 2022 04:55:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660877714;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XtB7hKn7TDBgNNWDTiwXcOoSMGfcTciYa4vAibbt/UY=;
	b=ipOuOPevCzGoS6ajvbLXaOmKNfvBUlcnYn/JUJizQ7Fh8vkBW4ZdYiBvyh/J+B0dQ04eOP
	WO+tTezAN2l+DKIS6XsaNRhIuQm05bQT81y5mV+f9uItQXmBT01vt/Wb7iPUwpMk2f0sBO
	KB/29mmDdEcuAsHLYl9QpuRCV2756ok=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-558-uObqA1plPzycmpomMMdcHg-1; Thu, 18 Aug 2022 22:55:11 -0400
X-MC-Unique: uObqA1plPzycmpomMMdcHg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 46760185A7BA;
	Fri, 19 Aug 2022 02:55:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E68422026D4C;
	Fri, 19 Aug 2022 02:55:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7C87B1953544;
	Fri, 19 Aug 2022 02:55:07 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.1921.1660870750.10506.blinux-list@redhat.com>
References: <mailman.1921.1660870750.10506.blinux-list@redhat.com>
Date: Thu, 18 Aug 2022 19:55:00 -0700
Subject: Re: PC no longer boots from DVD
To: blinux-list@redhat.com
Message-ID: <mailman.2152.1660877706.10500.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q2FuIHRoZSAgZHZkIGRyaXZlIHBsYXkgb3RoZXIgZHZkJ3M/CgpPbiA4LzE4LzIyLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90
ZToKPiBIaSwKPiBJIGRvbuKAmXQga25vdyB3aGF0IGNhdXNlZCBteSBEZXNrdG9wIHRvIHN0b3Ag
Ym9vdGluZyBmcm9tIHRoZSBEVkQuCj4gSSBoYXZlIHRyaWVkIGRpZmZlcmVudCBEVkTigJlzIGFu
ZCBkaWZmZXJlbnQgZGlzdHJvcy4KPiBJdCB1c2VkIHRvIHdvcmsgd2l0aCBubyBwcm9ibGVtcywg
dGhhdOKAmXMgdGhlIHdheSBJIGluc3RhbGxlZCBMaW51eCBNaW50Lgo+IFNvIHBsZWFzZSB0ZWxs
IG1lIHRoZXJl4oCZcyBhIHNpbXBsZSB3YXkgdG8gZml4IHRoaXMuCj4gVGhhbmtzLAo+IFJvYgo+
Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgoKLS0gClNj
YW0gdmljdGltPyBUZWxsIHlvdXIgc3RvcnkgYXQgd3d3LnNjYW05MTEub3JnL3N1cnZpdmluZy10
aGUtc2NhbQpBbHNvIGNoZWNrIG91dCBicmlnaHRzdGFyc3dlYi5jb20gYW5kIG15c2l0ZXNiZWVu
aGFja2VkLmNvbQpKYWNraWUgTWNCcmlkZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo=

