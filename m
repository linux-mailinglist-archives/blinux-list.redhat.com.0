Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B886B465A9A
	for <lists+blinux-list@lfdr.de>; Thu,  2 Dec 2021 01:21:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638404464;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DAUWlhzDMJk59KMlT/tlg2E+bD8jJZPqrBwemiaVZiA=;
	b=JOArsE+vCs61DDYTIvrbGYbZIZvOq0L83PwxqlL6rD1xM6OgU8uK7Mk1GUyjYIbdPO+dT8
	V04oIHYks96XkbIisG7yZ6Bgps14UKSphGvslk7URbET7ozjjJjchMb4Y/Pu8LTCxHGu9i
	ZJVtpdD8gPFdEBBE4TJVNGlHQDo+iwI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-496-TU_ZSsMeNrS9mq9oAi8pWA-1; Wed, 01 Dec 2021 19:21:01 -0500
X-MC-Unique: TU_ZSsMeNrS9mq9oAi8pWA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5C29F802925;
	Thu,  2 Dec 2021 00:20:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 437AB19C46;
	Thu,  2 Dec 2021 00:20:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5DFCF1809C89;
	Thu,  2 Dec 2021 00:20:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B20Kp3B021165 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Dec 2021 19:20:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id AED29401E3C; Thu,  2 Dec 2021 00:20:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AB48A401E2F
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 00:20:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9298885A5BA
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 00:20:51 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-602-_ea6Xhv3PYOD0A-m8nMTjA-1;
	Wed, 01 Dec 2021 19:20:50 -0500
X-MC-Unique: _ea6Xhv3PYOD0A-m8nMTjA-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id D2483A3ED8
	for <blinux-list@redhat.com>; Wed,  1 Dec 2021 23:20:06 +0100 (CET)
Message-ID: <2d99f717-6260-5970-f76a-2d81995a6908@slint.fr>
Date: Thu, 2 Dec 2021 02:20:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: My qemu error
To: blinux-list@redhat.com
References: <14705b4c-bcf3-0b86-d90c-ad11da3ddc1a@gmail.com>
	<a4dfb37b-cf9e-ecad-bf05-cf6e0a0d3774@slint.fr>
	<478b6e46-5ca1-266a-695b-6f8119e207fa@slint.fr>
	<cc6c7abc-5b3e-5d19-2b20-e50f9409b703@gmail.com>
	<d4606e82-681f-875a-1f78-ff501d38bfcb@slint.fr>
	<fde2378c-88a7-b921-6835-7940f1a495d9@gmail.com>
In-Reply-To: <fde2378c-88a7-b921-6835-7940f1a495d9@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1B20Kp3B021165
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

