Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC2C64987F
	for <lists+blinux-list@lfdr.de>; Mon, 12 Dec 2022 05:52:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1670820750;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uKC0vNdgc1+l5s9tCh+7critAjO5RX2ik1k9AFpP6/I=;
	b=FEaIMrpXyYcdkWcmUY8+r5RgKSwzksnl+YbNyfLCTt6N06+vD5c8ChI/FYTUqrxDC0h5sI
	eLfb2RpF4QPOimRdcPn5TZbiSrx1SpC8ILWYb3AJJnkqZu3Y7TXglF6uzhfmeWh9pMbs/V
	kpkJEtrJYXagcovegpqXHHabRKHwJcQ=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-465-W_T5XoxXOJqe4Y-KMVM0VQ-1; Sun, 11 Dec 2022 23:52:26 -0500
X-MC-Unique: W_T5XoxXOJqe4Y-KMVM0VQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B450329AA3A5;
	Mon, 12 Dec 2022 04:52:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C591540C6EC2;
	Mon, 12 Dec 2022 04:52:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4C2C2194658F;
	Mon, 12 Dec 2022 04:52:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 11 Dec 2022 23:52:10 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: bash script question
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1629.1670808097.7716.blinux-list@redhat.com>
In-Reply-To: <mailman.1629.1670808097.7716.blinux-list@redhat.com>
Message-ID: <mailman.1768.1670820740.7712.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

Rmlyc3QgeW91IGhhdmUgZmkgb24gdGhlIGxpbmUgcmlnaHQgYmVsb3cgZG8sIGJ1dCB0aGF0IGZp
IHNlZW1zIHRvIApiZWxvbmcgdG8geW91ciBxdWl6IGZ1bmN0aW9uLCBzbyBJIG1vdmVkIGl0IHRo
ZXJlLiBJIGFsc28gZGlkIG5vdCBmaW5kIApkb25lIGF0IHRoZSBlbmQgb2YgdGhlIGRvIGxvb3As
IHNvIEkgaGF2ZSBhZGRlZCB0aGF0LiBMYXN0bHkgdGhlIApmdW5jdGlvbiB3YXMgbm90IGNsb3Nl
ZCwgc28gSSBoYXZlIGFkZGVkIHRoZSBjbG9zaW5nIGN1cmx5IGJyYWNrZXQgb24gYSAKbGluZSBi
eSBpdHNlbGYgYmVsb3cgdGhlIGZ1bmN0aW9uLiBJIGFsc28gYXNzdW1lIHlvdSB3YW50IHRvIGFj
dHVhbGx5IApleGl0IHRoZSBzY3JpcHQgaWYgdGhlIHJlc3BvbnNlIGlzIG5vdCBZIG9yIHksIHNv
IEkgYWRkIGFuIGV4aXQgYWZ0ZXIgCnRoZSBlY2hvLiBBZnRlciB0aGVzZSBmaXhlcywgdGhlIHNj
cmlwdCBzZWVtcyB0byB3b3JrIGFzIGV4cGVjdGVkLCAKYWx0aG91Z2ggSSdtIG5vdCBzdXJlIHlv
dSB3YW50ZWQgdG8gYXNrIHRvIHN0YXJ0IHRoZSBxdWl6IGFmdGVyIGFuIAppbmNvcnJlY3QgYW5z
d2VyLCBidXQgSSBsZWZ0IHRoYXQgYXMgaXQgd2FzLiBJIGFsc28gc2VwYXJhdGVkIHRoZSAKZnVu
Y3Rpb24gZnJvbSB0aGUgbWFpbiBzY3JpcHQgYnkgYSBibGFuayBsaW5lIGFuZCBmaXhlZCBpbmRl
bnRhdGlvbiwgYnV0IAp0aGlzIGlzIGp1c3QgZm9yIHJlYWRhYmlsaXR5LCBhbmQgeW91ciBzY3Jp
cHQgd2lsbCB3b3JrIGFzIGV4cGVjdGVkIAp3aXRob3V0IHRoZXNlIGZpeGVzLiBGaW5kIGJlbG93
IHRoZSB3b3JraW5nIHNjcmlwdC4KCgojIS9iaW4vYmFzaAoKcXVpeigpIHsKIMKgIGVjaG8gIlN0
YXJ0aW5nIHF1aXouLi4iCiDCoCBlY2hvICJXaGF0IGlzIDIrMj8iCiDCoCByZWFkIHJlc3BvbnNl
CiDCoCBpZiBbICIkcmVzcG9uc2UiID09IDQgXQogwqAgdGhlbgogwqDCoMKgIGVjaG8gIllvdSBn
b3QgaXQuIgogwqAgZWxzZQogwqDCoMKgIGVjaG8gIlRoYXQgaXMgaW5jb3JyZWN0LiIKIMKgIGZp
Cn0KCnVudGlsIFsgIiRyZXNwb25zZSIgPT0gNCBdOyBkbwogwqAgZWNobyAiQmVnaW4gbWF0aCBx
dWl6PyAoeS9uKSIKIMKgIHJlYWQgcmVzcG9uc2UKIMKgIGlmIFsgIiRyZXNwb25zZSIgPT0gInki
IF0gfHwgWyAiJHJlc3BvbnNlIiA9PSAiWSIgXQogwqAgdGhlbgogwqDCoMKgIFNFQ09ORFM9MAog
wqDCoMKgIHF1aXoKIMKgwqDCoCBlY2hvICJUaGUgcXVpeiB0b29rIHlvdSAkU0VDT05EUyBzZWNv
bmRzIHRvIGNvbXBsZXRlLiIKIMKgIGVsc2UKIMKgwqDCoCBlY2hvICJFeGl0aW5nLi4uIgogwqDC
oMKgIGV4aXQKIMKgIGZpCmRvbmUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQu
Y29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QK

