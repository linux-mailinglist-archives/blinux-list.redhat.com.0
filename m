Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB94752AC6
	for <lists+blinux-list@lfdr.de>; Thu, 13 Jul 2023 21:13:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689275584;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=S+I/nPzU6BCA02ZIvseP+g2ouLUcvC2qbvbWplvEk0M=;
	b=bBtN4I41mmscy4sFpb9siHUEsDUdQq4oa35hssv4GkCn0RH22wAP8qcVyzOa1/WEnyNlvn
	Z+pCAc6EESmDBLzhQp41BA52qos4A0sNCA/H6ECfGGbDAin9ea9Dg26VUKjmi9lgU2kvUW
	yVflxY9Sn2lbGu1+55KBOzBJ4TpOF+k=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-288-0fBpQEtFPx-aI-OYUg6g6Q-1; Thu, 13 Jul 2023 15:13:02 -0400
X-MC-Unique: 0fBpQEtFPx-aI-OYUg6g6Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 803FD803DBE;
	Thu, 13 Jul 2023 19:13:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3D3DC4028AA4;
	Thu, 13 Jul 2023 19:12:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7533A19465B3;
	Thu, 13 Jul 2023 19:12:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 13 Jul 2023 14:08:09 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: Slint for beginners?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.821.1689183357.3826225.blinux-list@redhat.com>
 <mailman.24.1689262689.110736.blinux-list@redhat.com>
 <mailman.18.1689263767.110742.blinux-list@redhat.com>
 <mailman.39.1689264158.110736.blinux-list@redhat.com>
In-Reply-To: <mailman.39.1689264158.110736.blinux-list@redhat.com>
Message-ID: <mailman.65.1689275575.110739.blinux-list@redhat.com>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

