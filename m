Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6A54538C905
	for <lists+blinux-list@lfdr.de>; Fri, 21 May 2021 16:16:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621606562;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dH6HzrJIvvMZBkhLfjKz1K1Za1UKwkEQU3ggAjZ5lfs=;
	b=UCkUbqlLBzBOXY4Z0C5zBsz6DkiN1U1fJkYfUZbiD2frQOQETUAo82g7rQ0bkqqGoi3VYI
	3csmWnTmp3NDheC8DRyJlmrPHYk/oY8CqDesNri0YVXfiLoJlMR4eS6aJuJDTcNv+Ra8Od
	rCfc1plJ6kz+WmDqNLfh2M7H/kJjCN0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-167-BrD9WBQvN1Sb3qOMJDz5qw-1; Fri, 21 May 2021 10:15:59 -0400
X-MC-Unique: BrD9WBQvN1Sb3qOMJDz5qw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 455D6100747A;
	Fri, 21 May 2021 14:15:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B07935D6DC;
	Fri, 21 May 2021 14:15:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 221551800BB4;
	Fri, 21 May 2021 14:15:49 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14LEFd5k006976 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 May 2021 10:15:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CA2A020E76BD; Fri, 21 May 2021 14:15:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C466620E76A2
	for <blinux-list@redhat.com>; Fri, 21 May 2021 14:15:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7586585828E
	for <blinux-list@redhat.com>; Fri, 21 May 2021 14:15:37 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-247-yvpVAYaHOfyCi1uKiR9H5w-1; Fri, 21 May 2021 10:15:35 -0400
X-MC-Unique: yvpVAYaHOfyCi1uKiR9H5w-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FmpY24yV2z3kmT
	for <blinux-list@redhat.com>; Fri, 21 May 2021 10:15:34 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FmpY24JCnzcbc; Fri, 21 May 2021 10:15:34 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FmpY23tjzzcbW
	for <blinux-list@redhat.com>; Fri, 21 May 2021 10:15:34 -0400 (EDT)
Date: Fri, 21 May 2021 10:15:34 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A question about Fenrir on Arch linux
In-Reply-To: <a23f506a-4ff2-ed28-590b-28a21ccc0b3b@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2105211014280.24532@panix1.panix.com>
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
	<4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
	<a8000f0d-1831-4a35-c7c5-da79f853000c@linux-a11y.org>
	<43d3b1f6-a50a-2e99-a9b4-5a9a6026faf3@gmail.com>
	<9a7f1b78-1b65-774a-494a-d2c5bc2090f9@linux-a11y.org>
	<2dd1a3a9-93e5-c1c8-6188-0f1b61e9367f@gmail.com>
	<760ead03-5616-e06e-d8e2-8961a0ba970a@linux-a11y.org>
	<1dbd65b0-0837-f81b-035d-00f30245cbe0@gmail.com>
	<889d2b70-ee26-f08c-1850-95e31065788a@linux-a11y.org>
	<a23f506a-4ff2-ed28-590b-28a21ccc0b3b@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 14LEFd5k006976
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

