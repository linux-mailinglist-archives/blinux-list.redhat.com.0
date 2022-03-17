Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C754DC808
	for <lists+blinux-list@lfdr.de>; Thu, 17 Mar 2022 14:57:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647525458;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mCwN+D0ncG8GEUqScxT5hbms5ozg1jLeJ9jr4uIYv0Q=;
	b=de3xOf6l6BCdNpWtmWq8vcegynSLWqO36O6WdoeKUUXPEgEl5+qrWYjuE8yJ6YiczRcr9p
	5UQCCkZihTQQe9c1qpC6x/Tt3XEYwlTRr9Fs9L1/7mT+kvoPVRSZphk4bN6Bx2YUAtA+a4
	ijCYB7icCL28A/I09mzc2KD59Sgm8r8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-172-mdbWrDfAMlGHOjmnUviIyg-1; Thu, 17 Mar 2022 09:57:35 -0400
X-MC-Unique: mdbWrDfAMlGHOjmnUviIyg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9969D801585;
	Thu, 17 Mar 2022 13:57:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 08BC641136E2;
	Thu, 17 Mar 2022 13:57:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id F3435193F6EC;
	Thu, 17 Mar 2022 13:57:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 17 Mar 2022 14:57:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: getting started with Liblouis
To: blinux-list@redhat.com
References: <6df9e5ca-9db1-3155-3afe-24b47cd7c183.ref@verizon.net>
 <mailman.2021.1647388814.111205.blinux-list@redhat.com>
 <mailman.2147.1647415850.111205.blinux-list@redhat.com>
 <mailman.2542.1647450204.111203.blinux-list@redhat.com>
 <mailman.2599.1647452270.111210.blinux-list@redhat.com>
 <mailman.2537.1647459655.111209.blinux-list@redhat.com>
