Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AF8503047
	for <lists+blinux-list@lfdr.de>; Sat, 16 Apr 2022 00:17:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1650061063;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=smkw7nq03JUuYvN+D1xAXss6beTgch+nUTAK/mZlwWQ=;
	b=N6XakAPlW0Bc9+YvwvPsChEW91eawGxH6gAckmVZpw86lZAJMnpykSbeDeespJ3vdTu+S+
	In2m2HxtI1KHIXWkZbTRgUAlYP2sDUE6ivgrs1HVPReFDCFZ1biYgk8HvC/gPqOK0E34h6
	DiutpxYzK0lwMGFh3ztC2qptil5jMzg=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-83-xqoidnEHO_qX8RmgDOr8sA-1; Fri, 15 Apr 2022 18:17:40 -0400
X-MC-Unique: xqoidnEHO_qX8RmgDOr8sA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EFD3738041EA;
	Fri, 15 Apr 2022 22:17:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 25EEB40CF8F6;
	Fri, 15 Apr 2022 22:17:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9E33A1940352;
	Fri, 15 Apr 2022 22:17:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 16 Apr 2022 00:17:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: mailing list privacy, etc.
To: blinux-list@redhat.com
References: <mailman.8531.1649969333.111209.blinux-list@redhat.com>
 <mailman.8699.1649970342.111206.blinux-list@redhat.com>
 <mailman.8718.1649974508.111206.blinux-list@redhat.com>
 <mailman.8715.1650045076.111202.blinux-list@redhat.com>
In-Reply-To: <mailman.8715.1650045076.111202.blinux-list@redhat.com>
Message-ID: <mailman.8845.1650061056.111209.blinux-list@redhat.com>
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

