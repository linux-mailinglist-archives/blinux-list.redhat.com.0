Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E055E82E3
	for <lists+blinux-list@lfdr.de>; Fri, 23 Sep 2022 22:04:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663963468;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uZsGxet/Jxfe3qyEzAtdjF6L+qTv26/BZ3NfpMaP+nk=;
	b=ZVLjDR/wTQPwuYJshN4z9qGREp6oARjO0Q7YTALIBVwtj8QDYUTE1M8aXQwbR/KbOQscKj
	ChUE74pg3mNrtpWbIJIn4l5ETimD/UJGXcKx7I4r0nKEVn9JQhThs1NqNB7HrfN6pl2jhk
	A6Rqc8hd4dXB87+jFuK8xG4biOLnlYA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-365-6eGNkP3ZOxWqj57bOolKpQ-1; Fri, 23 Sep 2022 16:04:27 -0400
X-MC-Unique: 6eGNkP3ZOxWqj57bOolKpQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4984F3C10149;
	Fri, 23 Sep 2022 20:04:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7C795492B04;
	Fri, 23 Sep 2022 20:04:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B35121946A42;
	Fri, 23 Sep 2022 20:04:20 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 23 Sep 2022 17:04:13 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: Qtile is kind of nice
To: blinux-list@redhat.com
References: <mailman.8007.1663004501.10507.blinux-list@redhat.com>
In-Reply-To: <mailman.8007.1663004501.10507.blinux-list@redhat.com>
Message-ID: <mailman.2577.1663963460.6078.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

WWVhaCwgSSBpbnN0YWxsZWQgaXQgYSB3ZWVrIGFnby4KCkkgaGFkIHByb2JsZW1zIHRvIHJlc3Rh
cnQgT3JjYSB3aXRoICdvcmNhIC1yJywgaXQgZ290IG11dGVkIHdoZW4gdHJpZWQsIApidXQgaXQg
d29ya2VkIGFmdGVyIEkgY2hhbmdlZCB0aGUgd2F5IHRvIHJ1biBpdCBvbiBzdGFydHVwOgoKQGhv
b2suc3Vic2NyaWJlLnN0YXJ0dXBfb25jZQpkZWYgYXV0b3N0YXJ0KCk6CiDCoMKgwqAgc3VicHJv
Y2Vzcy5Qb3Blbignb3JjYSAmJywgc2hlbGw9VHJ1ZSkKCkkgbGlrZSB0aGUgaWRlYSBvZiB1c2Ug
a2V5IGNob3JkcyBhcyBhIHNob3J0Y3V0LCBidXQgSSBoYXZlbid0IApjb25maWd1cmVkIGl0IHll
dC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

