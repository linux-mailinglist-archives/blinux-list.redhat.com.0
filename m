Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id CD485387BF0
	for <lists+blinux-list@lfdr.de>; Tue, 18 May 2021 17:07:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621350434;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6dA/hwJJiR5s/9s5wrQKuLFPkEgEw3ELAmpQLcx9NfE=;
	b=Cy2n39RMvl1ebCCH8cK1+khRdS80Xq41e9RfptNl4cGiYhSHzlYWGQkdxRQqarMtKH3w1t
	T5AxAAFK4Q8pL2nG/FAi9/kjgmwZ4/RX6KpgEkg2TXQjT2hEa+KnffirCogNgjZNJVqnrG
	4uczZ9cAYOw9WaWcB2McbatUOWobAZc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-134-vtVvQhICNXuWDEsn6xsC0w-1; Tue, 18 May 2021 11:07:12 -0400
X-MC-Unique: vtVvQhICNXuWDEsn6xsC0w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A1A581005D53;
	Tue, 18 May 2021 15:07:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E2D9119D7C;
	Tue, 18 May 2021 15:07:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A552655344;
	Tue, 18 May 2021 15:07:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14IF6sBO019864 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 May 2021 11:06:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CDA03F897F; Tue, 18 May 2021 15:06:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7B9DF897B
	for <blinux-list@redhat.com>; Tue, 18 May 2021 15:06:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B67FF1857F30
	for <blinux-list@redhat.com>; Tue, 18 May 2021 15:06:51 +0000 (UTC)