SGkgSWJyYWhpbSwKCnRoaXMgaXMgdGhlIHNjcmlwdCBJIHVzZSB0byBydW4gV2luZG93cy0xMC8x
MSBpbiBhIFFlbXUgVk06CgpxZW11LXN5c3RlbS14ODZfNjQgXAotY3B1IGhvc3QgXAotZW5hYmxl
LWt2bSBcCi1zbXAgJChucHJvYykgXAotbSA0RyBcCi1rIGZyIFwKLWJvb3Qgb3JkZXI9YyBcCi1i
b290IG1lbnU9b24gXAotZGV2aWNlIGludGVsLWhkYSBcCi1kZXZpY2UgaGRhLWR1cGxleCBcCi1k
aXNwbGF5IGd0ayBcCi12Z2Egc3RkIFwKLWRldmljZSB1c2ItZWhjaSxpZD1laGNpICBcCi1kcml2
ZSBmaWxlPX4vcWVtdS93aW5kb3dzLnFjb3cyLGZvcm1hdD1xY293MixtZWRpYT1kaXNrCgpObyBp
ZGVhIGlmIGl0IHdpbGwgaGF2ZSBzb3VuZCBpbiBGZWRvcmEsIHRob3VnaC4KCkNoZWVycywKRGlk
aWVyCgpMZSAwMS8xMi8yMDIxIMOgIDEwOjU0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIGEgw6ljcml0wqA6Cj4gSGkgRGlkaWVyLAo+IAo+IAo+IFRoZXJlIHdlcmUgc29tZSBw
YWNrYWdlcyBtaXNzaW5nLCB3aGljaCBJIGhhdmUgbm93IGluc3RhbGxlZC4gSSAKPiBpbnN0YWxs
ZWQgcWVtdS1rdm0sIHZpcnQtbWFuYWdlciBhbmQgdmlydC12aWV3ZXIsIHdoaWNoIGRpZG4ndCBp
bnN0YWxsIAo+IGFsb25nIHdpdGggdGhlIG1haW4gcWVtdSBwYWNrYWdlLgo+IAo+IAo+IEkgYW0g
c3RpbGwgaGF2aW5nIGlzc3VlcyB3aXRoIHRoZSBzb3VuZCB0aGluZyBob3dldmVyLiBJIGFtIGhl
c2l0YW50IHRvIAo+IHRyeSBhbmQgZml4IHRoZSBzY3JpcHQgbXlzZWxmLgo+IAo+IAo+IFdhcm0g
cmVnYXJkcywKPiAKPiBCcmFuZHQgU3RlZW5rYW1wCj4gCj4gU2VudCBmcm9tIHRoZSBGZWRvcmEg
bWFjaGluZSwgdXNpbmcgVGh1bmRlcmJpcmQKPiAKPiBPbiAyMDIxLzExLzMwIDIzOjEyLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBIbyBCcmFuZHQsCj4+Cj4+
IFRoaXMgZG9lcyB0ZWxsIGlmIHRoZSBzdXBwb3J0IGZvciBLVk0gaXMgcHJvcGVybHkgY29uZmln
dXJlZCBpbiB0aGlzIAo+PiBrZXJuZWwuCj4+Cj4+IHRvIGNoZWNrLCB5b3UgY2FuIGRvIHRoaXM6
Cj4+Cj4+IGNwIC9wcm9jL2NvbmZpZy5neiAvdG1wCj4+IGNkIC90bXAKPj4gZ3VuemlwIGNvbmZp
Zy5nego+PiB5b3Ugd2lsbCBnZXQgYSBmaWxlIG5hbWVkIGNvbmZpZyB3aXRoIGNvbmZpZ3VyYXRp
b24gc2V0dGluZ3Mgb2YgdGhlIAo+PiBrZXJuZWwKPj4KPj4gWW91IGNhbiBkbyB0aGUgc2FtZSB3
aXRoIFNsaW50IGFuZCBjb21wYXJlLgo+Pgo+PiBBbmQvb3IgdXNlIGEgRmVkb3JhIHN1cHBvcnQg
Y2hhbm5lbC4KPj4KPj4gQ2hlZXJzLAo+Pgo+PiBEaWRpZXIKPj4KPj4KPj4gTGUgMzAvMTEvMjAy
MSDDoCAyMTo0MywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKg
Ogo+Pj4gQXMgSSBzdGF0ZWQsIEknbSBydW5uaW5nIEZlZG9yYSBNYXRlIENvbXBpeiAzNSBhdCB0
aGUgbW9tZW50LCBhbmQKPj4+Cj4+PiAkdW5hbWUgLXIKPj4+Cj4+PiBnaXZlcyBtZSB0aGUgZm9s
bG93aW5nLgo+Pj4KPj4+IDUuMTUuNS0yMDAuZmMzNS54ODZfNjQKPj4+Cj4+Pgo+Pj4gV2FybSBy
ZWdhcmRzLAo+Pj4KPj4+IEJyYW5kdCBTdGVlbmthbXAKPj4+Cj4+PiBTZW50IGZyb20gdGhlIEZl
ZG9yYSBtYWNoaW5lLCB1c2luZyBUaHVuZGVyYmlyZAo+Pj4KPj4+IE9uIDIwMjEvMTEvMzAgMjA6
MDMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4gUFMgaW5z
dGVhZCBvZjoKPj4+PiAvYm9vdC9jb25maWctZ2VuZXJpYy01LjE0LjEzCj4+Pj4gcGxlYXNlIHJl
YWQ6Cj4+Pj4gL2Jvb3QvY29uZmlnLWdlbmVyaWMtNS4xMy4xMwo+Pj4+Cj4+Pj4gT1QgQm90aCB0
aGUgNS4xMyBhbmQgNS4xNCBoYXZlIGJlZW4gZGVjbGFyZWQgRW5kIG9mIExpZmUsIEkgd2lsbCAK
Pj4+PiBwcm92aWRlIGEKPj4+PiA1LjE1Lnogd2hlbiBJIHdpbGwgdGhpbmsgdGhpcyBicmFuY2gg
aXMgc3RhYmxlIGVub3VnaC4KPj4+Pgo+Pj4+IERpZGllcgo+Pj4+Cj4+Pj4gTGUgMzAvMTEvMjAy
MSDDoCAxODo0OSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKg
Ogo+Pj4+PiBIaSBCcmFuZHQsCj4+Pj4+IGFuc3dlcnMgaW5saW5lCj4+Pj4+Cj4+Pj4+IExlIDMw
LzExLzIwMjEgw6AgMTM6NTUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDD
qWNyaXTCoDoKPj4+Pj4+IHFlbXUtc3lzdGVtLXg4Nl82NDogd2FybmluZzogJy1zb3VuZGh3IGhk
YScgaXMgZGVwcmVjYXRlZCwgcGxlYXNlIAo+Pj4+Pj4gdXNlICctZGV2aWNlIGludGVsLWhkYSAt
ZGV2aWNlIGhkYS1kdXBsZXgnIGluc3RlYWQKPj4+Pj4+IGF1ZGlvOiBEZXZpY2UgaGRhOiBhdWRp
b2RldiBkZWZhdWx0IHBhcmFtZXRlciBpcyBkZXByZWNhdGVkLCAKPj4+Pj4+IHBsZWFzZSBzcGVj
aWZ5IGF1ZGlvZGV2PXBhCj4+Pj4+PiBhdWRpbzogRGV2aWNlIGhkYTogYXVkaW9kZXYgZGVmYXVs
dCBwYXJhbWV0ZXIgaXMgZGVwcmVjYXRlZCwgCj4+Pj4+PiBwbGVhc2Ugc3BlY2lmeSBhdWRpb2Rl
dj1wYQo+Pj4+Pj4KPj4+Pj4gSW4gdGhlIGNvbW1hbmQgcmVtb3ZlCj4+Pj4+IC1zb3VuZGh3IGhk
YQo+Pj4+PiB3aGljaCBpcyByZWR1bmRhbnQgd2l0aAo+Pj4+PiAtZGV2aWNlIGludGVsLWhkYSAt
ZGV2aWNlIGhkYS1kdXBsZXgKPj4+Pj4gYW5kIHByb2JhbHkgcmVwY2FjZQo+Pj4+PiAtLWF1ZGlv
ZGV2IHBhCj4+Pj4+IGJ5Ogo+Pj4+PiAtLWF1ZGlvZGV2PXBhaG93ZXZlciwgbWF5YmUgdGhpcyB3
aG9sZSBzdHVmZiBpcyBub3QgCj4+Pj4+IG5lY2Vzc2FyeTotYXVkaW9kZXYgcGEsaWQ9cGEsb3V0
Lm1peGluZy1lbmdpbmU9b2ZmLG91dC5sYXRlbmN5PTIwMDAwCj4+Pj4+IEkgZG9uJ3QgaGF2ZSBp
dC4KPj4+Pj4KPj4+Pj4gwqA+wqAga25vdyBpdCBkb2VzIHdvcmsgdW5kZXIgU2xpbnQsIGJ1dCBu
b3QgdW5kZXIgRmVkb3JhLCBBcmNoIG9yIAo+Pj4+PiBVYnVudHUuCj4+Pj4+Cj4+Pj4+IE1heWJl
IHRoZSBrZXJuZWwgeW91IGFyZSBydW5uaW5nIGluIEZlZG9yYSwgQXJjaCBvciBVYnVudHUgZG9l
cyBub3QgCj4+Pj4+IGhhdmUgYQo+Pj4+PiBwcm9wZXIgY29uZmlndXJhdGlvbiBmb3IgS1ZNLCBy
ZWFkOgo+Pj4+PiBodHRwczovL3d3dy5saW51eC1rdm0ub3JnL3BhZ2UvVHVuaW5nX0tlcm5lbAo+
Pj4+Pgo+Pj4+PiBJbiBTbGludCB0aGUga2VybmVsIGNvbmZpZ3VyYXRpb24gaXMgZm91bmQgaW4g
b25lIG9mIHRoZXNlIGZpbGVzOgo+Pj4+PiAvYm9vdC9jb25maWctZ2VuZXJpYy01LjE0LjE0Lng2
NAo+Pj4+PiAvYm9vdC9jb25maWctZ2VuZXJpYy01LjE0LjEzCj4+Pj4+IFRoZXNlIGNvbW1hbmRz
Ogo+Pj4+PiBjYXQgL3Byb2MvY21kbGluZQo+Pj4+PiB1bmFtZSAtcgo+Pj4+PiB0ZWxsIHlvdSB3
aGljaCBrZXJuZWwgaXMgcnVubmluZywgc28geW91IGtub3cgaG93IGl0IGlzIGNvbmZpZ3VyZWQu
Cj4+Pj4+Cj4+Pj4+IEFsc28sIHRoZXJlIGNvdWxkIGJlIGFuIGlzc3VlIHdpdGggeW91ciBxZW11
IHZlcnNpb24uCj4+Pj4+Cj4+Pj4+IEluIFNsaW50IGF0IHRpbWUgb2Ygd3JpdGluZzoKPj4+Pj4g
ZGFuY2Vbfl0kIHFlbXUtc3lzdGVtLXg4Nl82NCAtLXZlcnNpb24KPj4+Pj4gUUVNVSBlbXVsYXRv
ciB2ZXJzaW9uIDYuMC4wCj4+Pj4+IENvcHlyaWdodCAoYykgMjAwMy0yMDIxIEZhYnJpY2UgQmVs
bGFyZCBhbmQgdGhlIFFFTVUgUHJvamVjdCAKPj4+Pj4gZGV2ZWxvcGVycwo+Pj4+Pgo+Pj4+PiBD
aGVlcnMsCj4+Pj4+IERpZGllcgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQu
Y29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3Q=

