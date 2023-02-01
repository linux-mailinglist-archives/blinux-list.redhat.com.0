Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FAB686F92
	for <lists+blinux-list@lfdr.de>; Wed,  1 Feb 2023 21:10:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675282254;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=EeFCu1sYWEujzL1ZHk3l7u9bRyxhXGXr6ZoR4hnk9rA=;
	b=fGZqvxBGGNF0avdDBSOQp+yRz6sdSYUde+DewPA+XDAm2AP2dnK+vDiWyPTNktCarQJn+1
	f1EOBdmB75d54Dxxm/pawugl2tlFpe1IsoYYvxsRqsYG+O5DocomsJpQ8A1VUUXN12OMbp
	VYE8gvwJS8UIpEUA5v7I1aEVbNaOrIM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-636-fZGgr8WtMyyRyKeYfIsJ3w-1; Wed, 01 Feb 2023 15:10:51 -0500
X-MC-Unique: fZGgr8WtMyyRyKeYfIsJ3w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B66D4185A794;
	Wed,  1 Feb 2023 20:10:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5294F404CD81;
	Wed,  1 Feb 2023 20:10:49 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0151719465B7;
	Wed,  1 Feb 2023 20:10:49 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Feb 2023 13:10:41 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: Attempting to boot Jenux in a vm.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.3614.1675274580.8173.blinux-list@redhat.com>
 <mailman.4055.1675278134.8177.blinux-list@redhat.com>
 <mailman.3826.1675278288.8171.blinux-list@redhat.com>
 <mailman.3839.1675280568.8171.blinux-list@redhat.com>
 <mailman.3619.1675280645.8173.blinux-list@redhat.com>
 <mailman.3905.1675282180.8169.blinux-list@redhat.com>
In-Reply-To: <mailman.3905.1675282180.8169.blinux-list@redhat.com>
Message-ID: <mailman.3808.1675282248.8172.blinux-list@redhat.com>
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