Received: from smtprelay05.ispgateway.de (smtprelay05.ispgateway.de
	[80.67.18.28]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-512-QiW69BOvNYmOL60cryXWBA-1; Tue, 18 May 2021 11:06:49 -0400
X-MC-Unique: QiW69BOvNYmOL60cryXWBA-1
Received: from [37.4.229.143] (helo=[192.168.178.104])
	by smtprelay05.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1lj1IL-0008Dz-Ek
	for blinux-list@redhat.com; Tue, 18 May 2021 17:06:05 +0200
Subject: Re: A question about Fenrir on Arch linux
To: blinux-list@redhat.com
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
	<4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
	<a8000f0d-1831-4a35-c7c5-da79f853000c@linux-a11y.org>
	<43d3b1f6-a50a-2e99-a9b4-5a9a6026faf3@gmail.com>
Message-ID: <9a7f1b78-1b65-774a-494a-d2c5bc2090f9@linux-a11y.org>
Date: Tue, 18 May 2021 17:06:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <43d3b1f6-a50a-2e99-a9b4-5a9a6026faf3@gmail.com>
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
Content-Language: de-DE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SG93ZHksCgpkbyB5b3UgaGF2ZSB0aGUgcmVxdWlyZW1lbnRzIGZvciB0aGUgZ2VuZXJpYyBzb3Vu
ZCAvIHZvaWNlIGRyaXZlcnMgCmluc3RhbGxlZD8KVG8gZ2V0IHN1cmUsIHJlaW5zdGFsbCBpdCBl
eGVjdXRlOgpzdWRvIHBhY21hbiAtUyBzb3ggZXNwZWFrLW5nIHhjbGlwCgpzb3ggaXMgdXNlZCBm
b3IgcGxheSBzb3VuZCwgZXNwZWFrIGZvciB2b2ljZSBvdXRwdXQgaW4gdGhlIGRlZmF1bHQgCmNv
bmZpZ3VyYXRpb24sIHhjbGlwIGlzIGEgZnVubnkgdG95IHRvIGxldCBmZW5yaXIgc2hhcmUgdGhl
IGNsaXBib2FyZCAKYmV0d2VlbiB5b3VyIEdVSSBhbmQgVGVybWluYWwuCgpzdGFydCBmZW5yaXIg
Zm9yIHRlc3RpbmcgaW4gZm9yZWdyb3VuZCAtIHlvdSBjYW4gc3RvcCBpdCB1c2luZyBDVFJMICsg
QwpzdWRvIGZlbnJpcgoKZGlkIHlvdSBoZWFyIHRoZSBzdGFydHVwIHNvdW5kPyBmZW5yaXIgcGxh
eXMgYSBsaXR0bGUgc291bmRpY29uIGF0IHN0YXJ0dXAuCgppZiBub3QsIHRoZW4gcHVsc2VhdWRp
byBpcyBub3QgY29uZmlndXJlZC4Kc2hvcnQgc3RvcnkgZXhlY3V0ZToKIyBjb25maWd1cmUgdXNl
cgovdXNyL3NoYXJlL2ZlbnJpcnNjcmVlbnJlYWRlci90b29scy9jb25maWd1cmVfcHVsc2Uuc2gK
IyBjb25maWd1cmUgcm9vdApzdWRvIC91c3Ivc2hhcmUvZmVucmlyc2NyZWVucmVhZGVyL3Rvb2xz
L2NvbmZpZ3VyZV9wdWxzZS5zaAoKIyBuZWVkIHRvIHJlc3RhcnQgdGhhdCB0aGUgY29uZmlndXJh
dGlvbiBmb3IgYm90aCBnZXQgYWN0aXZlCgpyZXN0YXJ0Cgp0aGVuIHJldHJ5CgpzdWRvIGZlbnJp
cgoKbG9uZyBzdG9ycnk6IGZlbnJpciBuZWVkcyBieSBkZWZhdWx0IHRvIHJ1biBhcyByb290IHRv
IGNvbGxlY3QgdGhlIGRhdGEgCm9uIHlvdXIgc2NyZWVuIG9yIGNhcHV0cmUgdGhlIGlucHV0IGRl
dmljZXMuIGlmIGZlbnJpciBzcGVha3Mgb3IgY3JlYXRlcyAKc291bmQsIGl0IGRvZXMgdGhpcyBh
cyByb290IHVzZXIuIHlvdSB3b250IGhlYXIgc291bmQgb2YgYW4gb3RoZXIgdXNlciAKYnkgcHVs
c2VhdWRpbyAoc291bmQgc2VydmVyKSBkZXNpZ24uIFdlIG5lZWQgdG8gdHJhbnNwb3J0IHRoZSBz
b3VuZCAKY3JlYXRlZCBhcyByb290IHRvIHRoZSBzb3VuZCBzZXJ2ZXIgeW91IGhhdmUgcnVubmlu
ZyBhcyB1c2VyIHRvIGZpbmFsbHkgCmhlYXIgdGhlIHNvdW5kLgoKZmVucmlyIHByb3ZpZGVzIDIg
c2NyaXB0cyAoc2VlIGFib3ZlKSB0byBjb25maWd1cmUgdGhlIHJvb3QgcHVzZSBhdWRpbyAKdG8g
c2VuZCB0aGUgZGF0YSB0byB5b3VyIHVzZXIgYW5kIGNvbmZpZ3VyZSB1c2VyIHB1bHNlIGF1ZGlv
IHRvIGxpc3RlbiAKdG8gdGhlIHNvdW5kIHNlbnQgYnkgcm9vdCBhbmQgcGxheSBpdC4KCmNoZWVy
cyBjaHJ5cwoKCjE4LjA1LjIxIHVtIDE0OjQ2IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbjoKCj4gSGVsbG8gdGhlcmUsCj4KPgo+IFRoYW5rcyBzbyBtdWNoLCBub3cs
IHRoYXQgcGFydCBvZiB0aGUgcHJvYmxlbSBpcyBzb2x2ZWQhCj4KPiBUaGUgb3RoZXIgcGFydCwg
aG93IGV2ZXIsIHRoYXQgaXMgbm90IHNvbHZlZCwgaXMgdGhhdCBmZW5yaXIgZG9lc24ndCAKPiBz
cGVhayB3aXRoIGVzcGVhaywgb3IgZXNwZWFrLW5nLgo+Cj4gRG8gSSBoYXZlIHRvIHNldCBzb21l
dGhpbmcgc29tZXdoZXJlIGZvciB0aGF0IHRvIGhhcHBlbj8KPgo+IFRoYW5rcyBhZ2Fpbi4KPgo+
IEJlc3QgcmVnYXJkcy4KPgo+IEZyYW5jaXNjby4KPgo+IE9uIDUvMTgvMjEgMTA6MjQgQU0sIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IEhvd2R5IEZyYW5jaXNj
bywKPj4KPj4gaSBkb250IGtub3cgd2h5IHRob3NlIGxpYnMgYXJlIG5vdCBhbiBkZXBlbmRlbmN5
IGJ5IHB5dGhvbi1weWVuY2hhbnQgCj4+IGlmIHRob3NlIGFyZSBzcHJlYWQgd2FybmluZ3MuIE1h
eWJlIHRoaXMgc2hvdWxkIGJlIHJlcG9ydGVkIHRvIHRoZSAKPj4gcGFja2FnZSBtYWludGFpbmVy
LiBCdXQgYW55d2F5Lgo+Pgo+PiB5b3UgY2FuIGFzayBwYWNtYW4gd2hhdCBwYWNrYWdlIGNvbnRh
aW5zIHRoZSBzcGVjaWZpYyBmaWxlIHlvdSBuZWVkIAo+PiBieSAic3VkbyBwYWNtYW4gLUZ5IGZp
bGVuYW1lIi4gaGVyZSBpIGRpZCB0aGlzIGZvciBmb3IgZXhhbXBsZSBpbiAKPj4gbGlidm9ra28u
c286Cj4+Cj4+IDEwOjE0IFtjaHJ5c0BibGFja2JlYXN0IH5dIDopICQgc3VkbyBwYWNtYW4gLUZ5
IGxpYnZvaWtrby5zbwo+PiBbc3Vkb10gUGFzc3dvcnQgZsO8ciBjaHJ5czoKPj4gOjogU3luY2hy
b25pc2llcmUgUGFrZXRkYXRlbmJhbmtlbi4uLgo+PiDCoGNvcmUgOTAzLDUgS2lCwqAgNiwxNyBN
aUIvcyAwMDowMCAKPj4gWyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyNdIAo+PiAxMDAlCj4+IMKgZXh0cmEgOSwz
IE1pQsKgIDI2LDkgTWlCL3MgMDA6MDAgCj4+IFsjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjXSAKPj4gMTAwJQo+
PiDCoGNvbW11bml0eSAyMiw4IE1pQsKgIDI5LDYgTWlCL3MgMDA6MDEgCj4+IFsjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjXSAKPj4gMTAwJQo+PiDCoG11bHRpbGliIDIyMiw1IEtpQsKgIDEyLDggTWlCL3MgMDA6
MDAgCj4+IFsjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjXSAKPj4gMTAwJQo+PiBleHRyYS9saWJ2b2lra28gNC4z
LjEtMQo+PiDCoMKgwqAgdXNyL2xpYi9saWJ2b2lra28uc28KPj4gMTA6MTUgW2NocnlzQGJsYWNr
YmVhc3Qgfl0gOikgJAo+Pgo+PiBzbyB0aGUgcGFja2FnZSB5b3UgbmVlZCBmb3IgbGlidm9ra28u
c28gaXMgImxpYnZvaWtrbyIKPj4gdG8gc2lsZW5jZSBvdXQgYWxsIHRoZSB3YXJuaW5ncyBkbyB0
aGlzOgo+PiBzdWRvIHBhY21hbiAtUyBsaWJ2b2lra28gbnVzcGVsbCBoc3BlbGwKPj4KPj4gdGhp
cyBpbnN0YWxsIGFsbCAzIChJTU8gb3B0aW9uYWwgZGVwZW5kZW5jeSdzLCB3aGF0IHNob3VsZCBu
b3QgY3JlYXRlIAo+PiBhIHdhcm5pbmcsIGJ1dCB3ZWxsLCBpdCBpcyBsaWtlIGl0IGlzKQo+Pgo+
PiBpIHVzZSBpcnNzaSBhcyBJUkMgKGNvbW1hbmRsaW5lKSBjbGllbnQuIHRoZXJlIGlzIGFsc28g
UGlkZ2luIChhcyAKPj4gZ3JhcGhpY2FsIGNsaWVudCkuIGJvdGggYXJlIHZlcnkgbmljZS4KPj4K
Pj4gbG9va2luZyBmb3J3YXJkIHRvIHNlZSB5b3UgaW4gSVJDIDopLgo+Pgo+PiBjaGVlcnMgY2hy
eXMKPj4KPj4KPj4gQW0gMTguMDUuMjEgdW0gMDg6NTcgc2NocmllYiBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uOgo+Pj4gSGVsbG8gdGhlcmUsCj4+Pgo+Pj4KPj4+IEkgbWFuYWdl
ZCB0byBpbnN0YWxsIG9uZSBvZiB0aGUgbGlicmFyaWVzLCBidXQgbm90IHRoZSBvdGhlciB0d28s
IHNvIAo+Pj4gdGhhbmtzIGZvciB0aGF0Lgo+Pj4KPj4+IEFsc28sIHRoYW5rcyBmb3Igc3VnZ2Vz
dGluZyB0byB1c2UgeWF5LCBJIGp1c3QgaW5zdGFsbGVkIGl0LCBJIAo+Pj4gZGlkbid0IGtub3cg
eWFvdXJ0IHdhcyBkZXByZWNhdGVkLgo+Pj4KPj4+IE15IHF1ZXN0aW9uIG5vdyBpcywgYW5kIHRo
aXMnbGwgYmUgZHVtLCB3aGF0IGFyZSByZWNvbW1lbmRlZCBJUkMgCj4+PiBjbGllbnRzPyBob3cg
ZG8gSSBnZXQgdGhlbSB3b3JraW5nPyB3aGF0IHNob3VsZCBJIGtub3cgYmVmb3JlIAo+Pj4gam9p
bmluZyBhbiBJUkMgY2hhbm5lbCwgd2hhdCBldmVyIGl0IG1pZ2h0IGJlPwo+Pj4KPj4+IFRoYW5r
cyBhZ2Fpbi4KPj4+Cj4+PiBCZXN0IHJlZ2FyZHMuCj4+Pgo+Pj4gRnJhbmNpc2NvLgo+Pj4KPj4+
IE9uIDUvMTcvMjEgOToxOSBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPj4+PiBIaSwgSSBqdXN0IHBvc3RlZCBhIGxpbmsgdG8gdGhpcyBtZXNzYWdlIGludGVu
ZGVkIHRvIGNocnlzIChGZW5yaXIgCj4+Pj4gYXV0aG9yKSBvbiB0aGUgI2ExMXkgY2hhbm5lbCBv
ZiBpcmMubGludXgtYTExeS5vcmcuCj4+Pj4KPj4+PiBNYXliZSBqb2luIGhpbSB0aGVyZT8KPj4+
Pgo+Pj4+IERpZGllcgo+Pj4+Cj4+Pj4gTGUgMTcvMDUvMjAyMSDDoCAyMDoxNSwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+Pj4+PiBIZWxsbyBldmVyeW9u
ZSwKPj4+Pj4KPj4+Pj4KPj4+Pj4gSSBqdXN0IGRvd25sb2FkZWQgZmVucmlyLWdpdCBmcm9tIHRo
ZSBBVVIgdXNpbmcgeWFvdXJ0Lgo+Pj4+Pgo+Pj4+PiBXaGVuIEkgdHJ5IHRvIHJ1biBmZW5yaXIg
d2l0aCB0aGUgY29tbWFuZAo+Pj4+Pgo+Pj4+PiBmZW5yaXIKPj4+Pj4KPj4+Pj4gaW4gYSB0ZXJt
aW5hbCwgaG93IGV2ZXIsIGkgZ2V0IGZlbnJpcidzIHN0YXJ0dXAgc291bmQsIGFuZCB0aGlzOgo+
Pj4+Pgo+Pj4+Pgo+Pj4+PiBbZnJhbmNpc2NvQEJsdWVibGluayB+XSQgZmVucmlyCj4+Pj4+ICoq
IChwcm9jZXNzOjcwMDgpOiBXQVJOSU5HICoqOiAyMDoxMjo0NS4zNzQ6IEVycm9yIGxvYWRpbmcg
cGx1Z2luOiAKPj4+Pj4gbGliaHNwZWxsLnNvLgo+Pj4+PiAwOiBjYW5ub3Qgb3BlbiBzaGFyZWQg
b2JqZWN0IGZpbGU6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkKPj4+Pj4gKiogKHByb2Nlc3M6
NzAwOCk6IFdBUk5JTkcgKio6IDIwOjEyOjQ1LjM3NDogRXJyb3IgbG9hZGluZyBwbHVnaW46IAo+
Pj4+PiBsaWJ2b2lra28uc28uCj4+Pj4+IDE6IGNhbm5vdCBvcGVuIHNoYXJlZCBvYmplY3QgZmls
ZTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQo+Pj4+PiAqKiAocHJvY2Vzczo3MDA4KTogV0FS
TklORyAqKjogMjA6MTI6NDUuMzc3OiBFcnJvciBsb2FkaW5nIHBsdWdpbjogCj4+Pj4+IGxpYm51
c3BlbGwuc28KPj4+Pj4gLjQ6IGNhbm5vdCBvcGVuIHNoYXJlZCBvYmplY3QgZmlsZTogTm8gc3Vj
aCBmaWxlIG9yIGRpcmVjdG9yeQo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBBbnkgaWRlYXMgb24gaG93IHRv
IGZpeCBpdCwgYW5kIG5vIHNwZWVjaCBlaXRoZXIuCj4+Pj4+Cj4+Pj4+IFRoYW5rIHlvdSBmb3Ig
YW55IGFuc3dlci4KPj4+Pj4KPj4+Pj4gQmVzdCByZWdhcmRzLgo+Pj4+Pgo+Pj4+PiBGcmFuY2lz
Y28uCj4+Pj4+Cj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+PiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPj4+Pj4KPj4+Pgo+Pj4+Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4KPj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4KPj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3Q=

