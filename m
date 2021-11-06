Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BC7447069
	for <lists+blinux-list@lfdr.de>; Sat,  6 Nov 2021 21:27:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636230456;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=N2n3M1utuzLGgw01FtnFZzCS+ggDRQZbP/rhhuICjO8=;
	b=XBBAIZnn2SHoZxal/5oMOAUu5hgVRbkWmnPBhPmbHL28gtoxkfIdiv+lC+wleOo8jvC5xF
	8ouVwgeaSyoqozZhdFLyOkeWFAZlzYfsjlYToZozfT108JPtBAwefX+Q5UwOicqyayUYxv
	hW1Fjkouw3x+5Jt7E8S00CQPosZF8W0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-553-mxaNewl2NcyTJNUSnlRCVQ-1; Sat, 06 Nov 2021 16:27:33 -0400
X-MC-Unique: mxaNewl2NcyTJNUSnlRCVQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 29A5B802C88;
	Sat,  6 Nov 2021 20:27:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EDD9F3AA2;
	Sat,  6 Nov 2021 20:27:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 10C96181A1CF;
	Sat,  6 Nov 2021 20:27:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A6KRGuC026551 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 6 Nov 2021 16:27:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AEDFE51E3; Sat,  6 Nov 2021 20:27:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A873F51DD
	for <blinux-list@redhat.com>; Sat,  6 Nov 2021 20:27:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC67085A5B9
	for <blinux-list@redhat.com>; Sat,  6 Nov 2021 20:27:12 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-245-uPo2BoEfN2ajPLMRUN7Xcg-1;
	Sat, 06 Nov 2021 16:27:10 -0400