QmFjayBpbiB0aGUgZW5kIG9mIERPUyBkYXlzLCBJIHVzZWQgYSBtZW51aW5nIHByb2dyYW0uwqAg
T25lIGNvdWxkIGFycm93IAp0byBhbiBpdGVtIG9yIHR5cGUgaXRzIGluaXRpYWwgY2hhcmFjdGVy
IGFuZCBpdCB3b3VsZCBjYWxsIGEgRE9TIApleGVjdXRhYmxlLsKgIFRoZXJlIHdhcyBldmVuIGEg
cHJvZ3JhbSBzdWNoIGFzIHRoaXMgaW5jbHVkZWQgd2l0aCB0aGUgCmxhc3QgY291cGxlIHZlcnNp
b25zIG9mIERPUy7CoCBTbyB3b3VsZCBJIHNheSBJIHdhcyB3b3JraW5nIGluIGNvbnNvbGUgCm1v
ZGU/wqAgT3IgbWF5YmUgY29uc29sZSBtb2RlIGlzIHdoZW4geW91IGFyZSBjb21tYW5kaW5nIHRo
ZSBvcGVyYXRpbmcgCnN5c3RlbSBkaXJlY3RseT/CoCBUaGVuLCBob3cgZG9lcyBjb25zb2xlIG1v
ZGUgZGlmZmVyIGZyb20gdGVybWluYWwgCm1vZGU/wqAgT3IgaXMgdGhhdCBhIHdob2xlIG90aGVy
IHRoaW5nPwoKSG93YXJkCgpPbiA3LzEzLzIwMjMgMTE6MDIgQU0sIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSW4gbWFueSBjYXNlcywgdGhpcyBtZWFucyB5b3Ug
b3BlcmF0ZSBvbiB0aGUgY29tbWFuZCBsaW5lIG5vdCBpbiBhCj4gZ3JhcGhpY2FsIGVudmlyb25t
ZW50LiAgVGhlIGNvbnNvbGUgb3IgY29tbWFuZCBsaW5lIG1vZGUgcmVhbGx5IGlzIHdoZXJlCj4g
YWxsIG9mIHRoZSBsaW51eCBwb3dlciB0b29scyBiZWNvbWUgYXZhaWxhYmxlIGFuZCB3aGVuZXZl
ciB0aGUgZ3JhcGhpY2FsCj4gaW50ZXJmYWNlIGVudmlyb25tZW50IGRvZXMgYW55dGhpbmcgdXNl
ZnVsIGl0IGhhcyB0byByZWFjaCBpbnRvIHRoZQo+IGNvbW1hbmQgbGluZSBlbnZpcm9ubWVudCB0
byBnZXQgaXQgZG9uZS4KPgo+Cj4gLS0gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNvbT4g
IlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KPiBkZWZlbnNlIG9mIGxpYmVydHk6
IHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdAo+IG9yZGVy
LiIgRWQgSG93ZGVyc2hlbHQgMTk0MC4KPgo+IE9uIFRodSwgMTMgSnVsIDIwMjMsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4KPj4gSXQncyBhbHdheXMgYmVlbiBh
IHB1enpsZSB0byBtZTrCoCBXaGF0IGlzIG1lYW50IGJ5IGNvbnNvbGUgb3IgY29uc29sZSBtb2Rl
Pwo+PiBJJ3ZlIGhlYXJkIHRoYXQgdGVybSBmb3IgbWFueSB5ZWFyczsganVzdCBuZXZlciBrbmV3
IHdoYXQgaXQgd2FzIG9yIGlzPwo+PiBUaGFua3MgZm9yIGFueSBleHBsYW5hdGlvbiBvciBkZXNj
cmlwdGlvbi4KPj4KPj4gSG93YXJkCj4+Cj4+Cj4+IE9uIDcvMTMvMjAyMyAxMDozNyBBTSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+IFllcywgSSB0aGluayBz
bGludCB3b3VsZCBiZSBhIGdvb2QgZGlzdHJpYnV0aW9uIGZvciB5b3UgYXMgYSBiZWdpbm5lciBp
Zgo+Pj4geW91IHNlbGVjdCB0byBzdGFydCBpbiBjb25zb2xlIG1vZGUgZHVyaW5nIHRoZSBpbnN0
YWxsYXRpb24uICBUaGUgcmVhc29uCj4+PiBpcyBldmVuIHdpdGggbWF0ZSBhbmQgcnVubmluZyBt
YXRlLXRlcm1pbmFsIHRoZSBzcGVlY2ggaXMgbGVzcyBzdGFibGUgdGhhbgo+Pj4gd2l0aCBzcGVh
a3VwIGFuZCBydW5uaW5nIGluIGNvbnNvbGUgZ2V0cyB5b3Ugc3BlYWt1cCBhbmQgb3RoZXIgc2Ny
ZWVuCj4+PiByZWFkZXIgcGFja2FnZXMgdGhhdCBhcmUgbW9yZSBzdGFibGUgdGhhbiBvcmNhLiAg
SWYgeW91IGRlY2lkZSB0byBnbyB3aXRoCj4+PiBzbGludCwgcGxlYXNlIGRvIHlvdXJzZWxmIGEg
ZmF2b3IgYW5kIHN1YnNjcmliZSB0byB0aGUgc2xpbnQgZW1haWwgbGlzdC4KPj4+IFRoYXQncyBv
biBmcmVlbGlzdHMub3JnIHNpbmNlIHRoYXQgd2F5IHlvdSdsbCBnZXQgb3BlcmF0aW5nLXNwZWNp
ZmljIGhlbHAKPj4+IGFuZCB5b3UncmUgbm90IHRoZSBvbmx5IG9uZSB1c2luZyBzbGludCB3aXRo
IGEgc2NyZWVuIHJlYWRlciBvbiB0aGF0IGxpc3QuCj4+Pgo+Pj4KPj4+IC0tIEp1ZGUgPGpkYXNo
aWVsIGF0IHBhbml4IGRvdCBjb20+ICJUaGVyZSBhcmUgZm91ciBib3hlcyB0byBiZSB1c2VkIGlu
Cj4+PiBkZWZlbnNlIG9mIGxpYmVydHk6IHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBs
ZWFzZSB1c2UgaW4gdGhhdAo+Pj4gb3JkZXIuIiBFZCBIb3dkZXJzaGVsdCAxOTQwLgo+Pj4KPj4+
IE9uIFdlZCwgMTIgSnVsIDIwMjMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4+Pgo+Pj4+IEdvb2QgYWZ0ZXJub29uLAo+Pj4+IEkgYW0gbmV3IHRvIExpbnV4ICYg
YW0gY3VycmVudGx5IHVzaW5nIE1pbnQgMjEuMSwgYnV0IGtlZXAgbG9vc2luZyBzcGVlY2gKPj4+
PiB3aXRoIE9yY2EuCj4+Pj4gQXMgYSByZXN1bHQsIEkgbWF5IHN3aXRjaCB0byBTbGludCwgd2hp
Y2ggd2FzIHJlY2VudGx5IHJlY29tbWVuZGVkIHRvIG1lIGJ5Cj4+Pj4gYSBmcmllbmQuCj4+Pj4g
QmVmb3JlIEkgZG8gdGhvdWdoLCBJJ2QgbGlrZSB0byBnZXQgb3BpbmlvbnMgZnJvbSB0aGUgbWVt
YmVycyBvZiB0aGlzIGxpc3QKPj4+PiBhcyB0byB3aGV0aGVyIG9yIG5vdCB0aGlzIHdvdWxkIGJl
IGEgZ29vZCBkaXN0cmlidXRpb24gZm9yIG1lLCBhcyBhCj4+Pj4gYmVnaW5uZXI/Cj4+Pj4KPj4+
Pgo+Pj4+IFRoYW5rcywKPj4+PiBKZXNzaWNhIERhaWwKPj4+Pgo+Pj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pgo+Pj4+Cj4+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCi0tIApXaGVuIGluIGRvdWJ0
OyBDaGVhdCAhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