ZXNwZWFrIGFuZCBlc3BlYWstbmcgY29uZmxpY3Qgd2l0aCBlYWNoIG90aGVyIGFuZCBob3cgZXNw
ZWFrLW5nIGdldHMKdGFsa2luZyBvbiBhcmNobGludXggd2hlbiBpbnN0YWxsZWQgSSBuZXZlciBk
aWQgZmlndXJlIG91dC4KCgpPbiBGcmksIDIxIE1heSAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBIZWxsbyB0aGVyZSwKPgo+Cj4gU29ycnksIG15IGJh
ZCwgaSBmb3Jnb3QgdG8gbWVudGlvbiB0aGF0IEkgaGFkIGFscmVhZHkgaW5zdGFsbGVkIGl0IExP
TCEgbXkKPiBhcG9sb2dpZXMhIEkgaW5zdGFsbGVkIGl0IGFwcGVuZGluZyBpdCB0byBwYWNzdHJh
cCB3aGVuIGluc3RhbGxpbmcgQXJjaC4KPgo+IEJlc3QgcmVnYXJkcy4KPgo+IEZyYW5jaXNjby4K
Pgo+IE9uIDUvMjEvMjEgMTo0MSBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPiA+IEhvd2R5LAo+ID4KPiA+IHdlbGwgcmVtb3ZpbmcgZXNwZWFrIGlzIG5vdCB0
aGUgcG9pbnQgOiksIGluc3RhbGxpbmcgZXNwZWFrLW5nIHdhcyB0aGUgbWFpbgo+ID4gcG9pbnQu
Cj4gPgo+ID4gQW0gMjEuMDUuMjEgdW0gMTM6Mzggc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uOgo+ID4+IEhlbGxvIHRoZXJlLAo+ID4+Cj4gPj4KPiA+PiByZW1vdmlu
ZyBlc3BlYWsgZG9lc24ndCBmaXggaXQsIHRoZSBzYW1lIHByb2JsZW0gc3RpbGwgcGVyc2lzdHMu
Cj4gPj4KPiA+PiBCZXN0IHJlZ2FyZHMuCj4gPj4KPiA+PiBGcmFuY2lzY28uCj4gPj4KPiA+Pgo+
ID4+IE9uIDUvMjEvMjEgMTI6MzYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gd3JvdGU6Cj4gPj4+IEhvd2R5Cj4gPj4+Cj4gPj4+PiBJIGhhdmUgZXNwZWFrLCBzb3gsIGFu
ZCB4Y2xpcCBpbnN0YWxsZWQsIHBsdXMgcHVsc2VhdWRpbywKPiA+Pj4+IHB1bHNlYXVkaW8tYWxz
YSwgYWxzYS11dGlscyBhbmQgcGx1Z2lucy4KPiA+Pj4gZXNwZWFrLW5nIGlzIHVzZWQgYnkgZGVm
YXVsdCBpbnN0ZWFkIG9mIGVzcGVhay4gZXNwZWFrLW5nIGlzIHRoZSBzdWNjZXNzb3IKPiA+Pj4g
b2YgZXNwZWFrLiBkbyB0YWtlIGNhcmUgdG8gbm90IGluc3RhbGwgZXNwZWFrIGJ1dCBlc3BlYWst
bmcgYW5kIGdpdmUKPiA+Pj4gYW5vdGhlciBzaG90IDopLgo+ID4+Pgo+ID4+Pgo+ID4+PiBBbSAy
MS4wNS4yMSB1bSAxMTo0NyBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b246Cj4gPj4+PiBIZWxsbyB0aGVyZSwKPiA+Pj4+Cj4gPj4+Pgo+ID4+Pj4gSnVzdCBmb3IgdGhl
IGhlY2sgb2YgaXQsIEkgcmVkaWQgYSBjbGVhbiBpbnN0YWxsIG9mIGFyY2ggd2l0aCBwdWxzZWF1
ZGlvCj4gPj4+PiB0aGlzIHRpbWUsIGFuZCBJIGNvbmZpZ3VyZWQgZXZlcnl0aGluZyBJIG5lZWRl
ZCBydW5uaW5nIHRoZSBzaCBzY3JpcHQgeW91Cj4gPj4+PiBpbmRpY2F0ZWQuCj4gPj4+Pgo+ID4+
Pj4gSXQgaGFsZiB3b3JrcywgYW5kIGhhbGYgZG9lc24ndC4KPiA+Pj4+Cj4gPj4+PiBXaGF0IEkg
bWVhbiBieSB0aGF0IGlzIHRoYXQgd2hlbiBJIHJlc3RhcnRlZCB0aGUgbWFjaGluZSwganVzdCBh
IGZldwo+ID4+Pj4gc2Vjb25kcyBhZ28gYW5kIHJhbiBmZW5yaXIgYXMgc3Vkb2VyLCBpdCBwbGF5
ZWQgdGhlIHNvdW5kIGljb24sIHRoaW5nCj4gPj4+PiB0aGF0IHdpdGggcGlwZXdpcmUgZGlkbid0
IGhhcHBlbiwgYnV0IGdhdmUgbWUgbm8gc3BlZWNoIGF0IGFsbC4KPiA+Pj4+Cj4gPj4+PiBJIGhh
dmUgZXNwZWFrLCBzb3gsIGFuZCB4Y2xpcCBpbnN0YWxsZWQsIHBsdXMgcHVsc2VhdWRpbywKPiA+
Pj4+IHB1bHNlYXVkaW8tYWxzYSwgYWxzYS11dGlscyBhbmQgcGx1Z2lucy4KPiA+Pj4+Cj4gPj4+
PiBBbnkgc3VnZ2VzdGlvbnM/Cj4gPj4+Pgo+ID4+Pj4gVGhhbmtzIGFnYWluLgo+ID4+Pj4KPiA+
Pj4+IEJlc3QgcmVnYXJkcy4KPiA+Pj4+Cj4gPj4+PiBGcmFuY2lzY28uCj4gPj4+Pgo+ID4+Pj4g
T24gNS8xOC8yMSA1OjA2IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdy
b3RlOgo+ID4+Pj4+IEhvd2R5LAo+ID4+Pj4+Cj4gPj4+Pj4gZG8geW91IGhhdmUgdGhlIHJlcXVp
cmVtZW50cyBmb3IgdGhlIGdlbmVyaWMgc291bmQgLyB2b2ljZSBkcml2ZXJzCj4gPj4+Pj4gaW5z
dGFsbGVkPwo+ID4+Pj4+IFRvIGdldCBzdXJlLCByZWluc3RhbGwgaXQgZXhlY3V0ZToKPiA+Pj4+
PiBzdWRvIHBhY21hbiAtUyBzb3ggZXNwZWFrLW5nIHhjbGlwCj4gPj4+Pj4KPiA+Pj4+PiBzb3gg
aXMgdXNlZCBmb3IgcGxheSBzb3VuZCwgZXNwZWFrIGZvciB2b2ljZSBvdXRwdXQgaW4gdGhlIGRl
ZmF1bHQKPiA+Pj4+PiBjb25maWd1cmF0aW9uLCB4Y2xpcCBpcyBhIGZ1bm55IHRveSB0byBsZXQg
ZmVucmlyIHNoYXJlIHRoZSBjbGlwYm9hcmQKPiA+Pj4+PiBiZXR3ZWVuIHlvdXIgR1VJIGFuZCBU
ZXJtaW5hbC4KPiA+Pj4+Pgo+ID4+Pj4+IHN0YXJ0IGZlbnJpciBmb3IgdGVzdGluZyBpbiBmb3Jl
Z3JvdW5kIC0geW91IGNhbiBzdG9wIGl0IHVzaW5nIENUUkwgKyBDCj4gPj4+Pj4gc3VkbyBmZW5y
aXIKPiA+Pj4+Pgo+ID4+Pj4+IGRpZCB5b3UgaGVhciB0aGUgc3RhcnR1cCBzb3VuZD8gZmVucmly
IHBsYXlzIGEgbGl0dGxlIHNvdW5kaWNvbiBhdAo+ID4+Pj4+IHN0YXJ0dXAuCj4gPj4+Pj4KPiA+
Pj4+PiBpZiBub3QsIHRoZW4gcHVsc2VhdWRpbyBpcyBub3QgY29uZmlndXJlZC4KPiA+Pj4+PiBz
aG9ydCBzdG9yeSBleGVjdXRlOgo+ID4+Pj4+ICMgY29uZmlndXJlIHVzZXIKPiA+Pj4+PiAvdXNy
L3NoYXJlL2ZlbnJpcnNjcmVlbnJlYWRlci90b29scy9jb25maWd1cmVfcHVsc2Uuc2gKPiA+Pj4+
PiAjIGNvbmZpZ3VyZSByb290Cj4gPj4+Pj4gc3VkbyAvdXNyL3NoYXJlL2ZlbnJpcnNjcmVlbnJl
YWRlci90b29scy9jb25maWd1cmVfcHVsc2Uuc2gKPiA+Pj4+Pgo+ID4+Pj4+ICMgbmVlZCB0byBy
ZXN0YXJ0IHRoYXQgdGhlIGNvbmZpZ3VyYXRpb24gZm9yIGJvdGggZ2V0IGFjdGl2ZQo+ID4+Pj4+
Cj4gPj4+Pj4gcmVzdGFydAo+ID4+Pj4+Cj4gPj4+Pj4gdGhlbiByZXRyeQo+ID4+Pj4+Cj4gPj4+
Pj4gc3VkbyBmZW5yaXIKPiA+Pj4+Pgo+ID4+Pj4+IGxvbmcgc3RvcnJ5OiBmZW5yaXIgbmVlZHMg
YnkgZGVmYXVsdCB0byBydW4gYXMgcm9vdCB0byBjb2xsZWN0IHRoZSBkYXRhCj4gPj4+Pj4gb24g
eW91ciBzY3JlZW4gb3IgY2FwdXRyZSB0aGUgaW5wdXQgZGV2aWNlcy4gaWYgZmVucmlyIHNwZWFr
cyBvciBjcmVhdGVzCj4gPj4+Pj4gc291bmQsIGl0IGRvZXMgdGhpcyBhcyByb290IHVzZXIuIHlv
dSB3b250IGhlYXIgc291bmQgb2YgYW4gb3RoZXIgdXNlcgo+ID4+Pj4+IGJ5IHB1bHNlYXVkaW8g
KHNvdW5kIHNlcnZlcikgZGVzaWduLiBXZSBuZWVkIHRvIHRyYW5zcG9ydCB0aGUgc291bmQKPiA+
Pj4+PiBjcmVhdGVkIGFzIHJvb3QgdG8gdGhlIHNvdW5kIHNlcnZlciB5b3UgaGF2ZSBydW5uaW5n
IGFzIHVzZXIgdG8gZmluYWxseQo+ID4+Pj4+IGhlYXIgdGhlIHNvdW5kLgo+ID4+Pj4+Cj4gPj4+
Pj4gZmVucmlyIHByb3ZpZGVzIDIgc2NyaXB0cyAoc2VlIGFib3ZlKSB0byBjb25maWd1cmUgdGhl
IHJvb3QgcHVzZSBhdWRpbwo+ID4+Pj4+IHRvIHNlbmQgdGhlIGRhdGEgdG8geW91ciB1c2VyIGFu
ZCBjb25maWd1cmUgdXNlciBwdWxzZSBhdWRpbyB0byBsaXN0ZW4KPiA+Pj4+PiB0byB0aGUgc291
bmQgc2VudCBieSByb290IGFuZCBwbGF5IGl0Lgo+ID4+Pj4+Cj4gPj4+Pj4gY2hlZXJzIGNocnlz
Cj4gPj4+Pj4KPiA+Pj4+Pgo+ID4+Pj4+IDE4LjA1LjIxIHVtIDE0OjQ2IHNjaHJpZWIgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbjoKPiA+Pj4+Pgo+ID4+Pj4+PiBIZWxsbyB0aGVy
ZSwKPiA+Pj4+Pj4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gVGhhbmtzIHNvIG11Y2gsIG5vdywgdGhhdCBw
YXJ0IG9mIHRoZSBwcm9ibGVtIGlzIHNvbHZlZCEKPiA+Pj4+Pj4KPiA+Pj4+Pj4gVGhlIG90aGVy
IHBhcnQsIGhvdyBldmVyLCB0aGF0IGlzIG5vdCBzb2x2ZWQsIGlzIHRoYXQgZmVucmlyIGRvZXNu
J3QKPiA+Pj4+Pj4gc3BlYWsgd2l0aCBlc3BlYWssIG9yIGVzcGVhay1uZy4KPiA+Pj4+Pj4KPiA+
Pj4+Pj4gRG8gSSBoYXZlIHRvIHNldCBzb21ldGhpbmcgc29tZXdoZXJlIGZvciB0aGF0IHRvIGhh
cHBlbj8KPiA+Pj4+Pj4KPiA+Pj4+Pj4gVGhhbmtzIGFnYWluLgo+ID4+Pj4+Pgo+ID4+Pj4+PiBC
ZXN0IHJlZ2FyZHMuCj4gPj4+Pj4+Cj4gPj4+Pj4+IEZyYW5jaXNjby4KPiA+Pj4+Pj4KPiA+Pj4+
Pj4gT24gNS8xOC8yMSAxMDoyNCBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPiA+Pj4+Pj4+IEhvd2R5IEZyYW5jaXNjbywKPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBp
IGRvbnQga25vdyB3aHkgdGhvc2UgbGlicyBhcmUgbm90IGFuIGRlcGVuZGVuY3kgYnkgcHl0aG9u
LXB5ZW5jaGFudAo+ID4+Pj4+Pj4gaWYgdGhvc2UgYXJlIHNwcmVhZCB3YXJuaW5ncy4gTWF5YmUg
dGhpcyBzaG91bGQgYmUgcmVwb3J0ZWQgdG8gdGhlCj4gPj4+Pj4+PiBwYWNrYWdlIG1haW50YWlu
ZXIuIEJ1dCBhbnl3YXkuCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4geW91IGNhbiBhc2sgcGFjbWFuIHdo
YXQgcGFja2FnZSBjb250YWlucyB0aGUgc3BlY2lmaWMgZmlsZSB5b3UgbmVlZCBieQo+ID4+Pj4+
Pj4gInN1ZG8gcGFjbWFuIC1GeSBmaWxlbmFtZSIuIGhlcmUgaSBkaWQgdGhpcyBmb3IgZm9yIGV4
YW1wbGUgaW4KPiA+Pj4+Pj4+IGxpYnZva2tvLnNvOgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IDEwOjE0
IFtjaHJ5c0BibGFja2JlYXN0IH5dIDopICQgc3VkbyBwYWNtYW4gLUZ5IGxpYnZvaWtrby5zbwo+
ID4+Pj4+Pj4gW3N1ZG9dIFBhc3N3b3J0IGY/ciBjaHJ5czoKPiA+Pj4+Pj4+IDo6IFN5bmNocm9u
aXNpZXJlIFBha2V0ZGF0ZW5iYW5rZW4uLi4KPiA+Pj4+Pj4+IMKgY29yZSA5MDMsNSBLaULCoCA2
LDE3IE1pQi9zIDAwOjAwCj4gPj4+Pj4+PiBbIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjI10KPiA+Pj4+Pj4+IDEw
MCUKPiA+Pj4+Pj4+IMKgZXh0cmEgOSwzIE1pQsKgIDI2LDkgTWlCL3MgMDA6MDAKPiA+Pj4+Pj4+
IFsjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjXQo+ID4+Pj4+Pj4gMTAwJQo+ID4+Pj4+Pj4gwqBjb21tdW5pdHkg
MjIsOCBNaULCoCAyOSw2IE1pQi9zIDAwOjAxCj4gPj4+Pj4+PiBbIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjI10K
PiA+Pj4+Pj4+IDEwMCUKPiA+Pj4+Pj4+IMKgbXVsdGlsaWIgMjIyLDUgS2lCwqAgMTIsOCBNaUIv
cyAwMDowMAo+ID4+Pj4+Pj4gWyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyNdCj4gPj4+Pj4+PiAxMDAlCj4gPj4+
Pj4+PiBleHRyYS9saWJ2b2lra28gNC4zLjEtMQo+ID4+Pj4+Pj4gwqDCoMKgIHVzci9saWIvbGli
dm9pa2tvLnNvCj4gPj4+Pj4+PiAxMDoxNSBbY2hyeXNAYmxhY2tiZWFzdCB+XSA6KSAkCj4gPj4+
Pj4+Pgo+ID4+Pj4+Pj4gc28gdGhlIHBhY2thZ2UgeW91IG5lZWQgZm9yIGxpYnZva2tvLnNvIGlz
ICJsaWJ2b2lra28iCj4gPj4+Pj4+PiB0byBzaWxlbmNlIG91dCBhbGwgdGhlIHdhcm5pbmdzIGRv
IHRoaXM6Cj4gPj4+Pj4+PiBzdWRvIHBhY21hbiAtUyBsaWJ2b2lra28gbnVzcGVsbCBoc3BlbGwK
PiA+Pj4+Pj4+Cj4gPj4+Pj4+PiB0aGlzIGluc3RhbGwgYWxsIDMgKElNTyBvcHRpb25hbCBkZXBl
bmRlbmN5J3MsIHdoYXQgc2hvdWxkIG5vdCBjcmVhdGUKPiA+Pj4+Pj4+IGEgd2FybmluZywgYnV0
IHdlbGwsIGl0IGlzIGxpa2UgaXQgaXMpCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gaSB1c2UgaXJzc2kg
YXMgSVJDIChjb21tYW5kbGluZSkgY2xpZW50LiB0aGVyZSBpcyBhbHNvIFBpZGdpbiAoYXMKPiA+
Pj4+Pj4+IGdyYXBoaWNhbCBjbGllbnQpLiBib3RoIGFyZSB2ZXJ5IG5pY2UuCj4gPj4+Pj4+Pgo+
ID4+Pj4+Pj4gbG9va2luZyBmb3J3YXJkIHRvIHNlZSB5b3UgaW4gSVJDIDopLgo+ID4+Pj4+Pj4K
PiA+Pj4+Pj4+IGNoZWVycyBjaHJ5cwo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBBbSAx
OC4wNS4yMSB1bSAwODo1NyBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b246Cj4gPj4+Pj4+Pj4gSGVsbG8gdGhlcmUsCj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+
Pj4+IEkgbWFuYWdlZCB0byBpbnN0YWxsIG9uZSBvZiB0aGUgbGlicmFyaWVzLCBidXQgbm90IHRo
ZSBvdGhlciB0d28sIHNvCj4gPj4+Pj4+Pj4gdGhhbmtzIGZvciB0aGF0Lgo+ID4+Pj4+Pj4+Cj4g
Pj4+Pj4+Pj4gQWxzbywgdGhhbmtzIGZvciBzdWdnZXN0aW5nIHRvIHVzZSB5YXksIEkganVzdCBp
bnN0YWxsZWQgaXQsIEkgZGlkbid0Cj4gPj4+Pj4+Pj4ga25vdyB5YW91cnQgd2FzIGRlcHJlY2F0
ZWQuCj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBNeSBxdWVzdGlvbiBub3cgaXMsIGFuZCB0aGlzJ2xs
IGJlIGR1bSwgd2hhdCBhcmUgcmVjb21tZW5kZWQgSVJDCj4gPj4+Pj4+Pj4gY2xpZW50cz8gaG93
IGRvIEkgZ2V0IHRoZW0gd29ya2luZz8gd2hhdCBzaG91bGQgSSBrbm93IGJlZm9yZSBqb2luaW5n
Cj4gPj4+Pj4+Pj4gYW4gSVJDIGNoYW5uZWwsIHdoYXQgZXZlciBpdCBtaWdodCBiZT8KPiA+Pj4+
Pj4+Pgo+ID4+Pj4+Pj4+IFRoYW5rcyBhZ2Fpbi4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IEJlc3Qg
cmVnYXJkcy4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IEZyYW5jaXNjby4KPiA+Pj4+Pj4+Pgo+ID4+
Pj4+Pj4+IE9uIDUvMTcvMjEgOToxOSBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiB3cm90ZToKPiA+Pj4+Pj4+Pj4gSGksIEkganVzdCBwb3N0ZWQgYSBsaW5rIHRvIHRoaXMg
bWVzc2FnZSBpbnRlbmRlZCB0byBjaHJ5cyAoRmVucmlyCj4gPj4+Pj4+Pj4+IGF1dGhvcikgb24g
dGhlICNhMTF5IGNoYW5uZWwgb2YgaXJjLmxpbnV4LWExMXkub3JnLgo+ID4+Pj4+Pj4+Pgo+ID4+
Pj4+Pj4+PiBNYXliZSBqb2luIGhpbSB0aGVyZT8KPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4gRGlk
aWVyCj4gPj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+IExlIDE3LzA1LzIwMjEgPyAyMDoxNSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhID9jcml0wqA6Cj4gPj4+Pj4+Pj4+PiBIZWxs
byBldmVyeW9uZSwKPiA+Pj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+Pj4gSSBqdXN0
IGRvd25sb2FkZWQgZmVucmlyLWdpdCBmcm9tIHRoZSBBVVIgdXNpbmcgeWFvdXJ0Lgo+ID4+Pj4+
Pj4+Pj4KPiA+Pj4+Pj4+Pj4+IFdoZW4gSSB0cnkgdG8gcnVuIGZlbnJpciB3aXRoIHRoZSBjb21t
YW5kCj4gPj4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+Pj4gZmVucmlyCj4gPj4+Pj4+Pj4+Pgo+ID4+Pj4+
Pj4+Pj4gaW4gYSB0ZXJtaW5hbCwgaG93IGV2ZXIsIGkgZ2V0IGZlbnJpcidzIHN0YXJ0dXAgc291
bmQsIGFuZCB0aGlzOgo+ID4+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+PiBbZnJh
bmNpc2NvQEJsdWVibGluayB+XSQgZmVucmlyCj4gPj4+Pj4+Pj4+PiAqKiAocHJvY2Vzczo3MDA4
KTogV0FSTklORyAqKjogMjA6MTI6NDUuMzc0OiBFcnJvciBsb2FkaW5nIHBsdWdpbjoKPiA+Pj4+
Pj4+Pj4+IGxpYmhzcGVsbC5zby4KPiA+Pj4+Pj4+Pj4+IDA6IGNhbm5vdCBvcGVuIHNoYXJlZCBv
YmplY3QgZmlsZTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQo+ID4+Pj4+Pj4+Pj4gKiogKHBy
b2Nlc3M6NzAwOCk6IFdBUk5JTkcgKio6IDIwOjEyOjQ1LjM3NDogRXJyb3IgbG9hZGluZyBwbHVn
aW46Cj4gPj4+Pj4+Pj4+PiBsaWJ2b2lra28uc28uCj4gPj4+Pj4+Pj4+PiAxOiBjYW5ub3Qgb3Bl
biBzaGFyZWQgb2JqZWN0IGZpbGU6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkKPiA+Pj4+Pj4+
Pj4+ICoqIChwcm9jZXNzOjcwMDgpOiBXQVJOSU5HICoqOiAyMDoxMjo0NS4zNzc6IEVycm9yIGxv
YWRpbmcgcGx1Z2luOgo+ID4+Pj4+Pj4+Pj4gbGlibnVzcGVsbC5zbwo+ID4+Pj4+Pj4+Pj4gLjQ6
IGNhbm5vdCBvcGVuIHNoYXJlZCBvYmplY3QgZmlsZTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9y
eQo+ID4+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+PiBBbnkgaWRlYXMgb24gaG93
IHRvIGZpeCBpdCwgYW5kIG5vIHNwZWVjaCBlaXRoZXIuCj4gPj4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+
Pj4gVGhhbmsgeW91IGZvciBhbnkgYW5zd2VyLgo+ID4+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4+IEJl
c3QgcmVnYXJkcy4KPiA+Pj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+PiBGcmFuY2lzY28uCj4gPj4+Pj4+
Pj4+Pgo+ID4+Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiA+Pj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+Pj4+Pj4+
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Pj4+Pj4+Pj4KPiA+Pj4+
Pj4+Pj4KPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiA+Pj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4gPj4+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+Pj4+Pj4+Pj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Pj4+Pj4+
Cj4gPj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiA+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+Pj4+PiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4gPj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4+Pj4+Pj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gPj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0Cj4gPj4+Pj4+Cj4gPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gPj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+
Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4+Pgo+ID4+Pj4+Cj4gPj4+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+ID4+Pj4KPiA+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPiA+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4KPiA+Pj4KPiA+Pj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+Pj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4+Cj4gPj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+PiBCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKPiA+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+ID4KPiA+Cj4g
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