X-MC-Unique: uPo2BoEfN2ajPLMRUN7Xcg-1
Received: from [192.168.0.10] (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 4A4AEA1D12
	for <blinux-list@redhat.com>; Sat,  6 Nov 2021 19:26:35 +0100 (CET)
Message-ID: <001bf099-b3e1-f02c-6f09-c52e85ef128c@slint.fr>
Date: Sat, 6 Nov 2021 21:27:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.1
Subject: Re: How to get speech in a console session?
To: blinux-list@redhat.com
References: <CAN8Cudg02ZE3tr+k0AfNYg9ZuiAJMGHkdsQKYuBtKMB1j8Y2Kg@mail.gmail.com>
	<CAGJxbF6wY1vpn1xQs1YeMNuXt5Gc4+AD4KDmyrNOP0b4mDEcpg@mail.gmail.com>
	<CAN8CudjaRk2jZkoycQmYY4F96spmJq8wFwWwdawR432Ky-TY7Q@mail.gmail.com>
	<66A05B38-1ADB-4E9A-BA3D-D0CB26FA0D72@gmail.com>
	<CAN8CudjXSE2YiiRdw3nhc0L2dF24Xeex+7VpyHScmfS5Le46UA@mail.gmail.com>
In-Reply-To: <CAN8CudjXSE2YiiRdw3nhc0L2dF24Xeex+7VpyHScmfS5Le46UA@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1A6KRGuC026551
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgpzaG9ydCBhbnN3ZXI6IHRoaXMgZG9lcyBub3Qgd29yayBpbiBEZWJpYW4gb3V0IG9mIHRo
ZSBib3gsIHNvIG5lZWRzIGEKcG9zdC1pbnN0YWxsIGNvbmZpZ3VyYXRpb24gb2YgdGhlIHN5c3Rl
bS4KCkxvbmcgYW5zd2VyOgp0aGlzIHBvc3QgZnJvbSBTYW11ZWwgVGhpYmF1bHQgZXhwbGFpbnMg
d2h5OgpodHRwczovL2xpc3RzLmRlYmlhbi5vcmcvZGViaWFuLWFjY2Vzc2liaWxpdHkvMjAxNy8x
Mi9tc2cwMDA4OS5odG1sCgpJIGhhdmUgYWxzbyBwcm9wb3NlZCB0aGUgd2F5IHRoaXMgd29ya3Mg
aW4gU2xpbnQgaW4gdGhpcyBwb3N0OgpodHRwczovL2xpc3RzLmRlYmlhbi5vcmcvZGViaWFuLWFj
Y2Vzc2liaWxpdHkvMjAxOC8xMS9tc2cwMDAxMi5odG1sCgpCdXQgYXMgZmFyIGFzIEkga25vdyB0
aGVyZSBoYXMgYmVlbiBubyBjaGFuZ2UgaW4gRGViaWFuIHdydCB0aGlzIHNwZWNpZmljCmlzc3Vl
LCBzbyB5b3Ugd2lsbCBuZWVkIHRvIGVpdGhlciBwdXJnZSBQdWxzZUF1ZGlvIGZyb20gRGViaWFu
ICAocHJvYmFibHkgYXQKdGhlIHByaWNlIG9mIGxvb3Npbmcgc29tZSBmZWF0dXJlcyBsaWtlIGF1
ZGlvIHZpYSBibHVldG9vdGggaWYgSSByZW1lbWJlcgpjb3JyZWN0bHkpIG9yIHN0YXJ0IFB1bHNl
QXVkaW8gc3lzdGVtZSB3aWRlLCB3aGljaCBpcyBub3QgcmVjb21tZW5kZWQgYnkKdXBzdHJlYW0g
Zm9yIHNlY3VyaXR5IHJlYXNvbnMgdW5sZXNzIGluIHNwZWNpZmljIHVzZSBjYXNlcyBsaWtlIGFu
IGVtYmVkZGVkCnN5c3RlbS4gVGhlIHBvc3QgZnJvbSBTYW11ZWwgd2lsbCBnaXZlIHlvdSBhIG1v
cmUgaW4tZGVwdGggZXhwbGFuYXRpb24uCgpDaGVlcnMsCkRpZGllcgotLQpEaWRpZXIgU3BhaWVy
ClNsaW50IG1haW50YWluZXIKCgpMZSAwNi8xMS8yMDIxIMOgIDAxOjQ1LCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSSBkaWQgdXNlIHNwZWVjaCBpbiB0
aGUgaW5zdGFsbGVyLCBhbmQgT3JjYSBjYW1lIHVwIHJpZ2h0IGF3YXksIGJ1dAo+IHNwZWFrdXAg
ZGlkbid0IHdvcmsgd2hlbiBJIHNzd2l0Y2hlZCB0byBhIGNvbnNvbGUgc2Vzc2lvbi4KPiBJIHJl
YWQgdGhhdCB3aWtpIHBhZ2UsIGVkaXRlZCBteSAvZXRjL21vZHVsZXMgZmlsZSwgYW5kIHNwZWFr
dXAgc3RpbGwKPiB3b3VsZG4ndCB3b3JrLgo+IAo+IE9uIDExLzUvMjEsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+PiBI
aSwKPj4KPj4gRGViaWFuIGhhcyBhIGRldGFjYXRlZCBhY2Nlc3NpYmlsaXR5IHBhZ2UuICBUaGUg
d2lraSBwYWdlIGlzCj4+IHdpa2kuZGViaWFuLm9yZy9hY2Nlc3NpYmlsaXR5IDxodHRwOi8vd2lr
aS5kZWJpYW4ub3JnL2FjY2Vzc2liaWxpdHk+LiAgVGhpcwo+PiBoYXMgaW5mbyBvbiBob3cgdG8g
Z2V0IHNwZWVjaCBib3RoIGluIGEgdGV4dCBpbnRlcmZhY2UgYW5kIGEgR1VJLiAgQXMgYSBzaWRl
Cj4+IG5vdGUsIGlmIHlvdSB1c2Ugc3BlZWNoIHdpdGggdGhlIGluc3RhbGxlciwgZXZlcnl0aGlu
ZyB3aWxsIGJlIGVuYWJsZWQgSW4KPj4gdGhlIGluc3RhbGxlZCBzeXN0ZW0uCj4+Cj4+IE1hdHRo
ZXcKPj4KPj4KPj4KPj4+IE9uIE5vdiA1LCAyMDIxLCBhdCA0OjI4IFBNLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4+PiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6
Cj4+Pgo+Pj4gSSBhbHJlYWR5IGhhdmUgZXNwZWFrIGFuZCBlc3BlYWt1cCBpbnN0YWxsZWQuIEkg
dHJpZWQgcnVubmluZyBmZW5yaXIsCj4+PiBidXQgSSBnb3QgdGhlIGZvbGxvd2luZyBlcnJvcjoK
Pj4+IHBsYXkgV0FSTiBhbHNhOiBjYW4ndCBlbmNvZGUgMC1iaXQgVW5rbm93biBvciBub3QgYXBw
bGljYWJsZQo+Pj4KPj4+IE9uIDExLzUvMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Cj4+PiB3cm90ZToKPj4+PiBJZiB5b3Ugc3Rh
cnQgdGhlIGluc3RhbGwgbWVkaWEgYW5kIHByZXNzIHMgdGhlbiBlbnRlciwgeW91J2xsIGhhdmUK
Pj4+PiBzcGVlY2gKPj4+PiBkdXJpbmcgYW5kIGFmdGVyIGluc3RhbGwuCj4+Pj4gRGV2aW4gUHJh
dGVyCj4+Pj4gci5kLnQucHJhdGVyQGdtYWlsLmNvbQo+Pj4+Cj4+Pj4KPj4+Pgo+Pj4+Cj4+Pj4g
T24gRnJpLCBOb3YgNSwgMjAyMSBhdCAxMjozNyBQTSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIDwKPj4+PiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+Pgo+Pj4+
PiBTbyBJJ20gbmV3IHRvIExpbnV4LCBhbmQgSSdtIGdvaW5nIHRvIGJlIHRyeWluZyBpdCBvdXQg
Zm9yIGEgcGVyaW9kIG9mCj4+Pj4+IGFib3V0IGEgd2VlayBvciB0d28sIHRvIHNlZSBpZiBJIGNv
dWxkIHVzZSBpdCBhcyBhIGRhaWx5IGRyaXZlci4KPj4+Pj4gT25lIHRoaW5nIEknbSBub3Qgc3Vy
ZSBhYm91dCBpcyBob3cgdG8gZ2V0IFNwZWFrdXAgKHdpdGggZWl0aGVyCj4+Pj4+IEVzcGVha3Vw
IG9yIFNwZWVjaGQtVXApIHdvcmtpbmcuCj4+Pj4+IE15IGRpc3RyaWJ1dGlvbiBvZiBjaG9pY2Ug
aXMgRGViaWFuIDExLCBieSB0aGUgd2F5Lgo+Pj4+Pgo+Pj4+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Cj4+Pj4+Cj4+Pj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Cj4+
Pj4KPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4+Cj4+Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

