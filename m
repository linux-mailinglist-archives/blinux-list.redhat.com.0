Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A646397A4
	for <lists+blinux-list@lfdr.de>; Sat, 26 Nov 2022 19:27:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669487273;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=q98vs/cnh9k64uwHLP4FhfJMjjhA2mWIhHS+wRvx2ro=;
	b=dSSFf6Ako2dXhXR37eBZtt+k+9mEueA4Hgj8PEc5/8xgDeMPqq4lqudL3YSHXNrMIdpQ7C
	LLCKOMXYdDUZgkO/WhLrRJxRQXOirxOZKy8N7b/Zj2zdT92XwHMYR996/nseWG4MZN7Mgk
	LrlDj6ut/IIegmLk2mF4ORgemJGQrkw=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-570-noNRS6z1NTSjIogJnv5Wkg-1; Sat, 26 Nov 2022 13:27:50 -0500
X-MC-Unique: noNRS6z1NTSjIogJnv5Wkg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E48BE811E67;
	Sat, 26 Nov 2022 18:27:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 09889C15BB2;
	Sat, 26 Nov 2022 18:27:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 3674A1946597;
	Sat, 26 Nov 2022 18:27:44 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 26 Nov 2022 19:27:28 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: Accessible front ends for Pleroma?
To: blinux-list@redhat.com
References: <mailman.1920.1669425887.6932.blinux-list@redhat.com>
 <mailman.1994.1669440416.6925.blinux-list@redhat.com>
 <mailman.1917.1669441933.6934.blinux-list@redhat.com>
 <mailman.1960.1669443853.6931.blinux-list@redhat.com>
 <mailman.2025.1669474541.6925.blinux-list@redhat.com>
