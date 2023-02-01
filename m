Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F699686F0C
	for <lists+blinux-list@lfdr.de>; Wed,  1 Feb 2023 20:42:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675280562;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/WOzExW8A1ERB1+joekWsG6O33c+Wp4xklv/bT0qcQg=;
	b=Jrd+qqtIm0uQXOXmIqztlT5qCjxFa548ASMPv+Qp+cmXruGTNi4CazB8EYad6co2SFYKzh
	Xwzn1cSyfq5NRN4mnaUt0bY6SLs5jywoUx240imbFClkOwCPK2wvwiSNx/KInOdndxpLPT
	02rxoWRTDu+nsqEYcKrLv8AQYv/EEw4=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-410-1J-VpqBsP--0BqbWWQWCiA-1; Wed, 01 Feb 2023 14:42:39 -0500
X-MC-Unique: 1J-VpqBsP--0BqbWWQWCiA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 44557802C18;
	Wed,  1 Feb 2023 19:42:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1D409492B05;
	Wed,  1 Feb 2023 19:42:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8804819465B7;
	Wed,  1 Feb 2023 19:42:36 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Feb 2023 12:42:24 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: Attempting to boot Jenux in a vm.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.3614.1675274580.8173.blinux-list@redhat.com>
 <mailman.3890.1675275574.8169.blinux-list@redhat.com>
 <mailman.3798.1675276956.8172.blinux-list@redhat.com>
 <mailman.3805.1675280413.8172.blinux-list@redhat.com>
In-Reply-To: <mailman.3805.1675280413.8172.blinux-list@redhat.com>
Message-ID: <mailman.3909.1675280555.8175.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSB0aG91Z2h0IGFib3V0IHRoYXQsIHdoaWNoIGlzIHdoeSBJIGNoYW5nZWQgaXQgdG8gc3BlY2lm
eSwgYW5kIGNob3NlIGEgCmNhcmQgZnJvbSB0aGUgbGlzdCB0aGF0IEkga25ldyB3b3JrZWQuwqAg
U2xpbnQgYWxzbyBnaXZlcyBtZSBubyBzcGVlY2gsIAooSSBqdXN0IHdhbnRlZCB0byB0cnkpLCBi
dXQgQWNjZXNzaWJsZSBjb2NvbnV0IGRvZXMuCgpNaWtlLgoKCk9uIDIvMS8yMDIzIDEyOjQwIFBN
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IENoZWNrIHdoYXQg
dGhlIHZtIHVuZGVyc3RhbmRzIGFzIHlvdXIgaG9zdCBzb3VuZCBjYXJkLiAgSXQgbWF5IGRpZmZl
ciBmcm9tCj4gd2hhdCB5b3UgZXhwZWN0IGFuZCB0aGUgdm0gbmVlZHMgdG8gaGF2ZSBpdCBzZXQg
dW5tdXRlZC4KPgo+Cj4KPiBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29tPiAiVGhlcmUg
YXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbgo+IGRlZmVuc2Ugb2YgbGliZXJ0eToKPiAgIHNv
YXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdCBvcmRlci4iCj4g
LUVkIEhvd2RlcnNoZWx0IChBdXRob3IsIDE5NDApCj4KPiAuCj4KPiBPbiBXZWQsIDEgRmViIDIw
MjMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4KPj4gRG8geW91
IG1lYW4gd2hlbiBtYWtpbmcgdGhlIHZtP8KgIEkgdG9sZCBpdCB0byB1c2UgdGhlIGhvc3Qgc291
bmQgY2FyZCwgYW5kIEkKPj4gYWxzbyB0cmllZCBjaGFuZ2luZyBpdCBmcm9tIHRoZSBzZXR0aW5n
cy7CoCBPciBkbyB5b3UgbWVhbiBzb21ldGhpbmcgZWxzZT/CoCBBbnkKPj4gb3RoZXIgdm1zIEkg
aGF2ZSBjb21lIHVwIHdpdGggc291bmQgYWxyZWFkeS4KPj4KPj4gTWlrZS4KPj4KPj4KPj4gT24g
Mi8xLzIwMjMgMTE6MTkgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4+PiBEaWQgeW91IHByb3Zpc2lvbiB5b3VyIHZtIGZvciBzb3VuZD8gIElmIHRoaXMgaXMg
dGhlIGZpcnN0IGRpc3RybyB5b3UKPj4+IHRyaWVkIHRoaXMgd2F5IHRoYXQgbWF5IG5lZWQgZG9p
bmcuCj4+Pgo+Pj4KPj4+Cj4+PiBKdWRlIDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29tPiAiVGhl
cmUgYXJlIGZvdXIgYm94ZXMgdG8gYmUgdXNlZCBpbgo+Pj4gZGVmZW5zZSBvZiBsaWJlcnR5Ogo+
Pj4gICAgc29hcCwgYmFsbG90LCBqdXJ5LCBhbmQgYW1tby4gUGxlYXNlIHVzZSBpbiB0aGF0IG9y
ZGVyLiIKPj4+IC1FZCBIb3dkZXJzaGVsdCAoQXV0aG9yLCAxOTQwKQo+Pj4KPj4+IC4KPj4+Cj4+
PiBPbiBXZWQsIDEgRmViIDIwMjMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4+Pgo+Pj4+IEhleSBhbGwsCj4+Pj4KPj4+PiBKdXN0IHB1bGxlZCBkb3duIHRoZSBs
YXRlc3QgSmVudXggdG8gZ2l2ZSBpdCBhIHRyeSwgYnV0IGZvciBzb21lIHJlYXNvbiBJCj4+Pj4g
Y2Fubm90IGdldCBhbnkgc3BlZWNoIG91dCBvZiBpdC7CoCBJIGhlYXIgdGhlIGJlZXBzIHdoZW4g
dGhlIFZNIGJvb3RzIHVwLCBJCj4+Pj4gY2FuCj4+Pj4gb2NyIHdpdGggbnZkYSBhbmQgc2VlIHNl
bGYtdGVzdCByZXF1ZXN0ZWQsIHBsZWFzZSB3YWl0LCBhbmQgYWZ0ZXIgYSB3aGlsZQo+Pj4+IHRo
ZQo+Pj4+IG1lbnUgY29tZXMgdXAuwqAgSSBjYW4gYWxzbyBzZWUgdGhhdCB0aHJvdWdoIG9jciwg
YnV0IEkgZ2V0IG5vIHNwZWVjaCB3aGVuCj4+Pj4gaW5zaWRlIHRoZSB2bS4gSSd2ZSBjaGVja2Vk
IHRvIG1ha2Ugc3VyZSB0aGUgc291bmQgY2FyZHMgYXJlIGNvcnJlY3QsCj4+Pj4gYW55b25lCj4+
Pj4gaGF2ZSBhbnl0aGluZyBlbHNlIEkgY2FuIHRyeT/CoCBJJ20gbm90IGZpbmRpbmcgYW55IGRv
Y3VtZW50YXRpb24gYW55d2hlcmUsCj4+Pj4gd2hpY2ggaXMgd2h5IEknbSBhc2tpbmcgaGVyZS4K
Pj4+Pgo+Pj4+IE1pa2UuCj4+Pj4KPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4KPj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

