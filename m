Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E7A75DCD4
	for <lists+blinux-list@lfdr.de>; Sat, 22 Jul 2023 16:05:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1690034727;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zOH39tr4+/P91Yms7MPkhzFj+M/YNV8VUfWFNjKrcko=;
	b=VIj1aBpMteB9yZKOXUacnhmeZRmyjfyIlESIg5x21686BTwcCcp/YCbRVHftM5Uz0jZ1YY
	sEbAnGyiI8Zbzyz8M1yK/t0GQVJpvaU5p3lmDufyqYKhbNxa72+0fm4VSluDK7FhZdoxYE
	/7ZJCBpvZ/zfPlugSCat3AEpnZ5stdk=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-215-IoC2LDUZNSeM9d8UXh-8fA-1; Sat, 22 Jul 2023 10:05:23 -0400
X-MC-Unique: IoC2LDUZNSeM9d8UXh-8fA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3447C2A59547;
	Sat, 22 Jul 2023 14:05:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5E509200BA8B;
	Sat, 22 Jul 2023 14:05:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C80EC19452CD;
	Sat, 22 Jul 2023 14:05:13 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 22 Jul 2023 14:04:53 +0000
To: blinux-list@redhat.com
Subject: Re: Fedora
In-Reply-To: <mailman.2072.1689975974.687811.blinux-list@redhat.com>
References: <mailman.1180.1689778383.687817.blinux-list@redhat.com>
 <mailman.1918.1689956956.687812.blinux-list@redhat.com>
 <mailman.1941.1689957918.687819.blinux-list@redhat.com>
 <mailman.1923.1689958082.687812.blinux-list@redhat.com>
 <mailman.2021.1689958710.687818.blinux-list@redhat.com>
 <mailman.1930.1689958957.687812.blinux-list@redhat.com>
 <mailman.2024.1689959176.687818.blinux-list@redhat.com>
 <mailman.2035.1689961781.687811.blinux-list@redhat.com>
 <mailman.1751.1689962149.687817.blinux-list@redhat.com>
 <mailman.2072.1689975974.687811.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.23.1690034713.3172878.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpmb3IgdGhlIHZvaWNlIHBpdGNoIHByb2JsZW0sIGdvIHRvIE9yY2Egc2V0dGluZ3MsIHNl
