Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D0D686E9A
	for <lists+blinux-list@lfdr.de>; Wed,  1 Feb 2023 20:05:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675278298;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VtD1CtMDiOaA6A9aJu/LFBy59L783WGq9chbKk9N/N4=;
	b=EQ/CIXXZEwWNlvZb5eCFVmyUsjh0lE1+Lqc3dNH2sYB1Ud7KoOAaYGyWZaxoTZEE51u7PF
	l36JxHm1SzUb4XkxxFIZx04A9zwk3IeLHdFG2BUKa2wtgvz8ydWXr4yJAgAdfvArdx+54o
	IP6ojVLVz4nXU527oYl1KxtZJfRNNQU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-279-wsFhdCKHPP-lijTBmhH6gQ-1; Wed, 01 Feb 2023 14:04:56 -0500
X-MC-Unique: wsFhdCKHPP-lijTBmhH6gQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E605F100DEA3;
	Wed,  1 Feb 2023 19:04:52 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 276FC53A0;
	Wed,  1 Feb 2023 19:04:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id A8A1219465B7;
	Wed,  1 Feb 2023 19:04:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Feb 2023 12:04:43 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: Attempting to boot Jenux in a vm.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.3614.1675274580.8173.blinux-list@redhat.com>
 <mailman.4055.1675278134.8177.blinux-list@redhat.com>
In-Reply-To: <mailman.4055.1675278134.8177.blinux-list@redhat.com>
Message-ID: <mailman.3826.1675278288.8171.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

Vk1XYXJlIHdvcmtzdGF0aW9uIHBsYXllciAxNyBub24tY29tZXJjaWFsLCB3aW5kb3dzMTEsIG5v
dGhpbmcgY2hhbmdlZCAKaW4gdm13YXJlcyBzZXR0aW5ncyBidXQgYWRqdXN0aW5nIHRoZSByYW0g
YW5kIHByb2Nlc3NvcnMgZm9yIHRoaXMgCnBhcnRpY3VsYXIgbWFjaGluZS4KCk1pa2UuCgoKT24g
Mi8xLzIwMjMgMTI6MDIgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4gSGksCj4KPiBZb3UgZGlkbuKAmXQgcHJvdmlkZSBhbnkgZGV0YWlscyBoZXJlLgo+Cj4g
V2hhdCB2aXJ0dWFsaXNhdGlvbiBzb2x1dGlvbiBhcmUgeW91IHVzaW5nPyBXaGF0IHZlcnNpb24/
IFdoYXQgaG9zdCBPUz8KPgo+IFdpdGhvdXQgYW55IG9mIHRoZXNlIGRldGFpbHMgd2UgZGlzb27i
gJl0IGJlIGFibGUgdG8gaGVscCB5b3UuCj4KPiBPbiAxIEZlYnJ1YXJ5IDIwMjMgMTg6MDI6NDUg
R01ULCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRo
YXQuY29tPiB3cm90ZToKPj4gSGV5IGFsbCwKPj4KPj4gSnVzdCBwdWxsZWQgZG93biB0aGUgbGF0
ZXN0IEplbnV4IHRvIGdpdmUgaXQgYSB0cnksIGJ1dCBmb3Igc29tZSByZWFzb24gSSBjYW5ub3Qg
Z2V0IGFueSBzcGVlY2ggb3V0IG9mIGl0LsKgIEkgaGVhciB0aGUgYmVlcHMgd2hlbiB0aGUgVk0g
Ym9vdHMgdXAsIEkgY2FuIG9jciB3aXRoIG52ZGEgYW5kIHNlZSBzZWxmLXRlc3QgcmVxdWVzdGVk
LCBwbGVhc2Ugd2FpdCwgYW5kIGFmdGVyIGEgd2hpbGUgdGhlIG1lbnUgY29tZXMgdXAuwqAgSSBj
YW4gYWxzbyBzZWUgdGhhdCB0aHJvdWdoIG9jciwgYnV0IEkgZ2V0IG5vIHNwZWVjaCB3aGVuIGlu
c2lkZSB0aGUgdm0uIEkndmUgY2hlY2tlZCB0byBtYWtlIHN1cmUgdGhlIHNvdW5kIGNhcmRzIGFy
ZSBjb3JyZWN0LCBhbnlvbmUgaGF2ZSBhbnl0aGluZyBlbHNlIEkgY2FuIHRyeT/CoCBJJ20gbm90
IGZpbmRpbmcgYW55IGRvY3VtZW50YXRpb24gYW55d2hlcmUsIHdoaWNoIGlzIHdoeSBJJ20gYXNr
aW5nIGhlcmUuCj4+Cj4+IE1pa2UuCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

