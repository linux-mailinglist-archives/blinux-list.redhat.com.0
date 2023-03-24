Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6156C7A4D
	for <lists+blinux-list@lfdr.de>; Fri, 24 Mar 2023 09:52:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679647923;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=P/xEH/NXUB1rncI6nAV+vDiBOEJQ1tqYFZw2WrBc0zY=;
	b=gNlxK9epbYGJUg7QVwMoDRuUiIINMVTzFbuF+ZlSn7KLBNLENsIH2nJnaf/SOaoFwdNlIO
	YQTLOQrJcDBGpmSPlFclwS12VKfz9yrs+On2tM45VChjv7erHJUCGX7MZ8HKaM59oKDdt3
	PMF0Unc+sCp3olVFSMktNBnQ0ffaRL4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-669-H6tP1vXXOy-rS_6v7LizgQ-1; Fri, 24 Mar 2023 04:51:59 -0400
X-MC-Unique: H6tP1vXXOy-rS_6v7LizgQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 539401C08985;
	Fri, 24 Mar 2023 08:51:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 263292166B2A;
	Fri, 24 Mar 2023 08:51:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 426A71946A44;
	Fri, 24 Mar 2023 08:51:50 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 24 Mar 2023 09:46:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [orca] Odilia, the new Linux screenreader written in Rust,
 reaches 0.1.0 (fwd)
To: blinux-list@redhat.com
References: <mailman.1101.1679499219.636362.blinux-list@redhat.com>
 <mailman.1130.1679509316.636367.blinux-list@redhat.com>
 <mailman.1311.1679555916.636358.blinux-list@redhat.com>
 <mailman.1401.1679570769.636358.blinux-list@redhat.com>
 <mailman.1539.1679608558.636362.blinux-list@redhat.com>
In-Reply-To: <mailman.1539.1679608558.636362.blinux-list@redhat.com>
Message-ID: <mailman.1625.1679647909.636358.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: de-DE, en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

