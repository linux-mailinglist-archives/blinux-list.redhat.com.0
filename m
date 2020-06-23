Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id CB0D3206822
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jun 2020 01:14:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592954071;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=B8kunCr68EKkEwWJKT6UpzQXWZTUblqMJHBT1J47Wus=;
	b=bGVs7Vb6z0Om6XPycwemklSnLmhVwTkWJ3uOzuKuanMIrrMD/N+t/TqfTxLJGUASFGjH2Z
	N8PmWNPXbY3FeU8CwDORFkC0eh+RdZRMMrP8HKjQNuzVeu/iY+7S8pSIP43IuVjP9qfXIp
	vNRUbUH4PF1Pm++hfGNisH098L3oFw0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-283-JWj5Tm27PEWJ5j7bJl_-_w-1; Tue, 23 Jun 2020 19:14:29 -0400
X-MC-Unique: JWj5Tm27PEWJ5j7bJl_-_w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 22423107ACCA;
	Tue, 23 Jun 2020 23:14:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D59AD10013C0;
	Tue, 23 Jun 2020 23:14:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 012801809547;
	Tue, 23 Jun 2020 23:14:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05NNDxHH008588 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Jun 2020 19:14:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 858B92144B35; Tue, 23 Jun 2020 23:13:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 813DC2144B34
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 23:13:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 872C61859160
	for <blinux-list@redhat.com>; Tue, 23 Jun 2020 23:13:57 +0000 (UTC)
Received: from p3plsmtpa09-09.prod.phx3.secureserver.net
	(p3plsmtpa09-09.prod.phx3.secureserver.net [173.201.193.238]) (Using
	TLS)
	by relay.mimecast.com with ESMTP id us-mta-408--F_WtBiqNfm17LFpy1wrqQ-1;
	Tue, 23 Jun 2020 19:13:52 -0400
X-MC-Unique: -F_WtBiqNfm17LFpy1wrqQ-1
Received: from [192.168.50.215] ([72.205.36.177]) by :SMTPAUTH: with ESMTPA
	id ns4kjc6V1qR5Zns4ljQ7T9; Tue, 23 Jun 2020 16:11:36 -0700
X-CMAE-Analysis: v=2.3 cv=NMurBHyg c=1 sm=1 tr=0
	a=KrEcpKSwXc6ZHCuzcgfT3w==:117 a=KrEcpKSwXc6ZHCuzcgfT3w==:17
	a=IkcTkHD0fZMA:10 a=20KFwNOVAAAA:8 a=E-CVgwXbAAAA:8 a=1k0d9EX0AAAA:8
	a=SSmOFEACAAAA:8 a=DX0SrkplIL7dBa7ZgbkA:9 a=cuu_l7ZhzJyyIc3U:21
	a=e8yyUVmhzfdqUNGH:21 a=QEXdDO2ut3YA:10 a=NWVoK91CQyQA:10
	a=7UGCclw-5oBoqXlMmAWZ:22 a=lz26vyH-7tHk1Uv5pdf5:22
X-SECURESERVER-ACCT: cstrobel@crosslink.net
Subject: Re: Prospects for an accessible and open version of Android?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<CABKqQvEyRFTSLg_38LtPaoUXgiz7Y8vsnM_d3No3fmQ2AmFEmw@mail.gmail.com>
	<20200622074223.GB2690@rednote.net>
Message-ID: <af7b4a26-f75c-ef7b-7af9-729299dd051c@crosslink.net>
Date: Tue, 23 Jun 2020 19:11:33 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
	Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200622074223.GB2690@rednote.net>
Content-Language: en-US
X-CMAE-Envelope: MS4wfN0UJ+kvue6aYbYEgWZPNKIleT2/gqqgt74a1iJKhZTaEy56eoCrjfOrtKfYcJ5AichX/dxbIlRiPSNQUtH/L3Zh6nuUmXfahPDnWzzq6Yfgrwd7jqJ2
	OtH2Bpu6f5PvdAVqvJ7kGN++57MqKMLl7MMA0jaflt6JPfTNI2JiZBGOQhg0qbWqVB5AJwFeb9j/8A==
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64

