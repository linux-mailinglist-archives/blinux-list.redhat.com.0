Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 22ECB3882A0
	for <lists+blinux-list@lfdr.de>; Wed, 19 May 2021 00:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621376063;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wMm5qDZ/oOamvzKj64Wrv7GoGBUqACFd/Q10nteCssA=;
	b=Czp8zOcatjBlGg+E+bxJFKc98+AwiLnvCH/LymzEHPURNhNOENuGOzd/ta1JlHMYZKYuB1
	4Hk7/Sb3lbn/VnltfZF2wc/sqd1hTPBHRH4+fnUlfpY/AtTqa/o8qfpPc33SywqEi9PIjC
	KoyF1RhwB0cNcWALA15eZqV3+AFOaU0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-80-akHQdNiWOfin7KJJpFUujQ-1; Tue, 18 May 2021 18:14:20 -0400
X-MC-Unique: akHQdNiWOfin7KJJpFUujQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 277F8107ACE3;
	Tue, 18 May 2021 22:14:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B6A4B60C04;
	Tue, 18 May 2021 22:14:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C28DF5534C;
	Tue, 18 May 2021 22:14:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14IMCLDM005123 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 May 2021 18:12:21 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4C41AF896D; Tue, 18 May 2021 22:12:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 47512FDCD3
	for <blinux-list@redhat.com>; Tue, 18 May 2021 22:12:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE51B833942
	for <blinux-list@redhat.com>; Tue, 18 May 2021 22:12:18 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-597-gVdLVDouM9iLCZJlGA0EMg-1; Tue, 18 May 2021 18:12:06 -0400
X-MC-Unique: gVdLVDouM9iLCZJlGA0EMg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Fl9GF2fRqzSZM
	for <blinux-list@redhat.com>; Tue, 18 May 2021 18:12:05 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Fl9GF1sbMzcbc; Tue, 18 May 2021 18:12:05 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Fl9GF1J1bzcbW
	for <blinux-list@redhat.com>; Tue, 18 May 2021 18:12:05 -0400 (EDT)
