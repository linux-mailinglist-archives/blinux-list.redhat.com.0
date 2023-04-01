Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 082566D32A8
	for <lists+blinux-list@lfdr.de>; Sat,  1 Apr 2023 18:48:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680367683;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5USNzUokOzQmbAIjhGjxyIKNEWu9D8QOWLbsmFiYTMk=;
	b=C7yXBLubUpdCfdXWRH5saSP3iTB3SzmHdcGd8M0UP7e+3UUx+jNlydUtXyCRLAC80Bl0AU
	nwvGoxpJdUbyDcTYzcwWkEqwAW+4vRXS/5Ks4mpYv2iQiPQilW9wgDCwq28HDWuZsBGXKX
	QuR0+PtmOxj7VmUTyZ/YK6e8kSG0rfY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-593-i873I4K3OWO8rEF6EuaUnw-1; Sat, 01 Apr 2023 12:48:00 -0400
X-MC-Unique: i873I4K3OWO8rEF6EuaUnw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7FED9101A54F;
	Sat,  1 Apr 2023 16:47:58 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B9E23492B00;
	Sat,  1 Apr 2023 16:47:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E758F1946A44;
	Sat,  1 Apr 2023 16:47:52 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.40.1680347357.558775.blinux-list@redhat.com>
References: <mailman.1920.1680294381.2676480.blinux-list@redhat.com>
 <mailman.40.1680347357.558775.blinux-list@redhat.com>
Date: Sat, 1 Apr 2023 12:47:47 -0400
Subject: Re: Orca not speaking on new Debian install.
To: blinux-list@redhat.com
Message-ID: <mailman.82.1680367672.558774.blinux-list@redhat.com>
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
Cc: orca@freelists.org
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBjYW4gY29uZmlybSB0aGUgbWVzc2FnZXMgYXJlIHVucmVsYXRlZCB0byB0aGUgaXNzdWUuIERv
d25sb2FkZWQgdGhlCmxhdGVzdCB4NjQgU2VhbW9ua2V5IGFuZCB0cmllZCBsYXVuY2hpbmcgaXQg
d2l0aCB0aGUgc2FtZSBzY3JpcHQsIGJ1dAppdCBwcm9kdWNlcyBubyBlcnJvcnMvd2FybmluZ3Mg
aW4tYmV0d2VlbiB0aGUgbm9ybWFsIHggc3RhcnRlZApub3JtYWxseSBhbmQgeCBzdG9wcGVkIG1l
c3NhZ2VzLgoKV2lsbCBnaXZlIHNwZHNheSBhIHRyeSBuZXh0IHRpbWUgSSdtIGJvb3RlZCBpbnRv
IHRoZSBpbnN0YWxsZWQKRGViaWFuKHR5cGluZyB0aGlzIGZyb20gYSBLbm9wcGl4IExpdmUgc2Vz
c2lvbiBzbyBJIGNhbiBnZXQgd2ViIHRoaW5ncwpkb25lIGluLWJldHdlZW4gdHJ5aW5nIHRvIGRl
YnVnIHRoZSBpc3N1ZS4KCk5vdCBzdXJlIGhvdyBJIGNhbiBjaGVjayBpZiBhdC1zcGkgYW5kIG9y
Y2EgYXJlIHJ1bm5pbmcgYXMsIGluCmFkZGl0aW9uIHRvIG5vdCBnZXR0aW5nIHNwZWVjaCBpbiB0
aGUgR1VJLCBJJ20gYWxzbyBhcHBhcmVudGx5IGxvY2tlZApmcm9tIHN3aXRjaGluZyB0byBhIHR0
eSB0aGF0J3MgYXQgdGhlIGNvbnNvbGUsIHdoaWNoIGlzIGFsc28gYW4gaXNzdWUKc2luY2UgdGhl
IHdvcmsgZmxvdyBJJ20gdXNlZCB0byBpcyB1c2luZyB0dHkgc3dpdGNoaW5nIHRvIGRvIHdlYiBz
dHVmZgppbiB0aGUgR1VJIGFuZCBldmVyeXRoaW5nIGVsc2UgaW4gdGhlIGNvbnNvbGUsIHRob3Vn
aCBJIHRob3VnaHQgdGhlCmluYWJpbGl0eSB0byBzd2l0Y2ggdHR5cyB3YXMgcmF0aGVyIGlycmVs
ZXZhbnQgaWYgSSdtIG5vdCBnZXR0aW5nCnNwZWVjaCBpbiB0aGUgR1VJIHRvIGJlZ2luIHdpdGgs
IHRob3VnaCBJIHN1cHBvc2UgaXQgaXMgbW9yZSByZWxldmFudAp0aGFuIGluaXRpYWxseSB0aG91
Z2h0IHNpbmNlIEkgaGFkbid0IGNvbnNpZGVyZWQgdHJ5aW5nIHRvIGRpYWdub3NlCnRoZSBydW5u
aW5nIHhzZXNzaW9uIGZyb20gdGhlIGNvbnNvbGUuLi4KCgoKT24gNC8xLzIzLCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToK
Pgo+Cj4+IE9uIE1hciAzMSwgMjAyMywgYXQgMTY6MjYsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24KPj4gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+PiBJIHRy
aWVkIHJ1bm5pbmcgdGhlIHNjcmlwdCBJJ3ZlIHByZXZpb3VzbHkgdXNlZCBmb3IgbGF1bmNoaW5n
IGEgc3RhbmQKPj4gYWxvbmUgR1VJIGFwcGxpY2F0aW9uIHdpdGggT3JjYSwgdXNpbmcgRmlyZWZv
eC1FU1IgMTAyIHRvIHRlc3QuCj4+IEZpcmVmb3ggc3RhcnRzIGFzIGl0IGNyZWF0ZXMgYSBuZXcg
RmlyZWZveCBwcm9maWxlIGluIG15IGhvbWUKPj4gZGlyZWN0b3J5IGFuZCBpc3N1aW5nIGEgY2xv
c2Ugd2luZG93IGtleWJvYXJkIGNvbW1hbmQgc3BpdHMgbWUgYmFjayB0bwo+PiB0aGUgY29uc29s
ZSwgYnV0IGlmIG9yY2Egc3RhcnRzLCBpdCBkb2Vzbid0IHRhbGsuCj4gSGF2ZSB5b3UgdGVzdGVk
IHdoZXRoZXIgU3BlZWNoLURpc3BhdGNoZXIgaXMgd29ya2luZyAoZS5nLiwgd2l0aCB0aGUgU3Bk
LXNheQo+IGNvbW1hbmQpPwo+IElzIGF0LXNwaSBydW5uaW5nPyBMb29rIGZvciBhdC1zcGkyLXJl
Z2lzdHJ5ZCB3aXRoIHByZXA/Cj4gWW91IHNob3VsZCBhbHNvIGNoZWNrIHdoZXRoZXIgT3JjYSBp
cyBydW5uaW5nLgo+IFRoZXNlIGludmVzdGlnYXRpb25zIHNob3VsZCBuYXJyb3cgZG93biB0aGUg
cHJvYmxlbS4gVGhlcmXigJlzIG5vdGhpbmcgaW4gdGhlCj4gZXJyb3IgbWVzc2FnZXMgeW91IHBv
c3RlZCB0byBzdWdnZXN0IHRvIG1lIHRoZXkgYXJlIG1vcmUgdGhhbiB3YXJuaW5ncyBvcgo+IHRo
YXQgdGhleSBhcmUgT3JjYS1yZWxhdGVkLgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cg==