In-Reply-To: <mailman.2025.1669474541.6925.blinux-list@redhat.com>
Message-ID: <mailman.2084.1669487263.6926.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gSnVkZSwKCkFyZSB5b3UgcnVubmluZyBTbGludCAxNS4wPyBJZiB5ZXMsIG15IGFuc3dl
ciBiZWxvdyBhcHBsaWVzLCBlbHNlIHBsZWFzZSB1cGdyYWRlLgoKSW4gU2xpbnQgMTUuMApzbGFw
dC1zcmMgLS1zZXJhcmNoCmZpbmRzIGl0LCB0aGVuCnNsYXB0LXNyYyAtaSB0b290Cmluc3RhbGxz
IGl0LCB3aGljaCBpcyBvZiBjb3Vyc2UgdGhlIGJlc3Qgd2F5IHRvIGdldCBpdC4KCklmIGhvd2V2
ZXIgeW91IHdhbnQgdG8gaW5zdGFsbCBpdCBpbiB+Ly5sb2NhbC9iaW4sIGp1c3QgdHlwZToKcGlw
IGluc3RhbGwgdG9vdAoKVGhpcyBhbHNvIHdvcmtzIGFuZCB0aGVyZSBpcyBubyBuZWVkIHRvIHVw
Z3JhZGUgQmVhdXRpZnVsU291cCwgdGhlIG91dHB1dCBvZgoicGlwIGluc3RhbGwgdG9vdCIgc2F5
cyB0aGF0IGFsbCByZXF1aXJlbWVudHMgYXJlIGFscmVhZHkgc2F0aXNmaWVkIGluY2x1ZGluZwpC
ZWF1dGlmdWxzb3VwIChyZXF1aXJlZCB2ZXJzaW9uIGJ5IHBpcDogYXQgbGVhc3QgNC41LjAsIGlu
c3RhbGxlZCA0LjEwLjAuCgpUaGVyZSBpcyBubyBuZWVkIHRvIGluc3RhbGwgcGlwZW52IGluIFNp
bnQgMTUuMCBhcmUgcGlwIGlzIGVub3VnaCB0byBnZXQKcGFja2FnZXMgbm90IGF2YWlsYWJsZSB0
aHJvdWdoIHNsYXB0LWdldCBvciBzbGFwdC1zcmMuCgpJIGp1c3QgcmVhbGl6ZWQgdGhhdCBzcGkg
bmVlZHMgYSByZWJ1aWxkIGZvciBTbGludCAxNS4wLCBtZWFud2hpbGUgeW91IGNhbiBqdXN0CnVz
ZSBzbGFwdC1nZXQgYW5kIHNsYXB0LXNyYyBkaXJlY3RseS4KCkJhY2sgb24gdG9waWM6IGFib3V0
IFBsZXJvbWEgSSBoYXZlIG5vIGNsdWUsIG5vdCBldmVuIGtub3dpbmcgd2hhdCBpdCBpcywgc29y
cnkuCgpDaGVlcnMsCkRpZGllcgotLSAKRGlkaWVyIFNwYWllcgpTbGludCBtYWludGFpbmVyCmRp
ZGllcmF0c2xpbnRkb3RmcgoKTGUgMjYvMTEvMjAyMiDDoCAxNDo1NSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEkgZmlyc3QgZ290IHBpcGVudiBpbnN0
YWxsZWQgdXNpbmcgcGlwMy45IG9uIHNsaW50IHRoZW4gaW5zdGFsbGVkIHRvb3QuCj4gVG8gcnVu
IHRvb3QsIEkgZG8gcGlwZW52IHNoZWxsIGZpcnN0IHRoZW4gcnVuIHRvb3QuICBJIGhhdmVuJ3Qg
am9pbmVkCj4gbWFzdG9kb24geWV0IEkgbmVlZCB0byBmaWd1cmUgdGhhdCBvdXQuICBOZWFyZXN0
IHNlcnZlciB0byBtZSBhcHBlYXJzIHRvCj4gYmUgY2hlZXNlYnVyZ2VyLnNvY2lhbCBidXQgSSBo
YXZlIHRvIHJlc2VhcmNoIHRoYXQgc2VydmVyLiAgV2hhdCBJIGRvbid0Cj4ga25vdyBhbmQgbWF5
YmUgaXQgaXMgcG9zc2libGUgaXMgaG93IHRvIGNvbmZpZ3VyZSB0b290IHNvIGl0IGFsc28gZ2V0
cwo+IGFjY2VzcyBpbnRvIHBsdXJvbWEgYXMgd2VsbC4KPiBJIHVzZWQgcGlwZW52IGluc3RhbGwg
dG9vdCB0byBpbnN0YWxsIHRvb3QuICBJIGNvdWxkbid0IGRvIGl0IHdpdGggc3BpIG9uCj4gc2xp
bnQgc2luY2UgaXQgbmVlZGVkIHBhY2thZ2VzIHNsaW50IGhhc24ndCB5ZXQgZ290IGFuZCBhIHZl
cnNpb24gb2YKPiBiZWF1dGlmdWxzb3VwIHdoaWNoIGlzIG9sZCBvbiBzbGludC4KPiAKPgoKCj4g
SnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRv
IGJlIHVzZWQgaW4KPiBkZWZlbnNlIG9mIGxpYmVydHk6Cj4gIHNvYXAsIGJhbGxvdCwganVyeSwg
YW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdCBvcmRlci4iCj4gLUVkIEhvd2RlcnNoZWx0IChB
dXRob3IsIDE5NDApCj4gCj4gLgo+IAo+IE9uIFNhdCwgMjYgTm92IDIwMjIsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gCj4+IE9oIGl0IHNvdW5kcyBsaWtlIHlv
dSB3YW50IHNvbWV0aGluZyBsaWtlIGFuIGFwcCByYXRoZXIgdGhhbiBhIHdlYiBmcm9udCBlbmQK
Pj4gZm9yIGEgc2VydmVyLiBTb3JyeSBJIG1pc3VuZGVyc3Rvb2QgeW91ciBxdWVzdGlvbi4gUGxl
cm9tYSBhcyBJIHJlY2FsbCBjYW4gdXNlCj4+IGFueXRoaW5nIHRoYXQgTWFzdG9kb24gY2FuIHVz
ZSBhcyBhIGNsaWVudC4gVGhhdCBzYWlkLCBkZXNrdG9wIGNsaWVudHMgZm9yCj4+IHRoZXNlIHRo
aW5ncyB0ZW5kIHRvIGJlIGhhcmRlciB0byBmaW5kLiBJdCBhcHBlYXJzIHRvIGJlIGVhc2llciB0
byBmaW5kIHBob25lCj4+IGFwcHMuIE9uIGEgZGVza3RvcCwgeW91ciBiZXN0IGJldCBtYXkgYmUg
dGhlIHdlYnNpdGUgb2YgdGhlIHNlcnZlciB5b3Ugam9pbi4KPj4gTW9zdCBwaG9uZSBhcHBzLCBh
dCBsZWFzdCBvbiBBbmRyb2lkLCBhcHBlYXIgdG8gd29yayB3aXRoIFRhbGtiYWNrIHByZXR0eQo+
PiB3ZWxsLCB0aG91Z2ggaXQncyB3b3J0aCBub3RpbmcgdGhhdCBhbHRob3VnaCBJIHJ1biBteSBv
d24gRnJpZW5kaWNhIHNlcnZlciwKPj4gd2hpY2ggZG9lcyBoYXZlIE1hc3RvZG9uL1BsZXJvbWEg
Y29tcGF0aWJpbGl0eSwgSSBoYXZlbid0IHRyaWVkIGEgbG90IG9mIHRoZQo+PiBBbmRyb2lkIGFw
cHMganVzdCB5ZXQsIGFzIEkgZmluZCB0aGF0IHRoZSB3ZWJzaXRlIHNlcnZlcyBteSBuZWVkcyB3
ZWxsIGVub3VnaAo+PiBoZXJlLCBidXQgb2YgY291cnNlIHlvdXIgbWlsZWFnZSBtYXkgdmFyeSwg
ZXNwZWNpYWxseSBpZiB5b3UncmUgdHJ5aW5nIHRvIGpvaW4KPj4gYSBQbGVyb21hIHNlcnZlciwg
d2hpY2ggY2FuIGhhdmUgYW55IG51bWJlciBvZiBmcm9udC1lbmQgd2ViIHNlcnZpY2VzLiBJIHN0
aWxsCj4+IHJlY29tbWVuZCB0cnlpbmcgdGhlIHZhcmlvdXMgY2xpZW50cyB5b3Ugc2VlLCBhbmQg
bG9vayBhdCB0aGUgY2xpZW50IGxpc3QgZm9yCj4+IE1hc3RvZG9uIGFzIHdlbGwsIHNpbmNlIHRo
ZSBBUEkncyB0aGF0IGNsaWVudHMgdXNlIGFyZSBzYWlkIHRvIGJlIHRoZSBzYW1lIGZvcgo+PiBi
b3RoLgo+Pgo+PiB+S3lsZQo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4+Cj4+Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