In-Reply-To: <mailman.2537.1647459655.111209.blinux-list@redhat.com>
Message-ID: <mailman.2739.1647525448.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQWwgYW5kIEFsbCwKCkkgaGF2ZSB0cmllZCB0byBidWlsZCBsaWJsb3Vpc3htbCBwdWxsZWQg
ZnJvbSBnaXQgbWFzdGVyIChEZWJpYW4gc291cmNlIGZpbGVzKS4KCkJhZCBuZXdzOiBidWlsZCBm
YWlsZWQgb24gU2xpbnQ2NC0xNC4yLjEsIHNvbWUgb2YgdGhlIGNvbXBvbmVudHMgYmVpbmcgdG9v
IG9sZC4KCkdvb2QgbmV3czogYnVpbGQgc3VjY2VlZGVkIG9uIFNsYWNrd2FyZTY0LTE1LjAgKGJ1
aWxkaW5nIGJveCBmb3IgdGhlIHVwY29taW5nCnNsaW50NjQtMTUuMCksIHNvIGEgcGFja2FnZSBm
b3IgU2xpbnQ2NC0xNS4wIGlzIHJlYWR5LgoKVW5mb3J0dW5hdGVseSBpdCBjYW4ndCBiZSB1c2Vk
IG9uIFNsaW50NjQtMTQuMi4xIGFzIHRoZSBwcm9ncmFtcyBsYnhfZGV2b25seQphbmQsIG1vcmUg
aW1wb3J0YW50bHkgeG1sMmJybCBjYW4ndCBydW4gYmVjYXVzZSB0aGVyZSB0aGUgZ2xpYmMgdmVy
c2lvbiBpcyBub3QKdGhlIHNhbWUgYXMgb24gMTUuMAoKU28sIHBsZWFzZSBiZSBwYXRpZW50OiB0
aGlzIHN0dWZmIChpbmNsdWRlZCBhbGwgZGVwZW5kZW5jaWVzKSB3aWxsIGJlIHNoaXBwZWQgaW4K
U2xpbnQgNjQtMTUuMC4KClRoYW5rcyB0byBKb2huIGZvciBsaWJsb3Vpc3htbCBhbmQgdG8gU2Ft
dWVsIHRvIGhhdmUgbWFpbnRhaW5lZCBpdCBkdXJpbmcgdGhlCmxhc3QgMTEgeWVhcnMuCgpDaGVl
cnMsCkRpZGllcgotLQpEaWRpZXIgU3BhaWVyClNsaW50IG1haW50YWluZXIKCkxlIDE2LzAzLzIw
MjIgw6AgMjA6NDAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTC
oDoKPiBIaSwgRGlkaWVyLsKgIFRoYW5rcyBmb3IgdGhhdCBpbmZvcm1hdGlvbi7CoCBZZXMsIHRo
YXQgc2VlbXMgdG8gYmUgd2hhdCBJIG5lZWQsIGlmCj4gcG9zc2libGUgYWxvbmcgd2l0aCBhbnRp
d29yZCBhbmQgYSBjb3VwbGUgb2YgaXRlbXMgdGhlIFJFQURNRSBtZW50aW9ucyB0aGF0IEkKPiBm
b3JnZXQuwqAgSWYgdGhvc2Ugb3RoZXIgaXRlbXMgYXJlIG1vcmUgdGhhbiB5b3Ugd2FudCB0byBw
dXQgaW4gU2xpbnQsIHRoZW4gSQo+IHByZXN1bWUgSSdsbCBnZXQgdGhlbSBieSB3YXkgb2YgdGhl
IG90aGVyIFJFQURNRSBpbmZvcm1hdGlvbi4KPiAKPiAKPiBBbAo+IAo+IAo+IE9uIDMvMTYvMjIg
MTM6MzcsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IEhpIEFs
LAo+Pgo+PiBJdCBhcHBlYXJzIHRoYXQgbGlibG91aXMgeG1sIGlucyBtYWludGFpbmVkIGZvciBE
ZWJpYW4gYnkgU2FtdWVsIFRoaWJhdWx0IHNvCj4+IERlYmlhbiBiYXNlZCBkaXN0cmlidXRpb25z
IGdldCBpdCB0b28uCj4+Cj4+IEkgd2lsbCBidWlsZCBhIFNsaW50IHBhY2thZ2UgZm9yIFNsaW50
IHVzaW5nIHRoZSBzYW1lIHNvdXJjZSBmaWxlcyBpZiB5b3UgbmVlZAo+PiB0aGF0Lgo+Pgo+PiBC
dXQgcGxlYXNlIGxvb2sgZmlyc3QgYXQgdGhpcyBSRUFETUU6Cj4+IGh0dHBzOi8vc2Fsc2EuZGVi
aWFuLm9yZy9hMTF5LXRlYW0vbGlibG91aXN4bWwvLS9ibG9iL21hc3Rlci9SRUFETUUKPj4KPj4g
YW5kIGNvbmZpcm0gb3IgaW5maXJtIHRoYXQgaXQgaXMgd2hhdCB5b3UgYXJlIGxvb2tpbmcgZm9y
Lgo+Pgo+PiBDaGVlcnMsCj4+IERpZGllcgo+PiAtLSAKPj4gRGlkaWVyIFNwYWllcgo+PiBTbGlu
dCBtYWludGFpbmVyLgo+Pgo+PiBMZSAxNi8wMy8yMDIyIMOgIDE4OjAzLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+PiBUaGFua3MsIEplZmYuwqAgSSdt
IHVzaW5nIFNsaW50LsKgIEkgZGlkbid0IHNlZSBlaXRoZXIgb2YgdGhlIHByb2dyYW1zIHlvdQo+
Pj4gbWVudGlvbi7CoCBNYXliZSB0aGVyZSdzIHNvbWV0aGluZyBlbHNlLgo+Pj4KPj4+Cj4+PiBC
ZXN0IQo+Pj4KPj4+IEFsCj4+Pgo+Pj4KPj4+IE9uIDMvMTYvMjIgMDM6MzAsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4gT24gVHVlLCAxNSBNYXIgMjAyMiwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pgo+Pj4+PiBJJ20g
dHJ5aW5nIHRvIGZpbmQgb3V0IGhvdyB0byB1c2UgTGlibG91aXMgdG8gdHJhbnNsYXRlIGRvY3Vt
ZW50cyBmcm9tIHByaW50Cj4+Pj4+IHRvIEJyYWlsbGUuwqAgU3BlY2lmaWNhbGx5LCBteSB3aWZl
IHdvdWxkIGxpa2UgbWUgdG8gZmluZCBvdXQgaG93IHRvIHRyYW5zbGF0ZQo+Pj4+PiBSdXNzaWFu
IGRvY3VtZW50cyBpbnRvIEJyYWlsbGUgb25lcy7CoCBBdCB0aGUgbW9tZW50LCB0aG91Z2gsIEkg
aGF2ZW4ndCB5ZXQKPj4+Pj4gbGVhcm5lZCBhIGNvbW1hbmQgdG8gcnVuIGZvciB0cmFuc2xhdGlu
ZyBhbnl0aGluZzrCoCB0aGUgTGlibG91aXMKPj4+Pj4gZG9jdW1lbnRhdGlvbiBsb29rcyB0byBo
YXZlIGEgbG90IG9mIHVzZWZ1bCBtYXRlcmlhbCwgYnV0IEkgY291bGQgZmluZAo+Pj4+PiBub3Ro
aW5nIGFib3V0IHJ1bm5pbmcgYSBjb21tYW5kLCB3aXRoIHdoYXRldmVyIGFyZ3VtZW50cyBhbmQg
b3B0aW9ucyBJIG1pZ2h0Cj4+Pj4+IG5lZWQsIHRvIGNyZWF0ZSBhIEJyYWlsbGUgb3V0cHV0IGZp
bGUgZnJvbSBhIHByaW50IGlucHV0IGZpbGUuCj4+Pj4gSW4gRGViaWFuLCBJIHNlZSBsaWJsb3Vp
cy1iaW4gYW5kIGxpYmxvdWlzeG1sLWJpbiBwYWNrYWdlcyB3aGljaCBjYW4gcHJvYmFibHkKPj4+
PiBoZWxwIHlvdS7CoCBPdGhlciBkaXN0cmlidXRpb25zIHByb2JhYmx5IGhhdmUgc29tZXRoaW5n
IHNpbWlsYXIuCj4+Pj4KPj4+Pj4gSSByZWFkIGFib3V0IGEgY29tbWFuZCBjYWxsZWQgZmlsZTJi
cmwsIGFwcGFyZW50bHkgcGFydCBvZiBhIHByb2dyYW0gY2FsbGVkCj4+Pj4+IExpYmxvdWlzdXRk
bWwsIGJ1dCB0aGF0IHByb2dyYW0ncyBub3Qgb24gbXkgc3lzdGVtIGV2ZW4gdGhvdWdoIExpYmxv
dWlzCj4+Pj4+IGl0c2VsZiBpcy4KPj4+PiBBcHBhcmVudGx5LCBVVERNTCBpcyB1bmlmaWVkIHRh
Y3RpbGUgZG9jdW1lbnQgbWFya3VwIGxhbmd1YWdlLCB3aGNpaCBpcwo+Pj4+IHByZXN1bWFibHkg
dXNlZCBmb3IgbWFwcywgZGlhZ3JhbXMsIGV0Yy7CoCBUaGlzIGlzIHByb2JhYmx5IG5vdCB3aGF0
IHlvdSBuZWVkLgo+Pj4+Cj4+Pj4gSFRILAo+Pj4+IEdlb2ZmLgo+Pj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQu
Y29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QK