bGVjdCB0aGUgdm9pY2UgdGFiIAphbmQgc2V0IHRoZSBzcGVlY2ggc3ludGhlc2lzZXIgdG8gZXNw
ZWFrLW5nLgoKCkJlc3QgcmVnYXJkcwoKClJhc3Rpc2xhdgoKCkTFiGEgMjEuIDcuIDIwMjMgbyAy
Mzo0NiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIG5hcMOtc2FsKGEpOgo+IE5v
dyB0aGF0IGkgaGF2ZSBGZWRvcmEgaW5zdGFsbGVkIGkgaGF2ZSBhIGNvdXBsZSBvZiBxdWVzdGlv
bnMuCj4KPiB3aGVuIGkgdHVybiBvbiBjb21wdXRlciBpdCBkb2VzIHJlYWQgYXQgdGhlIGxvZ2lu
IHNjcmVlbiwgaG93ZXZlciB3aGVuCj4gacKgIGFtIGxvZ2dlZCBpbiBpdCBpcyBub3QgdHVybmlu
ZyBvbiBhdXRvbWF0aWNhbGx5LsKgIEkgaGF2ZSB0byBkbyBhbHQgRjIKPiBhbmQgdGhlbiB0eXBl
IGluIG9yY2EgZXZlcnl0aW1lIGkgbG9nIGluLgo+Cj4gaSB3ZW50IHRocm91Z2ggdGhlIHNldHRp
bmdzIGhvd2V2ZXIgaSBhbSBvdmVybG9va2luZyBzb21ldGhpbmcuCj4KPiB3aGVuIGl0IHJlYWRz
wqAgc2F5IGZvciBleGFtcGxlIHRoZSBpY29ucyBvbiB0aGUgZGVza3RvcMKgIGxpa2UgdGhlIHRy
YXNoCj4gaWNvbiwgaXQgcmVhZHMgdGhlIHdvcmQgdHJhc2ggaW4gYSBub3JtYWwgdm9pY2UgYnV0
IGl0IHNheXMgdGhlIHdvcmQKPiBpY29uIGluIGEgdmVyeSBoaWdoIHBpdGNoIHZvaWNlLgo+Cj4g
aG93IGNhbiBpIGNoYW5nZSB0aGF0wqAgaGlnaCBwaXRjaCBpcyBhbm5veWluZy4KPgo+IHJvZG5l
eQo+Cj4gT24gNy8yMS8yMDIzIDEyOjU1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgo+PiBEZXZpbiwKPj4KPj4gSSBhbSBpbiB0aGUgcHJvY2VzcyBvZiBpbnN0YWxs
aW5nIGl0IG5vdy4gU28gb25jZSBpdCBpcyBpbnN0YWxsZWQgaQo+PiBndWVzcyBpIHdpbGzCoMKg
IGdldCBvcmNhIG9uIGFuZCBob2VmdWxseSB3aXRoIG5vIGlzc3Vlcy4KPj4KPj4gcm9kbmV5Cj4+
Cj4+Cj4+IE9uIDcvMjEvMjAyMyAxMjo0OSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPj4+IE5vdCB0aGF0IEkgY2FuIHJlbWVtYmVyLiBJZiBBbHQgKyBXaW5kb3dz
ICsgUyBvciBBbHQgKyBXaW5kb3dzICsgTwo+Pj4gZG9lc24ndAo+Pj4gd29yaywgaGl0IEFsdCAr
IEYyLCB0eXBlIG9yY2EsIGFuZCBwcmVzcyBFbnRlci4KPj4+IERldmluIFByYXRlcgo+Pj4gci5k
LnQucHJhdGVyQGdtYWlsLmNvbQo+Pj4KPj4+Cj4+Pgo+Pj4KPj4+IE9uIEZyaSwgSnVsIDIxLCAy
MDIzIGF0IDEyOjA24oCvUE0gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Cj4+
PiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+Cj4+Pj4gRGV2aW4KPj4+Pgo+Pj4+
IHRoYW5rcywgaSBhbSBhc3N1bWluZyB5b3UgZGlkIG5vdCBoYXZlIGFueSBpc3N1ZXMgZ2V0dGlu
ZyBPcmNhIHRvIHR1cm4KPj4+PiBvbiBhZnRlciB0aGUgaW5zdGFsbGF0aW9uPwo+Pj4+Cj4+Pj4g
Um9kbmV5Cj4+Pj4KPj4+Pgo+Pj4+IE9uIDcvMjEvMjAyMyAxMjowMSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4gVGhlIG1hdGUgaW1hZ2UgdXNlcyB0aGUg
TWF0ZSBkZXNrdG9wLiBJdCB3b3JrZWQgbGFzdCB0aW1lIEkgdHJpZWQgaXQKPj4+Pj4gRGV2aW4g
UHJhdGVyCj4+Pj4+IHIuZC50LnByYXRlckBnbWFpbC5jb20KPj4+Pj4KPj4+Pj4KPj4+Pj4KPj4+
Pj4KPj4+Pj4gT24gRnJpLCBKdWwgMjEsIDIwMjMgYXQgMTE6NTjigK9BTSBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDwKPj4+Pj4gYmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3Jv
dGU6Cj4+Pj4+Cj4+Pj4+PiBIYXMgYW55b25lIHVzZWQgdGhlIEZlZG9yYS1NQVRFX0NvbXBpei1M
aXZlLXg4Nl82NAo+Pj4+Pj4KPj4+Pj4+IHdpdGggT3JjYSB0aGF0IERpZGllcsKgwqAganVzdCBz
ZW50IG1lIGxpbmtzIHRvPwo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBhbHNvIGhvdyBhY2Nlc3NpYmxl
IGlzIHRoZcKgIEZlZG9yYSB3b3Jrc3RhdGlvbiAzOD8KPj4+Pj4+Cj4+Pj4+PiBJIGFtIHRoaW5r
aW5nIHRoYXQgaXQgdXNlcyB0aGUgR25vbWUgZGVza3RvcC4KPj4+Pj4+Cj4+Pj4+PiBJIGFtIG5v
dCB0aGF0IGZhbWlsaWFyIHdpdGggaG93IHRvIGdldCBhcm91bmQgaW4gZ25vbWUgc2luY2UgaQo+
Pj4+Pj4gaGF2ZSBub3QKPj4+Pj4+IHVzZWQgZ25vbWUgZGVza3RvcCBzaW5jZSBWaW51eC4KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