IMKgwqDCoCBZb3UgY2FuIHNvbHZlIHRoZSBoZWFkbGVzcyBwcm9ibGVtIGJ5IGJ1eWluZyBhbiBI
RE1JIGR1bW15IHBsdWcuwqAgSSAKdGhpbmsgSSBwYWlkIGxlc3MgdGhhbiAkMTAuwqAgVGhpcyBm
YWtlcyBVYnVudHUgaW50byB0aGlua2luZyB5b3UgaGF2ZSBhIAptb25pdG9yIHBsdWdnZWQgaW4u
CgpTb21lIHBlb3BsZSBwcm9iYWJseSBmaWxsIHVwIHJhY2tzIG9mIGxpdHRsZSBzZXJ2ZXJzIGFu
ZCBvbmx5IHdhbnQgdG8gCmFjY2VzcyB0aGVtIHJlbW90ZWx5LsKgIFRoZXJlIGFyZSBtYW55IHdh
eXMgdG8gZG8gdGhpbmdzLgoKCgpPbiA2LzIyLzIwMjAgMzo0MiBBTSwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBBbWFuZGE6Cj4KPiBNZWVyS2F0J3MgcG9pbnQg
aXMgdG8gYmUgdGlueS4gU3lzdGVtNzYgYWR2ZXJ0aXNlIHRoZSBhYmlsaXR5IHRvIGF0dGFjaAo+
IHRoZSBzaG9ydCB2ZXJzaW9uIGRpcmVjdGx5IHRvIGEgbW9uaXRvciBzbyB0aGF0IGl0IHRha2Vz
IHVwIG5vIHNwYWNlIG9uCj4gYSBkZXNrLiBJdCdzIHBvcnRhYmxlIG9ubHkgaW4gdGhlIHNlbnNl
IHRoYXQgaXQncyBzbWFsbCBhbmQgd291bGQgZml0Cj4gbmVhdGx5IGludG8gYW55IHRyYXZlbGlu
ZyBjYXNlLgo+Cj4gSWYgeW91IHdhbnQgYmF0dGVyeSBwb3dlcmVkLCB3ZWxsIHRoZXkgbWFrZSBh
IHJhbmdlIG9mIGNvbXBlbGxpbmcKPiBsYXB0b3BzLCB0b28uCj4KPiBQdXR0aW5nIGEgYmF0dGVy
eSBpbnRvIHRoZSB0YWxsIE1lZXJLYXQncyBzZWNvbmQgZHJpdmUgY29tcGFydG1lbnQgaXMgYW4K
PiBpbnRlcmVzdGluZyBub3Rpb24uIFBlcmhhcHMgU3lzdGVtNzYgbWlnaHQgZmluZCB0aGF0IGF0
dHJhY3RpdmUuIFdoeSBub3QKPiBhc2sgdGhlbT8KPgo+IEFuZCwgYXMgZm9yIGJlaW5nIGJsb2Nr
ZWQgb24gYm9vdCBmb3IgbGFjayBvZiBtb3VzZSBvciBtb25pdG9yLCBJIHRoaW5rCj4gdGhvc2Ug
ZGF5cyBhcmUgaGlzdG9yeSBvbiBMaW51eCwgdGhvdWdoIEkgY2FuJ3Qgc3BlY2lmaWNhbGx5IHNw
ZWFrIHRvCj4gVWJ1bnR1LiBIZXJlJ3MgdGhlIG1haW5zdHJlYW0gcHJvYmxlbSB3aXRoIHRoYXQt
LWl0IGRvZXNuJ3Qgc3VwcG9ydAo+IGhlYWRsZXNzIGRlcGxveW1lbnRzLCB3aGljaCBhcmUgZmFp
cmx5IGNvbW1vbiB0aGVzZSBkYXlzLgo+Cj4gQmVzdCwKPgo+IEphbmluYQo+Cj4gTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cml0ZXM6Cj4+IEEgY291cGxlIG9mIHF1ZXN0aW9u
cyBhYm91dCB0aGUgTWVlckthdDoKPj4gRG8geW91IGhhdmUgdG8gcGx1ZyBpbiBhIG1vdXNlIGFu
ZC9vciBtb25pdG9yIGZvciBpdCB0byB3b3JrIHdoZW4gaXQKPj4gc3RhcnRzIHVwPyBJIGhhZCB0
aGlzIGV4cGVyaWVuY2Ugb24gYW5vdGhlciBVYnVudHUgc3lzdGVtCj4+IENhbiB5b3UgZ2V0IGEg
YnVpbHQtaW4gYmF0dGVyeT8gSSBkb24ndCB1bmRlcnN0YW5kIHRoZSBwb2ludCBvZiBhIHRpbnkK
Pj4gZGV2aWNlIGlmIHlvdSBoYXZlIHRvIHBsdWcgaXQgaW4gdG8gdXNlIGl0Lgo+Pgo+PiBBbWFu
ZGEKPj4KPj4gT24gNi8yMS8yMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8
YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+PiBNeSBhcG9sb2d5IGZvciBub3Qga2Vl
cGluZyB0aGUgaW5pdGlhbCBxdWVzdGlvbiBpbiBtaW5kLgo+Pj4KPj4+IEhvd2V2ZXIsIEkgd29u
ZGVyIGlmIGFza2luZyBhbiBBbmRyb2lkIHBob25lIHRvIHNlcnZlIHRoaXMgZnVuY3Rpb24gaXMK
Pj4+IG1vcmUgYW4gYWNhZGVtaWMgZXhlcmNpc2UgdGhhbiBhIHByYWN0aWNhbCBvbmUgYXQgdGhp
cyBwb2ludD8KPj4+Cj4+PiBJIHNheSB0aGlzIGJlY2F1c2UgSSdtIGp1c3Qgbm93IGluIHRoZSBw
cm9jZXNzIG9mIGJ1eWluZyBteSBuZXh0Cj4+PiAobmF0aXZlbHkpIExpbnV4IGNvbXB1dGVyLCBh
bmQgaXQncyBxdWl0ZSBzbWFsbC4gSXQgY29tZXMgcHJldHR5IGNsb3NlCj4+PiB0byB0aGUgc2l6
ZSBvZiBhbiBBbmRyb2lkIHBob25lLiBTbywgSSBzdXNwZWN0IGl0IG1pZ2h0IGJlIHRoZSBlYXNp
ZXIKPj4+IHBhdGggb2YgcHJhY3RpY2FsaXR5IGlzIHRoZSBwb2ludC4KPj4+Cj4+PiBJJ20gdGFs
a2luZyBhYm91dCB0aGUgTWVlckthdCA1IChzbWFsbCkgZnJvbSBTeXN0ZW03Ni5jb20gKHdoaWNo
IHlvdSBjYW4KPj4+IGdldCB3aXRoIHVwIHRvIGEgMTB0aCBnZW5lcmF0aW9uIEludGVsIEk3LCA2
NEdiIFJBTSwgYW5kIDJUYiBOVk1FCj4+PiBkcml2ZSksIGFsbCBpbiBhIGJveCBhYm91dCA0LjUg
aW5jaGVzIGJ5IDQuNSBpbmNoZXMgYnkgMS41IGluY2hlcyB0YWxsLgo+Pj4gVGhlIGJhc2UgcHJp
Y2UgaXMgdmVyeSBjb21wZXRpdGl2ZSB3aXRoIGEgbmV3IEFuZHJvaWQgZGV2aWNlLCBpbW8sIHdp
dGgKPj4+IGZhciBtb3JlIGdvaW5nIGZvciBpdCB3aGVuIHBvcnRhYmxlIExpbnV4IGlzIHRoZSBn
b2FsLgo+Pj4KPj4+IFdoaWNoIGlzIG5vdCB0byBwdXQgZG93biBhY2FkZW1pYyBleGVyY2llcyBh
aW1lZCBhdCBoYWNraW5nIEFuZHJvaWQgaW50bwo+Pj4gc29tZXRoaW5nIHVzYWJsZS4gSSBqdXN0
IHRoaW5rIHRoZSB0d28gcXVlc3Rpb25zIGFyZSB3b3J0aCB0cmVhdGluZwo+Pj4gc2VwYXJhdGVs
eS4KPj4+Cj4+PiBCZXN0LAo+Pj4KPj4+IEphbmluYQo+Pj4KPj4+IExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gd3JpdGVzOgo+Pj4+IEkgdGhpbmsgQW1hbmRhIGlzIHRyeWluZyB0
byBnZXQgYmFjayB0byB0aGUgcXVlc3Rpb24gSSBvcmlnaW5hbGx5IHBvc3RlZC4KPj4+PiBUaGF0
IGlzLCBzaGUgd2FudHMgdG8gc2V0IHVwIGEgY2VsbCBwaG9uZSB3aXRoIGEgKG1vc3RseSkgRk9T
UyBBbmRyb2lkCj4+Pj4gdmFyaWFudCwKPj4+PiBpbiBvcmRlciB0byBoYXZlIGFuIGFjY2Vzc2li
bGUsIGV4dGVuc2libGUsIGFuZCBleHRyZW1lbHkgcG9ydGFibGUKPj4+PiBjb21wdXRlcgo+Pj4+
IHRoYXQgaXMgdW5kZXIgaGVyIChyYXRoZXIgdGhhbiBHb29nbGUncykgY29udHJvbC4KPj4+Pgo+
Pj4+IEFsdGhvdWdoIHNoZSBtaWdodCB1c2UgdGhlIEFuZHJvaWQgVUkgZm9yIHNvbWUgdGFza3Ms
IHRoZSBnb2FsIGlzIHRvIGhhdmUKPj4+PiBhCj4+Pj4gY29tbWFuZC1saW5lIGludGVyZmFjZSBh
bmQgYSBzZXQgb2YgYmxpbmQtZnJpZW5kbHkgY29tbWFuZHMgdGhhdCBzaGUgY2FuCj4+Pj4gZW50
ZXIKPj4+PiB2aWEgQmx1ZXRvb3RoLCBTU0gsIGV0Yy4gIExvbmdlciB0ZXJtLCBlbnRlcmluZyBj
b21tYW5kcyBieSBicmFpbGxlIG9yCj4+Pj4gdm9pY2UKPj4+PiBtaWdodCBhbGxvdyBoZXIgdG8g
ZGlzcGVuc2Ugd2l0aCBhIHNlcGFyYXRlIGtleWJvYXJkLgo+Pj4+Cj4+Pj4gQXMgbXkgcG9zdGlu
ZyBpbmRpY2F0ZWQsIHRoZXJlIGFyZSBzZXZlcmFsIGNhbmRpZGF0ZXMgZm9yIGEgYmFzZSBPUywg
YnV0Cj4+Pj4gaXQncwo+Pj4+IGhhcmQgdG8gdGVsbCB3aGljaCBvbmUocykgd291bGQgYmUgYSBn
b29kIGZpdCBmb3IgdGhpcyB1c2UgY2FzZS4KPj4+PiBTdWdnZXN0aW9ucz8KPj4+Pgo+Pj4+IC0g
UmljaCBNb3Jpbgo+Pj4+Cj4+Pj4+IE9uIEp1biAxNSwgMjAyMCwgYXQgMjM6NTksIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24KPj4+Pj4gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+
IHdyb3RlOgo+Pj4+Pgo+Pj4+PiBJIGRvbid0IHVuZGVyc3RhbmQgeW91ciBxdWVzdGlvbi4gQW4g
QW5kcm9pZCBkZXZpY2UgaXMgYSBMaW51eCBkZXZpY2UuCj4+Pj4+IEl0IHJ1bnMgb24gbGludXgg
a2VybmVscywgaW1wbGVtZW50cyBzZXZlcmFsIExpbnV4IGxpYnJhcmllcy4gSXRzIGF1ZGlvCj4+
Pj4+IHN1YnN5c3RlbSBpcyBkcml2ZW4gYnkgYWxzYS4KPj4+Pj4KPj4+Pj4gVGhlIHVzZXIgZG9l
c24ndCBzZWUgdGhpcywgb2YgY291cnNlLCBiZWNhdXNlIGFsbCBvZiB0aGF0IGlzIHVuZGVyIHRo
ZQo+Pj4+PiBob29kLCBzbyB0byBzcGVhay4gVGhlIHVzZXIgaW50ZXJmYWNlIG9uIEFuZHJvaWQg
aXMgd3JpdHRlbiBpbiBKYXZhLCBzbwo+Pj4+PiBiZWFycyBubyByZXNlbWJsYW5jZSB0byB0aGUg
Z3JhcGhpY2FsIGRlc2t0b3Agb25lIG1pZ2h0IHNlZSBvbiBhCj4+Pj4+IHR5cGljYWwKPj4+Pj4g
TGludXggY29tcHV0ZXIsIHR5cGljYWxseSBHTk9NRSBvciBLREUuCj4+Pj4+Cj4+Pj4+IFNvLCB3
aGF0IGFyZSB5b3UgYXNraW5nPyBQbGVhc2Ugc2F5IG1vcmUuCj4+Pj4KPj4+PiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+PiBodHRwczovL3d3dy5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+IC0tCj4+Pgo+Pj4gSmFu
aW5hIFNhamthCj4+Pgo+Pj4gTGludXggRm91bmRhdGlvbiBGZWxsb3cKPj4+IEV4ZWN1dGl2ZSBD
aGFpciwgQWNjZXNzaWJpbGl0eSBXb3JrZ3JvdXA6CWh0dHA6Ly9hMTF5Lm9yZwo+Pj4KPj4+IFRo
ZSBXb3JsZCBXaWRlIFdlYiBDb25zb3J0aXVtIChXM0MpLCBXZWIgQWNjZXNzaWJpbGl0eSBJbml0
aWF0aXZlIChXQUkpCj4+PiBDaGFpciwgQWNjZXNzaWJsZSBQbGF0Zm9ybSBBcmNoaXRlY3R1cmVz
CWh0dHA6Ly93d3cudzMub3JnL3dhaS9hcGEKPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQu
Y29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

