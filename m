Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B331A6A0EAB
	for <lists+blinux-list@lfdr.de>; Thu, 23 Feb 2023 18:26:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677173207;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=u3zgxyRP3hZvHTMTvg5j8ql/pxahY9t83LKsxSUxl6s=;
	b=BpFdH4MAJFxCgZLBI5KmiWW4sl1AXNL6j5p51B6aGcsVNMKF/OR3zxwIjm6ibwy9n8J4a+
	SlppZvj5q9Y0FbA64kQwtNrtnvrVN1n5yBdbymdMT2ECWzhu4x6guPnNA64zhZ/7WUgKxd
	MiUdV382jZhC2xf5weRzLjEFz3EJBCg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-574-CbXt273ZPGaaMIez2M-nNw-1; Thu, 23 Feb 2023 12:26:45 -0500
X-MC-Unique: CbXt273ZPGaaMIez2M-nNw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BC724196EF8D;
	Thu, 23 Feb 2023 17:26:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 101742166B29;
	Thu, 23 Feb 2023 17:26:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BEC8E19465B9;
	Thu, 23 Feb 2023 17:26:36 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 23 Feb 2023 18:26:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [DECtalk] Report of a successful use of dectalk with graphical
 Linux. (fwd)
To: blinux-list@redhat.com
References: <mailman.887.1677042909.686535.blinux-list@redhat.com>
 <mailman.988.1677043847.686540.blinux-list@redhat.com>
 <mailman.1140.1677079370.686543.blinux-list@redhat.com>
 <mailman.1802.1677088197.686542.blinux-list@redhat.com>
 <mailman.1775.1677089285.686538.blinux-list@redhat.com>
In-Reply-To: <mailman.1775.1677089285.686538.blinux-list@redhat.com>
Message-ID: <mailman.2092.1677173190.686537.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGUgMjIvMDIvMjAyMyDDoCAxODo1NywgU2FtZWwgd3JvdGU6Cj4gVGhlIExJQ0VOQ0UgZmlsZSBz
YXlzOgo+IAo+IFBvc3Nlc3Npb24sIHVzZSwgb3IgY29weWluZyBvZiB0aGlzIHNvZnR3YXJlIGFu
ZCBtZWRpYSBpcyBhdXRob3JpemVkCj4gb25seSBwdXJzdWFudCB0byBhIHZhbGlkIHdyaXR0ZW4g
bGljZW5zZSBmcm9tIEZPTklYIG9yIGFuIGF1dGhvcml6ZWQKPiBzdWJsaWNlbnNvcgo+IAo+IFNv
IHllcywgeW91IG5lZWQgYW4gYWN0dWFsIGxpY2VuY2UgdG8gYmUgYWJsZSB0byBkbyBhbnl0aGlu
ZyB3aXRoIHRoZQo+IHNvZnR3YXJlLgoKVGhpcyBoYXMgYmVlbiB0aGUgdG9waWMgb2YgYSBoZWF0
ZWQgZGlzY3Vzc2lvbjoKaHR0cHM6Ly9naXRodWIuY29tL2RlY3RhbGsvZGVjdGFsay9kaXNjdXNz
aW9ucy8zNAoKdGw7ZHI6IGRvIG5vdCBleHBlY3QgdG8gc2VlIHRoaXMgc29mdHdhcmUgcGFja2Fn
ZWQgYW55IHRpbWUgc29vbiBpbiBhIExpbnV4CmRpc3RyaWJ1dGlvbiB1bmxlc3MvdW50aWwgc29t
ZW9uZSBmaW5kcyB0aGUgcmlnaHRzJyBvd25lciBhbmQgbWFrZSB0aGVtIGFncmVlIHRvCmNoYW5n
ZSB0aGUgbGljZW5zZS4KCkRpZGllcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo=

