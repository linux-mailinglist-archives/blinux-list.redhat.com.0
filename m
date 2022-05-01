Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E126516719
	for <lists+blinux-list@lfdr.de>; Sun,  1 May 2022 20:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1651429901;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6459TOGbyrOAbWTPEkWJUqCJZ0UMTaWbowjqpg/zaDc=;
	b=E47Gt9eb2580734msIJJQzVEORmy+gYUMw4cwvD2Vl5EfEneospWbX2ynibuKWmA4EK5G+
	/Ugwm4nP87rtqy6l7+X9JjUOfzWuPlSZAGBJZxbdr4xTOHkRPmZ/DGfzuw41C41aDlInsj
	LG2vaTmeJlV6uMmytRTu99eCCEkbg50=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-351-71BdYiimMqyafNyGHIulSw-1; Sun, 01 May 2022 14:31:40 -0400
X-MC-Unique: 71BdYiimMqyafNyGHIulSw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 30EA83C025C1;
	Sun,  1 May 2022 18:31:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4FDF940E7F06;
	Sun,  1 May 2022 18:31:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9F2761947063;
	Sun,  1 May 2022 18:31:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 01 May 2022 18:31:21 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Ubuntu Mate sudden freezes
In-Reply-To: <83d5e611-3287-17f8-39f0-8ebc03ee9111@protonmail.com>
References: <83d5e611-3287-17f8-39f0-8ebc03ee9111@protonmail.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.12057.1651429893.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gYWdhaW4sCgpvaywgaXQgdHVybmVkIG91dCBteSBpbml0aWFsIHBlcmNlcHRpb24gb2Yg
dGhlIHNpdHVhdGlvbiB3YXMgd3JvbmcuCgpJdCdzIG5vdCB0aGUga2V5Ym9hcmQgd2hhdCBmcmVl
emVzLCBhbmQgbmVpdGhlciB0aGUgaW50ZXJmYWNlLgoKCkl0IHNlZW1zIHRoZXJlIGlzIHNvbWUg
cHJvYmxlbSB3aXRoIHNvdW5kLiBLaWxsaW5nIHB1bHNlIGF1ZGlvIGJyb3VnaHQKYXQgbGVhc3Qg
dGVybWluYWwgYmVlcHMgYmFjaywgdGhvdWdoIG5vdCB0aGUgc3BlZWNoLgoKCkkgYWx3YXlzIGZv
cmdldCB0aGUgbmFtZSBvZiB0aGUgc3BlZWNoIGRpc3BhdGNoZXIgZGFlbW9uLCBzbyBJIGNvdWxk
bid0CnRyeSB0byByZXN0YXJ0IGl0IHRvIHNlZSBob3cgbG9uZyB3b3VsZCB0aGlzIHNvbHV0aW9u
IGxhc3QuCgoKSSdsbCBjaGVjayBpdCBvdXQgYW5kIHJlcG9ydCBiYWNrLCBqdXN0IGluIGNhc2Ug
c29tZW9uZSBlbmNvdW50ZXJzIHRoZQpzYW1lIGlzc3VlLgoKCkJlc3QgcmVnYXJkcwoKClJhc3Rp
c2xhdgoKCkTFiGEgMS4gNS4gMjAyMiBvIDE5OjEyIFJhc3Rpc2xhdiBLaXNoIG5hcMOtc2FsKGEp
Ogo+IEhlbGxvIGxpc3QsCj4KPiB0b2RheSwgSSdtIGV4cGVyaWVuY2luZyBhIHZlcnkgc3RyYW5n
ZSBwcm9ibGVtLgo+Cj4KPiBCYXNpY2FsbHksIGFmdGVyIGNlcnRhaW4ga2luZCBvZiBhY3Rpb24s
IHRoZSB3aG9sZSBrZXlib2FyZCBzZWVtcyB0byBnZXQKPiBzdHVjay4gVGhlIHR5cGUgb2YgYWN0
aW9uIGNhbiB3YXJ5LCBpdCBoYXBwZW5lZCBmZXcgdGltZXMgd2hpbGUgcmVhZGluZwo+IG1haWxz
IGluIFRodW5kZXJiaXJkLCBidXQgaXQgaGFwcGVuZWQgdHdpY2UgYWxzbyBzaW1wbHkgYWZ0ZXIg
SSBsZWZ0IG15Cj4gbGFwdG9wIHVudG91Y2hlZCBmZXcgbWludXRlcyAobm90IGVub3VnaCBmb3Ig
dGhlIGRlc2t0b3AgdG8gZ2V0Cj4gYXV0b21hdGljYWxseSBsb2NrZWQpLgo+Cj4KPiBXaGVuIHRo
aXMgaGFwcGVucywgaSdtIHVuYWJsZSB0byBkbyBhbnl0aGluZywgbm90IGV2ZW4gQWx0K0YyIHdv
cmtzIHRvCj4gcmVzdGFydCBvcmNhIG9yIGFueXRoaW5nIGVsc2UuCj4KPgo+IE9uZSB3b3JrYXJv
dW5kIEkgZm91bmQgaXMgdG8gY2xvc2UgdGhlIGxpZCBhbmQgcmUtb3BlbiBpdC4gVGhlbiwgb24g
dGhlCj4gbG9naW4gc2NyZWVuLCB0aGluZ3MgYWdhaW4gbWFnaWNhbGx5IHN0YXJ0IHRvIHdvcmss
IGFuZCBJIGNhbiBsb2dpbi4KPgo+IFRoZW4sIGl0IHR5cGljYWxseSBmcmVlemVzIGFnYWluIGFm
dGVyIHNvbWUgdGltZS4gQ0FuIHdhcnkgZnJvbSAyIHRvIDMwCj4gc2Vjb25kcywgb3IgbWF5IGV2
ZW4gZnJlZXplIHJpZ2h0IGF3YXkuCj4KPgo+IFNvbWV0aW1lcywgdGhpbmdzIHNlZW0gdG8gZnJl
ZXplIGV2ZW4gb24gdGhlIGxvY2sgc2NyZWVuLCB0aG91Z2gsCj4gY2xvc2luZyBhbmQgcmVvcGVu
aW5nIHRoZSBsaWQgc2VlbXMgdG8gcmVsaWFibHkgZ2V0IHRoZW0gYmFjayB0byBsaWZlCj4gKGF0
IGxlYXN0IGZvciBhIHdoaWxlKS4KPgo+Cj4gSSdkIGxpa2UgdG8gYXNrLCBiZWZvcmUgSSBzdGFy
dCB0aG9yb3VnaCBpbnZlc3RpZ2F0aW9uLCBpcyBhbnlvbmUgZWxzZQo+IGV4cGVyaWVuY2luZyBz
aW1pbGFyIGlzc3Vlcz8KPgo+Cj4gVWJ1bnR1IE1hdGUgMjAuMDQgNjQtYml0IGZyZXNobHkgdXBk
YXRlZCwgb3JjYSA0My5hbHBoYS4KPgo+Cj4gQmVzdCByZWdhcmRzCj4KPgo+IFJhc3Rpc2xhdgo+
Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