Date: Tue, 18 May 2021 18:12:05 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A question about Fenrir on Arch linux
In-Reply-To: <76c7f8a5-8161-ff55-c98c-092f895f4bd3@linux-a11y.org>
Message-ID: <alpine.NEB.2.23.451.2105181809120.4726@panix1.panix.com>
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
	<4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
	<a8000f0d-1831-4a35-c7c5-da79f853000c@linux-a11y.org>
	<43d3b1f6-a50a-2e99-a9b4-5a9a6026faf3@gmail.com>
	<9a7f1b78-1b65-774a-494a-d2c5bc2090f9@linux-a11y.org>
	<76d051a3-abec-5852-eab0-01930524a21c@gmail.com>
	<76c7f8a5-8161-ff55-c98c-092f895f4bd3@linux-a11y.org>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 14IMCLDM005123
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T25lIHBvc3NpYmxlIHF1aWNrIHdheSB0byBnZXQgYW4gYW5zd2VyIHdvdWxkIGJlIHRvIGluc3Rh
bGwgamVudXggd2hpY2gKaGFzIGZlbnJpciBpbnN0YWxsZWQgYW5kIHdvcmtpbmcgYXMgaXRzIHNj
cmVlbiByZWFkZXIgYnkgZGVmYXVsdC4gIFRoZW4KaW5zdGFsbCBwaXBld2lyZSBhbmQgYWxsb3cg
cHVsc2VhdWRpbyB0byBiZSB1bmluc3RhbGxlZC4gIFRoZW4gc2V0IHVwCnBpcGV3aXJlIGFzIGZh
ciBhcyB5b3UgY2FuIGFuZCByZWJvb3QgdGhlIHN5c3RlbS4gIElmIGZlbnJpciBjb21lcyB1cAp0
YWxraW5nLCBmZW5yaXIgYW5kIHBpcGV3aXJlIGNhbiB3b3JrIHRvZ2V0aGVyLiAgSWYgbm90LCBt
YXliZSBmZW5yaXIgYW5kCnBpcGV3aXJlIGNhbiBiZSBtYWRlIHRvIHdvcmsgdG9nZXRoZXIgYWZ0
ZXIgcHJvcGVyIGNvbmZpZ3VyYXRpb24uCgoKCk9uIFR1ZSwgMTggTWF5IDIwMjEsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+IEhvd2R5LAo+Cj4gLy8gRG8gSSBu
ZWNlc3NhcmlseSBoYXZlIHRvIGhhdmUgcHVsc2VhdWRpbz8gY2FuJ3QgSSBtYW5hZ2Ugd2l0aCBw
aXBld2lyZT8KPgo+IHlvdSBjYW4gaGF2ZSBwaXBld2lyZSBhcyB3ZWxsLiB5b3UgY2FuIGhhdmUg
YW55dGhpbmcgd2hhdCBwcm9kdWNlIHNvdW5kCj4gOikuIEJ1dCBpIGNhbnQgc2F5IGFueXRoaW5n
IGFib3V0IHRoYXQgc29ycnkuCj4KPiBpIGRvbid0IGtub3cgYWJvdXQgdGhlIGNvbmNlcHQgaW4g
dGhlIGJhY2tncm91bmQuIElmIHBpcGV3aXJlIGhhcyBhbiBzaW1pbGFyCj4gY29uY2VwdCBhcyBw
dWxzZSBhdWRpbyAocGVyIHVzZXIgaW5zdGFuY2UgYW5kIGlzb2xhdGlvbiBsZXZlbCksIHlvdSBt
aWdodCBuZWVkCj4gYW4gc2ltaWxhciB3b3JrYXJvdW5kcyBoZXJlLiBidXQgdGhlIGNvbmZpZ3Vy
YXRpb24gc2NyaXB0cyBtaWdodCBub3Qgd29yawo+IHRoZW4uCj4KPiBpZiB5b3UgbGlrZSBleHBl
cmltZW50cywgaXRzIHdvcnRoIGEgdHJ5LiBpZiB5b3UgZmluZCBhIHdheSwgbGV0IG1lIGtub3cs
IHRoZW4KPiB3ZSBjYW4gaW50ZWdyYXRlIGEgY29uZmlndXJlLXBpcGV3aXJlIGFzIHdlbGwuCj4K
PiAvLyBJIHJhbiB0aGUgc2NyaXB0cywgYW5kIGkgZGlkIGhlYXIgZmVucmlyJ3Mgc3RhcnR1cCBz
b3VuZCBpY29uLCBidXQgb25seQo+IHdoZW4gcnVubmluZyBGZW5yaXIgYXMgY3VycmVudCB1c2Vy
LCBub3QgYXMgcm9vdCwgZXZlbiBhZnRlciBydW5uaW5nIHRoZQo+IHNjcmlwdCB5b3Ugc3VnZ2Vz
dGVkLgo+Cj4geWVhIHRoaXMgc291bmRzIGxpa2UgdGhlIHN5bXB0b20gd2hhdCB0aGUgcHVsc2Ug
Y29uZmlndXJhdGlvbiBzY3JpcHRzIHNvbHZlLgo+IGZlbnJpciBjYW50IHJ1biBhcyB1c2VyIGN1
cnJlbnRseSAoaXRzIHBsYW5uZWQsIGJ1dCBub3QgeWV0IGNvbXBsZXRlKS4gc28KPiBmZW5yaXIg
ZG9udCBnZXQgYW55IGlucHV0IGRhdGEgdG8gcHJvY2VzcyAoc28gdGhlIHNjcmVlZW5yZWFkZXIg
Y2FudCByZWFkIHlvdXIKPiBzY3JlZW4gOiksIGl0c8KgIGEgbm9uIHNjcmVlbiByZWFkZXIgWEQp
Cj4KPiBjaGVlcnMgY2hyeXMKPgo+Cj4gQW0gMTguMDUuMjEgdW0gMTg6NTIgc2NocmllYiBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+ID4gSGkgdGhlcmUsCj4gPgo+ID4KPiA+
IERvIEkgbmVjZXNzYXJpbHkgaGF2ZSB0byBoYXZlIHB1bHNlYXVkaW8/IGNhbid0IEkgbWFuYWdl
IHdpdGggcGlwZXdpcmU/Cj4gPgo+ID4gSSByYW4gdGhlIHNjcmlwdHMsIGFuZCBpIGRpZCBoZWFy
IGZlbnJpcidzIHN0YXJ0dXAgc291bmQgaWNvbiwgYnV0IG9ubHkgd2hlbgo+ID4gcnVubmluZyBG
ZW5yaXIgYXMgY3VycmVudCB1c2VyLCBub3QgYXMgcm9vdCwgZXZlbiBhZnRlciBydW5uaW5nIHRo
ZSBzY3JpcHQKPiA+IHlvdSBzdWdnZXN0ZWQuCj4gPgo+ID4gVGhhbmtzIGFnYWluLgo+ID4KPiA+
IEJlc3QgcmVnYXJkcy4KPiA+Cj4gPiBGcmFuY2lzY28uCj4gPgo+ID4gT24gNS8xOC8yMSA1OjA2
IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4+IEhvd2R5
LAo+ID4+Cj4gPj4gZG8geW91IGhhdmUgdGhlIHJlcXVpcmVtZW50cyBmb3IgdGhlIGdlbmVyaWMg
c291bmQgLyB2b2ljZSBkcml2ZXJzCj4gPj4gaW5zdGFsbGVkPwo+ID4+IFRvIGdldCBzdXJlLCBy
ZWluc3RhbGwgaXQgZXhlY3V0ZToKPiA+PiBzdWRvIHBhY21hbiAtUyBzb3ggZXNwZWFrLW5nIHhj
bGlwCj4gPj4KPiA+PiBzb3ggaXMgdXNlZCBmb3IgcGxheSBzb3VuZCwgZXNwZWFrIGZvciB2b2lj
ZSBvdXRwdXQgaW4gdGhlIGRlZmF1bHQKPiA+PiBjb25maWd1cmF0aW9uLCB4Y2xpcCBpcyBhIGZ1
bm55IHRveSB0byBsZXQgZmVucmlyIHNoYXJlIHRoZSBjbGlwYm9hcmQKPiA+PiBiZXR3ZWVuIHlv
dXIgR1VJIGFuZCBUZXJtaW5hbC4KPiA+Pgo+ID4+IHN0YXJ0IGZlbnJpciBmb3IgdGVzdGluZyBp
biBmb3JlZ3JvdW5kIC0geW91IGNhbiBzdG9wIGl0IHVzaW5nIENUUkwgKyBDCj4gPj4gc3VkbyBm
ZW5yaXIKPiA+Pgo+ID4+IGRpZCB5b3UgaGVhciB0aGUgc3RhcnR1cCBzb3VuZD8gZmVucmlyIHBs
YXlzIGEgbGl0dGxlIHNvdW5kaWNvbiBhdCBzdGFydHVwLgo+ID4+Cj4gPj4gaWYgbm90LCB0aGVu
IHB1bHNlYXVkaW8gaXMgbm90IGNvbmZpZ3VyZWQuCj4gPj4gc2hvcnQgc3RvcnkgZXhlY3V0ZToK
PiA+PiAjIGNvbmZpZ3VyZSB1c2VyCj4gPj4gL3Vzci9zaGFyZS9mZW5yaXJzY3JlZW5yZWFkZXIv
dG9vbHMvY29uZmlndXJlX3B1bHNlLnNoCj4gPj4gIyBjb25maWd1cmUgcm9vdAo+ID4+IHN1ZG8g
L3Vzci9zaGFyZS9mZW5yaXJzY3JlZW5yZWFkZXIvdG9vbHMvY29uZmlndXJlX3B1bHNlLnNoCj4g
Pj4KPiA+PiAjIG5lZWQgdG8gcmVzdGFydCB0aGF0IHRoZSBjb25maWd1cmF0aW9uIGZvciBib3Ro
IGdldCBhY3RpdmUKPiA+Pgo+ID4+IHJlc3RhcnQKPiA+Pgo+ID4+IHRoZW4gcmV0cnkKPiA+Pgo+
ID4+IHN1ZG8gZmVucmlyCj4gPj4KPiA+PiBsb25nIHN0b3JyeTogZmVucmlyIG5lZWRzIGJ5IGRl
ZmF1bHQgdG8gcnVuIGFzIHJvb3QgdG8gY29sbGVjdCB0aGUgZGF0YSBvbgo+ID4+IHlvdXIgc2Ny
ZWVuIG9yIGNhcHV0cmUgdGhlIGlucHV0IGRldmljZXMuIGlmIGZlbnJpciBzcGVha3Mgb3IgY3Jl
YXRlcwo+ID4+IHNvdW5kLCBpdCBkb2VzIHRoaXMgYXMgcm9vdCB1c2VyLiB5b3Ugd29udCBoZWFy
IHNvdW5kIG9mIGFuIG90aGVyIHVzZXIgYnkKPiA+PiBwdWxzZWF1ZGlvIChzb3VuZCBzZXJ2ZXIp
IGRlc2lnbi4gV2UgbmVlZCB0byB0cmFuc3BvcnQgdGhlIHNvdW5kIGNyZWF0ZWQgYXMKPiA+PiBy
b290IHRvIHRoZSBzb3VuZCBzZXJ2ZXIgeW91IGhhdmUgcnVubmluZyBhcyB1c2VyIHRvIGZpbmFs
bHkgaGVhciB0aGUKPiA+PiBzb3VuZC4KPiA+Pgo+ID4+IGZlbnJpciBwcm92aWRlcyAyIHNjcmlw
dHMgKHNlZSBhYm92ZSkgdG8gY29uZmlndXJlIHRoZSByb290IHB1c2UgYXVkaW8gdG8KPiA+PiBz
ZW5kIHRoZSBkYXRhIHRvIHlvdXIgdXNlciBhbmQgY29uZmlndXJlIHVzZXIgcHVsc2UgYXVkaW8g
dG8gbGlzdGVuIHRvIHRoZQo+ID4+IHNvdW5kIHNlbnQgYnkgcm9vdCBhbmQgcGxheSBpdC4KPiA+
Pgo+ID4+IGNoZWVycyBjaHJ5cwo+ID4+Cj4gPj4KPiA+PiAxOC4wNS4yMSB1bSAxNDo0NiBzY2hy
aWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4gPj4KPiA+Pj4gSGVsbG8g
dGhlcmUsCj4gPj4+Cj4gPj4+Cj4gPj4+IFRoYW5rcyBzbyBtdWNoLCBub3csIHRoYXQgcGFydCBv
ZiB0aGUgcHJvYmxlbSBpcyBzb2x2ZWQhCj4gPj4+Cj4gPj4+IFRoZSBvdGhlciBwYXJ0LCBob3cg
ZXZlciwgdGhhdCBpcyBub3Qgc29sdmVkLCBpcyB0aGF0IGZlbnJpciBkb2Vzbid0IHNwZWFrCj4g
Pj4+IHdpdGggZXNwZWFrLCBvciBlc3BlYWstbmcuCj4gPj4+Cj4gPj4+IERvIEkgaGF2ZSB0byBz
ZXQgc29tZXRoaW5nIHNvbWV3aGVyZSBmb3IgdGhhdCB0byBoYXBwZW4/Cj4gPj4+Cj4gPj4+IFRo
YW5rcyBhZ2Fpbi4KPiA+Pj4KPiA+Pj4gQmVzdCByZWdhcmRzLgo+ID4+Pgo+ID4+PiBGcmFuY2lz
Y28uCj4gPj4+Cj4gPj4+IE9uIDUvMTgvMjEgMTA6MjQgQU0sIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPj4+PiBIb3dkeSBGcmFuY2lzY28sCj4gPj4+Pgo+ID4+
Pj4gaSBkb250IGtub3cgd2h5IHRob3NlIGxpYnMgYXJlIG5vdCBhbiBkZXBlbmRlbmN5IGJ5IHB5
dGhvbi1weWVuY2hhbnQgaWYKPiA+Pj4+IHRob3NlIGFyZSBzcHJlYWQgd2FybmluZ3MuIE1heWJl
IHRoaXMgc2hvdWxkIGJlIHJlcG9ydGVkIHRvIHRoZSBwYWNrYWdlCj4gPj4+PiBtYWludGFpbmVy
LiBCdXQgYW55d2F5Lgo+ID4+Pj4KPiA+Pj4+IHlvdSBjYW4gYXNrIHBhY21hbiB3aGF0IHBhY2th
Z2UgY29udGFpbnMgdGhlIHNwZWNpZmljIGZpbGUgeW91IG5lZWQgYnkKPiA+Pj4+ICJzdWRvIHBh
Y21hbiAtRnkgZmlsZW5hbWUiLiBoZXJlIGkgZGlkIHRoaXMgZm9yIGZvciBleGFtcGxlIGluCj4g
Pj4+PiBsaWJ2b2trby5zbzoKPiA+Pj4+Cj4gPj4+PiAxMDoxNCBbY2hyeXNAYmxhY2tiZWFzdCB+
XSA6KSAkIHN1ZG8gcGFjbWFuIC1GeSBsaWJ2b2lra28uc28KPiA+Pj4+IFtzdWRvXSBQYXNzd29y
dCBmP3IgY2hyeXM6Cj4gPj4+PiA6OiBTeW5jaHJvbmlzaWVyZSBQYWtldGRhdGVuYmFua2VuLi4u
Cj4gPj4+PiDCoGNvcmUgOTAzLDUgS2lCwqAgNiwxNyBNaUIvcyAwMDowMAo+ID4+Pj4gWyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyNdCj4gPj4+PiAxMDAlCj4gPj4+PiDCoGV4dHJhIDksMyBNaULCoCAyNiw5IE1p
Qi9zIDAwOjAwCj4gPj4+PiBbIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjI10KPiA+Pj4+IDEwMCUKPiA+Pj4+IMKg
Y29tbXVuaXR5IDIyLDggTWlCwqAgMjksNiBNaUIvcyAwMDowMQo+ID4+Pj4gWyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyNdCj4gPj4+PiAxMDAlCj4gPj4+PiDCoG11bHRpbGliIDIyMiw1IEtpQsKgIDEyLDggTWlC
L3MgMDA6MDAKPiA+Pj4+IFsjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjXQo+ID4+Pj4gMTAwJQo+ID4+Pj4gZXh0
cmEvbGlidm9pa2tvIDQuMy4xLTEKPiA+Pj4+IMKgwqDCoCB1c3IvbGliL2xpYnZvaWtrby5zbwo+
ID4+Pj4gMTA6MTUgW2NocnlzQGJsYWNrYmVhc3Qgfl0gOikgJAo+ID4+Pj4KPiA+Pj4+IHNvIHRo
ZSBwYWNrYWdlIHlvdSBuZWVkIGZvciBsaWJ2b2trby5zbyBpcyAibGlidm9pa2tvIgo+ID4+Pj4g
dG8gc2lsZW5jZSBvdXQgYWxsIHRoZSB3YXJuaW5ncyBkbyB0aGlzOgo+ID4+Pj4gc3VkbyBwYWNt
YW4gLVMgbGlidm9pa2tvIG51c3BlbGwgaHNwZWxsCj4gPj4+Pgo+ID4+Pj4gdGhpcyBpbnN0YWxs
IGFsbCAzIChJTU8gb3B0aW9uYWwgZGVwZW5kZW5jeSdzLCB3aGF0IHNob3VsZCBub3QgY3JlYXRl
IGEKPiA+Pj4+IHdhcm5pbmcsIGJ1dCB3ZWxsLCBpdCBpcyBsaWtlIGl0IGlzKQo+ID4+Pj4KPiA+
Pj4+IGkgdXNlIGlyc3NpIGFzIElSQyAoY29tbWFuZGxpbmUpIGNsaWVudC4gdGhlcmUgaXMgYWxz
byBQaWRnaW4gKGFzCj4gPj4+PiBncmFwaGljYWwgY2xpZW50KS4gYm90aCBhcmUgdmVyeSBuaWNl
Lgo+ID4+Pj4KPiA+Pj4+IGxvb2tpbmcgZm9yd2FyZCB0byBzZWUgeW91IGluIElSQyA6KS4KPiA+
Pj4+Cj4gPj4+PiBjaGVlcnMgY2hyeXMKPiA+Pj4+Cj4gPj4+Pgo+ID4+Pj4gQW0gMTguMDUuMjEg
dW0gMDg6NTcgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uOgo+ID4+
Pj4+IEhlbGxvIHRoZXJlLAo+ID4+Pj4+Cj4gPj4+Pj4KPiA+Pj4+PiBJIG1hbmFnZWQgdG8gaW5z
dGFsbCBvbmUgb2YgdGhlIGxpYnJhcmllcywgYnV0IG5vdCB0aGUgb3RoZXIgdHdvLCBzbwo+ID4+
Pj4+IHRoYW5rcyBmb3IgdGhhdC4KPiA+Pj4+Pgo+ID4+Pj4+IEFsc28sIHRoYW5rcyBmb3Igc3Vn
Z2VzdGluZyB0byB1c2UgeWF5LCBJIGp1c3QgaW5zdGFsbGVkIGl0LCBJIGRpZG4ndAo+ID4+Pj4+
IGtub3cgeWFvdXJ0IHdhcyBkZXByZWNhdGVkLgo+ID4+Pj4+Cj4gPj4+Pj4gTXkgcXVlc3Rpb24g
bm93IGlzLCBhbmQgdGhpcydsbCBiZSBkdW0sIHdoYXQgYXJlIHJlY29tbWVuZGVkIElSQwo+ID4+
Pj4+IGNsaWVudHM/IGhvdyBkbyBJIGdldCB0aGVtIHdvcmtpbmc/IHdoYXQgc2hvdWxkIEkga25v
dyBiZWZvcmUgam9pbmluZyBhbgo+ID4+Pj4+IElSQyBjaGFubmVsLCB3aGF0IGV2ZXIgaXQgbWln
aHQgYmU/Cj4gPj4+Pj4KPiA+Pj4+PiBUaGFua3MgYWdhaW4uCj4gPj4+Pj4KPiA+Pj4+PiBCZXN0
IHJlZ2FyZHMuCj4gPj4+Pj4KPiA+Pj4+PiBGcmFuY2lzY28uCj4gPj4+Pj4KPiA+Pj4+PiBPbiA1
LzE3LzIxIDk6MTkgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4gPj4+Pj4+IEhpLCBJIGp1c3QgcG9zdGVkIGEgbGluayB0byB0aGlzIG1lc3NhZ2UgaW50ZW5k
ZWQgdG8gY2hyeXMgKEZlbnJpcgo+ID4+Pj4+PiBhdXRob3IpIG9uIHRoZSAjYTExeSBjaGFubmVs
IG9mIGlyYy5saW51eC1hMTF5Lm9yZy4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gTWF5YmUgam9pbiBoaW0g
dGhlcmU/Cj4gPj4+Pj4+Cj4gPj4+Pj4+IERpZGllcgo+ID4+Pj4+Pgo+ID4+Pj4+PiBMZSAxNy8w
NS8yMDIxID8gMjA6MTUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSA/Y3Jp
dMKgOgo+ID4+Pj4+Pj4gSGVsbG8gZXZlcnlvbmUsCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4KPiA+Pj4+
Pj4+IEkganVzdCBkb3dubG9hZGVkIGZlbnJpci1naXQgZnJvbSB0aGUgQVVSIHVzaW5nIHlhb3Vy
dC4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBXaGVuIEkgdHJ5IHRvIHJ1biBmZW5yaXIgd2l0aCB0aGUg
Y29tbWFuZAo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IGZlbnJpcgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IGlu
IGEgdGVybWluYWwsIGhvdyBldmVyLCBpIGdldCBmZW5yaXIncyBzdGFydHVwIHNvdW5kLCBhbmQg
dGhpczoKPiA+Pj4+Pj4+Cj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gW2ZyYW5jaXNjb0BCbHVlYmxpbmsg
fl0kIGZlbnJpcgo+ID4+Pj4+Pj4gKiogKHByb2Nlc3M6NzAwOCk6IFdBUk5JTkcgKio6IDIwOjEy
OjQ1LjM3NDogRXJyb3IgbG9hZGluZyBwbHVnaW46Cj4gPj4+Pj4+PiBsaWJoc3BlbGwuc28uCj4g
Pj4+Pj4+PiAwOiBjYW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZpbGU6IE5vIHN1Y2ggZmlsZSBv
ciBkaXJlY3RvcnkKPiA+Pj4+Pj4+ICoqIChwcm9jZXNzOjcwMDgpOiBXQVJOSU5HICoqOiAyMDox
Mjo0NS4zNzQ6IEVycm9yIGxvYWRpbmcgcGx1Z2luOgo+ID4+Pj4+Pj4gbGlidm9pa2tvLnNvLgo+
ID4+Pj4+Pj4gMTogY2Fubm90IG9wZW4gc2hhcmVkIG9iamVjdCBmaWxlOiBObyBzdWNoIGZpbGUg
b3IgZGlyZWN0b3J5Cj4gPj4+Pj4+PiAqKiAocHJvY2Vzczo3MDA4KTogV0FSTklORyAqKjogMjA6
MTI6NDUuMzc3OiBFcnJvciBsb2FkaW5nIHBsdWdpbjoKPiA+Pj4+Pj4+IGxpYm51c3BlbGwuc28K
PiA+Pj4+Pj4+IC40OiBjYW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZpbGU6IE5vIHN1Y2ggZmls
ZSBvciBkaXJlY3RvcnkKPiA+Pj4+Pj4+Cj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gQW55IGlkZWFzIG9u
IGhvdyB0byBmaXggaXQsIGFuZCBubyBzcGVlY2ggZWl0aGVyLgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+
IFRoYW5rIHlvdSBmb3IgYW55IGFuc3dlci4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBCZXN0IHJlZ2Fy
ZHMuCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gRnJhbmNpc2NvLgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+Pj4+PiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiA+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPiA+Pj4+Pj4+Cj4gPj4+Pj4+Cj4gPj4+Pj4+Cj4gPj4+Pj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+Pj4+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+ID4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+Pj4+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+
Pj4+Pgo+ID4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4+Pj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+ID4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4+Cj4gPj4+Pgo+ID4+Pj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+ID4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+Pj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Pgo+ID4+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+PiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+PiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4K
PiA+Pgo+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+ID4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3QKPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4gPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
PgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

