Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A004E3882DD
	for <lists+blinux-list@lfdr.de>; Wed, 19 May 2021 00:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621377964;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dFeRkmFOayO9tw6jX7Ab2h/3iblnlHEI6+IhBLSsRFo=;
	b=Ga5gTkjUzT+rKHuFcr4jjDPLGbmTOQLDAZUrIqFby0pOGvBoa1Ar3slvDrCC8hiaCqn9Xw
	RZXWRZxSOSGtKypjMb9EHgJRbNKUsY8hgSF/bxfk91BOyKMgCueK4qGz0DmaFY00pJmS9W
	2nT55AhRQbZUCmCbBGlHy9CcjgVEf0A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-476-rTELeY3yPQaj44jNzG1pcQ-1; Tue, 18 May 2021 18:46:02 -0400
X-MC-Unique: rTELeY3yPQaj44jNzG1pcQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7FBD71009464;
	Tue, 18 May 2021 22:45:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CBF625C230;
	Tue, 18 May 2021 22:45:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 99F4755352;
	Tue, 18 May 2021 22:45:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14IMgOa1008165 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 May 2021 18:42:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CBE9EFDCFC; Tue, 18 May 2021 22:42:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C62737C52
	for <blinux-list@redhat.com>; Tue, 18 May 2021 22:42:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2AD4B833942
	for <blinux-list@redhat.com>; Tue, 18 May 2021 22:42:22 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-325-PrBy0ArQNOuDH6yAk-B09Q-1; Tue, 18 May 2021 18:42:20 -0400
X-MC-Unique: PrBy0ArQNOuDH6yAk-B09Q-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Fl9x73j7lzV2D
	for <blinux-list@redhat.com>; Tue, 18 May 2021 18:42:19 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Fl9x72xdfzcbc; Tue, 18 May 2021 18:42:19 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Fl9x72c0zzcbW
	for <blinux-list@redhat.com>; Tue, 18 May 2021 18:42:19 -0400 (EDT)
Date: Tue, 18 May 2021 18:42:19 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A question about Fenrir on Arch linux
In-Reply-To: <ee7ede90-6c57-e658-cc6c-7a3b0c4da2d3@linux-a11y.org>
Message-ID: <alpine.NEB.2.23.451.2105181841580.4726@panix1.panix.com>
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
	<4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
	<a8000f0d-1831-4a35-c7c5-da79f853000c@linux-a11y.org>
	<43d3b1f6-a50a-2e99-a9b4-5a9a6026faf3@gmail.com>
	<9a7f1b78-1b65-774a-494a-d2c5bc2090f9@linux-a11y.org>
	<76d051a3-abec-5852-eab0-01930524a21c@gmail.com>
	<76c7f8a5-8161-ff55-c98c-092f895f4bd3@linux-a11y.org>
	<alpine.NEB.2.23.451.2105181809120.4726@panix1.panix.com>
	<ee7ede90-6c57-e658-cc6c-7a3b0c4da2d3@linux-a11y.org>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 14IMgOa1008165
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