SGksCgpJIGNvbmN1ciB3aXRoIFJhdGlzbGF2IHNhaWQsIHF1b3RlZCBiZWxvdy4KCkkgaGF2ZSBj
aGVja2VkOiBhbGwgb3RoZXIgbWFpbGluZyBsaXN0cyB0byB3aGljaCBJIGFtIHJlZ2lzdGVyZWQg
aGlkZSBuZWl0aGVyCnRoZSBpZGVudGl0eSBub3IgdGhlIGVtYWlsIGFkZHJlc3Mgb2YgdGhlIHNl
bmRlci4gVGhpcyBpbmNsdWRlcyBzZXZlcmFsIGZvbGxvd2VkCmJ5IGJsaW5kIHVzZXJzIGFuIGRl
dmVsb3BlcnM6CmJybHR0eQpjYmx4CmRlYmlhbiBhY2Nlc3NpYmlsaXR5CmZlbnJpci1zY3JlZW5y
ZWFkZXIKb3JjYQpzcGVha3VwCnNwZWVjaGQKc3Rvcm11eAoKR2VuZXJhbGx5LCBpbiB0aGUgYXJj
aGl2ZXMgdGhlIGVtYWlsIGlzIGVpdGhlciBwYXJ0aWFsbHkgaGlkZGVuIG9yIHJlLXdyaXR0ZW4u
CgpTbywgbXkgcHJvcG9zYWwgaXM6CjEpIERpc3BsYXkgdGhlIGZ1bGwgbmFtZSB3aXRoIHRoZSBl
bWFpbCBhZGRyZXNzIGluIHRoZSBoZWFkZXJzIG9mIG1lc3NhZ2VzCnBvc3RlZCBieSB0aGUgbGlz
dC4KMikgQWxsb3cgdG8gdXNlIGEgcHNldWRvIGluc3RlYWQgb2YgdGhlIG5hbWUgd2hlbiByZWdp
c3RlcmluZy4KMykgRG8gbm90IGRpc3BsYXkgdmVyYmF0aW0gdGhlIGVtYWlsIGFkZHJlc3NlcyBp
biB0aGUgYXJjaGl2ZXMuCgpJIHdhcyBhYm91dCB0byBzZW5kIHRoaXMgcHJvcG9zYWwgdG8gYmxp
bnV4LWxpc3Qtb3duZXIgYXQgcmVkaGF0LmNvbSwgYnV0IEkKd291bGQgbGlrZSB0byBrbm93IGlm
IHRoZXJlIGFyZSBtYWpvciBvYmplY3Rpb25zIG9yIG90aGVyIHByb3Bvc2FscyBvcgptb2RpZmlj
YXRpb25zIHN1Z2dlc3RlZCBiZWZvcmUgSSBkbyB0aGF0LiBSZXdyaXRpbmcgd2VsY29tZSwgRW5n
bGlzaCBpcyBub3QgbXkKbmF0aXZlIGxhbmd1YWdlLgoKRGlkaWVyIFNwYWllcgoKTGUgMTUvMDQv
MjAyMiDDoCAxOTo1MSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3Jp
dMKgOgo+IEhpLAo+IAo+IEkgd2Fzbid0IG9uIHRoaXMgbGlzdCB3aGVuIHRoZSBtZW50aW9uZWQg
c3BhbSBpbmNpZGVudCBvY2N1cnJlZCwgYnV0IEkKPiBleHBlcmllbmNlZCBhIHNpbWlsYXIgdGhp
bmcgb24gYW5vdGhlciBtYWlsaW5nIGxpc3QsIHdpdGggYmFzaWNhbGx5IHRoZQo+IHNhbWUgYXR0
YWNrIHNjZW5hcmlvLCBleGNlcHQgbXkgYWRkcmVzcyB3YXMgZ2V0dGluZyBzdWJzY3JpYmVkIHRv
Cj4gbmV3c2xldHRlcnMgYW5kIG90aGVyIG1haWxpbmcgbGlzdHMuCj4gCj4gR2l2ZW4gcXVpdGUg
YSBmZXcgb2YgdGhlbSB3ZXJlIHVuYXZhaWxhYmxlIGluIEVVLCByZXBlYXRlZCB1bnN1YnNjcmli
aW5nCj4gd2FzIHF1aXRlIGFuIG9wZXJhdGlvbi4KPiAKPiAKPiBCdXQgZXhjZXB0IHRoZSBkcmFn
IG9mIGNsZWFuaW5nIHRoaW5ncyB1cCwgdGhlcmUgd2FzIG5vdCBtdWNoIGVsc2UgdG8KPiBkZWFs
IHdpdGguIFRoZSBsaXN0IGFkbWluaXN0cmF0b3JzIGhhdmUgcmVtb3ZlZCB0aGUgcHJvYmxlbWF0
aWMKPiBhZGRyZXNzZXMsIGFuZCBldmVyeXRoaW5nIHdhcyBmaW5lIGFnYWluLgo+IAo+IAo+IElu
IHRoaXMgcmVnYXJkLCBJIHZpZXcgdGhlIGN1cnJlbnQgbGlzdCBwcml2YWN5IHBvbGljeSBhcyB1
bm5lY2Vzc2FyaWx5Cj4gb3ZlcnByb3RlY3RpdmUuCj4gCj4gSXQgd291bGQgbWFrZSBzZW5zZSwg
KmlmKiBCbGludXggbGlzdCB3YXMgdGhlIG9ubHkgbWFpbGluZyBsaXN0IHRoZSB1c2VyCj4gaXMg
c2lnbmVkIGluLCBvciBpZiBzaWduaWZpY2FudCBhbW91bnQgb2YgdGhlIG90aGVyLW9uZXMgd2Vy
ZSBkb2luZyB0aGUKPiBzYW1lIHRoaW5nLgo+IAo+IAo+IEJ1dCB3aGF0IGlzIHRoZSByZWFsaXR5
Pwo+IAo+IFRoZSByZWFsaXR5IGlzLCB0aGF0IEknbSBzaWduZWQgdXAgaW4gOSBkaWZmZXJlbnQg
bWFpbGluZyBsaXN0cyByaWdodAo+IG5vdyAoYW5kIHRoZSBudW1iZXIgd2FzIGV2ZW4gaGlnaGVy
IGluIHRoZSBwYXN0KS4KPiAKPiBBbmQgQmxpbnV4IGlzIHRoZSBvbmx5LW9uZSBvZiB0aGVtIGhp
ZGluZyB0aGUgZU1haWwgYWRkcmVzc2VzIGluCj4gY29tbXVuaWNhdGlvbi4KPiAKPiAKPiBJZiBh
IHNwYW0gd2F2ZSB3ZXJlIHRvIGF0dGFjaywgdGhlcmUgYXJlIHBsZW50eSBvZiBvdGhlciBhdHRh
Y2sgdmVjdG9ycwo+IHRoYW4gdGhpcyBsaXN0Lgo+IAo+IAo+IEFuZCBJJ20gbGlrZWx5IG5vdCB0
aGUgb25seS1vbmUgaW4gYSBzaW1pbGFyIHNpdHVhdGlvbi4gSSBzdXBwb3NlIGEKPiBjb25zaWRl
cmFibGUgcGFydCBvZiB0aGlzIGxpc3QgaXMgYWxzbyBvbiB0aGUgT3JjYSBtYWlsaW5nIGxpc3Qs
IGFuZAo+IG1hbnksIG1hbnkgb3RoZXIgY29tbXVuaXRpZXMgaGF2ZSB0aGVpciBvd24sIHdoZXJl
IHRoZSB1c2VycyBtYXkgYmUKPiByZWdpc3RlcmVkLgo+IAo+IAo+IElmIHNvbWVvbmUgaXMgY29u
Y2VybmVkIGFib3V0IHNwYW0gd2F2ZXMsIHRoZXkgbWF5IGNvbnNpZGVyIHVzaW5nIGEKPiBzZXBh
cmF0ZSBhZGRyZXNzIG9yIGFkZHJlc3MgYWxpYXMgZm9yIG1haWxpbmcgbGlzdHMsIHdoaWNoIHRo
ZXkgY2FuCj4gZGlzY2FyZCBpZiBuZWNlc3NhcnkuCj4gCj4gCj4gSGlkaW5nIGFkZHJlc3NlcyBv
biB0aGUgbGlzdCBub3QganVzdCBtYWtlcyBjb21tdW5pY2F0aW9uIGhpZ2hseQo+IGluY29udmVu
aWVudCwgYXMgeW91IGNhbid0IGFkZHJlc3MgcGVvcGxlLCBhbmQgbmVpdGhlciBvYnNlcnZlIHRo
ZWlyCj4gYmVoYXZpb3IgYW5kIGlkZW50aWZ5IHRoZSBvbmVzIHdpdGguLi4gc2F5IGxvd2VyIGFz
c2VydGl2aXR5IHNraWxscywgYnV0Cj4gYW5vdGhlciBpc3N1ZSBpcyBwcml2YXRlIGNvbW11bmlj
YXRpb24uCj4gCj4gVGhlcmUgYXJlIHNpdHVhdGlvbnMsIHdoZW4geW91IG5lZWQgdG8gYXNrIG9y
IHRlbGwgYSBwZXJzb24gc29tZXRoaW5nCj4gdGhhdCBpcyBvZmYtdG9waWMgZm9yIHRoZSBsaXN0
IG9yIGNvbnRhaW5zIHByaXZhdGUgaW5mb3JtYXRpb24uCj4gCj4gCj4gSW4gc3VjaCBjYXNlcywg
YXNraW5nIGZvciBhIGNvbnRhY3QgYW5kIGV4Y2hhbmdpbmcgYWRkcmVzc2VzIChldmVuIHRoZQo+
IHNpbmdsZSBhZGRyZXNzKSwgcmFpc2VzIGZhciBtb3JlIGF0dGVudGlvbiBhbmQgc3BhY2UgdGhh
biBhIHNpbXBsZQo+IHByaXZhdGUgdGhyZWFkIHJlcGx5IHdvdWxkLgo+IAo+IAo+IFRodXMsIGlm
IHRoZSBzcGFtIHNvdXJjZSB3YXMgcmVtb3ZlZCBiYWNrIGluIHRoZSBkYXlzIG9mIHRoZSBpbmNp
ZGVudCwKPiBJJ20gZGVmaW5pdGVseSBmb3IgdHVybmluZyB0aGUgbmFtZXMgYW5kIGFkZHJlc3Nl
cyBvbi4KPiAKPiAKPiBBbmQgaWYgdGhlIGluY2lkZW50IHJlcGVhdGVkLCB3ZSBjb3VsZCBhbHNv
IHZlcnkgd2VsbCBqdXN0IG1vdmUgdGhlIGxpc3QKPiB0byBhIGRpZmZlcmVudCBwcm92aWRlciwg
d2l0aCBzdHJvbmdlciBzaWduIHVwIHNlY3VyaXR5IG1lYXN1cmVzLiBUaGVyZQo+IGFyZSBtYW55
IHRvIGNob29zZSBmcm9tLgo+IAo+IAo+IEJlc3QgcmVnYXJkcwo+IAo+IAo+IFJhc3Rpc2xhdgo+
IAo+IAo+IETFiGEgMTUuIDQuIDIwMjIgbyAwOjE0IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gbmFww61zYWwoYSk6Cj4+IElmIHdlIGdldCBzcGFtLCB3aGljaCBJIG1lYW4gdGhh
dCBoYXBwZW5zIHJlZ2FyZGxlc3MsIGZyb20KPj4+IG9ubGluZSBhY2NvdW50IGxlYWtzIG9mIHlv
dXIgZW1haWwgYWRkcmVzcywgdG8gZ29pbmcgb24gZHViaW91cyBzaXRlcyBhbmQKPj4+IHN1Ym1p
dHRpbmcgeW91ciBlbWFpbCBiZWNhdXNlIHlvdSBnb3QgYSB0ZXh0IHNheWluZyB5b3Ugd29uICQ1
MDAsIHNwYW0gaXMKPj4+IGdvbm5hIGhhcHBlbi4gSWYgeW91ciBtYWlsIHByb3ZpZGVyLCBvciBt
YWlsIHNlcnZlciwgb3IgZW1haWwgY2xpZW50LCBjYW4ndAo+Pj4gZGVhbCB3aXRoIHNwYW0sIHVz
dWFsbHkgYnkgeW91IG1hcmtpbmcgYW4gZW1haWwgZnJvbSBhIHNlbmRlciBhcyBzcGFtIGFuZAo+
Pj4gdGhlIHByb2dyYW0gYXV0b21hdGljYWxseSBtYXJraW5nIGZ1cnRoZXIgbWVzc2FnZXMgZnJv
bSB0aGF0IHNlbmRlciBhcyBzcGFtCj4+PiB0b28sIHRoZW4gdGhhdCdzIGEgcHJvYmxlbSB3aXRo
IHlvdXIgc2V0dXAsIG5vdCB0aGUgbGlzdC4KPj4KPj4gWW91IHdlcmUgbm90IGhlcmUgd2hlbiB0
aGlzIGhhcHBlbmVkLCBzbyB5b3UgYXJlIG5vdCB1bmRlcnN0YW5kaW5nIHRoZQo+PiBwcm9ibGVt
IHRoYXQgb2NjdXJyZWQuIEV2ZXJ5IHRpbWUgYW55b25lIHdvdWxkIHBvc3QgYSBtZXNzYWdlIHRv
IHRoaXMKPj4gbGlzdCwgdGhhdCBwZXJzb24gd291bGQgZ2V0IGludW5kYXRlZCB3aXRoIGh1bmRy
ZWRzIG9mIHBvcm5vZ3JhcGhpYyBzcGFtCj4+IG1lc3NhZ2VzLCBub3QgYWxsIGZyb20gdGhlIHNh
bWUgc2VuZGVyLCBhbmQgZXZlbiB0aGUgbWFqb3IgZW1haWwKPj4gcHJvdmlkZXJzIGxpa2UgR21h
aWwgYW5kIFlhaG9vIGNvdWxkbid0IGtlZXAgdXAuIEh1bmRyZWRzIHdvdWxkIGNvbWUgaW4KPj4g
dG8gb25lIGluZGl2aWR1YWwncyBtYWlsYm94LCBhbmQgMzAgb3IgbW9yZSB3b3VsZCBzdXJ2aXZl
IGFsbCB0aGUgc3BhbQo+PiBmaWx0ZXJpbmcgdGhyb3duIGF0IHRoZW0uIEkgd291bGRuJ3Qgc2F5
IHRoYXQgdGhlIHByb2JsZW0gd2FzIHdpdGggdGhlCj4+IGxpc3QgaXRzZWxmLCBvciBldmVuIHdp
dGggaXRzIGFkbWluaXN0cmF0aW9uLCBidXQgSSBkbyBrbm93IHRoYXQgaXQKPj4gd2Fzbid0IGJh
ZCBzcGFtIGZpbHRlcnMgdGhhdCB3ZXJlIHRvIGJsYW1lLiBZZXMsIHNwYW0gd2lsbCBoYXBwZW4g
bm8KPj4gbWF0dGVyIHdoYXQuIEl0J3MganVzdCBwYXJ0IG9mIGVtYWlsLiBCdXQgdGhpcyB3YXMg
dHJ1bHkgb3V0IG9mIGNvbnRyb2wKPj4gYW5kIHNvbWV0aGluZyBoYWQgdG8gYmUgZG9uZSBxdWlj
a2x5IHRvIGZpeCBpdC4gSSdtIG5vdCBuZWNlc3NhcmlseQo+PiBhcmd1aW5nIHRoYXQgdGhpcyBt
ZWFzdXJlIHN0aWxsIG5lZWRzIHRvIGJlIHRha2VuIGluIHRoaXMgd2F5IGV2ZW4gbm93LAo+PiBi
dXQgaXQgd2FzIHRoZSBiZXN0IHNvbHV0aW9uIGF0IHRoZSB0aW1lLgo+Pgo+PiB+S3lsZQo+Pgo+
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4gCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

