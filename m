Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A5162686F8E
	for <lists+blinux-list@lfdr.de>; Wed,  1 Feb 2023 21:09:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675282189;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3+MzMPfkQXq02uPnJZKdZ7Z4PGQSfqjhgh//xeEHMB8=;
	b=a1+kFXEPJyjGjSLtOPO7eF4HExCNxz4pdeX9W4xSLlX+y7i33C/KM4UIXtlQTVPh4i3FQO
	IgjMZlPV3AVZfRNCYix6Fj25b8pWfJaYrP5ml1rRIoPnV8KcNtgjKwkXRWwTE4f1DIORGu
	ExOi7sH2WL9i9yMAF6VPr729XbrYMhE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-207-lMIyt1MiMWKKEm4hQKBlZA-1; Wed, 01 Feb 2023 15:09:48 -0500
X-MC-Unique: lMIyt1MiMWKKEm4hQKBlZA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E42E11875045;
	Wed,  1 Feb 2023 20:09:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D93E3404CD81;
	Wed,  1 Feb 2023 20:09:40 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 69B6219465B7;
	Wed,  1 Feb 2023 20:09:40 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Feb 2023 21:09:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: Attempting to boot Jenux in a vm.
To: blinux-list@redhat.com
References: <mailman.3614.1675274580.8173.blinux-list@redhat.com>
 <mailman.4055.1675278134.8177.blinux-list@redhat.com>
 <mailman.3826.1675278288.8171.blinux-list@redhat.com>
 <mailman.3839.1675280568.8171.blinux-list@redhat.com>
 <mailman.3619.1675280645.8173.blinux-list@redhat.com>
In-Reply-To: <mailman.3619.1675280645.8173.blinux-list@redhat.com>
Message-ID: <mailman.3905.1675282180.8169.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WW91IG1heSB3YW50IHRvIHRyeSBWaXJ0dWFsQm94LgoKVGhlIHJlc3VsdCBtYXkgZGVwZW5kIG9u
IHRoZSBzb3VuZCBjYXJkIHlvdSBzZWxlY3QuCgpDaGVlcnMsCkRpZGllcgotLQpEaWRpZXIgU3Bh
aWVyCmRpZGllcmF0c2xpbnRkb3RmcgoKTGUgMDEvMDIvMjAyMyDDoCAyMDo0MywgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IElzIHRoZWlyIGEgYmV0dGVy
IHByb2dyYW0gdG8gdXNlIHRoYW4gcGxheWVyP8KgIEkgaGF2ZSBubyBwcm9ibGVtIHN3aXRjaGlu
ZywgSQo+IGp1c3QgcGlja2VkIGl0IGJlY2F1c2UgaXQgc2VlbWVkIHRvIGJlIHRoZSB0b3AuCj4g
Cj4gTWlrZS4KPiAKPiAKPiAKPiBPbiAyLzEvMjAyMyAxMjo0MiBQTSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gSGksCj4+Cj4+IFRoaXMgaXMgYSBrbm93biBp
c3N1ZSB3aXRoIEplbnV4IGFuZCBydW5uaW5nIGluIFZNV2FyZSB3b3Jrc3RhdGlvbiwgaXQgaGFz
Cj4+IGJlZW4gdGhpcyB3YXkgc2luc2UgMTUueC4gSSBoYXZlIHlldCB0byBmaW5kIGEgd2F5IHRv
IGdldCB0aGlzIHRvIHdvcmsuCj4+Cj4+IEZyb206IEJsaW51eC1saXN0IDxibGludXgtbGlzdC1i
b3VuY2VzQHJlZGhhdC5jb20+IG9uIGJlaGFsZiBvZiBMaW51eCBmb3IKPj4gYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPgo+PiBEYXRlOiBXZWRuZXNkYXks
IDEgRmVicnVhcnkgMjAyMyBhdCAxOTowNAo+PiBUbzogTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPj4gU3ViamVjdDogUmU6IEF0dGVt
cHRpbmcgdG8gYm9vdCBKZW51eCBpbiBhIHZtLgo+PiBWTVdhcmUgd29ya3N0YXRpb24gcGxheWVy
IDE3IG5vbi1jb21lcmNpYWwsIHdpbmRvd3MxMSwgbm90aGluZyBjaGFuZ2VkCj4+IGluIHZtd2Fy
ZXMgc2V0dGluZ3MgYnV0IGFkanVzdGluZyB0aGUgcmFtIGFuZCBwcm9jZXNzb3JzIGZvciB0aGlz
Cj4+IHBhcnRpY3VsYXIgbWFjaGluZS4KPj4KPj4gTWlrZS4KPj4KPj4KPj4gT24gMi8xLzIwMjMg
MTI6MDIgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBI
aSwKPj4+Cj4+PiBZb3UgZGlkbuKAmXQgcHJvdmlkZSBhbnkgZGV0YWlscyBoZXJlLgo+Pj4KPj4+
IFdoYXQgdmlydHVhbGlzYXRpb24gc29sdXRpb24gYXJlIHlvdSB1c2luZz8gV2hhdCB2ZXJzaW9u
PyBXaGF0IGhvc3QgT1M/Cj4+Pgo+Pj4gV2l0aG91dCBhbnkgb2YgdGhlc2UgZGV0YWlscyB3ZSBk
aXNvbuKAmXQgYmUgYWJsZSB0byBoZWxwIHlvdS4KPj4+Cj4+PiBPbiAxIEZlYnJ1YXJ5IDIwMjMg
MTg6MDI6NDUgR01ULCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4+PiA8Ymxp
bnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Pj4gSGV5IGFsbCwKPj4+Pgo+Pj4+IEp1c3Qg
cHVsbGVkIGRvd24gdGhlIGxhdGVzdCBKZW51eCB0byBnaXZlIGl0IGEgdHJ5LCBidXQgZm9yIHNv
bWUgcmVhc29uIEkKPj4+PiBjYW5ub3QgZ2V0IGFueSBzcGVlY2ggb3V0IG9mIGl0LsKgIEkgaGVh
ciB0aGUgYmVlcHMgd2hlbiB0aGUgVk0gYm9vdHMgdXAsIEkKPj4+PiBjYW4gb2NyIHdpdGggbnZk
YSBhbmQgc2VlIHNlbGYtdGVzdCByZXF1ZXN0ZWQsIHBsZWFzZSB3YWl0LCBhbmQgYWZ0ZXIgYQo+
Pj4+IHdoaWxlIHRoZSBtZW51IGNvbWVzIHVwLsKgIEkgY2FuIGFsc28gc2VlIHRoYXQgdGhyb3Vn
aCBvY3IsIGJ1dCBJIGdldCBubwo+Pj4+IHNwZWVjaCB3aGVuIGluc2lkZSB0aGUgdm0uIEkndmUg
Y2hlY2tlZCB0byBtYWtlIHN1cmUgdGhlIHNvdW5kIGNhcmRzIGFyZQo+Pj4+IGNvcnJlY3QsIGFu
eW9uZSBoYXZlIGFueXRoaW5nIGVsc2UgSSBjYW4gdHJ5P8KgIEknbSBub3QgZmluZGluZyBhbnkK
Pj4+PiBkb2N1bWVudGF0aW9uIGFueXdoZXJlLCB3aGljaCBpcyB3aHkgSSdtIGFza2luZyBoZXJl
Lgo+Pj4+Cj4+Pj4gTWlrZS4KPj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4+Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