ZG5sLm5hc2hAZ21haWwuY29tIERhbmllbCBOYXNoLgoKCk9uIFdlZCwgMTkgTWF5IDIwMjEsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+IEhvd2R5LAo+Cj4gamVu
dXggaGFzIGluc3RhbGxlZCBmZW5yaXIgYnkgZGVmYXVsdD8gdmVyeSBpbnRlcmVzdGluZywgaSBk
aWRudCBrbm93IHRoYXQgKG9yCj4gZm9yZ290dCBhYm91dCB0aGF0KS4gd2hvIGlzIHRoZSBjcmVh
dG9yIG9mIGplbnV4PyBzb21lYm9keSBpIGtub3cgZnJvbSBsaXN0cz8KPgo+IGNoZWVycyBjaHJ5
cwo+Cj4gQW0gMTkuMDUuMjEgdW0gMDA6MTIgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uOgo+ID4gT25lIHBvc3NpYmxlIHF1aWNrIHdheSB0byBnZXQgYW4gYW5zd2Vy
IHdvdWxkIGJlIHRvIGluc3RhbGwgamVudXggd2hpY2gKPiA+IGhhcyBmZW5yaXIgaW5zdGFsbGVk
IGFuZCB3b3JraW5nIGFzIGl0cyBzY3JlZW4gcmVhZGVyIGJ5IGRlZmF1bHQuICBUaGVuCj4gPiBp
bnN0YWxsIHBpcGV3aXJlIGFuZCBhbGxvdyBwdWxzZWF1ZGlvIHRvIGJlIHVuaW5zdGFsbGVkLiAg
VGhlbiBzZXQgdXAKPiA+IHBpcGV3aXJlIGFzIGZhciBhcyB5b3UgY2FuIGFuZCByZWJvb3QgdGhl
IHN5c3RlbS4gIElmIGZlbnJpciBjb21lcyB1cAo+ID4gdGFsa2luZywgZmVucmlyIGFuZCBwaXBl
d2lyZSBjYW4gd29yayB0b2dldGhlci4gIElmIG5vdCwgbWF5YmUgZmVucmlyIGFuZAo+ID4gcGlw
ZXdpcmUgY2FuIGJlIG1hZGUgdG8gd29yayB0b2dldGhlciBhZnRlciBwcm9wZXIgY29uZmlndXJh
dGlvbi4KPiA+Cj4gPgo+ID4KPiA+IE9uIFR1ZSwgMTggTWF5IDIwMjEsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPgo+ID4+IEhvd2R5LAo+ID4+Cj4gPj4gLy8g
RG8gSSBuZWNlc3NhcmlseSBoYXZlIHRvIGhhdmUgcHVsc2VhdWRpbz8gY2FuJ3QgSSBtYW5hZ2Ug
d2l0aCBwaXBld2lyZT8KPiA+Pgo+ID4+IHlvdSBjYW4gaGF2ZSBwaXBld2lyZSBhcyB3ZWxsLiB5
b3UgY2FuIGhhdmUgYW55dGhpbmcgd2hhdCBwcm9kdWNlIHNvdW5kCj4gPj4gOikuIEJ1dCBpIGNh
bnQgc2F5IGFueXRoaW5nIGFib3V0IHRoYXQgc29ycnkuCj4gPj4KPiA+PiBpIGRvbid0IGtub3cg
YWJvdXQgdGhlIGNvbmNlcHQgaW4gdGhlIGJhY2tncm91bmQuIElmIHBpcGV3aXJlIGhhcyBhbgo+
ID4+IHNpbWlsYXIKPiA+PiBjb25jZXB0IGFzIHB1bHNlIGF1ZGlvIChwZXIgdXNlciBpbnN0YW5j
ZSBhbmQgaXNvbGF0aW9uIGxldmVsKSwgeW91IG1pZ2h0Cj4gPj4gbmVlZAo+ID4+IGFuIHNpbWls
YXIgd29ya2Fyb3VuZHMgaGVyZS4gYnV0IHRoZSBjb25maWd1cmF0aW9uIHNjcmlwdHMgbWlnaHQg
bm90IHdvcmsKPiA+PiB0aGVuLgo+ID4+Cj4gPj4gaWYgeW91IGxpa2UgZXhwZXJpbWVudHMsIGl0
cyB3b3J0aCBhIHRyeS4gaWYgeW91IGZpbmQgYSB3YXksIGxldCBtZSBrbm93LAo+ID4+IHRoZW4K
PiA+PiB3ZSBjYW4gaW50ZWdyYXRlIGEgY29uZmlndXJlLXBpcGV3aXJlIGFzIHdlbGwuCj4gPj4K
PiA+PiAvLyBJIHJhbiB0aGUgc2NyaXB0cywgYW5kIGkgZGlkIGhlYXIgZmVucmlyJ3Mgc3RhcnR1
cCBzb3VuZCBpY29uLCBidXQgb25seQo+ID4+IHdoZW4gcnVubmluZyBGZW5yaXIgYXMgY3VycmVu
dCB1c2VyLCBub3QgYXMgcm9vdCwgZXZlbiBhZnRlciBydW5uaW5nIHRoZQo+ID4+IHNjcmlwdCB5
b3Ugc3VnZ2VzdGVkLgo+ID4+Cj4gPj4geWVhIHRoaXMgc291bmRzIGxpa2UgdGhlIHN5bXB0b20g
d2hhdCB0aGUgcHVsc2UgY29uZmlndXJhdGlvbiBzY3JpcHRzCj4gPj4gc29sdmUuCj4gPj4gZmVu
cmlyIGNhbnQgcnVuIGFzIHVzZXIgY3VycmVudGx5IChpdHMgcGxhbm5lZCwgYnV0IG5vdCB5ZXQg
Y29tcGxldGUpLiBzbwo+ID4+IGZlbnJpciBkb250IGdldCBhbnkgaW5wdXQgZGF0YSB0byBwcm9j
ZXNzIChzbyB0aGUgc2NyZWVlbnJlYWRlciBjYW50IHJlYWQKPiA+PiB5b3VyCj4gPj4gc2NyZWVu
IDopLCBpdHPCoCBhIG5vbiBzY3JlZW4gcmVhZGVyIFhEKQo+ID4+Cj4gPj4gY2hlZXJzIGNocnlz
Cj4gPj4KPiA+Pgo+ID4+IEFtIDE4LjA1LjIxIHVtIDE4OjUyIHNjaHJpZWIgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPiA+Pj4gSGkgdGhlcmUsCj4gPj4+Cj4gPj4+Cj4gPj4+
IERvIEkgbmVjZXNzYXJpbHkgaGF2ZSB0byBoYXZlIHB1bHNlYXVkaW8/IGNhbid0IEkgbWFuYWdl
IHdpdGggcGlwZXdpcmU/Cj4gPj4+Cj4gPj4+IEkgcmFuIHRoZSBzY3JpcHRzLCBhbmQgaSBkaWQg
aGVhciBmZW5yaXIncyBzdGFydHVwIHNvdW5kIGljb24sIGJ1dCBvbmx5Cj4gPj4+IHdoZW4KPiA+
Pj4gcnVubmluZyBGZW5yaXIgYXMgY3VycmVudCB1c2VyLCBub3QgYXMgcm9vdCwgZXZlbiBhZnRl
ciBydW5uaW5nIHRoZSBzY3JpcHQKPiA+Pj4geW91IHN1Z2dlc3RlZC4KPiA+Pj4KPiA+Pj4gVGhh
bmtzIGFnYWluLgo+ID4+Pgo+ID4+PiBCZXN0IHJlZ2FyZHMuCj4gPj4+Cj4gPj4+IEZyYW5jaXNj
by4KPiA+Pj4KPiA+Pj4gT24gNS8xOC8yMSA1OjA2IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4+Pj4gSG93ZHksCj4gPj4+Pgo+ID4+Pj4gZG8geW91IGhh
dmUgdGhlIHJlcXVpcmVtZW50cyBmb3IgdGhlIGdlbmVyaWMgc291bmQgLyB2b2ljZSBkcml2ZXJz
Cj4gPj4+PiBpbnN0YWxsZWQ/Cj4gPj4+PiBUbyBnZXQgc3VyZSwgcmVpbnN0YWxsIGl0IGV4ZWN1
dGU6Cj4gPj4+PiBzdWRvIHBhY21hbiAtUyBzb3ggZXNwZWFrLW5nIHhjbGlwCj4gPj4+Pgo+ID4+
Pj4gc294IGlzIHVzZWQgZm9yIHBsYXkgc291bmQsIGVzcGVhayBmb3Igdm9pY2Ugb3V0cHV0IGlu
IHRoZSBkZWZhdWx0Cj4gPj4+PiBjb25maWd1cmF0aW9uLCB4Y2xpcCBpcyBhIGZ1bm55IHRveSB0
byBsZXQgZmVucmlyIHNoYXJlIHRoZSBjbGlwYm9hcmQKPiA+Pj4+IGJldHdlZW4geW91ciBHVUkg
YW5kIFRlcm1pbmFsLgo+ID4+Pj4KPiA+Pj4+IHN0YXJ0IGZlbnJpciBmb3IgdGVzdGluZyBpbiBm
b3JlZ3JvdW5kIC0geW91IGNhbiBzdG9wIGl0IHVzaW5nIENUUkwgKyBDCj4gPj4+PiBzdWRvIGZl
bnJpcgo+ID4+Pj4KPiA+Pj4+IGRpZCB5b3UgaGVhciB0aGUgc3RhcnR1cCBzb3VuZD8gZmVucmly
IHBsYXlzIGEgbGl0dGxlIHNvdW5kaWNvbiBhdAo+ID4+Pj4gc3RhcnR1cC4KPiA+Pj4+Cj4gPj4+
PiBpZiBub3QsIHRoZW4gcHVsc2VhdWRpbyBpcyBub3QgY29uZmlndXJlZC4KPiA+Pj4+IHNob3J0
IHN0b3J5IGV4ZWN1dGU6Cj4gPj4+PiAjIGNvbmZpZ3VyZSB1c2VyCj4gPj4+PiAvdXNyL3NoYXJl
L2ZlbnJpcnNjcmVlbnJlYWRlci90b29scy9jb25maWd1cmVfcHVsc2Uuc2gKPiA+Pj4+ICMgY29u
ZmlndXJlIHJvb3QKPiA+Pj4+IHN1ZG8gL3Vzci9zaGFyZS9mZW5yaXJzY3JlZW5yZWFkZXIvdG9v
bHMvY29uZmlndXJlX3B1bHNlLnNoCj4gPj4+Pgo+ID4+Pj4gIyBuZWVkIHRvIHJlc3RhcnQgdGhh
dCB0aGUgY29uZmlndXJhdGlvbiBmb3IgYm90aCBnZXQgYWN0aXZlCj4gPj4+Pgo+ID4+Pj4gcmVz
dGFydAo+ID4+Pj4KPiA+Pj4+IHRoZW4gcmV0cnkKPiA+Pj4+Cj4gPj4+PiBzdWRvIGZlbnJpcgo+
ID4+Pj4KPiA+Pj4+IGxvbmcgc3RvcnJ5OiBmZW5yaXIgbmVlZHMgYnkgZGVmYXVsdCB0byBydW4g
YXMgcm9vdCB0byBjb2xsZWN0IHRoZSBkYXRhCj4gPj4+PiBvbgo+ID4+Pj4geW91ciBzY3JlZW4g
b3IgY2FwdXRyZSB0aGUgaW5wdXQgZGV2aWNlcy4gaWYgZmVucmlyIHNwZWFrcyBvciBjcmVhdGVz
Cj4gPj4+PiBzb3VuZCwgaXQgZG9lcyB0aGlzIGFzIHJvb3QgdXNlci4geW91IHdvbnQgaGVhciBz
b3VuZCBvZiBhbiBvdGhlciB1c2VyIGJ5Cj4gPj4+PiBwdWxzZWF1ZGlvIChzb3VuZCBzZXJ2ZXIp
IGRlc2lnbi4gV2UgbmVlZCB0byB0cmFuc3BvcnQgdGhlIHNvdW5kIGNyZWF0ZWQKPiA+Pj4+IGFz
Cj4gPj4+PiByb290IHRvIHRoZSBzb3VuZCBzZXJ2ZXIgeW91IGhhdmUgcnVubmluZyBhcyB1c2Vy
IHRvIGZpbmFsbHkgaGVhciB0aGUKPiA+Pj4+IHNvdW5kLgo+ID4+Pj4KPiA+Pj4+IGZlbnJpciBw
cm92aWRlcyAyIHNjcmlwdHMgKHNlZSBhYm92ZSkgdG8gY29uZmlndXJlIHRoZSByb290IHB1c2Ug
YXVkaW8gdG8KPiA+Pj4+IHNlbmQgdGhlIGRhdGEgdG8geW91ciB1c2VyIGFuZCBjb25maWd1cmUg
dXNlciBwdWxzZSBhdWRpbyB0byBsaXN0ZW4gdG8KPiA+Pj4+IHRoZQo+ID4+Pj4gc291bmQgc2Vu
dCBieSByb290IGFuZCBwbGF5IGl0Lgo+ID4+Pj4KPiA+Pj4+IGNoZWVycyBjaHJ5cwo+ID4+Pj4K
PiA+Pj4+Cj4gPj4+PiAxOC4wNS4yMSB1bSAxNDo0NiBzY2hyaWViIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb246Cj4gPj4+Pgo+ID4+Pj4+IEhlbGxvIHRoZXJlLAo+ID4+Pj4+Cj4g
Pj4+Pj4KPiA+Pj4+PiBUaGFua3Mgc28gbXVjaCwgbm93LCB0aGF0IHBhcnQgb2YgdGhlIHByb2Js
ZW0gaXMgc29sdmVkIQo+ID4+Pj4+Cj4gPj4+Pj4gVGhlIG90aGVyIHBhcnQsIGhvdyBldmVyLCB0
aGF0IGlzIG5vdCBzb2x2ZWQsIGlzIHRoYXQgZmVucmlyIGRvZXNuJ3QKPiA+Pj4+PiBzcGVhawo+
ID4+Pj4+IHdpdGggZXNwZWFrLCBvciBlc3BlYWstbmcuCj4gPj4+Pj4KPiA+Pj4+PiBEbyBJIGhh
dmUgdG8gc2V0IHNvbWV0aGluZyBzb21ld2hlcmUgZm9yIHRoYXQgdG8gaGFwcGVuPwo+ID4+Pj4+
Cj4gPj4+Pj4gVGhhbmtzIGFnYWluLgo+ID4+Pj4+Cj4gPj4+Pj4gQmVzdCByZWdhcmRzLgo+ID4+
Pj4+Cj4gPj4+Pj4gRnJhbmNpc2NvLgo+ID4+Pj4+Cj4gPj4+Pj4gT24gNS8xOC8yMSAxMDoyNCBB
TSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+Pj4+Pj4gSG93
ZHkgRnJhbmNpc2NvLAo+ID4+Pj4+Pgo+ID4+Pj4+PiBpIGRvbnQga25vdyB3aHkgdGhvc2UgbGli
cyBhcmUgbm90IGFuIGRlcGVuZGVuY3kgYnkgcHl0aG9uLXB5ZW5jaGFudCBpZgo+ID4+Pj4+PiB0
aG9zZSBhcmUgc3ByZWFkIHdhcm5pbmdzLiBNYXliZSB0aGlzIHNob3VsZCBiZSByZXBvcnRlZCB0
byB0aGUgcGFja2FnZQo+ID4+Pj4+PiBtYWludGFpbmVyLiBCdXQgYW55d2F5Lgo+ID4+Pj4+Pgo+
ID4+Pj4+PiB5b3UgY2FuIGFzayBwYWNtYW4gd2hhdCBwYWNrYWdlIGNvbnRhaW5zIHRoZSBzcGVj
aWZpYyBmaWxlIHlvdSBuZWVkIGJ5Cj4gPj4+Pj4+ICJzdWRvIHBhY21hbiAtRnkgZmlsZW5hbWUi
LiBoZXJlIGkgZGlkIHRoaXMgZm9yIGZvciBleGFtcGxlIGluCj4gPj4+Pj4+IGxpYnZva2tvLnNv
Ogo+ID4+Pj4+Pgo+ID4+Pj4+PiAxMDoxNCBbY2hyeXNAYmxhY2tiZWFzdCB+XSA6KSAkIHN1ZG8g
cGFjbWFuIC1GeSBsaWJ2b2lra28uc28KPiA+Pj4+Pj4gW3N1ZG9dIFBhc3N3b3J0IGY/ciBjaHJ5
czoKPiA+Pj4+Pj4gOjogU3luY2hyb25pc2llcmUgUGFrZXRkYXRlbmJhbmtlbi4uLgo+ID4+Pj4+
PiDCoGNvcmUgOTAzLDUgS2lCwqAgNiwxNyBNaUIvcyAwMDowMAo+ID4+Pj4+PiBbIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjI10KPiA+Pj4+Pj4gMTAwJQo+ID4+Pj4+PiDCoGV4dHJhIDksMyBNaULCoCAyNiw5IE1p
Qi9zIDAwOjAwCj4gPj4+Pj4+IFsjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjXQo+ID4+Pj4+PiAxMDAlCj4gPj4+
Pj4+IMKgY29tbXVuaXR5IDIyLDggTWlCwqAgMjksNiBNaUIvcyAwMDowMQo+ID4+Pj4+PiBbIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjI10KPiA+Pj4+Pj4gMTAwJQo+ID4+Pj4+PiDCoG11bHRpbGliIDIyMiw1IEtp
QsKgIDEyLDggTWlCL3MgMDA6MDAKPiA+Pj4+Pj4gWyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyNdCj4gPj4+Pj4+
IDEwMCUKPiA+Pj4+Pj4gZXh0cmEvbGlidm9pa2tvIDQuMy4xLTEKPiA+Pj4+Pj4gwqDCoMKgIHVz
ci9saWIvbGlidm9pa2tvLnNvCj4gPj4+Pj4+IDEwOjE1IFtjaHJ5c0BibGFja2JlYXN0IH5dIDop
ICQKPiA+Pj4+Pj4KPiA+Pj4+Pj4gc28gdGhlIHBhY2thZ2UgeW91IG5lZWQgZm9yIGxpYnZva2tv
LnNvIGlzICJsaWJ2b2lra28iCj4gPj4+Pj4+IHRvIHNpbGVuY2Ugb3V0IGFsbCB0aGUgd2Fybmlu
Z3MgZG8gdGhpczoKPiA+Pj4+Pj4gc3VkbyBwYWNtYW4gLVMgbGlidm9pa2tvIG51c3BlbGwgaHNw
ZWxsCj4gPj4+Pj4+Cj4gPj4+Pj4+IHRoaXMgaW5zdGFsbCBhbGwgMyAoSU1PIG9wdGlvbmFsIGRl
cGVuZGVuY3kncywgd2hhdCBzaG91bGQgbm90IGNyZWF0ZSBhCj4gPj4+Pj4+IHdhcm5pbmcsIGJ1
dCB3ZWxsLCBpdCBpcyBsaWtlIGl0IGlzKQo+ID4+Pj4+Pgo+ID4+Pj4+PiBpIHVzZSBpcnNzaSBh
cyBJUkMgKGNvbW1hbmRsaW5lKSBjbGllbnQuIHRoZXJlIGlzIGFsc28gUGlkZ2luIChhcwo+ID4+
Pj4+PiBncmFwaGljYWwgY2xpZW50KS4gYm90aCBhcmUgdmVyeSBuaWNlLgo+ID4+Pj4+Pgo+ID4+
Pj4+PiBsb29raW5nIGZvcndhcmQgdG8gc2VlIHlvdSBpbiBJUkMgOikuCj4gPj4+Pj4+Cj4gPj4+
Pj4+IGNoZWVycyBjaHJ5cwo+ID4+Pj4+Pgo+ID4+Pj4+Pgo+ID4+Pj4+PiBBbSAxOC4wNS4yMSB1
bSAwODo1NyBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4gPj4+
Pj4+PiBIZWxsbyB0aGVyZSwKPiA+Pj4+Pj4+Cj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gSSBtYW5hZ2Vk
IHRvIGluc3RhbGwgb25lIG9mIHRoZSBsaWJyYXJpZXMsIGJ1dCBub3QgdGhlIG90aGVyIHR3bywg
c28KPiA+Pj4+Pj4+IHRoYW5rcyBmb3IgdGhhdC4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBBbHNvLCB0
aGFua3MgZm9yIHN1Z2dlc3RpbmcgdG8gdXNlIHlheSwgSSBqdXN0IGluc3RhbGxlZCBpdCwgSSBk
aWRuJ3QKPiA+Pj4+Pj4+IGtub3cgeWFvdXJ0IHdhcyBkZXByZWNhdGVkLgo+ID4+Pj4+Pj4KPiA+
Pj4+Pj4+IE15IHF1ZXN0aW9uIG5vdyBpcywgYW5kIHRoaXMnbGwgYmUgZHVtLCB3aGF0IGFyZSBy
ZWNvbW1lbmRlZCBJUkMKPiA+Pj4+Pj4+IGNsaWVudHM/IGhvdyBkbyBJIGdldCB0aGVtIHdvcmtp
bmc/IHdoYXQgc2hvdWxkIEkga25vdyBiZWZvcmUgam9pbmluZwo+ID4+Pj4+Pj4gYW4KPiA+Pj4+
Pj4+IElSQyBjaGFubmVsLCB3aGF0IGV2ZXIgaXQgbWlnaHQgYmU/Cj4gPj4+Pj4+Pgo+ID4+Pj4+
Pj4gVGhhbmtzIGFnYWluLgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IEJlc3QgcmVnYXJkcy4KPiA+Pj4+
Pj4+Cj4gPj4+Pj4+PiBGcmFuY2lzY28uCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gT24gNS8xNy8yMSA5
OjE5IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4+Pj4+
Pj4+IEhpLCBJIGp1c3QgcG9zdGVkIGEgbGluayB0byB0aGlzIG1lc3NhZ2UgaW50ZW5kZWQgdG8g
Y2hyeXMgKEZlbnJpcgo+ID4+Pj4+Pj4+IGF1dGhvcikgb24gdGhlICNhMTF5IGNoYW5uZWwgb2Yg
aXJjLmxpbnV4LWExMXkub3JnLgo+ID4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4gTWF5YmUgam9pbiBoaW0g
dGhlcmU/Cj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBEaWRpZXIKPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+
IExlIDE3LzA1LzIwMjEgPyAyMDoxNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biBhID9jcml0wqA6Cj4gPj4+Pj4+Pj4+IEhlbGxvIGV2ZXJ5b25lLAo+ID4+Pj4+Pj4+Pgo+ID4+
Pj4+Pj4+Pgo+ID4+Pj4+Pj4+PiBJIGp1c3QgZG93bmxvYWRlZCBmZW5yaXItZ2l0IGZyb20gdGhl
IEFVUiB1c2luZyB5YW91cnQuCj4gPj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+IFdoZW4gSSB0cnkgdG8g
cnVuIGZlbnJpciB3aXRoIHRoZSBjb21tYW5kCj4gPj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+IGZlbnJp
cgo+ID4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+PiBpbiBhIHRlcm1pbmFsLCBob3cgZXZlciwgaSBnZXQg
ZmVucmlyJ3Mgc3RhcnR1cCBzb3VuZCwgYW5kIHRoaXM6Cj4gPj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+
Cj4gPj4+Pj4+Pj4+IFtmcmFuY2lzY29AQmx1ZWJsaW5rIH5dJCBmZW5yaXIKPiA+Pj4+Pj4+Pj4g
KiogKHByb2Nlc3M6NzAwOCk6IFdBUk5JTkcgKio6IDIwOjEyOjQ1LjM3NDogRXJyb3IgbG9hZGlu
ZyBwbHVnaW46Cj4gPj4+Pj4+Pj4+IGxpYmhzcGVsbC5zby4KPiA+Pj4+Pj4+Pj4gMDogY2Fubm90
IG9wZW4gc2hhcmVkIG9iamVjdCBmaWxlOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj4gPj4+
Pj4+Pj4+ICoqIChwcm9jZXNzOjcwMDgpOiBXQVJOSU5HICoqOiAyMDoxMjo0NS4zNzQ6IEVycm9y
IGxvYWRpbmcgcGx1Z2luOgo+ID4+Pj4+Pj4+PiBsaWJ2b2lra28uc28uCj4gPj4+Pj4+Pj4+IDE6
IGNhbm5vdCBvcGVuIHNoYXJlZCBvYmplY3QgZmlsZTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9y
eQo+ID4+Pj4+Pj4+PiAqKiAocHJvY2Vzczo3MDA4KTogV0FSTklORyAqKjogMjA6MTI6NDUuMzc3
OiBFcnJvciBsb2FkaW5nIHBsdWdpbjoKPiA+Pj4+Pj4+Pj4gbGlibnVzcGVsbC5zbwo+ID4+Pj4+
Pj4+PiAuNDogY2Fubm90IG9wZW4gc2hhcmVkIG9iamVjdCBmaWxlOiBObyBzdWNoIGZpbGUgb3Ig
ZGlyZWN0b3J5Cj4gPj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+IEFueSBpZGVhcyBv
biBob3cgdG8gZml4IGl0LCBhbmQgbm8gc3BlZWNoIGVpdGhlci4KPiA+Pj4+Pj4+Pj4KPiA+Pj4+
Pj4+Pj4gVGhhbmsgeW91IGZvciBhbnkgYW5zd2VyLgo+ID4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+PiBC
ZXN0IHJlZ2FyZHMuCj4gPj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+IEZyYW5jaXNjby4KPiA+Pj4+Pj4+
Pj4KPiA+Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiA+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4+Pj4+Pj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPiA+Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+Cj4g
Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiA+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+Pj4+PiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gPj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlz
dAo+ID4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+Pj4+Pj4gaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Pj4+Pgo+ID4+
Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+
Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+ID4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0Cj4gPj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiA+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+PiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Pj4KPiA+Pj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiA+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+Pj4+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+Pj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Cj4gPj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+
Cj4gPgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiA+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
ID4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