77u/SG93ZHksCgpKdXN0IGEgc21hbGwgc2lkZSBub3RlLiBBcyBzbG93IGFzIHB5dGhvbiBtaWdo
dCBsb29rIGxpa2UsIHRoZSBiaWdnZXN0IGJvdHRsZW5lY2sgbWlnaHQgYmUgdHJhbnNmZXJyaW5n
IGh1Z2UgQVQgc3RydWN0dXJlcyB1c2luZyBkYnVzIChhcyBkYnVzIGlzIGhlbGwgc2xvdykgb3Ig
YXBwbGljYXRpb25zIGZsb29kaW5nIGV2ZW50cy4gQW5kIHRob3NlIGlzc3VlcyBuZWVkcyB0byBn
ZXQgZml4ZWQgb24gb3RoZXIgcGxhY2VzIGluIGFueSB3YXkuQWJvdXQgcGFyYWxsZWwgY29tcHV0
aW5nIC0gcGFyc2luZyBBVCBkYXRhIGluIGFuIHBhcmFsbGVsIG1hbm5lciBkb2VzIG5vdCB3b3Jr
IGluIGFueSB3YXkuICBTbyB5ZWEsIHB5dGhvbiBoYXMgbGltaXRhdGlvbnMsIGJ1dCBub25lIGFy
ZSBoaXQgYnkgYW4gc2NyZWVucmVhZGVyLgoKQ2hlZXJzIGNocnlzCgpBbSAyMy4wMy4yMyB1bSAy
Mjo1NSBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4gT3JjYSBp
cyBpbmRvdWJ0ZWJseSBhbiBhbWF6aW5nIHByb2plY3QsIHdpdGggYSBsb3Qgb2YgZ29vZCB3b3Jr
IGJlaGluZCBpdC4KPgo+IFRob3VnaCwgYXMgZ3JlYXQgYXMgdGhlIGZpbmFsIHByb2R1Y3QgaXMs
IHRoZXJlIGFyZSBjZXJ0YWluIGxpbWl0YXRpb25zLgo+Cj4gVGhlIHNjcmVlbnJlYWRlciBpcyB3
cml0dGVuIGluIGEgbGFuZ3VhZ2UgdGhhdCBjYW4gdGFrZSBldGVybml0eSBqdXN0IHRvCj4gZmlu
aXNoIGEgbG9vcCwgYW5kIGlzIG5vdCBjYXBhYmxlIG9mIHRydWUgY29uY3VycmVuY3kuIEknbSBu
b3QKPiBjcml0aWNpemluZyBQeXRob24gaGVyZSwgSSB1c2UgaXQgbXlzZWxmIGFuZCBsb3ZlIHRo
ZSBsYW5ndWFnZSwgSSdtIGp1c3QKPiBzYXlpbmcgdXNpbmcgaXQgZm9yIHBlcmZvcm1hbmNlIGNy
aXRpY2FsIHRhc2tzIGhhcyBpdHMgY2F2ZWF0cy4KPgo+Cj4gUnVzdCBpcyBmcm9tIGdyb3VuZCB1
cCBkZXNpZ25lZCBmb3IgaGlnaCBwZXJmb3JtYW5jZSBhbmQgcGFyYWxsZWwKPiBjb21wdXRpbmcu
IFRoYXQncyB3aHkgSSdtIHBlcnNvbmFsbHkgdmVyeSBleGNpdGVkIHRvIHNlZSB0aGVzZSBzdHJl
bmd0aHMKPiB1c2VkIGZvciBhY2Nlc3NpYmlsaXR5LCB0aGV5IGNvdWxkIHlpZWxkIHZlcnkgaW50
ZXJlc3RpbmcgcmVzdWx0cy4KPgo+Cj4gT2RpbGlhIGFsc28gaGFuZGxlcyBpbnB1dCBkZXZpY2Vz
IGRpZmZlcmVudGx5LCBhbmQgYWltcyBmb3Igc3VwcG9ydGluZwo+IHRvdWNoIHNjcmVlbnMgaW4g
dGhlIGZ1dHVyZS4gVGhhdCdzIGFsc28gYSB2ZXJ5IGludGVyZXN0aW5nIGZlYXR1cmUsCj4gZXNw
ZWNpYWxseSBub3csIGFzIExpbnV4IG1vYmlsZSBwaG9uZXMgYXJlIG9uIGEgcmlzZS4KPgo+Cj4g
V2UnbGwgc2VlIGhvdyB0aGUgcHJvamVjdCBnb2VzLCBhbmQgd2hhdCByZXN1bHRzIHdlIGdldC4g
QnV0IGl0J3MKPiBjZXJ0YWlubHkgYSB2ZXJ5IGludGVyZXN0aW5nIGFuZCBpbXByZXNzaXZlIHdv
cmssIHRoYXQgZnVsbHkgZGVzZXJ2ZXMKPiBhdHRlbnRpb24uCj4KPgo+IEJlc3QgcmVnYXJkcwo+
Cj4KPiBSYXN0aXNsYXYKPgo+Cj4gRMWIYSAyMy4gMy4gMjAyMyBvIDEyOjI2IExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFww61zYWwoYSk6Cj4+IE9uIDIzLzMvMjMgMDM6MTgs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBJbnRlcmVzdGlu
ZywgY291bGQgeW91IGJlIG1vcmUgc3BlY2lmaWMgb24gdGhpcz8gRnJvbSB0aG9zZSBJIGtub3cs
IE5WREEKPj4+IGlzIFB5dGhvbiAmIEMvQysrLCBKYXdzIGlzIHdyaXR0ZW4gZW50aXJlbHkgaW4g
QysrIGlmIEkgcmVtZW1iZXIgY29ycmVjdGx5Lgo+Pj4KPj4+IFZvaWNlT3ZlciwganVzdCBsaWtl
IHRoZSB0d28gaXMgb2xkZXIgdGhhbiBSdXN0IGl0c2VsZiwgc28gSSBndWVzcyBpdCdzCj4+PiB3
cml0dGVuIGluIHRoZSBBcHBsZSdzIG1pZGRsZS1sZXZlbCBsYW5ndWFnZXMuCj4+Pgo+Pj4gV2hp
bGUgQW5kcm9pZCBoYXMgYSBKYXZhIGNlbnRlcmVkIGFjY2Vzc2liaWxpdHkgc3lzdGVtLgo+PiBJ
bmRlZWQsIEkgdGhpbmsgdGhpcyBtaWdodCBiZSB0aGUgZmlyc3QgaW1wbGVtZW50YXRpb24gb2Yg
YSBzY3JlZW4KPj4gcmVhZGVyIGluIFJ1c3QuCj4+Cj4+IEknbSBub3QgaW1tZWRpYXRlbHkgcGVy
c3VhZGVkIHRoYXQgd3JpdGluZyBhbm90aGVyIHNjcmVlbiByZWFkZXIgZm9yIHRoZQo+PiBMaW51
eCBkZXNrdG9wIGlzIGEgZ29vZCBpZGVhIG92ZXItYWxsLiBJIHRoaW5rIE9yY2EgaXMgZXhwZXJ0
bHkKPj4gbWFpbnRhaW5lZCwgYW5kIHRoYXQgbW9zdCBvZiB0aGUgcHJvYmxlbXMgb2YgZ3JhcGhp
Y2FsIHVzZXIgaW50ZXJmYWNlCj4+IGFjY2Vzc2liaWxpdHkgdW5kZXIgTGludXggYXJpc2Ugb3V0
c2lkZSBvZiBPcmNhIGl0c2VsZi4KPj4KPj4gT24gdGhlIG90aGVyIHNpZGUsIGltcGxlbWVudGlu
ZyBmcm9tIHRoZSBncm91bmQgdXAgd2l0aCBuZXcgdGVjaG5vbG9naWVzCj4+IG1pZ2h0IHlpZWxk
IHBvc2l0aXZlIHJlc3VsdHMgaW4gdGhlIGVuZCwgaWYgdGhlIHByb2plY3QgaXMgc3VzdGFpbmFi
bGUsCj4+IGFuZCBwZW9wbGUgY2FuIG9mIGNvdXJzZSBjb250cmlidXRlIHRvIHRoZSBjb21tdW5p
dHkgaG93ZXZlciB0aGV5IHdpc2guCj4+IFRoYXQgaW5jbHVkZXMgd29ya2luZyBvbiBhIG5ldyBz
Y3JlZW4gcmVhZGVyIHByb2plY3QgaWYgaXQncyB3aGF0IHRoZXkKPj4gd2FudCB0byBkby4KPj4K
Pj4gVGhlIGxhc3QgdGltZSB0aGVyZSB3YXMgYSBzZWNvbmQgc2NyZWVuIHJlYWRlciBmb3IgdGhl
IExpbnV4IGRlc2t0b3AgLSBJCj4+IHRoaW5rIGl0IHdhcyBjYWxsZWQgTFNSIC0gaXQgd2FzIG1h
aW50YWluZWQgYnkgSUJNLiBUaGVuIElCTSBkZWNpZGVkIHRvCj4+IGRpc2NvbnRpbnVlIHRoZWly
IHdvcmsgb24gdGhlIHByb2plY3QsIGFuZCBubyBvbmUgdG9vayBpdCBvdmVyLiBTbyB3ZSd2ZQo+
PiBiZWVuIGluIHRoZSAibXVsdGlwbGUgc2NyZWVuIHJlYWRlciIgc2l0dWF0aW9uIGJlZm9yZS4K
Pj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0
cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pgo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