SnVzdCBkaWQsIGFuZCBpdCBsb29rcyBsaWtlIHZpcnR1YWxib3ggc29sdmVzIGl0LiBTcGVlY2gg
Y29tZXMgcmlnaHQgdXAuCgpUaGFua3MsCgpNaWtlLgoKT24gMi8xLzIwMjMgMTowOSBQTSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBZb3UgbWF5IHdhbnQgdG8g
dHJ5IFZpcnR1YWxCb3guCj4KPiBUaGUgcmVzdWx0IG1heSBkZXBlbmQgb24gdGhlIHNvdW5kIGNh
cmQgeW91IHNlbGVjdC4KPgo+IENoZWVycywKPiBEaWRpZXIKPiAtLQo+IERpZGllciBTcGFpZXIK
PiBkaWRpZXJhdHNsaW50ZG90ZnIKPgo+IExlIDAxLzAyLzIwMjMgw6AgMjA6NDMsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gSXMgdGhlaXIgYSBiZXR0
ZXIgcHJvZ3JhbSB0byB1c2UgdGhhbiBwbGF5ZXI/wqAgSSBoYXZlIG5vIHByb2JsZW0gc3dpdGNo
aW5nLCBJCj4+IGp1c3QgcGlja2VkIGl0IGJlY2F1c2UgaXQgc2VlbWVkIHRvIGJlIHRoZSB0b3Au
Cj4+Cj4+IE1pa2UuCj4+Cj4+Cj4+Cj4+IE9uIDIvMS8yMDIzIDEyOjQyIFBNLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gSGksCj4+Pgo+Pj4gVGhpcyBpcyBh
IGtub3duIGlzc3VlIHdpdGggSmVudXggYW5kIHJ1bm5pbmcgaW4gVk1XYXJlIHdvcmtzdGF0aW9u
LCBpdCBoYXMKPj4+IGJlZW4gdGhpcyB3YXkgc2luc2UgMTUueC4gSSBoYXZlIHlldCB0byBmaW5k
IGEgd2F5IHRvIGdldCB0aGlzIHRvIHdvcmsuCj4+Pgo+Pj4gRnJvbTogQmxpbnV4LWxpc3QgPGJs
aW51eC1saXN0LWJvdW5jZXNAcmVkaGF0LmNvbT4gb24gYmVoYWxmIG9mIExpbnV4IGZvcgo+Pj4g
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPgo+Pj4gRGF0
ZTogV2VkbmVzZGF5LCAxIEZlYnJ1YXJ5IDIwMjMgYXQgMTk6MDQKPj4+IFRvOiBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPgo+Pj4gU3Vi
amVjdDogUmU6IEF0dGVtcHRpbmcgdG8gYm9vdCBKZW51eCBpbiBhIHZtLgo+Pj4gVk1XYXJlIHdv
cmtzdGF0aW9uIHBsYXllciAxNyBub24tY29tZXJjaWFsLCB3aW5kb3dzMTEsIG5vdGhpbmcgY2hh
bmdlZAo+Pj4gaW4gdm13YXJlcyBzZXR0aW5ncyBidXQgYWRqdXN0aW5nIHRoZSByYW0gYW5kIHBy
b2Nlc3NvcnMgZm9yIHRoaXMKPj4+IHBhcnRpY3VsYXIgbWFjaGluZS4KPj4+Cj4+PiBNaWtlLgo+
Pj4KPj4+Cj4+PiBPbiAyLzEvMjAyMyAxMjowMiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiB3cm90ZToKPj4+PiBIaSwKPj4+Pgo+Pj4+IFlvdSBkaWRu4oCZdCBwcm92aWRl
IGFueSBkZXRhaWxzIGhlcmUuCj4+Pj4KPj4+PiBXaGF0IHZpcnR1YWxpc2F0aW9uIHNvbHV0aW9u
IGFyZSB5b3UgdXNpbmc/IFdoYXQgdmVyc2lvbj8gV2hhdCBob3N0IE9TPwo+Pj4+Cj4+Pj4gV2l0
aG91dCBhbnkgb2YgdGhlc2UgZGV0YWlscyB3ZSBkaXNvbuKAmXQgYmUgYWJsZSB0byBoZWxwIHlv
dS4KPj4+Pgo+Pj4+IE9uIDEgRmVicnVhcnkgMjAyMyAxODowMjo0NSBHTVQsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24KPj4+PiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3Jv
dGU6Cj4+Pj4+IEhleSBhbGwsCj4+Pj4+Cj4+Pj4+IEp1c3QgcHVsbGVkIGRvd24gdGhlIGxhdGVz
dCBKZW51eCB0byBnaXZlIGl0IGEgdHJ5LCBidXQgZm9yIHNvbWUgcmVhc29uIEkKPj4+Pj4gY2Fu
bm90IGdldCBhbnkgc3BlZWNoIG91dCBvZiBpdC7CoCBJIGhlYXIgdGhlIGJlZXBzIHdoZW4gdGhl
IFZNIGJvb3RzIHVwLCBJCj4+Pj4+IGNhbiBvY3Igd2l0aCBudmRhIGFuZCBzZWUgc2VsZi10ZXN0
IHJlcXVlc3RlZCwgcGxlYXNlIHdhaXQsIGFuZCBhZnRlciBhCj4+Pj4+IHdoaWxlIHRoZSBtZW51
IGNvbWVzIHVwLsKgIEkgY2FuIGFsc28gc2VlIHRoYXQgdGhyb3VnaCBvY3IsIGJ1dCBJIGdldCBu
bwo+Pj4+PiBzcGVlY2ggd2hlbiBpbnNpZGUgdGhlIHZtLiBJJ3ZlIGNoZWNrZWQgdG8gbWFrZSBz
dXJlIHRoZSBzb3VuZCBjYXJkcyBhcmUKPj4+Pj4gY29ycmVjdCwgYW55b25lIGhhdmUgYW55dGhp
bmcgZWxzZSBJIGNhbiB0cnk/wqAgSSdtIG5vdCBmaW5kaW5nIGFueQo+Pj4+PiBkb2N1bWVudGF0
aW9uIGFueXdoZXJlLCB3aGljaCBpcyB3aHkgSSdtIGFza2luZyBoZXJlLgo+Pj4+Pgo+Pj4+PiBN
aWtlLgo+Pj4+Pgo+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+Pj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0
IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

